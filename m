Return-Path: <devicetree+bounces-5046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5BC7B4EDB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:17:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 4F59AB20C8C
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2298D79E4;
	Mon,  2 Oct 2023 09:17:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16BA8C14
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:17:47 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F33B93;
	Mon,  2 Oct 2023 02:17:46 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.206])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Rzb2S44nNz67L0F;
	Mon,  2 Oct 2023 17:17:36 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Mon, 2 Oct
 2023 10:17:43 +0100
Date: Mon, 2 Oct 2023 10:17:42 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: David Lechner <dlechner@baylibre.com>, <linux-iio@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-staging@lists.linux.dev>, David Lechner
	<david@lechnology.com>, Jonathan Cameron <jic23@kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S?=
 =?ISO-8859-1?Q?=E1?= <nuno.sa@analog.com>, Axel Haslam
	<ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>,
	<linux-kernel@vger.kernel.org>, Vincent Whitchurch
	<vincent.whitchurch@axis.com>
Subject: Re: [PATCH v3 02/27] staging: iio: resolver: ad2s1210: fix use
 before initialization
Message-ID: <20231002101742.0000774b@Huawei.com>
In-Reply-To: <1b366292-6e05-421e-914e-6d3457886238@kadam.mountain>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-2-fa4364281745@baylibre.com>
	<1b366292-6e05-421e-914e-6d3457886238@kadam.mountain>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 2 Oct 2023 11:07:15 +0300
Dan Carpenter <dan.carpenter@linaro.org> wrote:

> On Fri, Sep 29, 2023 at 12:23:07PM -0500, David Lechner wrote:
> > From: David Lechner <david@lechnology.com>
> > 
> > From: David Lechner <dlechner@baylibre.com>
> > 
> > This fixes a use before initialization in ad2s1210_probe(). The
> > ad2s1210_setup_gpios() function uses st->sdev but it was being called
> > before this field was initialized.
> > 
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
> > ---
> >   
> 
> Fixes: b19e9ad5e2cb ("staging:iio:resolver:ad2s1210 general driver cleanup.")
Thanks but nope, not that one.

At that point ad2s1210_setup_gpios, didn't use st->sdev.
I think this went wrong when the platform data was removed in 

I 'think' it was
Fixes: f356dc6ec26b ("staging: iio: ad2s1210: Switch to the gpio descriptor interface")



> 
> This would crash the driver right away, on probe.  It's amazing no one
> filed a bug report even though the bug is 12 years old.
Only 5 years :)

Welcome to the long tail of IIO Devices and the long term availability of the
hardware - this is still a production part.  Clearly no one was using the
upstream driver for 5 + years, but here comes David who is not only fixing
the bugs but cleaning it up.

Hmm. What happened to roadtest? I was hoping that would solve this sort
of issue by allowing simple testing of basic functionality... Hope it
is still headed for a new version / upstream!

Jonathan

> regards,
> dan carpenter





