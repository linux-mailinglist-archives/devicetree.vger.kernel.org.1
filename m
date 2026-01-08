Return-Path: <devicetree+bounces-253016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C848D05FE5
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 21:10:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9F50300BEC4
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 20:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6472C329C53;
	Thu,  8 Jan 2026 20:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnwMcz3m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DE63033D0
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 20:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767903008; cv=none; b=uJjmp3vWMOH9mesSzxnBXCUOHBP8D008FdEusC/upwoCDUrkwiJ7TwA5xD5AMnDx+o79TLXJQfSC6V+qkbp7L1pSyGJbdUY2iNjWvurg7pKTG29d2pI2esPrYT7Xg9uTT4dlEitLqa32TXGTCfMC016Y3BEo/rfYDZMCzFAAxYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767903008; c=relaxed/simple;
	bh=twpVp3jzla1rgtXT0dqZxOaRWr0DQx/Arkcq8HDQVLo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dd9G1y05sfCET1v/byUuGQSPe++55RtPh/mNyHTWfctUnXPhPigbWuGq8RdAu85E6QG0tLHBt8O5wUfIQkFSGbpuMZUc8f1iKNq6Cv3TkVoP8mI972CtRlsC8FjSVR+2MN5ifUprcxbQQB3PCWh+MUNmzT1pruDR40slsK2wP2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnwMcz3m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E466BC116C6
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 20:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767903007;
	bh=twpVp3jzla1rgtXT0dqZxOaRWr0DQx/Arkcq8HDQVLo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VnwMcz3m353GwyoCTBKxBkVqCsz3Qyd0uSYsbWpDabDqf5AqP9r1elUwhLSdpimgF
	 /Rs5ht8zVQRuPCDLVhu77WN3AiR93RdFEwytWXd1JpW+2TwCP+xOAS+kMCOTtqK2Rn
	 HievxgxzcNRqVcdkRLFo92uiP7ZN/k6xEafj6J+H/SGKsZldl3oieqEvBK9AM/4iIc
	 lk2zXYSLdvm0kneB6qP7mbG6vm/W/4YFaKTH9R1sMpEhb2BjNrycunk6usFUdsJLMD
	 pE+dpbfLdoMvDsUVsmyvWMEOFCI1/B5ud+4RW2yPEMkO0nOmwiiL8ND2WkNbWPElBh
	 CWb2EW0GVRf3Q==
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b727f452fffso360252566b.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 12:10:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWqDSjqo2Vf1IvqQGv2rAgh1RqxWBwTVjLqByrpsKYpRt5WodEB7fjjPIBX/34LHsjAb/NCMpRI7FP3@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ/g2PIJvog2pyu024cl3dKFbzBZtV9IhCHKjLCEGiSNDKy3m/
	2dtO99K6UVLhXb7ROkCT2MBbG8/3IEM/F/qZA+A4F4xtN0YlmtJMv/c+OBVj4XqAtJ6y6ZvEoN3
	3bEv89qholbT+bssCaT9BeFWCPAFV/Q==
X-Google-Smtp-Source: AGHT+IEWcso0Tnf8qe72vO8BkFVooAKgs1PSHRAVZTJGZfHsd5GMBoa4Ex7+q1SOboQ2YL+MeIVhXMxTH82k0CgWVFM=
X-Received: by 2002:a17:907:1b08:b0:b80:344b:421a with SMTP id
 a640c23a62f3a-b8444f43f86mr807433766b.18.1767903006462; Thu, 08 Jan 2026
 12:10:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <63f19db21a91729d91b3df336a56a7eb4206e561.1767804922.git.chleroy@kernel.org>
 <7708243d6cca21004de8b3da87369c06dbee3848.1767804922.git.chleroy@kernel.org>
 <20260108190203.GA780464-robh@kernel.org> <8a8c8a31-ebe8-48cb-9836-c69c6d65a545@kernel.org>
In-Reply-To: <8a8c8a31-ebe8-48cb-9836-c69c6d65a545@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 8 Jan 2026 14:09:54 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLTPOFve5v-V2mmoSqiO9+Woh9vhq4Kof7pMtuVFp2C+g@mail.gmail.com>
X-Gm-Features: AQt7F2r6GjuLRCY1szfRMCPd1iuSpzfSLJ-3dWB8YNgbFdjDgn4XP8KB1EDvxjE
Message-ID: <CAL_JsqLTPOFve5v-V2mmoSqiO9+Woh9vhq4Kof7pMtuVFp2C+g@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: soc: fsl: qe: Add an interrupt
 controller for QUICC Engine Ports
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: Qiang Zhao <qiang.zhao@nxp.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 1:44=E2=80=AFPM Christophe Leroy (CS GROUP)
<chleroy@kernel.org> wrote:
>
>
>
> Le 08/01/2026 =C3=A0 20:02, Rob Herring a =C3=A9crit :
> > On Wed, Jan 07, 2026 at 05:59:10PM +0100, Christophe Leroy (CS GROUP) w=
rote:
> >> The QUICC Engine provides interrupts for a few I/O ports. This is
> >> handled via a separate interrupt ID and managed via a triplet of
> >> dedicated registers hosted by the SoC.
> >>
> >> Implement an interrupt driver for it so that those IRQs can then
> >> be linked to the related GPIOs.
> >>
> >> Signed-off-by: Christophe Leroy (CS GROUP) <chleroy@kernel.org>
> >> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >
> > Already? On a v1?
>
> This is extracted from a previous series, here:
> https://lore.kernel.org/all/67987bbf42344398709949cb53e3e8415260ec09.1758=
212309.git.christophe.leroy@csgroup.eu/
>
> Should I have called it v7 even if it is only a small part of the
> initial series ?

