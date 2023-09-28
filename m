Return-Path: <devicetree+bounces-4384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E35F47B24C4
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9465D28264F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CAE9513DF;
	Thu, 28 Sep 2023 18:07:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FDA51226
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 18:07:07 +0000 (UTC)
Received: from nikam.ms.mff.cuni.cz (nikam.ms.mff.cuni.cz [195.113.20.16])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF18F19D;
	Thu, 28 Sep 2023 11:07:05 -0700 (PDT)
Received: from gimli.ms.mff.cuni.cz (gimli.ms.mff.cuni.cz [195.113.20.176])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by nikam.ms.mff.cuni.cz (Postfix) with ESMTPS id 8D8B92849E2;
	Thu, 28 Sep 2023 20:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gimli.ms.mff.cuni.cz;
	s=gen1; t=1695924424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U8Xfal+esmxNlqnjdyWmKBUDJQrHuXiFYNkhL9syiR4=;
	b=JLJ1cSY4L6xWrCcR59rVol8iNeaXngvE/Vf2PtbSUbaH99eRYTXs0ZZoYfQSl8/8hV0E9n
	8AZkonF1ioKDRhGxdVc7NCQ9Qgzz0hsU9Uq0a6Y5bURGz1VRVJcwkFuvQV6hyNG2c3r2F4
	i0a8Pg2HQBndculc+fguIevbgDmB3W4=
Received: from localhost (internet5.mraknet.com [185.200.108.250])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: karelb)
	by gimli.ms.mff.cuni.cz (Postfix) with ESMTPSA id 6338A44AFF0;
	Thu, 28 Sep 2023 20:07:04 +0200 (CEST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 28 Sep 2023 20:07:04 +0200
Message-Id: <CVUR18U9FUME.XSF1MML0B1QN@gimli.ms.mff.cuni.cz>
Subject: Re: [PATCH 1/2] input: generalize the Imagis touchscreen driver
To: "Markuss Broks" <markuss.broks@gmail.com>, "Karel Balej"
 <balejk@matfyz.cz>
From: "Karel Balej" <karelb@gimli.ms.mff.cuni.cz>
Cc: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-input@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, =?utf-8?q?Duje_Mihanovi=C4=87?=
 <duje.mihanovic@skole.hr>, <~postmarketos/upstreaming@lists.sr.ht>, "Jeff
 LaBundy" <jeff@labundy.com>, <linmengbo0689@protonmail.com>
References: <7b9864bf-2aa6-4510-ad98-276fbfaadc30@gmail.com>
 <72e02837-9a82-4007-8ba2-fa05f3c17670@gmail.com>
In-Reply-To: <72e02837-9a82-4007-8ba2-fa05f3c17670@gmail.com>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello, Markuss,

thank you for your response and please forgive that my original emails
didn't reach you - I am trying to see if I can get the SMTP server I use
for my primary address officially authorized to send emails in its name
so that Google does not reject them.

> To be fair, this driver should work with all Imagis3 chips, which could=
=20
> be a better name for it. However, I agree with Jeff here: the driver=20
> doesn't necessarily need renaming.

I will be sure to drop the renaming for v2.

> Additionally, there used to be my series [1] that generalized the=20
> driver, but it never got applied. I will re-send it. It introduces=20
> `struct imagis_properties`, which contains register addresses for the=20
> registers that we use to read the touch input. In your specific case, I=
=20
> believe it should be:
>
> static const struct imagis_properties imagis_3032c_data =3D
> {
> 	.interrupt_msg_cmd =3D IST3038C_REG_INTR_MESSAGE,
> 	.touch_coord_cmd =3D IST3038C_REG_TOUCH_COORD,
> 	.whoami_cmd =3D IST3038C_REG_CHIPID,
> 	.whoami_val =3D IST3032C_WHOAMI, /* change it to your whoami */
> };

I have come across your patch series and in fact my original experiments
were based on it. However I thought it was abandoned and decided not to
try to make any further generalizations to the driver for now, except
making it work with IST3032C. Should I then perhaps wait before your
series gets applied before sending v2 of my changes? Or should I send
you a patch on top of your series, where I would add the `struct
imagis_properties` for the IST3032C (which you surely could do yourself,
but I can at least test it with my device). Please let me know if and
how we should coordinate.

> As for the voltage set, I believe this does not belong in a kernel=20
> driver. You should set it in device-tree with `regulator-max-microvolt`=
=20
> and `regulator-min-microvolt`.

Please see my response to Jeff regarding this. I will be happy to hear
your thoughts on what I propose.

Kind regards,
K. B.

