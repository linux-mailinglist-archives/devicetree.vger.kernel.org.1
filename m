Return-Path: <devicetree+bounces-180167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F2FAC2E21
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 09:31:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DDEEA20B48
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 07:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932D51E0DD8;
	Sat, 24 May 2025 07:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yZIWcg1h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC921B413D
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 07:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748071855; cv=none; b=R6KSJs+KUZ2MA48NmCotmz72gv8eh7lVsZOkTI+ehCo4lWgBdBkwlpL60iumnApPy57OPyCOYpaBJ/qh2doA06lJAylrSZ2PUKjK1Oy3tNBN2wzguB5MHr2x12WaK4EJhhKcHgkVaEnZhpBVV4Ae8k54Cq2m/lY8TXW+imI4VEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748071855; c=relaxed/simple;
	bh=O0HVjXkPpQ+hRZJ3BsTB4d4LrVlN7b2E11+rn3JSmv0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PpJJGJEAN0sjntcvvurRGp4wwsnI/NpMTFf3Gg1/tnbTT7f4+uYxScBvXrQNW8V4w2kArwkFx0B/99DqiY929c/rZds7I2gmItmDjBnKA3MHVCQY/ofq3J0614JbHUemsdXmhNFFCmqRjFVI8kDGzwKQbm/m3XYS4aSUEXrW+HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yZIWcg1h; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a35c894313so505664f8f.2
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 00:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748071851; x=1748676651; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZmciNu0LzBJkCwAxE+xP2RniPnh6vstV6TXm+/dhXAk=;
        b=yZIWcg1hyQtW1nvlEACuGJ2992VIPKucVhU95FVk6ONlEV5lmYtSf5a2PMP31wfoVi
         SrIfeajHXpkUXR1a4Zw+qAfmppkMpVZyuKg4QzZFiFiw1NGiY0mgIIR55JYcRWr+HiXo
         CnXpMtAfWS1mXAdZDZgOga5b/PCsQFzcuCMa8/HcPrErjbqt4t1DduM/XfvbRhRq9mJx
         GWrp3tiG4vHQ2VbG1hMo0tVwUuzkekjqXmLbdD68mtk4lg3kRkgNDvuJXAjY9WT+Hy9b
         Ny/Gih81f0Z89JGN7NwU69PlLlT5UippC5pF1yJ8vAtRWEC/DYk4gdYisFCOOAhknCnh
         YMHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748071851; x=1748676651;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZmciNu0LzBJkCwAxE+xP2RniPnh6vstV6TXm+/dhXAk=;
        b=MN/xu6BznM7/QfmKKb5tp1grV4PW83oQ+XT65OlPZHDvzHRrFnaB076QMEFd3SQUef
         v6eUEOiOv6NoKEkft5psHQ8+338ray3UQztA5stVJBaDaNuoKs/ojs+n8Xk2kuEA7A+t
         uLOKacvi5PcC2+MD7bYg4qCdJEUi2irEGnh5+y8QXpWD70+gasblprsgeJ35RIX5DjhV
         np9vZszAX64esXK+0mX8gki0FkTOMv5fQWPiP282ikPFJrmKXV7tAYqdOmuMxhj414b7
         cMDqBvZaVNAe6DEcXAy0o5JkAXqH5l2kGbQEVUsjfNttoK59ePmxpsFsch+X5U2gvdlh
         u27g==
X-Forwarded-Encrypted: i=1; AJvYcCUp6VS+ffOOu6B/H9mCBrLn7ry9hMHpik0v9A7JQy0w5l3lJft7Bow3LL/1MFTxeFIlmvO8LH9BgnIm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6qtNaLT4WTxazphLlfLc4najnkPee/po5sogN/clO4Nztu91Z
	dq79yvAWQtjNFeqrU+fDMMehbOOZV0hHsWph6ST6ShQWSCiaZV0eYhqRKZmzTaXU8gRHAr5UMET
	YROjC
X-Gm-Gg: ASbGncuS8yltkZfwzOJgXYlQx08Au6elAWAR8T6lghdgAy2klymaK1ddxJBJCRciJFn
	VbNS4hxVxvLAeHLabYkepytJX21dt1YKPRii3WJv3TEV2WoHNSHF4Sn3EIOe6Cv5hwvNEc+zLRk
	SE3lstP3y1wa8alDdKidU4liEONB/ZPedJvlUsKC2uY4XyDtxD5PNfjnb1zG9CYqaKmBdYWYWM2
	LZ2coYmD6z5noTCEMqXMbgqoXagsZYE1weiOq0aSuu/VAgz+Vb4LSb3t0AJ/SILSI+QCWqFMsEo
	j5S33s/8R4aJT0jdtXRl1yVi0a67joKfvUlQlWiY+vhvRwExo5zg3ETciR8hsZ42LXgwH7Z7r9t
	3u4bKaFU=
