Return-Path: <devicetree+bounces-287611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEbYJhiA32mcUQAAu9opvQ
	(envelope-from <devicetree+bounces-287611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 14:10:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF60404211
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 14:09:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43A52301494D
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 12:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A9133C19E;
	Wed, 15 Apr 2026 12:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZYEQIbg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C9231714F
	for <devicetree@vger.kernel.org>; Wed, 15 Apr 2026 12:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776254996; cv=none; b=Q9rGJYxfciuXrbWtcHMi7AXmJWesMYDTAfzpKNg0R27bxCyD9N+1reP81JH4L6BDVRihxqi60rhIGHWmTqEY2cV1xjEEF8c5HS9K059xUEwomTzArwtU02bcgjrDAQLQcGWmfsIPflnXjB0laR8YmbTSG4kiCqV5kNkXXkvnWP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776254996; c=relaxed/simple;
	bh=IsZjVVDU7pDTf9EQdpLWQT5bHICKqDwTS3CU10zyGhY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ckn/khqMT7w09jR+DGSDN4V05DlvmrQaqZnieU0VA5hMdRb7gKJykBUSZrBx5vVu1bx7bChMzGR6W6UCw53fWN3wCGEOguph0ZWDcP+yLli2MieisfpBZjcEkPBkM7hnNcyrr+E0T9iMs4SyBL2F3J3sT72vOc+cawvHPWUGlQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZYEQIbg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F3FFC2BCC6
	for <devicetree@vger.kernel.org>; Wed, 15 Apr 2026 12:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776254996;
	bh=IsZjVVDU7pDTf9EQdpLWQT5bHICKqDwTS3CU10zyGhY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=oZYEQIbgYgB0OAggPowebovAj9VVCPvt8g3D0lWYRnkhRRb2ROQDa3eIczRO2Gykh
	 KjpDYVDduOB0ByOCM+a5ykALNN42KrFfJQ+56KSijvxICBD0siV9vz5laEVeZu+zAA
	 HCxmrqRdeAAB6/+EiCS18G/tVdPzvD5+b2aQOZZ3kV8pfH4enftLOmqj1gl1y19L6K
	 wy7FTZ6h/MwN0GZ5zS5T831MdhnGn3qANjXmfHz2LikYsRpsgauVHLzPdmnmr3VKz9
	 yvZD+8uiDyWstMXZzm8PCL2CCls8cPOarIvV7fvgtGVhgwqdcNabEvnlBlP5alYqA2
	 Ed3VsbAc5ouow==
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-671c24f23b1so3866397a12.0
        for <devicetree@vger.kernel.org>; Wed, 15 Apr 2026 05:09:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8ir00cb/GnKyAJcJPVaFscUzNDruiCMOzB4eelKb9kRKJ7uGvuWJK6PrST22YrzftupzXbVzJ35KlF@vger.kernel.org
X-Gm-Message-State: AOJu0YzsE+e/X3N0yyE+e6z4/MvTsnOHi3ur7UYdy4Z3v9YRgDUb/Oyj
	vbeMD/cVq06GzApWuyVaD7otsiP4TuTmFTrx4H0AD5ZXOBG8rmU2qLXOdB6APGIRR7geLAR5pO9
	i+/xUslnmJaAaKRiwRFKWa0KYpofqXA==
X-Received: by 2002:a05:6402:358c:b0:671:4565:6ee1 with SMTP id
 4fb4d7f45d1cf-67145657271mr7292515a12.23.1776254995084; Wed, 15 Apr 2026
 05:09:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260415-pcie-intel-gw-v4-0-ad45d2418c8e@dev.tdt.de> <20260415-pcie-intel-gw-v4-7-ad45d2418c8e@dev.tdt.de>
In-Reply-To: <20260415-pcie-intel-gw-v4-7-ad45d2418c8e@dev.tdt.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 15 Apr 2026 07:09:42 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJp_s1gH438sCTdOr_kTA3A9E8ch48ann-w-8D3ZH6MmQ@mail.gmail.com>
X-Gm-Features: AQROBzC_mAVp6zOHeu_bjQpvZzAb9oxCTbS_Ekqoq7x32sgUj1cFvFnCWugBd6I
Message-ID: <CAL_JsqJp_s1gH438sCTdOr_kTA3A9E8ch48ann-w-8D3ZH6MmQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] dt-bindings: PCI: intel,lgm-pcie: Add atu resource
To: Florian Eckert <fe@dev.tdt.de>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Johan Hovold <johan+linaro@kernel.org>, Sajid Dalvi <sdalvi@google.com>, 
	Ajay Agarwal <ajayagarwal@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Eckert.Florian@googlemail.com, ms@dev.tdt.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287611-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,google.com,vger.kernel.org,googlemail.com,dev.tdt.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,linaro,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tdt.de:email]
X-Rspamd-Queue-Id: DDF60404211
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 3:02=E2=80=AFAM Florian Eckert <fe@dev.tdt.de> wrot=
e:
>
> The 'atu' information is already set in the dwc core, if it is specified
> in the devicetree. The driver uses its own default, if not set in the
> devicetree. This information is hardware specific and should therefore be
> maintained in the devicetree rather than in the source.
>
> To be backward compatible, this field is not mandatory. If 'atu'
> resource is not specified in the devicetree, the driver=E2=80=99s default=
 value
> is used.
>
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
>  Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml b/D=
ocumentation/devicetree/bindings/pci/intel-gw-pcie.yaml
> index 54e2890ae6314ac6847fc23f49440d05d66d87d4..9b7a8ef77585677841c7064c5=
001110bc2b65db1 100644
> --- a/Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/intel-gw-pcie.yaml
> @@ -27,16 +27,19 @@ properties:
>        - const: snps,dw-pcie
>
>    reg:
> +    minItems: 3
>      items:
>        - description: Controller control and status registers.
>        - description: PCIe configuration registers.
>        - description: Controller application registers.
> +      - description: Internal Address Translation Unit (iATU) registers.
>
>    reg-names:

Don't you need minItems here?

>      items:
>        - const: dbi
>        - const: config
>        - const: app
> +      - const: atu
>
>    ranges:
>      maxItems: 1
> @@ -95,8 +98,9 @@ examples:
>        #size-cells =3D <2>;
>        reg =3D <0xd0e00000 0x1000>,
>              <0xd2000000 0x800000>,
> -            <0xd0a41000 0x1000>;
> -      reg-names =3D "dbi", "config", "app";
> +            <0xd0a41000 0x1000>,
> +            <0xd0ec0000 0x1000>;
> +      reg-names =3D "dbi", config", "app", "atu";
>        linux,pci-domain =3D <0>;
>        max-link-speed =3D <4>;
>        bus-range =3D <0x00 0x08>;
>
> --
> 2.47.3
>

