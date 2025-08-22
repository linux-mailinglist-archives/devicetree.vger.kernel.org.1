Return-Path: <devicetree+bounces-208142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1F7B319F1
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:42:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E846FAE820D
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32785311C31;
	Fri, 22 Aug 2025 13:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gTXH9Azp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CCA3093AC
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869642; cv=none; b=JslHAfVZyeZrZ7bL1n8dEyODx0jDVJ+DOt7Yc9OI8v8PNa5j8Q45F+R5xQo7hzTlidSzDKKCqDl49wyWTX2Ll6DS/k4RL7srbmKdAOujYPJIy0zcB3257++2BouxbqI9yXaLfaaRnmI8boTR6j29y3JDgAcWtKBGRdmvP4Tjaug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869642; c=relaxed/simple;
	bh=gtHwwV3RKSc0NdIoaehkWO49HXFd1zQTXe+JxXko4Kc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R9Qi/C6VLlZY6ecfqSnsEKdfJpKaWW+28uN4UlzMtAlhi4ABad4Xbxb9qhZ52pEcJMsfiMzT7Q7HE4QXh8cH+JqfpU4UB54CoJSnXtBI8bgmcP3d7o6PRgEJVOI2zc7MyKtmm3bCmNaZJnOMxDD/BAHNTRIwnXKW11728SNgoE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gTXH9Azp; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6188b5e3de6so312018a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869639; x=1756474439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7InwlD2Vsu/SAdPgoVwsVcZID6Hbo3ljVtynaU9CsMQ=;
        b=gTXH9Azp0kt6dQJHPWlCTMR0HVkn8hvHjYWLsscnEpCMgJFx1iMzP94/01s0AJe3vW
         rr6vAFrDgGAzib6Jyy8hiSLiEj/U2xKF+fTluryXGE1HnI5ERgWmp2HmLs/46hMxX4di
         VfpP3imU8n40W7ASj66qLxuy2pLMnuATKWAx3jCRahGJhTvwnUxqxpOJocaymfqycNbn
         QYalkoaa52kg3GXvbjOlIzin0CKw/TUS1h4FNiIpYFZJWBypNjE9H44fGJeDPLDzt2x1
         gKS7lH8fPRl2DDjlPsuOt4tDcE0ADAbEigm+TpdJg3uoKZMVH3LE2Ie0JOzY5Up9rXDQ
         EXNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869639; x=1756474439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7InwlD2Vsu/SAdPgoVwsVcZID6Hbo3ljVtynaU9CsMQ=;
        b=r9gGjo6NIeSGtZI74q6m2bRlG1/D/NXfSYx4u7I8J0xU2X7dE0sSB+K1CucQyA3VEc
         yL6vPiR2X0QXgdnQPaaR3hdBgs7sWfSVomvf7Ar06koQZ/LQmk07mwCiz/vOjvl3Oegs
         TR0Lp6rOj+5AEVp/A4Xvxk7Xy5wTvVqtkzqDkJ6BWM0wRZwHSmFFoMFtYHsr1N2F660b
         SL9Jp1YhoPcYjtGUycrg6pSwPAIXBGeqwnbS6/4rWMGn8uPVbuuT5523aVMaYZqPi+0y
         R2f/wgmapn94sKQGMp/iJjlvQrrbeGEKLGSeDkcQVp2M6L2xGlKEF02S5Mk6OPluzm9T
         Giiw==
X-Forwarded-Encrypted: i=1; AJvYcCXz9LGTxW/cZGxi93cV9vgCQN87O+3niSvy579yvv74HlGR7r7ED6bQt06IaVFyGpRro6L84vHlcpJG@vger.kernel.org
X-Gm-Message-State: AOJu0YzQiVL3Ue7pYx1UYOFLTEyG8kuZcOIPPPAjlCeI+QP8orGxpVsp
	nyrYaxw8FuYIEqIFD5sO4CHr0ZG5KfXRXStG4jWIjWXnJH3kbsr5ToYpZa+82o+7WbDGIFZgCpk
	GE+vk
