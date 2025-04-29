Return-Path: <devicetree+bounces-171790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F31A1AA0336
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:24:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B69D483A34
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 06:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 723CD2BCF68;
	Tue, 29 Apr 2025 06:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RXUPghbq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E072750FD
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745907590; cv=none; b=cvLwC6MC1Qt3qUeU8qScc+4t39E2gUtcgP5knFo8l1ZQB/9FiFuz7PWBs/HdGRCYYXvsyXLAdavveuxxjYPClp67UA1d2uWdjCyNYriUKWQyd7k7rBc8PXQn6GLCymUDLRFUk4HxdEnTcjIXBfBG+TLlcDwpuOi6ntn2wQePBQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745907590; c=relaxed/simple;
	bh=IaWY7tcMqLqpKkGNb2+Er9XE4UoUasfxemcbzBXbz1c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oiiAe+ATHIQAinrVXvWSp6qZEu1GG5XRi2OTeKl0wMK+6TErPYKRxQFCekZ/Js/SgOPTLB6KCh19uchOP8FG3Ng/jjhg5VkF2lGo0eTYUKZri5Thmjc5Pml/ukrn5tvIu9iiN4gr5otX+HkXUZlv5HnYZMjggdNx/8IXoPY26bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RXUPghbq; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c1efbefc6so3801363f8f.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745907586; x=1746512386; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1J1y0j9xusCEdQGMutlBT7sXepSuuDXERtpBDgORlLg=;
        b=RXUPghbqrFgOHLqWGAYtVDWqxCkLTy5HlpYyUJ8IvlZYvcGzI3+dXQ7sUpjy6AzeVD
         RHhzGdPE3OaXjvxAGf1N6G3rFWiKqm5ATLnXRoVXfZibwXexMT3kcMVhYd6XOmuoQzkL
         NGUj/lScu3VwZ5BTbQq8B5426wnYQrKj8xhdvRpy8iy85O0PVQw7b9K6iRYh/uEldGhC
         RagKLBlNckgDymkFPcr4P9dyU3EDdSPHERaa8+RDvq7IkW2EU4Cx5DG6uMX1PAoJnUun
         /hcIlYmFyaHlVDkh+rH398dOUbd+nXWsiNm2ldx6rGdG5wVD5UYHB3kti6Cg5d06Nmhg
         GgzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745907586; x=1746512386;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1J1y0j9xusCEdQGMutlBT7sXepSuuDXERtpBDgORlLg=;
        b=RsQ3v4ESgz78/f0SwdSElIU16i2woHQ2BmAYir8O0Y3gLgeC/QpDjDzo5On568wfc7
         Pep/5yLWniXKylGq4QAScD3ukaN9BBG9DnquDz2ev0/l6zFqliuoC7Da70UkUdMmWdv3
         Lg13gdLiz47z6/Zez1M0CIemXVi8rfGv18yHIfSpfjthzn6cGv+AvIkDfk6qA+hDokrs
         5EV3+4aPxJKxcNqCiXQvRRPruOuBnY8/9aPuYZMPPAA7r9LRAbwkRXipyYiwlc1FbhnK
         MjX38AHXiRnpotUlwghlE7iI7+2abiMlqFwcYh6UrVkoZ1g7qzclX45TlLx2/E4X5oUX
         XaYg==
X-Gm-Message-State: AOJu0Yy/Y5LkfNroRUB2kNCaU0VAH1KSSV15Ob3QU3GeUrxi9zvx4D2L
	sAvbU2jqs//lnNaK6qY3nCHvOUM28w0yxQ6Kqvt3RnR2i710lpPKEjKQZiaehPM=
X-Gm-Gg: ASbGnct+isPEa6hL2LWOGZv/QxsqRRG3QDMpgRV/epyzc6ofguLC+yZkr/lNVwzglN8
	hzbDmg5rbE+7s2LJnR95vivnJsqXvaU/Dl0hf2Kf8FzhBs9Cy/yRrZ3xx9N/idl8zvdK/yJZAa5
	heyh0bHTGslK/noj7z30IY07xthBftCniHcYuUD6V8e3cKbJouLscDNglDhA4J3R2ZD8UjS7j5E
	Xdh52nrymQBMJa0sQttzTRmy7+FeBibFR0CBLPpaty3Xmbcfv1acF28I9zvy0eJR1P7ul54jxYJ
	SeJUCTQ9oU//vTibgJqk5tOJRVp/CQC2uGDcphfZA9tKfdyFwHfOIcakAxodgt8yIt8Uf1A=
