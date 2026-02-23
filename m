Return-Path: <devicetree+bounces-267491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NgXIc9rnGmcGAQAu9opvQ
	(envelope-from <devicetree+bounces-267491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:01:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CF5178608
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 48F1730371A8
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4B5364EBA;
	Mon, 23 Feb 2026 15:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf2iXMYD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5B0364E8A
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771858858; cv=none; b=F7cPYDO1ReBjhWmUcx9Oqj6dzGKPR5Rd1hq+F25GpR10JssYT2CgdutXt6THhN8AV1fjooWGV8L0t9apbVwZkW4SDOE/6UDi+55qsUfJQhhec9DFOo7s0a+2LBEGaWQ7BWlNaqa71WY6Wl1R5wXpvy+RHmyfxufHEZw1tkO1Cqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771858858; c=relaxed/simple;
	bh=jJpfPesRxhaR50wA0rFym+CE7VqMDrqzN0ixYQEnXbk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DEA2kBdhQSqvjUNb1wvvBCRTwPqUKbJF2QTL75aFAU+AUk9NFco1IGcFl9iRrYJ/J5HCQEHFZuTAoZPJ5UJo70mA9BdR1z55hyTxflIudY1/IbgOt2FwPwBB4aPAXdK5h0s7cHVq34UAPnrfx6d8xgAOEGx5k4fLYj1VuAeC7+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf2iXMYD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62C15C116C6
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771858858;
	bh=jJpfPesRxhaR50wA0rFym+CE7VqMDrqzN0ixYQEnXbk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=sf2iXMYDhaLUJQBy/PoWhUHluerF2w7HRzTytsMfb7hszq9hd1YooeBMNe3G5Lkn8
	 hIAo3wWLLujDQ4ytrYcTYXvKB8dYLAsGeVXb4s3aBDOoIW4j/pWQgqOjUgWjWQ5uQ6
	 rDDloOB4iMAzdMTBQCtqJE6pthCx2h/hFksKV9lu9Jm/I2r+19Sk63anfa7uo7HteP
	 pnR1FUcnB41AGpdAiecOwvsoAR134Fa0dJuhJFLsWIYaBn8TYLmss+Bm3t84JsqJvX
	 4CLB13G5wHRAdx8QGztjTLsKrJQ9OS6/M/PeGjF70TyYLPKw9Zx5FDspodCNV/RxZD
	 TNvhva2oMbYOw==
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-65c0891f4e9so7722899a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 07:00:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV5q13Yzo7oGOmh1ZgWmhSrYNLjvxNBEHEMulpDvB2lS0ZK4IjYidI3D9+g64qURgB/P1512epKn/Ni@vger.kernel.org
X-Gm-Message-State: AOJu0YybRiTPLFgn5OCrSTwp6suTqmGhFhYRsjpgD52YZ5YA0/ogx6RY
	cU3l81LYBUgI6V5Jw8fijis9yMpXnhNcXEnb9gMakWKmNc7Sf5Sly2ESNJNtirRRYNzfd4iRu6j
	UYXzBIfbpOmQHhCdEr0ppPp9cNRPcgg==
X-Received: by 2002:a17:907:7211:b0:b87:965:907a with SMTP id
 a640c23a62f3a-b9081aedfe8mr545215966b.32.1771858856734; Mon, 23 Feb 2026
 07:00:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-spear-v1-1-fd44bc79695b@gmail.com> <CAL_JsqJhnuWzPxUWywZkjt=zc0nSFKP7hM_ekmKKr7p_jXaaag@mail.gmail.com>
In-Reply-To: <CAL_JsqJhnuWzPxUWywZkjt=zc0nSFKP7hM_ekmKKr7p_jXaaag@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 23 Feb 2026 09:00:45 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKSpsj1BQB1q_s1+j1FT+XLORgWRijMTNc4wTawKDZxQw@mail.gmail.com>
X-Gm-Features: AaiRm53-Y6dnAZYqKV1rXAfu1AoHKdJYC0HRW1e_dtbqsIdf2nlotws2rYUNEQw
Message-ID: <CAL_JsqKSpsj1BQB1q_s1+j1FT+XLORgWRijMTNc4wTawKDZxQw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: st,spear600-smi: convert to DT schema
To: Akhila YS <akhilayalmati@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267491-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,bootlin.com];
	RSPAMD_URIBL_FAIL(0.00)[nod.at:query timed out,f8000000:query timed out];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,devicetree.org:url,nod.at:email,fc000000:email]