X-Google-Smtp-Source: AGHT+IG3Ci8gKkZTNURWKOCr4Gya8iUahrzHV+bC1Sl6TvVnxfZLPGWzu66llvg0ow/aQlaOFzwp3g==
X-Received: by 2002:a5d:5846:0:b0:3a4:bafb:adc0 with SMTP id ffacd0b85a97d-3a4cb47b7abmr1811022f8f.31.1748071851019;
        Sat, 24 May 2025 00:30:51 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([212.105.145.168])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a3ca066eb7sm10924273f8f.2.2025.05.24.00.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 00:30:50 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 24 May 2025 08:30:29 +0100
Subject: [PATCH 1/2] arm64: dts: exynos: gs101: Add 'local-timer-stop' to
 cpuidle nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250524-gs101-cpuidle-v1-1-aea77a7842a6@linaro.org>
References: <20250524-gs101-cpuidle-v1-0-aea77a7842a6@linaro.org>
In-Reply-To: <20250524-gs101-cpuidle-v1-0-aea77a7842a6@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: William Mcvicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>, 
 Will Deacon <willdeacon@google.com>, 
 Youngmin Nam <youngmin.nam@samsung.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2028;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=YOBJe4JQl9jqFc/zsJIf4PxMvh4EMREF5cXBQbIBA7Y=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoMXWmsxp9Uy82tClf5s61NuoYnyaOBZdxLp10l
 q7TTH3NYf+JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaDF1pgAKCRDO6LjWAjRy
 unU1D/41OXg9QXtmWQJnnjdXLGulkJ+wCDBdcRAn/wUh2RWSgqGI02bMgMVihzdJcnJOfG03Lp+
 vd0CGC1CeypVlnLzTodx/ofUrU0SYY50EDhSOWuA6yDvWXgcDup2GhJ/MRvt/nhjIQneh+9GXOD
 rlp4sDeeR6pJ9pbI4hCOjzy1RWeFJMuxJR3kZGaGqQiDvvgzTssrQ8aJJTT89IpZoK+I8ooyeKt
 xD5Pe04SyIDpMLDsZu4x7Evzir+odIOOvKtRBYltVZ6BSfKWvKnj+bdsuleQ1aKZTooZP2uW2yd
 4qjuklYJkwWSXKFW6NrexhoCQ3m3TBNBDjaTdf/34gjH6WgafDWNcdkkqsX8kHEgmDnYhYK6nsB
 cT8AXkiRVkDeFd26OR99bnDq3i08Kb89ctFbCe2kXkvo2eJvkmGehf6cdbSN2LJdgjpZmGHuWcz
 l2ySFBhvJqaNA49ISF1qiuYfGVBxFqUdXcYNLAOnui5t4CbovkkDOfVsZqlSPIR/vFpNvRhBEhz
 45XNa1nnj+I1OK4L273LmA9tu0ckNz9X1pOZ2XLwzGCKywqoaCS7/IiLHosXLV55KaF4qw8VUQ1
 xUFN1BBPhlGZK0ubJgKgMV0EbOI6Wsu0aDfhxmuGKvsJHrXhT9Ov7+PeO15/9aECA/bZHxLKEHQ
 lEnnr4kQ1D4CV5g==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

From: Will Deacon <willdeacon@google.com>

In preparation for switching to the architected timer as the primary
clockevents device, mark the cpuidle nodes with the 'local-timer-stop'
property to indicate that an alternative clockevents device must be
used for waking up from the "c2" idle state.

Signed-off-by: Will Deacon <willdeacon@google.com>
[Original commit from https://android.googlesource.com/kernel/gs/+/a896fd98638047989513d05556faebd28a62b27c]
Signed-off-by: Will McVicker <willmcvicker@google.com>
Reviewed-by: Youngmin Nam <youngmin.nam@samsung.com>
Tested-by: Youngmin Nam <youngmin.nam@samsung.com>
Fixes: ea89fdf24fd9 ("arm64: dts: exynos: google: Add initial Google gs101 SoC support")
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 48c691fd0a3ae430b5d66b402610d23b72b144d7..94aa0ffb9a9760c58818c0417001fd187b048ea8 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -155,6 +155,7 @@ ananke_cpu_sleep: cpu-ananke-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
 				entry-latency-us = <70>;
 				exit-latency-us = <160>;
 				min-residency-us = <2000>;
@@ -164,6 +165,7 @@ enyo_cpu_sleep: cpu-enyo-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
 				entry-latency-us = <150>;
 				exit-latency-us = <190>;
 				min-residency-us = <2500>;
@@ -173,6 +175,7 @@ hera_cpu_sleep: cpu-hera-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
 				entry-latency-us = <235>;
 				exit-latency-us = <220>;
 				min-residency-us = <3500>;

-- 
2.49.0.1151.ga128411c76-goog


