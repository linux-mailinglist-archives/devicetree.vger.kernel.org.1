Return-Path: <devicetree+bounces-127652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F26219E5DD8
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:02:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BD7D16D057
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BADB229B15;
	Thu,  5 Dec 2024 18:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GsBP90Tu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B73F226ED9
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 18:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421729; cv=none; b=LQRQXCCgP8LIP0ee2iEtm1RjWlZkVQFWmGuqjbrdvWclosaTEgJqnKhMixuCyBHlXk4Vkrs8etFUAvu5Xy+FHi5anLf58S/HoqFGyQqUBX5QY/YIvDfpn+0OZV4JtnFMOmf6Kr/sZYIA/Kkwmzic6/+Z4nlZ8Zh8w0+Hnp8aT20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421729; c=relaxed/simple;
	bh=dlMuW7aHH3sXo8GJQzvMEdKqOSxun+0YrH0hUFqmXK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hwbPAy+2zlGrILpyaXtisnycrs4XMzVnx6qnseJD9PoSzQbNxYTk6jAg8m2VwKL9H+a82MW5KyPdgcRzVcyrd7sPLEcnThbWS2CpjmdOz4vnuwbmgiqZYtF4+dsctNFnX33w4glBbKj4jKZSvPd4KfyVcXfIlQbfPugj1YX8Fwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GsBP90Tu; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-385d7f19f20so613687f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 10:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733421725; x=1734026525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YUhzG3caX9aWXbpAIl+TsEC4KHzPHOePfY0vBdmRaDs=;
        b=GsBP90Tup0DQtGgO1Apm6K21drOeWOqV7zjJyWzva0TVXp2NkLVk5NBLjax+adIt2O
         faqWnDGye38ItpaHSS81LPHGGwxv9bvfm+fCyvjYJPQDQ2M7UBH49Zjc+7qhPmTDdNHm
         5vusRseGmAQs461u5qbVOsrhB+v6iAl1Mr1z8787Wfuf0jI6iqjmh7/WlbElKbVUS3IA
         jFq07UBwgFow0EdiZnA2XX68eQtDbfvt3rFt6BvrSoKJjUvV3la9knmgihYiKTz3k1/v
         /tclNEBt1Wgoq9t0/NA+Y5fR1lfX+Uyt7Ro7uEfuTow2PjQzz5Ed1TwdNUtBOayN0UsE
         dH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733421725; x=1734026525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YUhzG3caX9aWXbpAIl+TsEC4KHzPHOePfY0vBdmRaDs=;
        b=P7jyF85VdIoxWAyY5Li5HVxwcQ/ShNy9kXK71P4bvHKy/hxzty+QsFv6eobLiRqDDG
         SCtk2zTR+V18XnPvZldm9YHgSqIBwkK7+yrMpWI1aWydxy4hUQ4GNIvQDT1miTlfKpcT
         HjgqPqroFLcX8AJlanLVo+Pfviha2HC7idsY0QsYxszNzW2CFxXdu5BHHN7zz41hlWe2
         0pQvQb62kyIMSTWgxsYLx6n71lWoAicCKA7lsmrNKjZ6rNXeYASDBzYiM8hYExhjxj9G
         xgUPUdGXZLQfI4QmFum84E2N3jNEjmCR+lXe5b93BgYfHGwM+fgwKvp1RCKXofIj454e
         eimQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjNVIZWbWWrjX6VTonabJjloy1ydgp1xcsoS/klQfvnsVGx3D0RpIngYhQ78xcFbPBv7cNwaVe1X9o@vger.kernel.org
X-Gm-Message-State: AOJu0YwfhgJVk5a7VWOPMp6t5DHOF2+H37cLyMtGIcRXY8rNA4Y0ufZn
	vLwvWXXuXAiUSPIm+SbXmPzGuw/nR1Ta/BI0BCl33uRW+v4svzcRcXWuLGV55tk=
X-Gm-Gg: ASbGnctaee6xujfELqnFCpRzKbOCe8/hHvtISQhhyK+9xCVj1xvkkskwPWtk8/zMI8g
	1bEoYLo76bPgeCW3r6WwMu2vbQD52FUvaHHs+a6iXpDudxvnB8UqSAWso2SOGscrPMU3r+bI8Xj
	EVe44dSMOe99wjn+m7ZPH0IuvG1FXvDNNOf7s2LLjG2gJGjZtvc11tq5JP4ncZFZptLUm2TlUwI
	iIEgexU7OGjwpv2Y6aXap7qtxkmiA/IzMJ09Swi6dE8YKZkuHdSNWCW9CT+BThSAkHRetjw6N9R
	go9RKI4NHVrAveN8we20z+YB7zYACBM+
X-Google-Smtp-Source: AGHT+IGmIVnSzknE9WcSqtMq8Jlgijm5XW+UPlAChDtBhFcBlLYDYS+u/7aO8ZXJh83ENw/Haen6jg==
X-Received: by 2002:a05:6000:178b:b0:382:41ad:d8e2 with SMTP id ffacd0b85a97d-3862b3d096emr17492f8f.39.1733421724972;
        Thu, 05 Dec 2024 10:02:04 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386219098d3sm2618228f8f.70.2024.12.05.10.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 10:02:04 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	javierm@redhat.com,
	tzimmermann@suse.de,
	daniel.lezcano@linaro.org,
	vincent.guittot@linaro.org,
	ulf.hansson@linaro.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 2/4] arm64: dts: exynos: gs101: add AP to APM mailbox node
Date: Thu,  5 Dec 2024 18:01:58 +0000
Message-ID: <20241205180200.203146-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241205180200.203146-1-tudor.ambarus@linaro.org>
References: <20241205180200.203146-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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
index 1441e9a252c2..0970f6fc1ef5 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1445,6 +1445,15 @@ wakeup-interrupt-controller {
 			};
 		};
 
+		ap2apm_mailbox: mailbox@17610000 {
+			compatible = "google,gs101-acpm-mbox";
+			reg = <0x17610000 0x1000>;
+			clocks = <&cmu_apm CLK_GOUT_APM_MAILBOX_APM_AP_PCLK>;
+			clock-names = "pclk";
+			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH 0>;
+			#mbox-cells = <1>;
+		};
+
 		pinctrl_gsactrl: pinctrl@17940000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x17940000 0x00001000>;
-- 
2.47.0.338.g60cca15819-goog


