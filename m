Return-Path: <devicetree+bounces-225710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C58E8BD026B
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 14:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 177C818948BC
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 12:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB04772612;
	Sun, 12 Oct 2025 12:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RvqtIVzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26937E552
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 12:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760272425; cv=none; b=rBBt00jhSu1Flvqksnx64AjJ1m/ByrjWS6SfeCVL9dmjwaNpOqs9JJjElFWkb4NglC6AZ4Qbp1SqXAJWe29DcD9qpreGEZcNdOJJ4P2yWWhjbI9Gay8NUMTxg5HgGeYQwpVcwFDMTEKVeFqT/4tHBKq1gOvIrLwVTyYSFmikqLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760272425; c=relaxed/simple;
	bh=DX/Aa4ev/+yOT9IfQP723DHSs0GHO8dh8ul7Eh1RJbU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eYprwJVv6/xO/gbYrFvs4emPDM4RdwKDtUMR4hfec6ikQqP0xOoT1qL/MjWG5p5T4heP5I3MMYd0U/4nksgCQC9BuixtVAbDyppTJRbgw8KOHUQw0QRKQ7Fqjl/2Jvdj2xCptm7DmsrgZFNtl0pIm3enrnvmOJmox6iE6lKEcCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RvqtIVzZ; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b3b27b50090so624466266b.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 05:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760272422; x=1760877222; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pFLLYdbkRgAZWnhHmXH7fo0GfkcQe5REoGIKDLet53o=;
        b=RvqtIVzZSTjdFqICYbVCfkIVWAgfp0qUfkYVWpTR9AYagP8FdAK+zQ9Mf/Rc52fT00
         NcVh14P3lelj5A3aV3IUpV2jFjMeBbh5EkRPyeXm9VoXZ6S8p27g4ntj7UiiyyXtEbRS
         Szg32E5HwxIAIQJvUHnCVP9MMWHeWTlmZqQCVCntlhlQnIR2p0l88R83S+lIZNhYLkWU
         XdXpkJzMrWXiwGROpDwCC2auGsIGDAlApKyJAxkpLUYw1LMxX68vh3ppj8k04MWA6n1X
         cbbiPKMwJNcsqjwQzF13TThKUaJwaaXFID/Dnsg8GmqQDT7SK5uHY81eFJ+JhejrpAVo
         KGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760272422; x=1760877222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pFLLYdbkRgAZWnhHmXH7fo0GfkcQe5REoGIKDLet53o=;
        b=kV1E+JwNfWMmQQn2cBmmqrL5pOxdIBPQtmtEZitLPqxgED9Ydnwl8p7jSN4bLrAwOd
         nZcaRLFQRcOWqJoucSXFi6oHfqPNH38VT/T+JelLBUQ0An5xtdU9LQzGlt2X//l9M/EJ
         5CBmIWeFh2FzVsP0hkR+T9w3z0eN9iYIF4jC8EQymkOCOgm/PZFtw4sGKF3q0vbNWpNE
         mrtk62lptWGE0OIhcIwdLcRErdBfpQGN6ASmt93kTBlIjYMvNgEOCi68ElDyrErAgNBA
         pGo+Jbk4V3UPIU1OZaiFuUXR710QzphnySrcrUdWQ+9EWEfPTVxPwUgerl2kcCTOTlJy
         jBkQ==
X-Gm-Message-State: AOJu0YzHFTIYU0EJt3MQbf1K7IyNEmIqMwbzgoPm++umEU5+axEKG2/+
	1rRunUscg4k15o/GaEM1NrPSL3AH1eRdK1H1fbMUlGwYGOiSTUwxixDLbaPGBIKgrM4=
X-Gm-Gg: ASbGnctTQd9tTB23PzYJ+y43v3VWEHoWi9hR3j4R1v4KnxBoE879g5R+daZj0eZYj9E
	eSxd0Gbd6lrgekauvG7W6iM054TK9HzV9uWs9jSawlqvjboBc6fucbRddcOpDr/AwWXfVe4O2au
	B6dGiLjCMrSc3EA4sIelwkhcK4aCjf2PL3Sm1kNJsildPzVKuiWfk24i6cXzwfSndFSAD/QA3Iw
	ukKi69O90ANqC7B3H5LvrQV8Js5H9O2q9CkHH+dOtMb5tgvuGHYH9EHwW3XTo5GuQ8xYSM/uMe3
	FxmZAo3b8ANEOriIZrzq8ojX+UbrVthCrZS666A4bAgyPqdh9CcnzmbrIv1muBQ6dEJTnZq5Kni
	ZlfdxMkQblMzwv+PDXZZRIB1llyzSurCH5nku9wf0hupqR04HTZAet/j3yQuq3JaCnSx/JuuEcB
	bw
X-Google-Smtp-Source: AGHT+IFAjyDvaV3oWT4PWZK+4NQ4+mKhqPinNjTBXV2nObp2QaUZEx9ZFWF36Ui7VatYnmT32IIKmg==
X-Received: by 2002:a17:906:f989:b0:b57:1f86:b30f with SMTP id a640c23a62f3a-b571f86b72amr448630366b.24.1760272421798;
        Sun, 12 Oct 2025 05:33:41 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c12a8esm708449266b.42.2025.10.12.05.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 05:33:41 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Subject: [PATCH v2] arm64: dts: rockchip: Fix PCIe power enable pin for BTT CB2 and Pi2
Date: Sun, 12 Oct 2025 14:33:36 +0200
Message-ID: <20251012123338.344271-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix typo into regulator GPIO definition. With current
 definition - PCIe don't up. Valid definition have on
 "pinctrl" section, "pcie_drv" (gpio4, RK_PB1).

Fixes: bfbc663d2733a ("arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2")
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index 7f578c50b4ad..f74590af7e33 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -120,7 +120,7 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie";
 		enable-active-high;
-		gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_drv>;
 		regulator-always-on;
-- 
2.51.0


