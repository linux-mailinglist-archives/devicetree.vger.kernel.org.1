Return-Path: <devicetree+bounces-130330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA449EEFAE
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:19:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 924E61721EE
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9489922A7EF;
	Thu, 12 Dec 2024 16:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EF2Lt0gc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5FB229691
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734019253; cv=none; b=bGh6cNOSqyf1OPMjQFr4l1N6myuTZD1Uyhs4IApuOCMgjwW2inFaR98/8NKOHvWOaaHOYoTIkmZT78rSczlv/t6mhXo7iBICB/VKDSWq51lvNr75vhFpJQvW0uNXLqKimbhMCRKWEL4Bz94yFKCC5wzTSOUszlfmc/oI22O9CxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734019253; c=relaxed/simple;
	bh=ce1gfVKuhMWygYDqna0xFI3vmpwGiIISm4wS0eqE5Rg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CY/23BRvBXXKRKWwxh8MdBs3W+Q0y1fUUXeGNfpqdPN4yY/JuPccGX8faMwgMJLp6kd0c5dnMsRTBk2t1H7n98byvMwfLb/o+QiJhQyr1MCP3rxlhE78M2QDuWeNV7+O7yCR18nq0pp5h6FQ+duu3henki+wZllX2ySl3OjW34E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EF2Lt0gc; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43621d27adeso5762355e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734019250; x=1734624050; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EfTUgwKwfkr0vLqCx00ZTihimy0hbAjeLP+a0GkktMQ=;
        b=EF2Lt0gcuPETOwvfCnQp63GY0Hy4N6I8GMAwdPKSB5k4Lf9OgbZRd2kBNnwKF5MfpO
         ou9KCBhXJEWCiOPYOgtym+/KhdXHidjeojz1+/O1eRVon8zmvZysfOB1URQBgTBGaxVn
         1KVmZbjMeB1erLHcLYpj+tJgaOpJ11PhWq5BA0eVNHdEqkDGQBc+yqy2skQNkl7L6Gu4
         tjI5WN2iftW2QH3i69SeyEer5Q74BcYfkqZQNJwmLp8pFKdPrU2SIGRIOw/SLQDLDk6d
         NsXOsJoMwVpbkQnhlUANvxTwsXtWzvaicUDyQ2hXBo/GkxBQQfwA328XNzc60OhF3PxA
         jcug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734019250; x=1734624050;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EfTUgwKwfkr0vLqCx00ZTihimy0hbAjeLP+a0GkktMQ=;
        b=qLpn8bJwcx+7AwK4DmfrwA1Tt+DnRPpHOEGTMYeCnPgL+j0ig0IdiMKsKoZfNg1ucV
         LvqxQ0SQmchUOsWsWbU9DvxsCwpf5n2ISSo70s+LJrWhOQ4IfAFDuzWajuBwmru7XeQS
         Lqy8i/dF2Ja4jmPcYd4YgCkBgg5j79WdzrV9vQEp6bgpqccn0kD7FePmYe+2jp4rUvUq
         xTBkivF0JGPmLJMaM+nYac4cJ/8xxEtxGeGWnkZdqiVBoNae4OB2MTWQhk/3+NP4VqtJ
         W1EkjrUd8QyRlzs30iV5u4zqw5xZEG0+PApiGLtUgqJ2i3V/VG/n4o4zGsF2xgQ2CfFW
         CFGw==
X-Forwarded-Encrypted: i=1; AJvYcCUDY/fgJQTkbEz1sujdgJRQSh79pjKeW4eAjhSnWifHabsNWFIx4FAXnOdfVCnSwGuXWTFWBUuoIfXV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/QQ6aWbWmIvLX4FCCrE4hMsKtWtqaI1cOfNAobm7r7w8z7F3F
	Z7zKLYkOXMp5WVDRZQDPZNlNo9shnH+7NovtZyBfxrKoJJaErTngMqGeWAWR+to=
X-Gm-Gg: ASbGncsVRrKd4MILCMzgMvegSNGWWOFpjMn7J4wR6fW1/O5HSgwCG3Tpl5Du++UcBIx
	4Lt0e1j3bAj3dzMpVyeIAUUKUJHnWHVPqdgHK0m6wR+pBUtsUugPHlHGq6txhED0P6iR6aoB06k
	+Il/AQEiQGxX1Gg8X9oO8H2Gr//Bk0rfcLBm2wo3VrjCtSkNhp4oRzlWuTJHGy39AQL6mRaFWOy
	M6AKYEA2WlX6LhYMDVQK385Hz1Bw/d5GFYcD61lqvNWz2A16k5qex8EJp9wPSse6DsGoVa1+fTN
	8EMZFId8Poe/WGAiVFnlSYNt4EfIaEXXzQ==
X-Google-Smtp-Source: AGHT+IHBwvhfsHZ7qtV6/yU6ZWxHrw8qGSfTmuFY7zgZ0URfdh6kuYfx9vjB//GYI02tJWakncUFew==
X-Received: by 2002:a05:600c:5029:b0:431:44fe:fd9a with SMTP id 5b1f17b1804b1-4361c3e010amr59881015e9.19.1734019249618;
        Thu, 12 Dec 2024 08:00:49 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38782514d35sm4462941f8f.74.2024.12.12.08.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:00:49 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 12 Dec 2024 16:00:39 +0000
Subject: [PATCH v2 2/4] arm64: dts: exynos: gs101: add AP to APM mailbox
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-b4-acpm-v4-upstream-dts-v2-2-91b7a6f6d0b0@linaro.org>
References: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
In-Reply-To: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734019247; l=1282;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=ce1gfVKuhMWygYDqna0xFI3vmpwGiIISm4wS0eqE5Rg=;
 b=yKRS1dg8qQ9WdVmW4a6Zg6eAYV4MUjEMRK91aEUmMZbQw2ZHkn5kV9WpTw9VlRF1IDm6DHmUE
 SXlDqjTvmLxBx4qsFucA34eNpV9XbiYQVPyNFTyq1FYbsLz6NiLkKWg
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

GS101 has 14 mailbox controllers. Add the AP to APM mailbox node.

Mailbox controllers have a shared register that can be used for passing
the mailbox messages. The AP to APM mailbox controller is used just as a
doorbell mechanism. It raises interrupt to the firmware after the mailbox
message has been written to SRAM where the TX/RX rings are defined.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 1441e9a252c2..04561e15b96c 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1445,6 +1445,15 @@ wakeup-interrupt-controller {
 			};
 		};
 
+		ap2apm_mailbox: mailbox@17610000 {
+			compatible = "google,gs101-mbox";
+			reg = <0x17610000 0x1000>;
+			clocks = <&cmu_apm CLK_GOUT_APM_MAILBOX_APM_AP_PCLK>;
+			clock-names = "pclk";
+			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH 0>;
+			#mbox-cells = <2>;
+		};
+
 		pinctrl_gsactrl: pinctrl@17940000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x17940000 0x00001000>;

-- 
2.47.0.338.g60cca15819-goog


