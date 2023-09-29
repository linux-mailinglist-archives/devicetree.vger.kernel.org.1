Return-Path: <devicetree+bounces-4704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E26197B3809
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id AE6511C2097A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D77171C0;
	Fri, 29 Sep 2023 16:37:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A6515C3
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:37:12 +0000 (UTC)
Received: from nikam.ms.mff.cuni.cz (nikam.ms.mff.cuni.cz [195.113.20.16])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03C5BBE;
	Fri, 29 Sep 2023 09:37:09 -0700 (PDT)
Received: from gimli.ms.mff.cuni.cz (gimli.ms.mff.cuni.cz [195.113.20.176])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by nikam.ms.mff.cuni.cz (Postfix) with ESMTPS id C09362849E2;
	Fri, 29 Sep 2023 18:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gimli.ms.mff.cuni.cz;
	s=gen1; t=1696005427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/4gRp0PvTgqZjxjAaRsbmJVWPSYl1PGDEWrN5bNlrz8=;
	b=l+ldHJ1ok+EnmgC9J7LLFq4maNIS2ueNmWEpEL3QHSG/CiwR4AaIVBx1UdvEyZuknpWZBg
	16KSXxQZ+1h8gT676k+7jfYsg17eq1C31oyxD2vaGeM/7j7pd4No6kC/dWvTYv76BlHnEd
	TIwGrx62xofJga8hWI+VLKALLejTiq4=
Received: from localhost (koleje-wifi-0029.koleje.cuni.cz [78.128.191.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: karelb)
	by gimli.ms.mff.cuni.cz (Postfix) with ESMTPSA id A3285441AC5;
	Fri, 29 Sep 2023 18:37:07 +0200 (CEST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 29 Sep 2023 18:37:20 +0200
Message-Id: <CVVJR34G5A55.2LYQW8Z5PEEDA@gimli.ms.mff.cuni.cz>
Cc: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-input@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, =?utf-8?q?Duje_Mihanovi=C4=87?=
 <duje.mihanovic@skole.hr>, <~postmarketos/upstreaming@lists.sr.ht>, "Jeff
 LaBundy" <jeff@labundy.com>, <linmengbo0689@protonmail.com>
Subject: Re: [PATCH 1/2] input: generalize the Imagis touchscreen driver
To: "Markuss Broks" <markuss.broks@gmail.com>, "Karel Balej"
 <balejk@matfyz.cz>
From: "Karel Balej" <karelb@gimli.ms.mff.cuni.cz>
References: <7b9864bf-2aa6-4510-ad98-276fbfaadc30@gmail.com>
 <72e02837-9a82-4007-8ba2-fa05f3c17670@gmail.com>
 <CVUR18U9FUME.XSF1MML0B1QN@gimli.ms.mff.cuni.cz>
 <06e71bb8-370d-4b66-bedb-3041d6e3b2c6@gmail.com>
In-Reply-To: <06e71bb8-370d-4b66-bedb-3041d6e3b2c6@gmail.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello, Markuss,

> If you don't mind the extra hassle, I'm all in for my generalization=20
> thing going together with your series.
>
> Alternatively, I can resend it myself, but I believe it would be better=
=20
> if they go in bulk since they need to be applied together.

great. Do you wish to make any changes to your original series? If not,
please let me know and I will use the v2 [1] as it is.

> >> As for the voltage set, I believe this does not belong in a kernel
> >> driver. You should set it in device-tree with `regulator-max-microvolt=
`
> >> and `regulator-min-microvolt`.
> > Please see my response to Jeff regarding this. I will be happy to hear
> > your thoughts on what I propose.
>
> Actually, the regulator values belong to the device-tree, because the=20
> device-tree for the board is what describes the board's regulators, and=
=20
> since you know what components are installed on that specific board you=
=20
> can know which regulator values are supposed to be set for it.
>
> [...]
>
> The actual min/max values for regulators or its voltage table is=20
> provided by the regulator driver itself, so there's not much point in=20
> specifying those again in the device-tree.

I see. I think the reason why I thought what I wrote before is that
downstream the regulator DTS lives separately from the board as a .dtsi
file which made me think that it can be used universally. So if I
understand correctly now, the hardware specifications of the regulator,
such as the minimal and maximal voltage should be part of the driver,
while the DT should contain requirements for the given use of the
regulator (with a specific board) - is this correct?

> This manual voltage setting can cause conflicts with other drivers for
> example. Also some device can use a variable wide voltage range, and
> some only specific narrow one, and e.g. the driver with wide range
> would set it to voltage that isn't suitable for the narrow range
> device, so it's much better to just specify it manually than have it
> resolved.

I would expect that in the case you describe, the kernel would set the
voltage to a value which would satisfy both the ranges. I don't know
what would happen if that was not possible (i. e. there was no
intersection in the two requested voltage ranges), though. Or does a
call to regulator_set_voltage set the voltage immediately taking notice
only of the hardware contraints? I think I am having trouble
understanding what this quote from the regulator_set_voltage
documentation means:

> If the regulator is shared between several devices then the lowest
> request voltage that meets the system constraints will be used.

But actually, it probably doesn't make sense that the kernel would try
to resolve a range suitable for all calls to this function as, I assume,
a single driver could call it multiple times with disjoint voltage
intervals.

Thank you for your patience.

Kind regards,
K. B.

