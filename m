Return-Path: <devicetree+bounces-64021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A198B7940
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 16:26:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B94C9280C48
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 14:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BC51C0DCB;
	Tue, 30 Apr 2024 14:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="smgkMnUZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3541BF6EA
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 14:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714486496; cv=none; b=CMlK8klyO0XI71Ad5mgCN5TkqJZA5GeFjFdUDmFZnlhrUnbAKXqV53ZJ3NUAJnLca7VjC+c/p2tMMWPkL2d+YwDHIvsLPRGep+HbX7wLz1+h5vGYNsQB4o0BRjrYI0bnXihHH4vbfgdbrlUCrnrqXO4SqyavbsOndZdzHI663O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714486496; c=relaxed/simple;
	bh=V93d3WSQViDZ9tXG7HhzJyV15JnJh1dilCD+DNoBZfs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jP+XIX/d/WFVBg6hRqvgt07cUrmDMO9l75tNc2fneuUXa6e8xBnzdwIWlXFsZTQR1yGIUGdXFxY8txeR/A5q/QVH6PnzyEcofsbygf/m9A0afbEz3xLdwX6xy3v3PbG2va71XJ8Z7hZ0B5yRJN10ZDaz8In4c7KCEbHJ4GxrIEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=smgkMnUZ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41b79451128so33362625e9.0
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 07:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714486493; x=1715091293; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=okmxHGGdUMGilynu2+6miKMjxCF2jE9qtaG3v5cgljw=;
        b=smgkMnUZsGRTahifki2ADIDqCmgLFU1xf0gRvXPJUjUlQAm3HgW4yvMQRdZ6Gtj7IU
         dONwdT8ec+RtAad4JUXCO5mwPe1pZJopgIyyV/ZOZZRtEUQZITQpa9HN9j5rNtORooVA
         eeccx0F5h836sagm3euq6Wpbb1t6qww8vESo+PdvHQCYdTokjHD2JPPVTKRds3+e48pQ
         lynSrzXzNJEwZZ2WY9/2kBUMbacEfhKGq6UxTKmQTmmVlq5a6BGX2PPpJk1U2wp1w3Xe
         OS9qeeHnxUPKx2Ub9YKgcW67Z0vdCKdnBMFx+ssUjNi2cHcMdjzRnZ6biuqreYRikcSd
         NDug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714486493; x=1715091293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=okmxHGGdUMGilynu2+6miKMjxCF2jE9qtaG3v5cgljw=;
        b=QcHp8VJyQmgSbB8RB6TMfV2B/cfebjEpotd8tfj/CWlZRpBO4rDrzGQvnnkmd4mhua
         m/M10fguMtwpyqpcpI0TbMcaeR8xpSMmM/51fmmingeefuzCXSdD37ePWoXKlk4xq5v2
         fnSgSDiHNkHL7ce5zJokPw8bXJXutPXNZFnjhd4cNvpVr29QQfNq6Itrs7LBcvX8aVuX
         IMG3GPJOcEP6TvucTavT7AkIUCfimBlt36FuK6j6FP2zIdNmibG67JzACmSrY3Y9vNPc
         rdJ33Q7M3ZVg5q2+Mkv0F9D8f6VSpsRYxCDpL/A4GqAPDNgj0LD282G5b3mcHuxEsU1X
         gFLw==
X-Gm-Message-State: AOJu0YyNLiRmniM2DO8g7tYh15VqSnL084J3+QE4rWt0GdYdYwU64yMY
	H+ONjjU02B344xtExFSigxwKpwU5o6Vx3Ozlcse3LZtuPhOxLFDxLc4BsaMbzG198/IPPtYniJY
	tqek=
X-Google-Smtp-Source: AGHT+IFOV6Boiua6vxtgJwU/ckgGydalUeT2SdoUtWSqR0XQEJrQaX1crPbKpSVki5bjWuWmiiGApQ==
X-Received: by 2002:a05:600c:1988:b0:418:f826:58c3 with SMTP id t8-20020a05600c198800b00418f82658c3mr11554553wmq.15.1714486492681;
        Tue, 30 Apr 2024 07:14:52 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:f162:7aca:a805:2c2f])
        by smtp.gmail.com with ESMTPSA id r10-20020a05600c458a00b0041bf3a716b9sm11593517wmo.34.2024.04.30.07.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 07:14:52 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v5 1/3] arm64: dts: exynos: gs101: Add the hsi2 sysreg node
Date: Tue, 30 Apr 2024 15:14:43 +0100
Message-ID: <20240430141445.2688499-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.45.0.rc0.197.gbae5840b3b-goog
In-Reply-To: <20240430141445.2688499-1-peter.griffin@linaro.org>
References: <20240430141445.2688499-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This has some configuration bits such as sharability that
are required by UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index e3b068c1a2c1..9f7635a7928e 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1320,6 +1320,12 @@ cmu_hsi2: clock-controller@14400000 {
 			clock-names = "oscclk", "bus", "pcie", "ufs", "mmc";
 		};
 
+		sysreg_hsi2: syscon@14420000 {
+			compatible = "google,gs101-hsi2-sysreg", "syscon";
+			reg = <0x14420000 0x10000>;
+			clocks = <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCLK>;
+		};
+
 		pinctrl_hsi2: pinctrl@14440000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x14440000 0x00001000>;
-- 
2.45.0.rc0.197.gbae5840b3b-goog