X-Rspamd-Queue-Id: 63CF5178608
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 7:47=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Jan 22, 2026 at 10:23=E2=80=AFAM Akhila YS <akhilayalmati@gmail.c=
om> wrote:
> >
> > Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
> > Controller binding to YAML format.
> >
> > Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> > ---
> >  .../devicetree/bindings/mtd/spear_smi.txt          | 29 ---------
> >  .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 72 ++++++++++++++=
++++++++
> >  2 files changed, 72 insertions(+), 29 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/spear_smi.txt b/Docu=
mentation/devicetree/bindings/mtd/spear_smi.txt
> > deleted file mode 100644
> > index c41873e92d26..000000000000
> > --- a/Documentation/devicetree/bindings/mtd/spear_smi.txt
> > +++ /dev/null
> > @@ -1,29 +0,0 @@
> > -* SPEAr SMI
> > -
> > -Required properties:
> > -- compatible : "st,spear600-smi"
> > -- reg : Address range of the mtd chip
> > -- #address-cells, #size-cells : Must be present if the device has sub-=
nodes
> > -  representing partitions.
> > -- interrupts: Should contain the STMMAC interrupts
> > -- clock-rate : Functional clock rate of SMI in Hz
> > -
> > -Optional properties:
> > -- st,smi-fast-mode : Flash supports read in fast mode
> > -
> > -Example:
> > -
> > -       smi: flash@fc000000 {
> > -               compatible =3D "st,spear600-smi";
> > -               #address-cells =3D <1>;
> > -               #size-cells =3D <1>;
> > -               reg =3D <0xfc000000 0x1000>;
> > -               interrupt-parent =3D <&vic1>;
> > -               interrupts =3D <12>;
> > -               clock-rate =3D <50000000>;        /* 50MHz */
> > -
> > -               flash@f8000000 {
> > -                       st,smi-fast-mode;
> > -                       ...
> > -               };
> > -       };
> > diff --git a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml=
 b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
> > new file mode 100644
> > index 000000000000..8fe27aae7527
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
> > @@ -0,0 +1,72 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mtd/st,spear600-smi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: STMicroelectronics SPEAr600 Serial Memory Interface (SMI) Contr=
oller
> > +
> > +maintainers:
> > +  - Richard Weinberger <richard@nod.at>
> > +
> > +description:
> > +  The SPEAr600 Serial Memory Interface (SMI) is a dedicated serial fla=
sh
> > +  controller supporting up to four chip selects for serial NOR flashes
> > +  connected in parallel. The controller is memory-mapped and the attac=
hed
> > +  flash devices appear in the CPU address space.The driver
> > +  (drivers/mtd/devices/spear_smi.c) probes the attached flashes
> > +  dynamically by sending commands (e.g., RDID) to each bank.
> > +  Flash sub nodes describe the memory range and optional per-flash
> > +  properties.
> > +
> > +allOf:
> > +  - $ref: mtd.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: st,spear600-smi
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 1
> > +
> > +  clock-rate:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Functional clock rate of the SMI controller in Hz.
> > +
> > +  st,smi-fast-mode:
> > +    type: boolean
> > +    description: Indicates that the attached flash supports fast read =
mode.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clock-rate
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    flash@fc000000 {
> > +        compatible =3D "st,spear600-smi";
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <1>;
> > +        reg =3D <0xfc000000 0x1000>;
> > +        interrupt-parent =3D <&vic1>;
> > +        interrupts =3D <12>;
> > +        clock-rate =3D <50000000>;  /* 50 MHz */
> > +
> > +        flash@f8000000 {
>
> This is now a warning in linux-next:

Now this is a warning in v7.0-rc1. Miquel, please revert this as there
has been no response.

>
> Documentation/devicetree/bindings/mtd/st,spear600-smi.example.dtb:
> flash@fc000000 (st,spear600-smi): Unevaluated properties are not
> allowed ('flash@f8000000' was unexpected)
>         from schema $id: http://devicetree.org/schemas/mtd/st,spear600-sm=
i.yaml
>
> Please send a fix (and test your schemas before sending).
>
> Rob

