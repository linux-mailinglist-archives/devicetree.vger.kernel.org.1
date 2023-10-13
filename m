Return-Path: <devicetree+bounces-8400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C4D7C7FC1
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:16:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51926282AA0
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90009107A8;
	Fri, 13 Oct 2023 08:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DE0D51F
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:16:20 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61B0B83;
	Fri, 13 Oct 2023 01:16:18 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.200])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4S6K4z5wT1z67g6l;
	Fri, 13 Oct 2023 16:13:07 +0800 (CST)
Received: from localhost (10.126.172.163) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 13 Oct
 2023 09:16:15 +0100
Date: Fri, 13 Oct 2023 09:16:15 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Linus Walleij <linus.walleij@linaro.org>
CC: Jonathan Cameron <jic23@kernel.org>, Jagath Jog J
	<jagathjog1996@gmail.com>, <andriy.shevchenko@linux.intel.com>,
	<lars@metafoo.de>, <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [RFC 1/2] dt-bindings: iio: imu: Add DT binding doc for BMI323
Message-ID: <20231013091615.00007399@Huawei.com>
In-Reply-To: <CACRpkdY4yJKmc_Sbr=4sJ0WseCEEBOQ7wKj4fBUMG2_cx-Xxbw@mail.gmail.com>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
	<20230918080314.11959-2-jagathjog1996@gmail.com>
	<20230924143710.7c6edc4a@jic23-huawei>
	<CAM+2EuJ8o5X2ucph8gic2=03bbLQmUCX=j3SFLrqD4Y6rwXs9A@mail.gmail.com>
	<20230930170530.0b8f185c@jic23-huawei>
	<CAM+2EuKzBVbTF2SrpYEYfzap1wrONboFV-QuTU9Fz7sVjqJLeA@mail.gmail.com>
	<20231010100002.0163d681@jic23-huawei>
	<CACRpkdY+K90mN1Q1tf38FLRgEsz3q8dK9SJYSQVwGe=PL3FaUQ@mail.gmail.com>
	<20231010154216.6032a1c2@jic23-huawei>
	<CACRpkdY4yJKmc_Sbr=4sJ0WseCEEBOQ7wKj4fBUMG2_cx-Xxbw@mail.gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.126.172.163]
X-ClientProxiedBy: lhrpeml100004.china.huawei.com (7.191.162.219) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 10 Oct 2023 21:51:17 +0200
Linus Walleij <linus.walleij@linaro.org> wrote:

> On Tue, Oct 10, 2023 at 4:42=E2=80=AFPM Jonathan Cameron <jic23@kernel.or=
g> wrote:
>=20
> > We kind of lost the question along the way.  Wasn't so much about wheth=
er
> > there was a generic binding but more about whether it is worth providing
> > separate controls for the two IRQ pins?  Or just assume no one is crazy
> > enough to play that level of mix and match. =20
>=20
> Ugh no, that's upfront design for a nonexistent use case.
>=20
> - First, to even consider open drain the designer need to be really
>   short of IRQ lines/rails, and, despite knowing it's a bad idea, decide
>   to share this line between several peripherals, even though it will
>   require I2C traffic to just determine which one even fired the IRQ.
>=20
> - Second, be interested in using two IRQs to distinguish between
>   different events? When we just faced the situation that we had
>   too few IRQ lines so we need to start sharing them with open
>   drain...?
>=20
> It's not gonna happen.
>=20
> Stay with just drive-open-drain; and configure them all as that if
> that property is set.

Good insights, I'd not really thought about the wider reasons for using
this :)  Not done any circuit design or embedded board bring up in a
long while.

Thanks!

>=20
> Yours,
> Linus Walleij
>=20


