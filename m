Return-Path: <devicetree+bounces-138463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1C6A1082A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD97D3A83A7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 13:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46F163F9D5;
	Tue, 14 Jan 2025 13:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="bEFXh/PO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196DA1A28D
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 13:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736862643; cv=none; b=ULCKVT2f//mW7ah8x/gANnNUotlnGvN5bCFNumM+no4cwsFu6I2USaH8jqgTelC7BW6F3WQQLXd2W58oY5gNIDsjhiE8lKokaq0VyPCjx7AoLqCyiUJ1IVyDjhkbHjp7j9QSVcST/jYpA1N5ur+iGE70h0f6zjrXJICx83eL2n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736862643; c=relaxed/simple;
	bh=MK2AphVmYBUjHm1HCF0DhkauVUycpjqvY/5QFbqNgB4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cGgDcxEA7F/7GCWq30Qh8YZo4emsmiu3RSjXXscaHRPhlLLX5NztBz3O01tO0wZWX0Gd80PIJhRUg9Xe8l19YS8iKgF6a3N8PAENhpqCN81ABmmK3x2WwTENwZqraJza4LvYOVt9YrQ+QngvvOYIjAHR59ldLiCnJrPS3DuO8LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=bEFXh/PO; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5d3d14336f0so9430979a12.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 05:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736862639; x=1737467439; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qK8eJ72oUfZkFBOw+tTcLnGpMzZXzfZ2mLBjQdYOmks=;
        b=bEFXh/POozmDGCRznXWNSkQrNAb4Gv7QjPzIcp1Hb7amkblZBooQDnqgd/ldb1uU2P
         fVgCtEyXsQZ7k8CZrE01/riIWUCdrsuQv0XXR0X5LTilImVzvL9xsB3rdw9tE+Qwd7ai
         n4cuXs2hYyL6Mm1R9O+ugzsJf5X3M5KZKU9dTNkuagm+ZHJe80mGmjUW1U51cXVWFzKc
         hx7nphzBMKxuJNEyJKdX2evsjOgs/LxOOO+BkM54xJRJOI/I1pljYd2l41/rVpYH/QWL
         na9xmzonwRxJKtchTi8Vcar7yZoOcwM0fakqs0Guc7FXQAr0DkyBlJgFC+dLuh7CzLfr
         c7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736862639; x=1737467439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qK8eJ72oUfZkFBOw+tTcLnGpMzZXzfZ2mLBjQdYOmks=;
        b=G44oFOmgGavaP3PSNE6dmR2MnaH25zqxc38rXc7bHUUCSoVBtQ8bRaqU2F+q3uiYGJ
         TnuyxWCc+/wkVPmKEnCZb8cGuL9JMCcgmM0eptVk/DZje9tFO0FRUy2H8HDW48yLUsRb
         jEH9e5J3sF77itQlE+JUnRP5lVuLlPzG1+9HkTYi0afHGamxiKSCfAPoDknPegtePH0/
         5Qxrr+N7R2siesqB9KdPjo50S8z23YlvGegynm87MNCxuVQjcu7hzZpw5wEXM4TuH86E
         x3xsIHjxPlbOJtHiElcqeBNlXh0qAQ33Qo8VMuxTlguwSwKEAvdIScrgA0mAdA4H5s03
         ILDg==
X-Forwarded-Encrypted: i=1; AJvYcCUIoa85DI4Eo6UHyZTVqXnR9zh0IUHiXhQErwWGVzNul9TmG0zZJbuoJmAOiksioONu6JiMIRXDGwXf@vger.kernel.org
X-Gm-Message-State: AOJu0YytC3WILL3s87L/qcINU5TLGRd3lBeCRRfxLSZytzrgrsoi3Nv7
	0D5QwiLkORAH9V+CR5dWH4xE/kiv6DzxRAG3raJVESS/df9xLW4E64v43GlLlmqEAGlcNnzqz08
	pGnwxMxkD4nHsNHlEmYzXcL5AEK3f13Gpuoo=
X-Gm-Gg: ASbGncsMinU6AZ58YjcyBysX5i/bGhPaBbCZXI1elLXtVLZejXwGryLCh5Z4h+UmGrw
	sA9qxLH3LtEYEhHGwnKsz3s/7aDYPy1yDsCyETBngyy9AJKmecKnhUZdyB4pMoegypMCXEpE=
X-Google-Smtp-Source: AGHT+IF46TQhtbMMZMIZCKwTcvvfKRkqdMf4+iusbVX+iTYMmw+SknyG/9KNTOsKRbNl7xnQQq1VrKvxMWJ1gHVadbI=
X-Received: by 2002:a17:907:3d89:b0:aac:1ff1:d33d with SMTP id
 a640c23a62f3a-ab2ab740dd9mr2228481666b.30.1736862639349; Tue, 14 Jan 2025
 05:50:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241121071325.2148854-1-iwamatsu@nigauri.org>
In-Reply-To: <20241121071325.2148854-1-iwamatsu@nigauri.org>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Tue, 14 Jan 2025 22:50:13 +0900
X-Gm-Features: AbW1kvYfwvDX59DGr73TkVKQWrZUOAfV-Cykp2gPV41y5Dp3jhO_fwHVhjZEQuo
Message-ID: <CABMQnVJVTmnsx3RNYK01ikZ-jnn_y4pbrNAeZaKPzz0N_YFz5g@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: socfpga: sodia: Fix mdio bus probe and PHY address
To: dinguyen@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dinh,

Could you check and apply this patch?

Thanks,
  Nobuhiro

2024=E5=B9=B411=E6=9C=8821=E6=97=A5(=E6=9C=A8) 16:13 Nobuhiro Iwamatsu <iwa=
matsu@nigauri.org>:
>
> On SoCFPGA/Sodia board, mdio bus cannot be probed, so the PHY cannot be
> found and the network device does not work.
>
> ```
> stmmaceth ff702000.ethernet eth0: __stmmac_open: Cannot attach to PHY (er=
ror: -19)
> ```
>
> To probe the mdio bus, add "snps,dwmac-mdio" as compatible string of the
> mdio bus. Also the PHY address connected to this board is 4. Therefore,
> change to 4.
>
> Cc: stable@vger.kernel.org # 6.3+
> Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> ---
>  v2: Update commit message from 'ID' to 'address'.
>      Drop Fixes tag, because that commit is not the cause.
>
>  arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts b=
/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
> index ce0d6514eeb571..e4794ccb8e413f 100644
> --- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
> @@ -66,8 +66,10 @@ &gmac1 {
>         mdio0 {
>                 #address-cells =3D <1>;
>                 #size-cells =3D <0>;
> -               phy0: ethernet-phy@0 {
> -                       reg =3D <0>;
> +               compatible =3D "snps,dwmac-mdio";
> +
> +               phy0: ethernet-phy@4 {
> +                       reg =3D <4>;
>                         rxd0-skew-ps =3D <0>;
>                         rxd1-skew-ps =3D <0>;
>                         rxd2-skew-ps =3D <0>;
> --
> 2.45.2
>


--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