X-Gm-Gg: ASbGncujYvzSo7w2pFZAogxpN3mGBtV6CGK1Wu6rfECuc7Us/H3z5mCafFbUzmk9Ezm
	wsbwUSkAGSxh+6kUFPBSH132T8gR4vJgr5Bb9BcUi7ceNx0ePk1Az9z/k2Ft0HMyUG+m2T5eh4p
	lkAlRiGHdWHLWlArty5mk7e7scg5PAJ17AdJEb1xG7OB4sD3YALQ7QXhJeuy2iEXuA1ZLi4IfX/
	X9ocWu5bO+GzzGqsC++iXf2oAXupx4c2W9E+JffFUw9cTLjGMEl5gdz8P2EX008DqU7KZdOQ98Y
	Al3nL4Fs1eBBULZn/ORzWJWGOuRTbiQQl59XrCkurd626DARQu4SUCBs452grm4CdC7r2aSc2nO
	OyXzGWISKoiElzBwZBGKCqMPVeA3Gyi2J+g==
X-Google-Smtp-Source: AGHT+IFnfyj7hyi0/c09cbjBoTYvL6saQhuWyCyJd0OxPggzM8rvrTPHBbrWyfLXtAnNNs+IcOqPpQ==
X-Received: by 2002:a17:907:3fa5:b0:ade:902e:7b4b with SMTP id a640c23a62f3a-afe29446218mr156790866b.7.1755869638582;
        Fri, 22 Aug 2025 06:33:58 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded537f98sm606493066b.104.2025.08.22.06.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:33:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] arm64: tegra: Add default GIC address cells on Tegra186
Date: Fri, 22 Aug 2025 15:33:53 +0200
Message-ID: <20250822133351.312424-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822133351.312424-5-krzysztof.kozlowski@linaro.org>
References: <20250822133351.312424-5-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1230; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=gtHwwV3RKSc0NdIoaehkWO49HXFd1zQTXe+JxXko4Kc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHHAvQa+zloR+7x5BoZNSjCzszRxYAuAtuQZC
 RR1wxd4X9iJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxwAAKCRDBN2bmhouD
 1xCcD/98E6YrGSofW4XO+nzWaMgShPd+Zag2gRZVtq7olJtSfvHwILrXf6GenyxOzXBqKH/4ece
 wlHSULleesg4wtuJi8B2PeM21wVzDCDq+8857UXiugy7o3wtmxBHnIpalU9vwk4DXF58t8Wa6RB
 dsDZY0ZQhhef+AlrtqsqjSqovnzVz0a9L4q/olTgsjGZH7iVxPRDrrTv38ORkcxy+uMvL1rwzFD
 IzWc3828FLdu4KRL+uRBS7QBjR6gmeCfBZ18qBCi473ZhP8pFqFgiG+rkej7BEk6ACdf25cvecw
 u6oP8d7469TyZf3Ny7jvGSvAOW3BlhA48YfYjRqnDSOmJU7r4ct01yiUCsyGC7trYmiwuqgkeVr
 QzQfTs4Y4x1YsmlKR6kDvCxHEuIepfIApaWFtWK65y+O7CGFFs03aR2vSiq44EltXXmVxV/JZMH
 bMc80xfH2O7Hnc9uzE0/JGBAR6g5OcMyUe8ddYwRkltGoTgX6hWCwFzkWbk6vf6KzaeRfQPR4Pi
 USSXs+N2stx4OwgGSlyjzCONgoY793e+QUbmeRuksaVWzECOVyDA3e/n5XmbFh0GJ8h/9ZS9qT3
 vgJasVhf405Z9eixCZG+YrBcaRuYAQe7jBd2O+uAl0NX1pb91PGsFufAo/VNTm6RUa2qLykTQGd B/qW2yFHbRrlxWA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  tegra186.dtsi:1355.3-41: Warning (interrupt_map): /pcie@10003000:interrupt-map:
    Missing property '#address-cells' in node /interrupt-controller@3881000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 5778c93af3e6..7601f5818f6d 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -1173,6 +1173,7 @@ fuse@3820000 {
 
 	gic: interrupt-controller@3881000 {
 		compatible = "arm,gic-400";
+		#address-cells = <0>;
 		#interrupt-cells = <3>;
 		interrupt-controller;
 		reg = <0x0 0x03881000 0x0 0x1000>,
-- 
2.48.1


