Return-Path: <devicetree+bounces-162423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA56A7851F
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 01:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A33016C5CB
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 23:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C25215178;
	Tue,  1 Apr 2025 23:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="YM4XhsGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBD42101AE
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 23:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743549013; cv=none; b=p0VoVDGWGTLPz0GUVsHX8QFkqsyh4gYshzE7I697CfQHuKMBDS9+gOr6oB38xKdtkwwKgZ/SIoPIqpiri0bGpaH2AU2CBeIvHDpFPnAlzkfdODREZJSFvR30rw4kyMHsCa7AzQYw9lbRGgvziFMiIHohY1MZzPjgM8+vakGh4AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743549013; c=relaxed/simple;
	bh=ArgquqCkjTlx8ZEocnVlllQn0k30tEKp0YZkXXMU5Gg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=syO7ESu/2DjZP4weWvsKhvpulE8Iunch+YMYjaHtFtBz3x9FPCXc5DK/cv3lrdNHwIh7KfsMwEa389gxpkQGMsXSPwqziu71XwZpMo0KG97BdU4w3OzYnaz8p0Y9ev5qMV9dOQBlrIuCYRHOWxKLWmP3xOLNgzFQPcli2YVxkOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=YM4XhsGl; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2243803b776so51731395ad.0
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 16:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1743549010; x=1744153810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HJoGY0zt2NxjVkfzNkoD0uw5cIldUNLmTUrnr2dqKdI=;
        b=YM4XhsGl5ojT8060Pjb4hlvOT8urcdXU97N2ktfMwmhUHrtJVT1vVZ+NLTc6gkwnia
         aow23akao8z9lx2X01DCznb1Z4eaFwetgMdUrs03OAcQ/etvX8uI896DWclFj1PQl++X
         mVduauIZgSOLIWPaKkGa4sKBPTk2kgjf+BedrclNNTjMZ7RFlTMWsKFf6rjpqN/EzmGd
         q3km5tpwbRXKxidcN9i5DIs5U5+Pb6elAwGcE4RX7tfjoV7PThXH6Bj6bnXjMMOnQZoV
         0YJ2bnLSj/jxda2R3RIBh4OS1rAxvn4/ynexf9Bj9kkZZrhUj8AjrmUFxBe4ew1IA/4w
         mabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743549010; x=1744153810;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HJoGY0zt2NxjVkfzNkoD0uw5cIldUNLmTUrnr2dqKdI=;
        b=n5h0hKAa90GnN7icSHRZqorPWffHz+SCCtP1PyIFEqJ4Y7B2ohr5X3OQ7+elZhcRKS
         z2ekoYrBzEwAUKHzWwh02EPu/IaLmEC4s+X9s1sXOtdJ8qWUbPk0CQknM+kMYbLRCcWJ
         sNi97GqNN7T95iGkSHLTtDH4yYyW7nmNvM9+C7g0pmgB3jD0KhcRWqkK3QIuCVEZrbeD
         Ceq88CEZPJws4bMRenylkHSwE3rrcn0QpLbJOu6bM8Jbr54k1FFPwajk/EPqx+nRtISb
         DcLSDbB8zPd2909lXq6LoZ/WZ2ZKGmOp//xLfg/oWA2AX2oTbpGM6gKJFEePktTB6kS5
         iYbQ==
X-Gm-Message-State: AOJu0Yx02gESk3jSESUpPTVJ/+DtezBfA0ejYgi5b/hplv/9X06huz27
	uYH8REemGO+dLJEtg2zGkljMuhYMag/pl0y8Y+qNjp/mWUpfRhy/99SuMOgxosWiXqiaqSXj0/H
	Y2Og=
X-Gm-Gg: ASbGncv7vyxQlCJqSm1erUpiA801PrCiCBVf3TeJm/14bT4wcF8YkWHLvox+NoSKGtz
	MWfBkiJDaEG1+ZU0+bLzoV43DRaX26792bk46P3yGvbbhEtpnC9sgKM71Nk0ppFd2illNepG6Jo
	hvLxbAyu2dZsTYv2EL7kg/4GxihxhVZRmZPxbnisfS/fMXO71mXO26wPm9REysLF3gIfS746l3a
	9FzKlkAYNpgNulmNgMWBKnR0fQg8kHv3W1FtxQZiMBIEV5U7aFV8h3mYs1P+n1Ititat8wVyzQY
	bbNxQj0RvwLEfcCQc5nn6DJU33jiT3A7vm7cdfvqCg6YZDV3UvdmyolgAQntCdsf8JosxvWSp+P
	pO0eQtL+yOxfTXqt+6c4Th2D8phOoPzA=
X-Google-Smtp-Source: AGHT+IG/6yrvEy0DucEk+7yGDoGxvKtVhd6CgHHuqZC1H0LHR/81r26V6cKIRQYMnCllxZ56ye797g==
X-Received: by 2002:a17:902:db0d:b0:224:b60:3ce0 with SMTP id d9443c01a7336-2296c603927mr2757295ad.5.1743549010472;
        Tue, 01 Apr 2025 16:10:10 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:895:611e:1a61:85c1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1cf170sm95176925ad.148.2025.04.01.16.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 16:10:10 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	"William A. Kennington III" <william@wkennington.com>
Subject: [PATCH v2] ARM: dts nuvoton: Add EDAC node
Date: Tue,  1 Apr 2025 16:10:01 -0700
Message-ID: <20250401231001.3202669-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Reply-To: 20240930214659.193376-1-william@wkennington.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have the driver support code, now we just need to expose the device
node which can export the EDAC properties for the system memory
controller. Tested on real hardware to verify that error counters show
up.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
V1 -> V2: Fixed compatible string that got truncated

 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index 868454ae6bde..c7880126cc78 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -122,6 +122,13 @@ clk: clock-controller@f0801000 {
 			clocks = <&clk_refclk>, <&clk_sysbypck>, <&clk_mcbypck>;
 		};
 
+		mc: memory-controller@f0824000 {
+			compatible = "nuvoton,npcm750-memory-controller";
+			reg = <0xf0824000 0x1000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		gmac0: eth@f0802000 {
 			device_type = "network";
 			compatible = "snps,dwmac";
-- 
2.49.0.472.ge94155a9ec-goog


