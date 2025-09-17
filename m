Return-Path: <devicetree+bounces-218578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3622CB81DCE
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 23:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA7081C26122
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 21:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932A42E8DE2;
	Wed, 17 Sep 2025 21:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W1ArTGWy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3DD2D59EF
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 21:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758143068; cv=none; b=bcnWWe4pjqih46nuxdEjpBGCvzXUbOfVWgSE96q4Q4X4i8LksFUgDfs5gAjwpiYRBeeku4lrul37uDuSDw+Fwlt61jXU03UPWLGR9it10/gCZRp7gPCl+tHJZQqR0ul3BRgQo9rkUT6wAE396GQcviPrR4AVV7SNtl8i0vxrvoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758143068; c=relaxed/simple;
	bh=JVGWbht0AIun6Qjlh68teSGaROXZ9yv0IlF+VdPftK4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PUU8knRqinAA9X1rOy7TZHHy0dlMypGCrSF9Q6Qt/PsERkTlDo/yi3WwV8OvbrnFzaQNsEvJJfFi11bgSE1EJewpd5YDY9XspUPhaIcwWq75NzwbMT0vN+brtCqfPzx583Or8YSwsDRr9jlY8vCom+gI25mDaQsKfvnZgHEER/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W1ArTGWy; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-7639af4c4acso3100816d6.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758143065; x=1758747865; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5a/ds1gx4KqC4K8yXIVPx/dn9m17Z3x/DqzQJWTDvYo=;
        b=W1ArTGWyRqnTYKGHAot0IDOpyvcbXHNa+7rvbJ6kql9ePdleQxEaZDykoy5jV4rLIq
         Svl7lEQo0XSUXIOog8ukKpuI/7wQKIWwBKGGnQLs81lbjAAWC3EGpb+1xfjCoDP7idx/
         OobJiqzhmACQ9xxNzQFJ1oQpfOwG1ZpM7TcWtk98bXxISTDMEpADEzLuTr2+IqFyi3WJ
         FRUQW5pf30e5hzjB9eOBGSp/VR5cEmUtvo4jd4KJ9dsVNdpQRFK7Y/j6TskLCXklLqgW
         KaMf8sLDPIkFdNxZwqf0j4X/3bAUsvADZZfkMLTEeNNPrg4lBmDCaQvQTZh9ZDs6N6hn
         wMpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758143065; x=1758747865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5a/ds1gx4KqC4K8yXIVPx/dn9m17Z3x/DqzQJWTDvYo=;
        b=edxCoxM0End9l/tqmJDbolI1JxAL7W6lI+NlYc2kxmUPfqWdH6E2M8KjHxMk3rziRk
         cxjMiV7Tf3E7+tOYeuGm9H37EzW80Y3sImDkVAJ133pB330JT7QQtnTiUxszOy/wSPsi
         rFQHvy1lSc6yGsljQBKS3RWCANYvuF1548mLTv0VKC/uPlqcHnFxSs+AdxvPaR3V2ZSX
         k0Qu6TfzRuXyL/whYm/pu/+tVEwlsI6YPTtYZgN/CWVss2TDh6vReWnSM4/IXTiUzJve
         x5z7OjBLvnN96+JzAqRPy1L8bsCfAvGVs8C8ujtFA7P/BzWMnaZ0vpahjgrg3lh0Kdcu
         bsTA==
X-Gm-Message-State: AOJu0Yw46/pxTn8eQApNTVQRuIeIrEMEWRyatwhDg+tDJF+N5OtUXJwg
	TyWsMt1IdAxhxMuwkGfqcN+18Q5px/+cfeJDR6AgIRtU5SuKKdl+gaZh
X-Gm-Gg: ASbGnctTrlj1Ec5KvUbaivAsSM9WwXMlu1rr1nPBuL5Zy/ZPXIGeV7ylqRF6aanV+Cl
	RJYC8KamBfZr/osaNm9pLfI/iyQPMeEjMRYui39UZPP2uaSCnuP1Tpk7wGff7AsAcG9BkcBA0Ec
	l9SWFOpYHux9TIAhE0GKEdUZ7cBqnDvPwT8MblouPcBGSyB905Es4xcDroi+uzon3iPFImPUZEQ
	85YrBpKioTAKl/iyAdabrjF2P7YSeB5Py7Y6gRyUu3DUVgVC6eGp7+NpI74H04Yq2uSfhoB/T1C
	VCDlo+3l3iyC9S+waSz+U6ZmonOTnWe70fPEyNFobelgbcIh6fIuf5pYBLGNajrkSkXhEIDyYLn
	5stWwRB7b8sSnsBmrMQLu6FYbUcKxdVTe3H58tU/51Lp4
