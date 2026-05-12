Return-Path: <devicetree+bounces-296196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KZrIFYVA2oj0QEAu9opvQ
	(envelope-from <devicetree+bounces-296196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:56:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7589451F9F5
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F273A3003832
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 11:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D87395AFE;
	Tue, 12 May 2026 11:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWy0Itmm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40AF395AE0
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 11:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778586939; cv=none; b=jU4l1oDfJq+jTOjuxIRUihWB2f2TJZCI1yXBl1dlySXKc8Ik0aWWuYum2X0tddQJcH6paB92D1uHWb+KLKy8CylFX/OMm96R5MXmuodtNE/FWK005kGvGlnX6a30hZL1+cFmg5GMZ4DriX2sUyPJewSHs1nFyxviABBVo8unJtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778586939; c=relaxed/simple;
	bh=j+DsivULN9fsFBCX66MvkwLgGPE+FN39iQmBiisOpy0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pfqXJ0SSJtXCbp4YZopeBSZjOqwZcJRYDjBMufX4Y8H6TwSMvo+YduxPgpPc96JxbrkeTnvjG1EKb80h4K1WeJda1QMhHVoxtjdOlvaxtqwPRWq1wBs8fGEUQ3r7wqGGKLtKBRPfdO3Zv+AL8fudYXirajq7uO9JXAgn4jvvB/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWy0Itmm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 612C7C2BCB0
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 11:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778586939;
	bh=j+DsivULN9fsFBCX66MvkwLgGPE+FN39iQmBiisOpy0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=SWy0ItmmVisT7bAIZ3ra/BAiOfNQl78R4tfUSBBz19vx5uCkI3khqpCsqLBkbUajq
	 /lPTxBbyvYxemiViMDwaC8+9h4IHbqeuLu2hH7BS9pvcD4qW35dM/GdlURMEzAKKMa
	 h7h35eAP1XR7kIdS5MS1xT8tgdbnwsqj9jLkFQlyNULlBhBL+Wfv/65/QfBd9ZwxtJ
	 g49U0xU6vjTPmdSg15qFpiITtmkkVLUnwLKsvfMj0pdE8BPv4dhZm0pnmhauNJt1Xv
	 u2BB2+YtMWn0/tAggApRqHY5/Zav0jtdD+SpP7lyF0WCcpmM4PPs9h1KgmJ8Smy739
	 bMBNr9TWsy0/g==
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-67e24b8ef55so7584789a12.1
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 04:55:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/BNHNwIe4L1hCI0Xr1xIeWABbq2nFbDoVd55eDYjIW3BGVt9hjKgs559TWQvHSiz5t32ueQX2s1Aa5@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb2ZkYfjh+W9LVC4SqCHMMN/tfRrZlm3go8BdLgkNhJvO36qNj
	8/77mCz680QXTKyKzQn42LM9tyICswnxcFcUY4GbqhlwqYeQsmMSOBuGmde86F4OknvVIPPC0yE
	UcBL0TJptIW7S1dBzDKJkSexWwORXYA==
X-Received: by 2002:a05:6402:28cb:b0:67c:7697:1ee8 with SMTP id
 4fb4d7f45d1cf-680cdd250cbmr1451214a12.5.1778586938007; Tue, 12 May 2026
 04:55:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260511111116.1109643-4-a.heider@gmail.com> <20260512022817.879A3C2BCB0@smtp.kernel.org>
 <4ac5bd1a-ac7a-420b-b0ce-acdcee4b20e2@gmail.com>
In-Reply-To: <4ac5bd1a-ac7a-420b-b0ce-acdcee4b20e2@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 12 May 2026 06:55:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLx6uwsjTHgcmqRKu32Mh4vJPu=u=N7DjVeGAaK04mOWg@mail.gmail.com>
X-Gm-Features: AVHnY4ID7a0_3CCCWYxK655cEtAfDuW2yCI_keSpCnp5egP8iN4fy14pBjhwNhk
Message-ID: <CAL_JsqLx6uwsjTHgcmqRKu32Mh4vJPu=u=N7DjVeGAaK04mOWg@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] riscv: dts: spacemit: k1-musepi-pro: enable QSPI
 and add SPI NOR
To: Andre Heider <a.heider@gmail.com>
Cc: sashiko@lists.linux.dev, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
	conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 7589451F9F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296196-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 1:51=E2=80=AFAM Andre Heider <a.heider@gmail.com> w=
rote:
>
> On 12.05.26 4:28 AM, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 2 potential is=
sue(s) to consider:
> > - [High] Potential overvoltage risk for the W25Q64FW SPI NOR flash via =
the 'buck4_3v3' supply.
> > - [Low] The unit-address in the 'uboot' partition node name does not ma=
tch the base address in its 'reg' property.
> > --
> >
> > commit 470f9c74bd3cfec41ed69dd8c4e22535a7e8164f
> > Author: Andre Heider <a.heider@gmail.com>
> >
> > riscv: dts: spacemit: k1-musepi-pro: enable QSPI and add SPI NOR
> >
> > This commit adds the QSPI controller node and describes the attached
> > SPI NOR flash. It also provides a corresponding vendor flash partition
> > layout.
> >
> >> diff --git a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts b/arch/ris=
cv/boot/dts/spacemit/k1-musepi-pro.dts
> >> --- a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> >> +++ b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> >
> > [ ... ]
> >
> >> @@ -166,7 +166,7 @@ buck3_1v8: buck3 {
> >>                              regulator-always-on;
> >>                      };
> >>
> >> -                    buck4 {
> >> +                    buck4_3v3: buck4 {
> >>                              regulator-min-microvolt =3D <500000>;
> >>                              regulator-max-microvolt =3D <3300000>;
> >>                              regulator-ramp-delay =3D <5000>;
> >
> > [ ... ]
> >
> >> @@ -249,6 +249,47 @@ dldo7 {
> >>      };
> >>   };
> >>
> >> +&qspi {
> >> +    pinctrl-names =3D "default";
> >> +    pinctrl-0 =3D <&qspi_cfg>;
> >> +    status =3D "okay";
> >> +
> >> +    flash@0 {
> >> +            compatible =3D "jedec,spi-nor";
> >> +            reg =3D <0>;
> >> +            spi-max-frequency =3D <26500000>;
> >> +            spi-rx-bus-width =3D <4>;
> >> +            spi-tx-bus-width =3D <4>;
> >> +            vcc-supply =3D <&buck4_3v3>; /* QSPI_VCC1833 */
> >
> > The commit message notes this flash is a Winbond W25Q64FWSSAQ, which is=
 a
> > strict 1.8V part. Could this vcc-supply assignment cause hardware damag=
e?
> >
> > The buck4 regulator has a maximum voltage of 3.3V. If the regulator def=
aults
> > to 3.3V or is configured to 3.3V dynamically, it exceeds the absolute m=
aximum
> > ratings for the 1.8V W25Q series flash.
>
> As per the comment, there's a the non controllable regulator QSPI_VCC1833=
 in between.
> k1-milkv-jupiter.dts matches in this regard.
> I'll keep it unchanged unless someone has an idea how to express that in =
a better way.

That's what we have fixed-regulator binding for. It can take an input suppl=
y.

Rob