X-Google-Smtp-Source: AGHT+IGZHANJgUSXXTUCKNgmTaHbkPL5ZSTXXFAUgVGHprMJ5PNq0SItX2F9a/mxdybpRLb3hlTLbg==
X-Received: by 2002:a05:6000:3113:b0:3a0:7d64:502 with SMTP id ffacd0b85a97d-3a08ad284a8mr867182f8f.11.1745907586693;
        Mon, 28 Apr 2025 23:19:46 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.90.246])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073ca4e50sm13302616f8f.30.2025.04.28.23.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 23:19:46 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 29 Apr 2025 07:19:40 +0100
Subject: [PATCH v3 4/5] arm64: dts: exynos: gs101: add pmu-intr-gen syscon
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-4-1bcc44fb1d55@linaro.org>
References: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-0-1bcc44fb1d55@linaro.org>
In-Reply-To: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-0-1bcc44fb1d55@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1422;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=IaWY7tcMqLqpKkGNb2+Er9XE4UoUasfxemcbzBXbz1c=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoEG98E/mWar0gec4zKdLIOJk0f4CBzVOdq+8N8
 sKDMz+m6PKJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaBBvfAAKCRDO6LjWAjRy
 upepD/9CfAi9gMWNP+Tzfre8i3QEfVw9+FE3nB0W/WZ7KZYj1iNdvEHf1zYDmwuLAZdWrz0erun
 LflTXAUP/aTyszRv1AE+5KS4L/WZBVNvx1ngw4tfcAQmy7vMxpVc/w2C9HERcVJ4F6PT9BdIUgk
 ua4llNq65MYAfMA6xTrOZAGpyFNmHikjkpmcwSPZIhswbdk5qrSDIVdLddND7KX/vg0LKdeEaQV
 S7SlDfkv6c9DnYLfIxV+1mVo9qojm3XK9Hr8tcp5HP+9sew2f0bYqJNvSGB8gvlFcDihxkrzNd3
 bfKUPVug99MeoZEPWN5Kx5P13lis92TLHRRFRyJ/K0uJoWYM/H8ReaaGUfciXjAK3kuLdYE9jvK
 eI74QBlsO6KLLJ2eyoVnc+/OJc9fVrrNt3oH4qJ0Kdzjp4SHroLClpF4O10xFPhYkz7XYfB0xVx
 zYyfXTliI9XJQb36Ax7uDcGMY08WX/nzsP2H7oT/RSiabFTRNtZw4/7zF06F4LazOd12hBOdcHd
 /OG/uyPmOgsS5lcYHaJGCJ87VzPqts8bmsNg8yaOMLJosSNn65rnLN74441fyhJmyfFwE02bXZg
 cB4KS0C69MlZsp97sZ34ep9p87Ox5LMCA8RwHq3OJj1gbXvQOektMyKFNjzeaSFwQdgUsLakLCl
 z8cg1Oj6cSQ/W7g==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Add syscon node for the PMU Interrupt Generation registers.

Additionally update the exynos-pmu node to provide a phandle
to pmu-intr-gen syscon.

These registers are required for CPU hotplug to be functional.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes since v1:
* Model pmu-intr-gen as it's own syscon (Krzysztof)
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 91cda7758020563b2c5b5768d8921e87b1f4231c..48c691fd0a3ae430b5d66b402610d23b72b144d7 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1405,6 +1405,7 @@ sysreg_apm: syscon@174204e0 {
 		pmu_system_controller: system-controller@17460000 {
 			compatible = "google,gs101-pmu", "syscon";
 			reg = <0x17460000 0x10000>;
+			google,pmu-intr-gen-syscon = <&pmu_intr_gen>;
 
 			poweroff: syscon-poweroff {
 				compatible = "syscon-poweroff";
@@ -1434,6 +1435,11 @@ reboot-mode {
 			};
 		};
 
+		pmu_intr_gen: syscon@17470000 {
+			compatible = "google,gs101-pmu-intr-gen", "syscon";
+			reg = <0x17470000 0x10000>;
+		};
+
 		pinctrl_gpio_alive: pinctrl@174d0000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x174d0000 0x00001000>;

-- 
2.49.0.901.g37484f566f-goog


