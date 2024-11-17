Return-Path: <devicetree+bounces-122382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EC19D0287
	for <lists+devicetree@lfdr.de>; Sun, 17 Nov 2024 09:54:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F16DB1F21473
	for <lists+devicetree@lfdr.de>; Sun, 17 Nov 2024 08:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38273481DD;
	Sun, 17 Nov 2024 08:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="h6XkncAE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A822BB1B
	for <devicetree@vger.kernel.org>; Sun, 17 Nov 2024 08:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731833661; cv=none; b=G+QAjvXdvNdgjb+4TtYPNYWue6MHRQHNkRGZUZHlmeC+8uazGMOk9TfoOV8uFwLq5v77fXUvuI1Q7HGG3ubJwkpFlDCngIQvMNkLiNUd+cqKYHqPmuVlr0mqHQrrzWt1uBfPL7xidqxSONEr5pDGvjQOeJKZCjIhAXQiodtQiec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731833661; c=relaxed/simple;
	bh=1CgclRnp10ly/JD5SiLrTDFla8mus//SPDBxcGQV0jY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r3vGdDCwV0b79LoCLKjXM1DX6vS50pIDkpKfaJr1u+eUijXNGHX79RFSeLGceH2Rfzgbbf8EwvR7fLE3MbxtQhRjJngntrwcAkOKR9t4ZLBTqutn/qqt5NFSOIZIXfHox7Td/SKHkN051ge4yAdqDA+uFdvsJP6chyMPJqXrjyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=h6XkncAE; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa1f73966a5so228363566b.2
        for <devicetree@vger.kernel.org>; Sun, 17 Nov 2024 00:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1731833657; x=1732438457; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aAFozerT8AmWvaMiQhtVKgrLvIOoUAQYsmUVcu4V1u0=;
        b=h6XkncAEP5lZU7dLWT3iVaWZKNTd2D+jLdHb1E9WzRlZo64hwVFLdlpw+PNj9jiEfE
         0ZSMBx7zlbgpHYESCAPSp+JJychIe+cq8er/XXvfdfzc2vj6Iq5LZag7iIpZ4n39VDo5
         PLIoq9HzcRmAaft/8e3R0mMPQ1YcRCJHLXWgdvJs2UZBnWeL8omeRGty+LKgYDIGv+fc
         Kt18gEPB4r8A+iJvyrnUZejvuru3ukTC6/+c842PC29ByxB+WnbDccY9VfR2dMZMT0IC
         MF8M/7NFqx+g/52D3aoEM55HIYdG9e74B1P2YYFIi4RotqO90QBGT72Aa3d0/PqxOiuY
         d2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731833657; x=1732438457;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aAFozerT8AmWvaMiQhtVKgrLvIOoUAQYsmUVcu4V1u0=;
        b=s4Hwb0satGPuM/vRoW3WuLdUp18LM2KQZ+6eelWT3951B0ux63ja5I2yGyEqgxu74j
         3vHvtRBLD+126iMEeaCDQZXI9ITZLSdUhK1dh1lFVCBwHDl4wqPKs2nsEp2Ynn6/WLk/
         mFwNKF1QNbyhz2toVV9xJm5HRx2V/TqDkF9ylpb8e+K36P2/dk8syUZRn3mTTquoqz9q
         xuF8Hj68cDa+ACsqjpRkcPJgv0Wo9aopMTVcWYmigxl+wQlh/yN84POQCv2fatgP/0kB
         e/trpwqEf0q35Ct22hW8H9QC84RoT8Krx+hEYIfFxpIidUvmSANZSMkPxwv7vL0V+faF
         KGiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyBiqfwd5JTD5JsvCjVfYkacMnw7S13vFYY10RTL4V0dfoj+s+QNJkhXVTfUw4nkQcCk14KfHXTx6M@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Ws9/28AZ5Hh4uCKHkxsO+v7X4E7GPloAmKjf57b9XKvsrjId
	IzecvmS/9XmRwUW7l4nbnEHC+c7SZlFFJ85YANLZ7/7UOreSVVtjVMhOnrvpWmzL4Ck+We+P5gv
	tWEgXEgZfY5zjAElC25KxvRW3jgDBvJ2ePy0=
X-Google-Smtp-Source: AGHT+IH9A6EZKAlNlaThpg9AAuD/cbmV9VJvtt/bhTQvVCtVUAtunC0O/fpyJLc/etjVvqahiNW3SCx3U6/D6U7BbUI=
X-Received: by 2002:a17:907:3f98:b0:a9e:d539:86c4 with SMTP id
 a640c23a62f3a-aa4833f41cdmr702610266b.9.1731833657034; Sun, 17 Nov 2024
 00:54:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241004061541.1666280-1-nobuhiro1.iwamatsu@toshiba.co.jp>
In-Reply-To: <20241004061541.1666280-1-nobuhiro1.iwamatsu@toshiba.co.jp>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Sun, 17 Nov 2024 17:53:51 +0900
Message-ID: <CABMQnVK_RUC84QQ5zb+ZpuMOZcFMNV6HzEYAfmX4bOrRm+rvTw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: socfpga: sodia: Fix mdio bus probe and PHY ID
To: dinguyen@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, robh+dt@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dinh,

Please check and apply this patch?

Thanks,
  Nobuhiro

2024=E5=B9=B410=E6=9C=884=E6=97=A5(=E9=87=91) 15:16 Nobuhiro Iwamatsu <iwam=
atsu@nigauri.org>:
>
> From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
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
> mdio bus. Also the PHY ID connected to this board is 4. Therefore, change
> to 4.
>
> Fixes: 8fbc10b995a5 ("net: stmmac: check fwnode for phy device before sca=
nning for phy")
> Cc: stable@vger.kernel.org # 6.3+
> Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> ---
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

