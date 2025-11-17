Return-Path: <devicetree+bounces-239542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6974EC6655B
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 752964EF2DA
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7400931B81B;
	Mon, 17 Nov 2025 21:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VCQStyD1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AAB28B4FE
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 21:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416074; cv=none; b=Zm6kXJ7OrVqRwhT/+WPjPViCFEIpS53tIybq69KWXVDp64l8KahSEF8k49qg2JpbgTDaNxEF0F0FOahiYZw+PFMWeNtIg+tE9suGn8QVHtiIFstvUJiCEfcUKVWpJPtoCojvGny2+WRlSyEPFHOfibL7ekbWgvLNO6Zj4+YIYXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416074; c=relaxed/simple;
	bh=T3dxPbQ2jaoVjzwoPbkSmnChj+7Q9Kt8EGPLYj9Ei+Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T19fVD2bcDfPQwgkH4aWzwxEIo4qxAdDRjtAkjUALUvr0yLJgmGGFItRcJQ5P1PTSmkW3eJ5KJ8nF3C4YR//UHvRxbcwX3PzOBs20pPE6BZICKOvFRj1w0ZmVytqjQu6MHwQEjx9C+bD0kQtTQQmpPhslXZctNaNWALSaiHe89U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VCQStyD1; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7c75d0bda4aso1688758a34.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763416071; x=1764020871; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FztTc2k5M11TsDtaJ8wrSSkPXnje8lRDmvN72GDsbxs=;
        b=VCQStyD1JBDl6SzsW8TSHGEgKb+bFUaNyA5e7YQ4q293jgZKXnaFa/QXLfUtZhzVMa
         +2sio2PJx5F27ycF17mTTIpX7S+5SPskK2+v6ZUF6a1Y4z/qSBUgDh0xwcAlZwdp5TPg
         kjJj1o+Ax2cqrNZIA5arAXD/q6I/JD3hW3U0l8d2FX4L2/Hpieb0AVCtksGmikIBBm38
         n12mtB93bq2aD7CTWE+y8XVSzznxlE1G0C1jnV2v33D5s+IwymusCKYVZ2vbEov9gcoE
         ZaGW/8p8pPP7WljXgTmAj66/g166oVTGoF+KELTVR1qz2+ZYKAzuj+O7YL03BOdhoJnK
         uegg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763416071; x=1764020871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FztTc2k5M11TsDtaJ8wrSSkPXnje8lRDmvN72GDsbxs=;
        b=ileOIRjwUyjLFgTh1rOzQgXawGyh03zwNw2H9AlSR4yzKPk6HRHpx00lj9DU7mKIoP
         TpzTN0DDubgW5RQLvXain5uJrObxThyrWcVlI9GZ4TwsS/keML06RVMjBWOcYcg7MO8x
         IkWCdNa9dovnwm3yswFnm+H7riWGJoL+tJwwuNrw/hTPc/laQPR/Jq8lqkMLOzRHtxQD
         31W2l+djemYIJiBYgeJKZP35Vr66utlFbhQzBxtCsUrH7Ty4Wqp0Jhn/Ew70ebSBCX68
         b7fSgHDTjsREeSU+xNg3StQyowIp0Zft5f763XcTT3dYve6zN5iYLAo74VIV0aurD1eA
         63rQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtEjLimEwKaSHt1mSlHukQL+Fv+MOTvjgKtR9CyCbDg7M6wD9AxX2mibHIsiO0Hs2y+LfjYH8nZpCY@vger.kernel.org
X-Gm-Message-State: AOJu0YwRdOCezLrxRurxyM6Xz8V+OcF6FMLJjkyQerhglxj5UL6QFWb9
	0mCljdVZUrWSIs7o6VIetF/VLCKRe9Gy5fB/b0abcgdzheOrxy+XQs4X
X-Gm-Gg: ASbGncvAw4fZWmlYrLATixJ2Gr86KIMD3xm4y6xMqKVjz6Fr+KtzCFMhdiqOOGFyK4o
	04uand/5aksW5+7olouxnAt9TRQ2TsEMDsNx6g0ciNXTOavi8yI9ElSw+mJlrQxtF5omdZ3w6nt
	1kJIUCn5/O+Y/anYaRg/BJp3CFVv0j3pppQioubfqvOjJ8ilk76ifQHBpvCwkdJLnkajqTGU81j
	hQSe9DlFTvI/VwYcLBfocA3LmxAIIxU8QHx0Lj1EDIQk90oozwHhQiaqcaPCpyC5sCVSw4orn2d
	8/QI56U2i/3X3W5cYRxuFzpDxSz+V3csxspMTdHLjYDv/CmQM4W4hdxtvjSi9wdTFLlXo09UCfe
	mcuHMgJuKG/cxZMGeLWBhWwnFDFE4ljKCwMd85lHtl7W4QZBQIKAUu44gaQmONlSDIAsFi/9kHQ
	==
X-Google-Smtp-Source: AGHT+IGMYVYdHBolX/z6M9K3TLoZVSU9KkaoXZJ5KYuYSaivd49NkYuXdvP0LyKiiZfq9uKzciAXCQ==
X-Received: by 2002:a05:6808:3a18:b0:44f:6d70:45af with SMTP id 5614622812f47-4509738e814mr6476179b6e.9.1763416071337;
        Mon, 17 Nov 2025 13:47:51 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e8522b268fsm6350105fac.18.2025.11.17.13.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 13:47:50 -0800 (PST)
Date: Mon, 17 Nov 2025 18:47:43 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: rockchip: remove dangerous max-link-speed
 from helios64
Message-ID: <43bb639c120f599106fca2deee6c6599b2692c5c.1763415706.git.geraldogabriel@gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1763415705.git.geraldogabriel@gmail.com>

Shawn Lin from Rockchip strongly discourages attempts to use their
RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
failures that may happen. Even if the odds are low, drop from last user
of this non-default property for the RK3399 platform, helios64 board
dts.

Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
Link: https://lore.kernel.org/all/e8524bf8-a90c-423f-8a58-9ef05a3db1dd@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index e7d4a2f9a95e..78a7775c3b22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -424,7 +424,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <2>;
 	pinctrl-names = "default";
 	status = "okay";
-- 
2.49.0


