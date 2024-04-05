Return-Path: <devicetree+bounces-56477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D01899693
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:33:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C2AC1C20398
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 07:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 009D1374D3;
	Fri,  5 Apr 2024 07:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZReNa9YX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A79376E6
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712302405; cv=none; b=fE+dXMV5sChz2NZjuQmFqFo5pq/kz1PvL/6mWbTdo9tii3FhMtDsYUdSde4D+hc3j+lY5PuW8WrLStjAruZMhysTYWQfjz/2U46hQtQnRp7KLikx9woyF/3+kzVLzrIYmOg2PnOJ/ZI7JCsZlsMcXXEMbigQDUrR3wKaYBgbPQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712302405; c=relaxed/simple;
	bh=BUGMRCvz83jiXivIrS9EOBSbeWYOBA5HEJF91ADZrAA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GdbK669IlGpnMYvBq2bNOhVP2xsM/TX9zqUcGeieBcZkBbdp9oWRWe9qVjG4JRsl+amZlQrgn5e5Lc1eXQ0x1uGe4bR4FwezLcbx+GRtSpAM2ZLSAT4wMwBDQahG0z/zRvxcg+ofiyUkucIWeaZlhr/wc2BvQ85sQ/Ob7eCqxPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZReNa9YX; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4162f7ea50cso2469685e9.3
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 00:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712302402; x=1712907202; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B8/hEIuRB1LDRqXgcrFwyhIe4/Hv1tlerPiYLnPY8pA=;
        b=ZReNa9YXS8ZMfOWeqpFpP4tq58pukI0QowpdIpckGF2mcLvUzbzAzMBoCeyUTVB9BP
         oYGEJIddMB5GJTWPbYk9T4X5zKxaHwCRK0I7eI4zWUcSkxRFWqzZvraZ491yF6soDDUF
         9sxa2XlImdBFLL9Ni6ZSsBpyoi9EXFZkskDI08l5AnRGZONRqn1HgdtzNfp2dY6At/g6
         xTOG5PYbD0BMnEAM9EvmWMcpG0to9L/5Lp5zW02GOpRnS4IEqUYBCiJR9ahGujW8fnV4
         pznDLDytm8r/GicMTSTPRgjCO+f0kyWKeQK5LD9pa2EpK5AuM/jHVCf6sU6K2kh5sBif
         HzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712302402; x=1712907202;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B8/hEIuRB1LDRqXgcrFwyhIe4/Hv1tlerPiYLnPY8pA=;
        b=eyAkDHYEzg9gfov6SL3uff2GifvRO7bnLK6NpSnLV84Akhk9RvNYv1Kp45NeGb8DtT
         NF7zeB3YbVSyLrQ3gmy6+xYNqn++j3ZsVka2oNEfc8GwGvgtfqg+r9wucrN1QTUDDgvD
         2h1zjsHLw6J2DmzBXfDQn1Fjg+yWJmHpq9ggS1e8b6sYcQN4oNdugqSiVa4TWIN22Rj7
         ukCSfNi1F0Co+dHPYUEP5/OdaNGeUCcGu5OlIvT12csNDo2r3+LY0BFMikrkmmoMYBrC
         o3Gwb4za08m84jhEU/FQEMBAIpGR/GSZ0akSX39Kq+W7bLlou9cuNLkgswHqij0zlLZJ
         FVlg==
X-Forwarded-Encrypted: i=1; AJvYcCUhTSrgj1nd4HzcmQEh43Ev3DyajxhOCGNJvB4SAsCosWo95iVkCYirKWBppDeUZlcRhHShyH7FSGoTUkXfk9j9m8Uznd4k77Rg9A==
X-Gm-Message-State: AOJu0YyAq4YJgqhHaqmaNvGXB3H3fHFwi+4x+sVDjIq7peT2I39+OJ7g
	PJDhfe0VuFhnrUrm8W0CFZccfjK5iN1vv1yM/7DmXUcaRHQ5t+rGyNlJ5WBPs+w=
X-Google-Smtp-Source: AGHT+IFauYr0ttYbvunq4xdpMe1oQLsmvrROpymwVJP8xmztwIB4iqaH0gjqAwcT0IX2HxafV4aRTQ==
X-Received: by 2002:a05:600c:1d25:b0:414:7e73:1f5b with SMTP id l37-20020a05600c1d2500b004147e731f5bmr543430wms.4.1712302402435;
        Fri, 05 Apr 2024 00:33:22 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id v19-20020a05600c471300b004157ff88ad7sm1903275wmo.7.2024.04.05.00.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 00:33:22 -0700 (PDT)
Message-ID: <560e9a5b236728f62be4bfd8df187071c4bffb23.camel@linaro.org>
Subject: Re: [PATCH 06/17] arm64: dts: exynos: gs101: Add the hsi2 sysreg
 node
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Fri, 05 Apr 2024 08:33:20 +0100
In-Reply-To: <20240404122559.898930-7-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-7-peter.griffin@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Pete,

On Thu, 2024-04-04 at 13:25 +0100, Peter Griffin wrote:
> This has some configuration bits such as sharability that
> are required by UFS.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> =C2=A0arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
> =C2=A01 file changed, 6 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/bo=
ot/dts/exynos/google/gs101.dtsi
> index 38ac4fb1397e..608369cec47b 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -1265,6 +1265,12 @@ cmu_hsi2: clock-controller@14400000 {
> =C2=A0			clock-names =3D "oscclk", "bus", "pcie", "ufs_embd", "mmc_card";
> =C2=A0		};
> =C2=A0
> +		sysreg_hsi2: syscon@14420000 {
> +			compatible =3D "google,gs101-hsi2-sysreg", "syscon";
> +			reg =3D <0x14420000 0x1000>;

Should the length not be 0x10000?

Cheers,
Andre'


