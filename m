Return-Path: <devicetree+bounces-230016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 89438BFEF7C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:59:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2C8504E1314
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 02:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 588312222B4;
	Thu, 23 Oct 2025 02:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rR87PXYI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BC31DF25C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761188365; cv=none; b=CPPABdBB/JmLlyl3f0AzbE9KbvBtQfqF5UsRtVBsERVFiG1TN4YFlbo6Lye4pIqyMDPkSHjARezrmhiAsURQ06BIT5DM9Gko+xc9Co2kx2Q3QRuJx9EHws4dMbZ9Pxwxf44fY3EAF9LZANMpfa3MfWhpobOvZHJD8gmJx4Wl8cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761188365; c=relaxed/simple;
	bh=geeyM3OMTfDjPfzDBYSianuZgGUAcEsr1MJmNCZlbMI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LLQOFgZp3l23XUiM7XXLAoWumJPIrTW0Op6+vQblltHbvRBYgIPYJn89IVPQ7nRwEnbk5DOn+aS5eSR+TtQ6pmWm8J9DDx0qaO1fDxjQlKNkxenZiFLhHiibXHyTewcwAXJkE3Ldgy/jkemHDlm33hk826RbauFHTQVxsK6DiAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rR87PXYI; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-591e6dea3e1so71490e87.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 19:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761188361; x=1761793161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/eXxd5HWhdyu0lw4hYwNFJCVblfs3MWehYS2hRN1AU=;
        b=rR87PXYIfhikJChhrr44V/eY7A4tpSBYz8NftrhYLWUXzFUEEdAqMHrfYja0FMiD4i
         ptMjY9Io93eee/azIQ+tdSdDiAB0qBkCTP8e8OmcSzPo7P9TGaslJR/ayXLlEgk36Vnp
         819nzqsWv3fw+jR7miYO3yn3/OlKkrXIcKfWVLear515CxosXZ7SjAlGCXicgpAG/ngG
         Cwt9P8F9fP1tEFysmyw7AWxna+vX0AGaygnnkNBuAvSOgxkYizOgc5Yutlrgk6yuX+25
         /OhZTRYIwzODL4gwlhA431XjXDStcE6Op4mMZ1QkHLd3LQg2u+9YBa5oz/1YC4wPgSRB
         X3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761188361; x=1761793161;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/eXxd5HWhdyu0lw4hYwNFJCVblfs3MWehYS2hRN1AU=;
        b=ppL/MtXXvVTrTQR2nuHY/9bjq6VEHnZSLyLd+gk19mf/BitnHinvNBy/1Q1t1+sfVg
         FtdfOw18r2+bZ4iwiiG8omw5D38W5sZ6OlWtrEe3WxQ1guugisBYCvQYumU0wHV7ii0P
         5tNhugS/IN1gqUIDtPGvOEViXzGE3QbOa8bhJvMxnip5kerfHMmwUQKKC/6Ybqd1sk0w
         HZSttGMw8jibBKup2VEGAjZvoRMutK+0jDNdyQtDT4x9U3uyqUqGQhV/7SvbY5YVft23
         jN3M+uGj8IwwEpdQTglr5XFI/jfQsNkTPsy1WgoLJDOnbj+Ayrah7w2YD07nPEHmENJt
         uTew==
X-Forwarded-Encrypted: i=1; AJvYcCWoFeE35iaT80Bx6kmSIw//3tektiMj09x1dbfqyIkR9ak0GWsRv5ZaADl1xUTXFz2xByWQt3dZwEDX@vger.kernel.org
X-Gm-Message-State: AOJu0YzXTd2RqHQs8SvILbWoNIa9wis/0eHHrz1MHMiud9TPT/2CLrCg
	+c8UQ4qyUMTKIG17x6iRL2IkfXNYHGlyu4PFgGZUHUiVkQG0k2hycNTTQqS96fLEhyM=
X-Gm-Gg: ASbGncsC17832f28UesswykNU7xrR5bX7H2QFYVjwdwblmr9g9mi+fDO33mV2k6QomY
	PBsBzu7N8GqeVLfZwImOL/Y7bIRu1VSy2CAMcx2siuNkQrNvR/rkAMu/JIosYnk5ekkgcC6l4Tk
	j8P6fET0e2bki7vWT9Rx92Yz+CQcl+xn8fnDivsof9Fc0/mQCGREBVsByRWD9vbhjxdcTVEz4DP
	jLSJ+INfa4NgZsPngrau4CtUzQEgAiqx1IPs1EgyuCXdFdfAMx0Fm7QyIJBWR/C95Sz5whOC/Uw
	ERpPNt1fcSaEpoDvfq8CFXsXsQCFB/T9alW1AM5yMnaPCBwk1BXpfTBvemfTp1cdXedlVjSU5rh
	4vI1qY/Jbi1WOZxkL/Z99mpMe598+z1K0RpKV7AnciqtVf6tNLcsZ7wdJeAg0gfYHBrKwXVrATV
	YtGY/f3c8Kisj0OKyX+ZwAzGd/HGRP9p+9JG8irSkOH3pwh8LUarq98A==
X-Google-Smtp-Source: AGHT+IHJttEdQ/IAj38B+Ud31qMScWCRKeXBQa5Q3Lty28zvVXC3xaBWyBL8GYgHtDG8IwWWYTE5CA==
X-Received: by 2002:a05:6512:3181:b0:581:8db3:d5fe with SMTP id 2adb3069b0e04-591ea2eef26mr1767045e87.2.1761188361428;
        Wed, 22 Oct 2025 19:59:21 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4d16a15sm334471e87.58.2025.10.22.19.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 19:59:19 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: qcom: sm8650: Add description of MCLK pins
Date: Thu, 23 Oct 2025 05:59:11 +0300
Message-ID: <20251023025913.2421822-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251023025913.2421822-1-vladimir.zapolskiy@linaro.org>
References: <20251023025913.2421822-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add fixed MCLK pin descriptions for all pins with such supported
function.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 144 +++++++++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 555305c1c70d..8f934d94d359 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -6065,6 +6065,150 @@ tlmm: pinctrl@f100000 {
 
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
2.49.0