X-Google-Smtp-Source: AGHT+IEEobNY5mvQo9Hoc9jbKWSLBHZgY7wKDYM2glD4z7n+JJRlXvy4lKtWRJ8ymIPk5RgLmHss7w==
X-Received: by 2002:ad4:5763:0:b0:77e:aba2:c8a7 with SMTP id 6a1803df08f44-78ecc629010mr31219176d6.13.1758143065008;
        Wed, 17 Sep 2025 14:04:25 -0700 (PDT)
Received: from [127.0.0.1] ([51.8.152.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793543ffae5sm1897226d6.53.2025.09.17.14.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 14:04:24 -0700 (PDT)
From: Denzeel Oliva <wachiturroxd150@gmail.com>
Date: Wed, 17 Sep 2025 21:04:22 +0000
Subject: [PATCH v3 2/7] arm64: dts: exynos990: Add sysreg nodes for PERIC0
 and PERIC1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-perics-add-usinodes-v3-2-a3629e4666ef@gmail.com>
References: <20250917-perics-add-usinodes-v3-0-a3629e4666ef@gmail.com>
In-Reply-To: <20250917-perics-add-usinodes-v3-0-a3629e4666ef@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-serial@vger.kernel.org, 
 linux-i2c@vger.kernel.org, Denzeel Oliva <wachiturroxd150@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758143062; l=1456;
 i=wachiturroxd150@gmail.com; s=20250831; h=from:subject:message-id;
 bh=JVGWbht0AIun6Qjlh68teSGaROXZ9yv0IlF+VdPftK4=;
 b=6YOZaTcSHvbt6omPx/EzhlCOczx1Vt1JC6Z7lBiY+k+fv+DTJVQr5K5rJxYxFGWXUnLopLalN
 4qogKvi13NmDJL4ihOAbEtFSO5xBLAvVjPCxZuEzyirS5zMFPlakKAf
X-Developer-Key: i=wachiturroxd150@gmail.com; a=ed25519;
 pk=3fZmF8+BzoNPhZuzL19/BkBXzCDwLBPlLqQYILU0U5k=

Add syscon nodes for PERIC0 and PERIC1 blocks.
These are required for configuring the USI, SPI and I2C controllers.

Signed-off-by: Denzeel Oliva <wachiturroxd150@gmail.com>
---
 arch/arm64/boot/dts/exynos/exynos990.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos990.dtsi b/arch/arm64/boot/dts/exynos/exynos990.dtsi
index 7179109c49d0b0984c8d8eb2d24c0be1c6e015c3..f8e2a31b4b7519b83aa31deefbc40e5edbb8186a 100644
--- a/arch/arm64/boot/dts/exynos/exynos990.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos990.dtsi
@@ -260,6 +260,12 @@ cmu_peric0: clock-controller@10400000 {
 			clock-names = "oscclk", "bus", "ip";
 		};
 
+		sysreg_peric0: syscon@10420000 {
+			compatible = "samsung,exynos990-peric0-sysreg", "syscon";
+			reg = <0x10420000 0x10000>;
+			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_SYSREG_PCLK>;
+		};
+
 		pinctrl_peric0: pinctrl@10430000 {
 			compatible = "samsung,exynos990-pinctrl";
 			reg = <0x10430000 0x1000>;
@@ -277,6 +283,12 @@ cmu_peric1: clock-controller@10700000 {
 			clock-names = "oscclk", "bus", "ip";
 		};
 
+		sysreg_peric1: syscon@10720000 {
+			compatible = "samsung,exynos990-peric1-sysreg", "syscon";
+			reg = <0x10720000 0x10000>;
+			clocks = <&cmu_peric1 CLK_GOUT_PERIC1_SYSREG_PCLK>;
+		};
+
 		pinctrl_peric1: pinctrl@10730000 {
 			compatible = "samsung,exynos990-pinctrl";
 			reg = <0x10730000 0x1000>;

-- 
2.50.1


