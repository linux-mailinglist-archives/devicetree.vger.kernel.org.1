Return-Path: <devicetree+bounces-264422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHKgAOw3i2neRgAAu9opvQ
	(envelope-from <devicetree+bounces-264422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:51:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5714011B6D1
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 240093033D31
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8945632AAAF;
	Tue, 10 Feb 2026 13:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tB5ySOaJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AA432A3CC
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770731288; cv=none; b=dkDADuiAb/R/pmVZ7RNpbKf+Unx6tCOQzStLJ0LP67aGQch63CCr0gmh8waQJZenngfr1ncm77kH0p4mveIVDl89lV4o2XuvHUSIicnFZydxLBMO4FZIw74PL9he7fJvxaek2KcExAHOHmJO8u0UDysz14S1PBkT31KtAY9JI14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770731288; c=relaxed/simple;
	bh=LmTxtKmCP+MxuknULWOn/5V7LbPqudyZbQ+Sx9xXVso=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R4KcW4isGZtDi5/ftyJ9SEwCeRfHNmcoHBLhKmWLmKDVknTAoH5iqm8UKYip9+EspMHhvSukCDFJhFNStfqN/yoKD1p1+N+EwEfdbkU7ped5YEGrQvic/ezZiBwtO5MnRjPUDr90vjXraWd7BsuRDgHLuj4BLJj6v/AjfLFUeK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tB5ySOaJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC88BC2BC86
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770731288;
	bh=LmTxtKmCP+MxuknULWOn/5V7LbPqudyZbQ+Sx9xXVso=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=tB5ySOaJV8lHri9LqnMSCh2UKkQVk0EUDAuJB4ivOn51t7Ta+0uje4oFdm4ULeDcH
	 XNyee8K0JOFgDePPFVRW7y8xJBSORn1nRrXltTZZ7J07X9a9h7ogiUWJ348uRyvV6n
	 2zyKF/IEvFASPBAU/4zNwyGYfbYNzv27+T3o8mQpMmDcGxOEzoXMrCUTCHnu1/+u2E
	 f93LEBokV3Z70gt31NqJ+juG7b/Y648igJzoDPgF72VKZzAafXWUEkU2Gd9avzvB0f
	 mQdWKWXn0vznQzE3WdqCAhTxRIU0rb4Jg1lhdJwwmZ3hbG66GtYg6YJf5CHJwKiqqn
	 b2JY5sl58wVnA==
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-65832e566edso1133597a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:48:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVmKsgrq6E/HZMVkIwMSn9v3GxGGxt+WBFs7AoHBS5SMVfjxODtwXBPHL6Nrk3gazCMVa2jB0LCL5NB@vger.kernel.org
X-Gm-Message-State: AOJu0Yypd+RDpjn46UkIjorlAVIa96qZ0UJxGXzAxXWahM4bbUsSTrBG
	FqOkEVAm1KV4dYFJXbPumuXJWgQRd5/KcIlTH2A4fHJbb+Omx4/C07CW7mUFhp6w90tszMYf79W
	WAPttoXr0GI8P3Pc6GniRybk5gRNZCA==
X-Received: by 2002:a05:6402:34c2:b0:64b:5f4e:9e6d with SMTP id
 4fb4d7f45d1cf-6598416c3dbmr8257225a12.18.1770731286484; Tue, 10 Feb 2026
 05:48:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
In-Reply-To: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 10 Feb 2026 07:47:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJhnuWzPxUWywZkjt=zc0nSFKP7hM_ekmKKr7p_jXaaag@mail.gmail.com>
X-Gm-Features: AZwV_QhIFz36bxFd9be2-_8um1iPQH6w35jojRXwkeKdwVtXGhkeLtoijsXwqTY
Message-ID: <CAL_JsqJhnuWzPxUWywZkjt=zc0nSFKP7hM_ekmKKr7p_jXaaag@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: st,spear600-smi: convert to DT schema
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264422-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,nod.at:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5714011B6D1
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 10:23=E2=80=AFAM Akhila YS <akhilayalmati@gmail.com=
> wrote:
>
> Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
> Controller binding to YAML format.
>
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../devicetree/bindings/mtd/spear_smi.txt          | 29 ---------
>  .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 72 ++++++++++++++++=
++++++
>  2 files changed, 72 insertions(+), 29 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mtd/spear_smi.txt b/Docume=
ntation/devicetree/bindings/mtd/spear_smi.txt
> deleted file mode 100644
> index c41873e92d26..000000000000
> --- a/Documentation/devicetree/bindings/mtd/spear_smi.txt
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -* SPEAr SMI
> -
> -Required properties:
> -- compatible : "st,spear600-smi"
> -- reg : Address range of the mtd chip
> -- #address-cells, #size-cells : Must be present if the device has sub-no=
des
> -  representing partitions.
> -- interrupts: Should contain the STMMAC interrupts
> -- clock-rate : Functional clock rate of SMI in Hz
> -
> -Optional properties:
> -- st,smi-fast-mode : Flash supports read in fast mode
> -
> -Example:
> -
> -       smi: flash@fc000000 {
> -               compatible =3D "st,spear600-smi";
> -               #address-cells =3D <1>;
> -               #size-cells =3D <1>;
> -               reg =3D <0xfc000000 0x1000>;
> -               interrupt-parent =3D <&vic1>;
> -               interrupts =3D <12>;
> -               clock-rate =3D <50000000>;        /* 50MHz */
> -
> -               flash@f8000000 {
> -                       st,smi-fast-mode;
> -                       ...
> -               };
> -       };
> diff --git a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml b=
/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
> new file mode 100644
> index 000000000000..8fe27aae7527
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/st,spear600-smi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics SPEAr600 Serial Memory Interface (SMI) Control=
ler
> +
> +maintainers:
> +  - Richard Weinberger <richard@nod.at>
> +
> +description:
> +  The SPEAr600 Serial Memory Interface (SMI) is a dedicated serial flash
> +  controller supporting up to four chip selects for serial NOR flashes
> +  connected in parallel. The controller is memory-mapped and the attache=
d
> +  flash devices appear in the CPU address space.The driver
> +  (drivers/mtd/devices/spear_smi.c) probes the attached flashes
> +  dynamically by sending commands (e.g., RDID) to each bank.
> +  Flash sub nodes describe the memory range and optional per-flash
> +  properties.
> +
> +allOf:
> +  - $ref: mtd.yaml#
> +
> +properties:
> +  compatible:
> +    const: st,spear600-smi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  clock-rate:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Functional clock rate of the SMI controller in Hz.
> +
> +  st,smi-fast-mode:
> +    type: boolean
> +    description: Indicates that the attached flash supports fast read mo=
de.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clock-rate
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    flash@fc000000 {
> +        compatible =3D "st,spear600-smi";
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +        reg =3D <0xfc000000 0x1000>;
> +        interrupt-parent =3D <&vic1>;
> +        interrupts =3D <12>;
> +        clock-rate =3D <50000000>;  /* 50 MHz */
> +
> +        flash@f8000000 {

This is now a warning in linux-next:

Documentation/devicetree/bindings/mtd/st,spear600-smi.example.dtb:
flash@fc000000 (st,spear600-smi): Unevaluated properties are not
allowed ('flash@f8000000' was unexpected)
        from schema $id: http://devicetree.org/schemas/mtd/st,spear600-smi.=
yaml

Please send a fix (and test your schemas before sending).

Rob