Probably. Otherwise, b4 might think v6 is newer.

Regardless, the history matters.

>
> Ack is here:
> https://lore.kernel.org/all/20250818-babbling-studio-81a974afc169@spud/
>
> >
> >> ---
> >>   .../soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml       | 51 +++++++++++++++++=
++
> >>   1 file changed, 51 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/soc/fsl/cpm_qe/=
fsl,qe-ports-ic.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-p=
orts-ic.yaml b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-port=
s-ic.yaml
> >> new file mode 100644
> >> index 0000000000000..1f3c652b1569d
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic=
.yaml
> >> @@ -0,0 +1,51 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: https://eur01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Fdevicetree.org%2Fschemas%2Fsoc%2Ffsl%2Fcpm_qe%2Ffsl%2Cqe-ports-ic.yaml%2=
3&data=3D05%7C02%7Cchristophe.leroy%40csgroup.eu%7C6e4c1b33836d4443b5c608de=
4ee86aff%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639034957294961534%7C=
Unknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXa=
W4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DmH5SPbAw48C6BG=
cazDPJMtoiM71TXswUGBvSZf15dUQ%3D&reserved=3D0
> >> +$schema: https://eur01.safelinks.protection.outlook.com/?url=3Dhttp%3=
A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&data=3D05%7C02%7Cchrist=
ophe.leroy%40csgroup.eu%7C6e4c1b33836d4443b5c608de4ee86aff%7C8b87af7d86474d=
c78df45f69a2011bb5%7C0%7C0%7C639034957294990994%7CUnknown%7CTWFpbGZsb3d8eyJ=
FbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIl=
dUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DRhD807Jcx3MerOAXGWuwgwHkATpTzTkDIQC7lO3=
t1AA%3D&reserved=3D0
> >> +
> >> +title: Freescale QUICC Engine I/O Ports Interrupt Controller
> >> +
> >> +maintainers:
> >> +  - Christophe Leroy (CS GROUP) <chleroy@kernel.org>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - fsl,mpc8323-qe-ports-ic
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  interrupt-controller: true
> >> +
> >> +  '#address-cells':
> >> +    const: 0
> >> +
> >> +  '#interrupt-cells':
> >> +    const: 1
> >> +
> >> +  interrupts:
> >> +    maxItems: 1
> >> +
> >> +required:
> >> +  - compatible
> >> +  - reg
> >> +  - interrupt-controller
> >> +  - '#address-cells'
> >> +  - '#interrupt-cells'
> >> +  - interrupts
> >> +
> >> +additionalProperties: false
> >> +
> >> +examples:
> >> +  - |
> >> +    interrupt-controller@c00 {
> >> +      compatible =3D "fsl,mpc8323-qe-ports-ic";
> >> +      reg =3D <0xc00 0x18>;
> >> +      interrupt-controller;
> >> +      #address-cells =3D <0>;
> >> +      #interrupt-cells =3D <1>;
> >> +      interrupts =3D <74 0x8>;
> >> +      interrupt-parent =3D <&ipic>;
> >
> > This doesn't look like a separate block, but just part of its parent. S=
o
> > just add interrupt-controller/#interrupt-cells to the parent.
>
> I don't understand what you mean, can you explain with the extract below =
?
>
> Extract from device tree including the parent:
>
>         soc8321@b0000000 {
>                 #address-cells =3D <1>;
>                 #size-cells =3D <1>;
>                 device_type =3D "soc";
>                 compatible =3D "simple-bus";
>                 ranges =3D <0x0 0xb0000000 0x00100000>;
>                 reg =3D <0xb0000000 0x00000200>;
>                 bus-frequency =3D <0>;
>
>                 ipic:pic@700 {
>                         interrupt-controller;
>                         #address-cells =3D <0>;
>                         #interrupt-cells =3D <2>;
>                         reg =3D <0x700 0x100>;
>                         device_type =3D "ipic";
>                 };
>
>                 qepic:interrupt-controller@c00 {
>                         compatible =3D "fsl,mpc8323-qe-ports-ic";
>                         reg =3D <0xc00 0x18>;
>                         interrupt-controller;
>                         #address-cells =3D <0>;
>                         #interrupt-cells =3D <1>;
>                         interrupts =3D <74 0x8>;
>                         interrupt-parent =3D <&ipic>;

There's not some overall QuiccEngine node/device? I guess that's
qe@e0100000, so this is outside of it and is fine. Just move it to
bindings/interrupt-controller/ since it is not part of anything else.

Rob

