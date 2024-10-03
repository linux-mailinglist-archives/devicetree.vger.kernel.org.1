Return-Path: <devicetree+bounces-107587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C90998F18A
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 16:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBFFB1F21942
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 14:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8928019E7ED;
	Thu,  3 Oct 2024 14:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x7zUtIKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E135823C3
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 14:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727966141; cv=none; b=WQMktuZ+M+Nz9od9d1WxAY+DDJHTF7COxmI2Ho+t1IOjj11sy6SftCH8rK0qpEKSUPKm7xcOyb74IcvoQtFSDvy4BsEuO6gybRo1S3tfH2nNoL/EFEGWRYB0A1A4A4f7MC9QWuKE6Q4pebNULWizhTXpXr6iRu9MDLmH2DQazMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727966141; c=relaxed/simple;
	bh=N54dmoLlNOsGnEAWEfQXefuPa/xhRTadNIraizLCe1s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SSCkmisayIr6DjlpsNfjaJXBsWnmN4WWqB7LPfsIWdtF3a3nib1jav6eDlvJpCxyQ5lYQZq7f320AH2w3YEvC8Xmv3HInWRqGKpYj4fGYpeRY7CmO7NNoLs1c5Xf5dS+vjMdJGEIRNxaLy1BS3iiVK1XYb6q5OR9wFffODNk8kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x7zUtIKo; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20b90984971so10901275ad.3
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 07:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727966139; x=1728570939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FgHlujtmyhcjbOBlffOCoFSVo1C75JdKEXTiZOK2LMA=;
        b=x7zUtIKo77NGZ/Xd66/A6/X07rnomhrP2HGdNdQahM2s5afYER72ogu7H5+8B+WhUc
         PBkrGcbu2cHSoFAm39n+C6ONyAJlM6ir38xl3pyTb7qCmGB+c5t7eGjX4XRg5nQ0Jl8a
         Z2JkhdwMq7BMLV8PwvmAa7MP5DfYbLn07OEti6zMP+tgZnoVCZbmaJNWy5vtzvi9jbPx
         JsDvN6XXEQWHmTWOur71gnyq5erU6CSEtotK9Md18GXOtE4MJGSaxe4ACY7x/5f8K918
         mCBV6QPYfwxDTrMRqOUDEnfo9zRhDZmLJmY2jDwJ3835mJQMFdi8vtaVa7lyJkmo4PeI
         AIeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727966139; x=1728570939;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FgHlujtmyhcjbOBlffOCoFSVo1C75JdKEXTiZOK2LMA=;
        b=eOM4DprfP1yjtU0+8N3jRUE1pBU9AzgpoihXPPGjcoE2vBxSYu/A17nTWck/db7qQf
         oGfeE68XZQSE1AGPIeNaGC5uWNoCK/Da/n4stvgg6oevS9DZ3JVr5irk1o3na9t/82Zt
         2H2vKXwYDlhpIwCf7/fkQy7JCzbYZalwMJXuErhlJ8Yf+ZsFXiQ6IHYzR2XO6F0G93uM
         iJIVAcHXmJQWEBO7Cuon0WLcPbDu0PpMWKwsALx4n3qKJOkkgA6wP/+D37i/7iXnA9Us
         ck3WQoNaBkAyujZjIErVF2jUHJI2/AKlqHOjPjgezCJFW4uqpzUoYBmv2tKXehE7NmJR
         P1qQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzpp20iKu+FN34AHQhfefaHIJyLP2cErbcQoGdDABfSBnwK6MHTn9tIELMR1D8qfgscNiMj1Pg65zg@vger.kernel.org
X-Gm-Message-State: AOJu0YwY97/mcAd14o/cp5y5DUTOSOn8e91Ag5eCD3F5QqgpP+baRuZ1
	Uo5lf3A7XhdX3lRZ/UDM74lZ18bEfDuQ6YfoZq8jJkwwJDn6mGdY1zbUSi3xHWM=
X-Google-Smtp-Source: AGHT+IGom3CsEqSiBenhxOnW/q1sX9QH2g5FjXp5jyzX90DjBX3NOeSBiOf9Phpuy+fg5BEjUvF0eg==
X-Received: by 2002:a17:902:d488:b0:206:b399:2f21 with SMTP id d9443c01a7336-20bc5aaa63bmr103836265ad.43.1727966139000;
        Thu, 03 Oct 2024 07:35:39 -0700 (PDT)
Received: from nagraj.domain.name ([2401:4900:1f28:5e7e:5e85:37d5:85c8:d4d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20bef7fd79dsm9534125ad.270.2024.10.03.07.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 07:35:38 -0700 (PDT)
From: Sumit Semwal <sumit.semwal@linaro.org>
To: stable@vger.kernel.org
Cc: dmitry.baryshkov@linaro.org,
	agross@kernel.org,
	bjorn.andersson@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH] Revert "arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings"
Date: Thu,  3 Oct 2024 20:05:32 +0530
Message-ID: <20241003143532.108444-1-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.46.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This reverts commit cf9c7b34b90b622254b236a9a43737b6059a1c14.

This commit breaks UFS on RB5 in the 6.1 LTS kernels. The original patch
author suggests that this is not a stable kernel patch, hence reverting
it.

This was reported during testing with 6.1.103 / 5.15.165 LTS kernels
merged in the respective Android Common Kernel branches.

Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 6a2852584405..c9780b2afd2f 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2125,7 +2125,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy>;
+			phys = <&ufs_mem_phy_lanes>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2169,8 +2169,10 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8250-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1000>;
-
+			reg = <0 0x01d87000 0 0x1c0>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -2178,12 +2180,18 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
+			status = "disabled";
 
 			power-domains = <&gcc UFS_PHY_GDSC>;
 
-			#phy-cells = <0>;
-
-			status = "disabled";
+			ufs_mem_phy_lanes: phy@1d87400 {
+				reg = <0 0x01d87400 0 0x16c>,
+				      <0 0x01d87600 0 0x200>,
+				      <0 0x01d87c00 0 0x200>,
+				      <0 0x01d87800 0 0x16c>,
+				      <0 0x01d87a00 0 0x200>;
+				#phy-cells = <0>;
+			};
 		};
 
 		ipa_virt: interconnect@1e00000 {
-- 
2.46.2


