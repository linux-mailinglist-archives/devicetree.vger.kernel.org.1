Return-Path: <devicetree+bounces-10028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A747CF68F
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:21:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0820EB212B5
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 934D119457;
	Thu, 19 Oct 2023 11:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA5D19442
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:21:24 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5487BBE;
	Thu, 19 Oct 2023 04:21:23 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SB4vS2vjXz6HJLt;
	Thu, 19 Oct 2023 19:17:56 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Thu, 19 Oct
 2023 12:21:20 +0100
Date: Thu, 19 Oct 2023 12:21:20 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
CC: Conor Dooley <conor@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, <linux-iio@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
Message-ID: <20231019122120.00007cdd@Huawei.com>
In-Reply-To: <0084ddad-d6fc-ca26-2d26-ba71e81f5f8b@tweaklogic.com>
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
	<20231019-rematch-ethically-9d482ca4607e@spud>
	<20231019-theme-clunky-f4a2e1d122e7@spud>
	<0084ddad-d6fc-ca26-2d26-ba71e81f5f8b@tweaklogic.com>
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
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected

On Thu, 19 Oct 2023 21:24:09 +1030
Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:

> > Also:
> > <matt.ranostay@konsulko.com>: host aspmx.l.google.com said:
> >      550-5.1.1 The email account that you tried to reach does not exist.  
> Thanks Conor for pointing this out. Can you please help me out with this?
> get_maintainer.pl suggested me to add this email ID.

Matt has moved job, I've messaged him to find out if he has a new preferred
email address.

J
> 
> Regards,
> Subhajit Ghosh
> 


