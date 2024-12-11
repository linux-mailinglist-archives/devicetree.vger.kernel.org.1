Return-Path: <devicetree+bounces-129596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D719EC442
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:26:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0F69167B9C
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 05:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B114D1C5F31;
	Wed, 11 Dec 2024 05:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fZX4rFTa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FE71C5F27
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733894697; cv=none; b=cMuzFmg85e2hm8dc8g8i6WExOzzDfMugcuiO7u2O/JUXAmUqYVb/amIrp+fEdVTeQ6P6p/AkcGPzuJMBux+2NEe0cNc9S5heuvTtVsPWQAFAzYLU/1K6Im3P7CDE1o4rTCHqKsr8JENDw1N9PcUYw980Q9CrC3NOrZKDlK1qL6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733894697; c=relaxed/simple;
	bh=JaeMGgUFcLiDKBLrL/rZFvR/uybc6uxeUC4gPJ3E0kU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WMEOeeQnXJIS8zqrUYWO7OvhbQU6ggMGGEc1JN3jZbSgvj37QdhMld8MJ9/zuvaOTFtPcNiydNFraMnWWM5aLdnaqQc/SIwvap16h99THNP1E51/b+sONMiWLDXKEng2Fh5xVmrJ0i0ySrC3nbfEG2nFYYUb5jwS5wz02gi6Ss4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fZX4rFTa; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-728f1525565so134593b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 21:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733894695; x=1734499495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mRYLo1XVsoZcdIe8JMdl8StALXaXVo/fdHv6b61KhZg=;
        b=fZX4rFTaCP45qAinFSKtxXnQ3ILaMKOK2kOA6aZagWyTYT5Sg5Q/GyCG61ggMXt+ra
         OIRq/CSrWm7W5gewCXiSwjtWsW6YaCS4GACUmgHTz9YxbVjQXVyqeiDiD0c1Df7D8Wpd
         7pt5CXtFoC/nMvTKd58rVEOrGxaxDiavrDhx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733894695; x=1734499495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mRYLo1XVsoZcdIe8JMdl8StALXaXVo/fdHv6b61KhZg=;
        b=uCxQwX3sStUoz/4YZ6iMIBkuaq86e+oUhdDFdaXOkFxB1zYI3OPJvgmip9HBBDPH++
         /YzvTX7t1GOBLGl/5KIG96P1Hb5cpmJwy50Ta8eIpxxloJp728mQ+MmKYUbjPj3GY3Sc
         Kp6X9ZG84SrjkxTSLYhehOk05913A2b3nZjIzmgZvBSejSCnGyt2oEhLW/SiW6B1gSZs
         H47pq0zTT9l0urPPN1nKXjWgebBkW+qd6oJnaFDovTpfCEZ5L4CI3N8Zfcdu3QV8llgC
         8TAZr9bcFwTbsExMLzAswDsc3YR57+S3cqEE+7SHOHedRwvh57ffTDSQDty488Bf7ZVG
         RE4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXoOVTluPU7ccmv81yXGS1mIRmSe8xLXSx9U6jaYDZfHEy1Njd1vJ5eMJZ/3P4Vdi8C9PmsXssfgR3T@vger.kernel.org
X-Gm-Message-State: AOJu0YzCV85YGKGS8FDcNSWJU6RvyPRNDtRk2BOn+xIEwj6dFgo1lJFd
	696/pYDszPSP5kOsicgFv5y7y3Ua/N6aCWoWGWkZZ5gy849OYhnKi6LVkx6Tdg==
X-Gm-Gg: ASbGncvIIa8az0frrerRcujXg7VOtoMhqLfKbldWvMGmepjhhjBpkGmKsOs6NyfrDEt
	DuL59cElYzwG0fpRt8afv8+2mL1QkBy/s2BurhMRXrribLtVwpm8YrBwhD5YuRaaRXbIiU022Xk
	V0u8FP6QM54CcImZuWgBxRO5xZiAQAOzgn+TSjThTvqZL4vu7KuKbY0ebzPnTM8qBei7/CPJATI
	nebUbviFiNLEssUZTqHi/iYjS5mdui853zkPkuWGm9zR7ZEeE9W7nEQVqBqYUQXynoJIcxG
X-Google-Smtp-Source: AGHT+IGcmT3GR4NnAQIsxi7y5dgBXEJxX3Yf6AWVmokkpdMshwchaRs79fYSgZNuL4uxCYG7JeSC7w==
X-Received: by 2002:aa7:88c7:0:b0:725:ab14:6249 with SMTP id d2e1a72fcca58-728ed1bb30bmr2871732b3a.2.1733894695561;
        Tue, 10 Dec 2024 21:24:55 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4dfb:c0ae:6c93:d01e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e66801e2sm5397702b3a.160.2024.12.10.21.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 21:24:55 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] arm64: dts: mediatek: mt8395-genio-1200-evk: Drop regulator-compatible property
Date: Wed, 11 Dec 2024 13:24:26 +0800
Message-ID: <20241211052427.4178367-9-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241211052427.4178367-1-wenst@chromium.org>
References: <20241211052427.4178367-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "regulator-compatible" property has been deprecated since 2012 in
commit 13511def87b9 ("regulator: deprecate regulator-compatible DT
property"), which is so old it's not even mentioned in the converted
regulator bindings YAML file. It should not have been used for new
submissions such as the MT6315.

Drop the "regulator-compatible" property from the board dts. The
property values are the same as the node name, so everything should
continue to work.

Fixes: f2b543a191b6 ("arm64: dts: mediatek: add device-tree for Genio 1200 EVK board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts b/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
index 5f16fb820580..5950194c9ccb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
@@ -835,7 +835,6 @@ mt6315_6: pmic@6 {
 
 		regulators {
 			mt6315_6_vbuck1: vbuck1 {
-				regulator-compatible = "vbuck1";
 				regulator-name = "Vbcpu";
 				regulator-min-microvolt = <300000>;
 				regulator-max-microvolt = <1193750>;
@@ -852,7 +851,6 @@ mt6315_7: pmic@7 {
 
 		regulators {
 			mt6315_7_vbuck1: vbuck1 {
-				regulator-compatible = "vbuck1";
 				regulator-name = "Vgpu";
 				regulator-min-microvolt = <546000>;
 				regulator-max-microvolt = <787000>;
-- 
2.47.0.338.g60cca15819-goog


