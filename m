Return-Path: <devicetree+bounces-156721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AACA5D3A8
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 01:12:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F57B1881E74
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 00:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005773C30;
	Wed, 12 Mar 2025 00:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FVHp8Dh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AD77494
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 00:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741738315; cv=none; b=DE0TbgbBrETIY8oU/cWpOZ62wqBuUnB2HsAW6EUo2JCJ/E0+iOnQNCT9rF7Ghj8vxaPs3zDwFbM41/uMDDQ9SBK4PFO44Sp8VPEQEsqCDdZQMMScX7IJpz27RQJ9v7oe7omnviDyL6NjOIwJQM/EKKa7e5np5AHDKveZYTiNxiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741738315; c=relaxed/simple;
	bh=Vhpu6RqhN90u1GFEqS8WZ68QyeytV3y1M3LAhe7iHhU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K9lHTTS3CUyHyrtIyUBAQgNq2CM2DL18nSZEyOF8694P9b16+NZ4T2lRRCcrcLkbfR9tQfszulvqfzPJpjn+IRkdym0A7JlU8TkkOYCEgp85hRydhfL8qSozjDubkJZjCBPVmdi1Occ+Pw+/LNO0CifqoCyLj+xVrsc6pIenzs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FVHp8Dh/; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30bef382462so11289361fa.0
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 17:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741738311; x=1742343111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+GkhK4viS+WCkr+deNxmeottlEzNcM+YTsy00vrKebc=;
        b=FVHp8Dh/3bSdcIFcKNFTnNc5jw15nxTOgqhN5Gu/6GOHEz9ZNf8Hm1hTZkE4vRFHks
         LCZCsXlcuBSpFqZEaPF7X++Dv+bTFAbjSk0BOgxTo2eHtHJXYiePUZV/m9rWpRtD82tg
         b3gcWSYka0Hz0DrWOv5x74cZeH5pAXaFZQEX7gPNZ4o5KQxlrvT5kQ343lqJLwQv4fv2
         8z7HtpdRu1ocyzPVnz2PofWuOstkuAOCTyXUfSKlrTk6DOd8nj9Zt8WZu5NOGNlrhmZQ
         C8/S6ON+72loHvTCvPSpR9IeCJ30iIQ5F/PD1if4UrXFDEtT4vCFe6y0Vwcj8pDGnznf
         G3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741738311; x=1742343111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+GkhK4viS+WCkr+deNxmeottlEzNcM+YTsy00vrKebc=;
        b=jbPEHAkgmqybU+ng4NemmMXJq268zY8gGJ9TmdGN5xiv4AYPKa93nqNUhYB8g9slvg
         1DJCoEololSOlhVDCd3sc9gFphbmFppQ1U+0tc5xuo8J+olz2aLviJ+77tNwgfiBtFy5
         T0fWWSkcDICPsWY3Wzp/3uPsi9YSx7DPhAQCR1c0GhswFGdNyUdYLOrRPftHtLg6FyrY
         iY97vKRxX0Iue6213Q4IfGZ794yZDbieq5ZSsGOAytqF7kRHdPmuJzxvBM8yrAwonk99
         KFLcVwx3iQPpu3JZxnKYaO0/Rgt7eLs02smGaRiVXYRm5pSwreULsz2F5R/PQcwbNy9x
         PYoA==
X-Forwarded-Encrypted: i=1; AJvYcCWSnQGrYtBwqJYyTxXOb0EEwWrMiosFDTnaFBPmOqHx+yi2Tu1X9/XE6GY7MKmd1OdjDY+E2TPYFmgt@vger.kernel.org
X-Gm-Message-State: AOJu0YzFBGpyKMaVhhc1sI9xrmqUdRCm8iBjY9B9FAWE/K38Th/rtZkN
	yw1H5Ezc0Mqh+PX2S4ta1TJMAogS1Ehdr4pzCAMIGGAfgDlOPMA2SgSwcU2+oeA=
