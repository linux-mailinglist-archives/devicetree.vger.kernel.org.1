Return-Path: <devicetree+bounces-62706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F65D8B20D7
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 14:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9C13283BB9
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 12:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8D812BE86;
	Thu, 25 Apr 2024 12:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bzEEEkKb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB2612AAF8
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 12:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714046580; cv=none; b=KoG/8YAP1W1qamVKX6CRnhb3bC61pG9BQOl7P8dNP4DCI49097jsE4BrIxxc35dbBkUNDiqEhmCLQUVHVolvlivnHxX/pFvPCB0BGYyT0jVskOSYEwWxU+d4ii7fu9wtffSiTvEEuIfLNVcbKMDHLXTC4lFezE9eUylOC3leank=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714046580; c=relaxed/simple;
	bh=jphqvKLIukinGvb9JMFC352rTpP7/8VXNF6oX6moPJg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rXDPa4H/LXxOZq1Lhx5OFP78JDBCPn0fFXRmAmxPaMe8Blf+X24bZmLuNumZU5GthQb5P/8ZfR5OoE6VlJXNX4w/inQq34syx2duCsQyMuHeh31mA1yWD5wG91ZWwDUJehqfvoh8hPlU54+jeQVb2oU/z57Sbmxfbg9NzQuNi8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bzEEEkKb; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-34c2e765bc6so98736f8f.3
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 05:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714046578; x=1714651378; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AZtgfXbbk2xQsw1Lmj4dmQHGao3EmNipVbMSfwpwCWw=;
        b=bzEEEkKbvW6eGqugSTDMMWOARDxCjrBsB73AuYu3mBKufCDyBoIybIf87+O8o/cYlo
         8dnUdZWz7hHWcsuR391z2Ojkb/pqqxZqlQCHdC9bYZibdNsvuloWttCqT6b+XqmLs4Uv
         48OkKDEBz208iJOfdVhxV5zKokj68aeJKRxLGZ6kpVaNuokK5jDs2vFgsAlG3QyMuBq5
         VwKvIsDJBDYPid3YjzSDE2MX8GJsE1DbbKcCmdBGjKYCi93pw9si3bzybCHJJSzcPQ9a
         WcWzOPre5zrY/q+I0opcdwYUupRIXZA/bVJR06FpAjSm/HHD48shBQnHYzjWRnbAbEMz
         2zFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714046578; x=1714651378;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AZtgfXbbk2xQsw1Lmj4dmQHGao3EmNipVbMSfwpwCWw=;
        b=cCIVgGI8qgUN4mVfR4eh2/eHUaf9LbqQnf4VaTvspB6GntaGYsKiBxbhQN0RYj1SbU
         BN9aMHUXZHZwL2s9Wr7LuBjMXyXmHIn+M402sYS6RVDDtbejo9WpuZe8HdmaCHxtjTwC
         +UDnjX8U9l48NY+3SbLWJ4P6RqqLQIEBfXnEQUcAvB5ewuFmhyqM7GLt85m6Ufr8qAPS
         VfVwdMxJ01oO0JrQidDM13xRN+62K6oCuK/C8uVMTXn9eCCamUHW57DNcJxhOQwTwRlo
         ES0942JhzJboReD5LKTVE0fm7vIowh6eCJ0sJXOKAg1UbxAfLyq7NpArOxmSKGOK9+Ky
         zHlg==
X-Forwarded-Encrypted: i=1; AJvYcCX4fcvDLjddycNibz9agDSRLGRk9cTg89hVLdsjPykDKsDN4qKSCYsGiZAVbyH2C4zy4mofliOt/AZCHYZXkma8G9hG0k1pkxG/dw==
X-Gm-Message-State: AOJu0YxgB1S3yjoD8goJEXR+brqFdsRPFyaFoZ+eiZicuGhgbaMRQrNy
	TzorHrVuVIoTC919zC4OtP0zAIqhBs1INnlnoQQ0mcrEz1lu6UeHhdUVRPTMZOo=
X-Google-Smtp-Source: AGHT+IEzZdSed4XOrE4rETuECmfdaxcVqf4C7+1LXgTcZDv2J71RTHhX+CpK/z2WbiePkXS0N6SWDw==
X-Received: by 2002:adf:eeca:0:b0:34b:147f:df67 with SMTP id a10-20020adfeeca000000b0034b147fdf67mr3840631wrp.53.1714046577733;
        Thu, 25 Apr 2024 05:02:57 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id w20-20020adfe054000000b0034a366f26b0sm18062178wrh.87.2024.04.25.05.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 05:02:57 -0700 (PDT)
Message-ID: <52403f522a4f7513c5ee5dae48856988f7141825.camel@linaro.org>
Subject: Re: [PATCH v2 06/14] arm64: dts: exynos: gs101: Add ufs, ufs-phy
 and ufs regulator dt nodes
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com, 
 James.Bottomley@HansenPartnership.com, ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Thu, 25 Apr 2024 13:02:55 +0100
In-Reply-To: <20240423205006.1785138-7-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
	 <20240423205006.1785138-7-peter.griffin@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-04-23 at 21:49 +0100, Peter Griffin wrote:
> Enable the ufs controller, ufs phy and ufs regulator in device tree.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> =C2=A0.../boot/dts/exynos/google/gs101-oriole.dts=C2=A0=C2=A0 | 18 ++++++=
++++
> =C2=A0arch/arm64/boot/dts/exynos/google/gs101.dtsi=C2=A0 | 36 +++++++++++=
++++++++
> =C2=A02 files changed, 54 insertions(+)
>=20

[...]

> +
> +		ufs_0: ufs@14700000 {
> +			compatible =3D "google,gs101-ufs";
> +			reg =3D <0x14700000 0x200>,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x14701100 0x200>,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x14780000 0xa000>,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x14600000 0x100>;
> +			reg-names =3D "hci", "vs_hci", "unipro", "ufsp";
> +			interrupts =3D <GIC_SPI 532 IRQ_TYPE_LEVEL_HIGH 0>;
> +			clocks =3D <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_ACLK>,
> +				 <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_CLK_UNIPRO>,
> +				 <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_FMP_CLK>,
> +				 <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_ACLK>,
> +				 <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_PCLK>,
> +				 <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCLK>;
> +			clock-names =3D "core_clk", "sclk_unipro_main", "fmp",
> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "ufs_aclk", "ufs_pclk", "sysreg";
> +			freq-table-hz =3D <0 0>, <0 0>, <0 0>, <0 0>, <0 0>, <0 0>;
> +			pinctrl-names =3D "default";
> +			pinctrl-0 =3D <&ufs_rst_n &ufs_refclk_out>;

The preferred order is pinctrl-0 before pinctrl-names (similar to clock-nam=
es and reg-names).

Other than that,

Acked-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>