X-Gm-Gg: ASbGncu9YXr2ZP1Oo0Qw8/KgPetYZK9wqFf+D9OfoWdhk0vl8QxqWchcgavEnY6L2M1
	bACvoOoEOOjA9b6vIZMkD/WUeWR8RYmlsm6boKGev2f+ckzGgsS2u6pCDxKgRPndGjuM8KM71xV
	Kx9kr64ww2Bv6It4AVk0q1LmDYn8O9jkoionVb3MHXaLguY5AUFyrA/LDkNzirwknsnJ0gucB/6
	T1CMxg81B1VYpIyDv8BS1qj48vJxy9mQzrwQ8+i/itWgVQLdGSjE4YvyLIJWARWpsMLQcWf0mWr
	6s5ssM137qoDcntWU9YWuHL78hn1wIfSwOxertAD60ZaWDV5hXklStA5wMbl548RRuin1OPqYTX
	2fyayUu908K55PwBW19R2H7WVaHhEpsGY3Q==
X-Google-Smtp-Source: AGHT+IE3aGg2miikjmCVfSPDVDV2u4JxCl/JvcqcglMLCCNbR5JO35QkaAxLbPimjVUrfG9XbI48eA==
X-Received: by 2002:a05:651c:1988:b0:30b:bf18:91c9 with SMTP id 38308e7fff4ca-30bff4150femr21070251fa.4.1741738311067;
        Tue, 11 Mar 2025 17:11:51 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bfe741fadsm15984251fa.10.2025.03.11.17.11.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 17:11:49 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: sm8650: Add description of MCLK pins
Date: Wed, 12 Mar 2025 02:11:32 +0200
Message-ID: <20250312001132.1832655-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250312001132.1832655-1-vladimir.zapolskiy@linaro.org>
References: <20250312001132.1832655-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add fixed MCLK pin descriptions for all pins with such supported
function.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 144 +++++++++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index bf5e238a93c3..526ef2ae8ac8 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5792,6 +5792,150 @@ tlmm: pinctrl@f100000 {
 
 			wakeup-parent = <&pdc>;
 
+			cam0_default: cam0-default-state {
+				mclk-pins {
+					pins = "gpio100";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam0_sleep: cam0-sleep-state {
+				mclk-pins {
+					pins = "gpio100";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam1_default: cam1-default-state {
+				mclk-pins {
+					pins = "gpio101";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam1_sleep: cam1-sleep-state {
+				mclk-pins {
+					pins = "gpio101";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam2_default: cam2-default-state {
+				mclk-pins {
+					pins = "gpio102";
+					function = "cam_aon_mclk2";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam2_sleep: cam2-sleep-state {
+				mclk-pins {
+					pins = "gpio102";
+					function = "cam_aon_mclk2";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam3_default: cam3-default-state {
+				mclk-pins {
+					pins = "gpio103";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam3_sleep: cam3-sleep-state {
+				mclk-pins {
+					pins = "gpio103";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam4_default: cam4-default-state {
+				mclk-pins {
+					pins = "gpio104";
+					function = "cam_aon_mclk4";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam4_sleep: cam4-sleep-state {
+				mclk-pins {
+					pins = "gpio104";
+					function = "cam_aon_mclk4";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam5_default: cam5-default-state {
+				mclk-pins {
+					pins = "gpio105";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam5_sleep: cam5-sleep-state {
+				mclk-pins {
+					pins = "gpio105";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam6_default: cam6-default-state {
+				mclk-pins {
+					pins = "gpio108";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam6_sleep: cam6-sleep-state {
+				mclk-pins {
+					pins = "gpio108";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam7_default: cam7-default-state {
+				mclk-pins {
+					pins = "gpio106";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam7_sleep: cam7-sleep-state {
+				mclk-pins {
+					pins = "gpio106";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
 			cci0_0_default: cci0-0-default-state {
 				sda-pins {
 					pins = "gpio113";
-- 
2.45.2


