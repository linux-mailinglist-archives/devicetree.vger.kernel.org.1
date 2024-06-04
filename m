Return-Path: <devicetree+bounces-72472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5807B8FBE30
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 23:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0BE901F218CB
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 21:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D9C914D29B;
	Tue,  4 Jun 2024 21:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GbijcIrX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CDC14BFB1
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 21:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717537360; cv=none; b=UISn5QCSXHsc8o29frYlOXqhWPeyMCFxNDVcTV1loMBaqdd5t8JmoNFFwT9mtfTvMSp9rjSxM3XBDcF2yeFiOmmgtkxnU8XqJ/XEt1iLhqklvO6xteqp7cmSfKCYf2/1jSyL+JbG4zaX1MWhowawO3o8V/Xo1j0QVYtUPx3m4P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717537360; c=relaxed/simple;
	bh=DR4noGTvQJfxqZgaRPYStAP3sxtorZHW3MerXwYFYK0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nQ2rBFYJtKxDqwXwrDGIIKqJAvuymYvuQHKZHZ+ZvCzpY8VscZ4iUkHb3NCnMkPiTX0FlS3DIIaj9HrQDI0cSZ9+XSA6rgCAknwBjAzfxavWMcHFNRgIScdb8ZH09h9Dr4Yq9AdCz9+1b1a/f3U478Q2bVXplIH9bVBw1AbHA0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GbijcIrX; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1f64ecb1766so13900995ad.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 14:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717537358; x=1718142158; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYm2Ihcymc0GYYvAeFdOt61hcsgG8S3It6RMdtYbi9k=;
        b=GbijcIrXMRHO0d/7I+IjGT8Cj+XG/7mYMDHgInqqYXbroH08fHVwhCxZh5vaQsJFTJ
         FcJfSJrX6Q1SEfUC7upYnBMeDIxMyfGtbLBx0dCxIsMSybRRj//dE36yv1AvwfJCQ7fi
         WSpykp60ocoOBcyRX7zBwFEQnhItQctlw3wkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717537358; x=1718142158;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RYm2Ihcymc0GYYvAeFdOt61hcsgG8S3It6RMdtYbi9k=;
        b=eSw3fMGK+U5s+HeE3dnFSzvMJvX9pcc2B2j8MdKp9+we5u+sFH4sJmib7XHTK3vkCc
         v07IOqWU1aVCK3UuKFDtEuV3zkbHOOnD0RRV1+xSbkTYK6j0FZnCcquULyTOjn1k1aMa
         DgQQd2wQjr5CUsUAjWuGfg5GYU2CK0365gzlG7g7VY78M7l5FkGNv2zJYeVfndBSqI8s
         fF9oQrh0pNRNuoqCq2DdFmMIwKCBhnHKmvmfBoj7i796lY/nWnwcyRuj1fiVFfMuXMGS
         6EunI8VMJ2AToBZKnOONG+DienzyKQtt5glbe7JQ38tZGoEQcobv49Nkaq/LwOqr7iVG
         EIew==
X-Forwarded-Encrypted: i=1; AJvYcCV6NykCijeklOADi68o5pyD0Cfhu8JpWndDMJP3diRScYUEzjQkD7z5ovoEfgLQh9l3gN2cdSYrIIWP7Pjq38TxCMy8hHLSr9IdOA==
X-Gm-Message-State: AOJu0Yy6V/Q6wQm1ECSCHQT2ALhKKlWC/wJOzQuTEG4QljsmUOIrcLZq
	yy62MfoaoOxX1i6mxZKyxEgkXxzduQt7OmbOImOZS55Oylw8h2wyOl+VrjHOi1oKdyGEqGZKyMQ
	=
X-Google-Smtp-Source: AGHT+IFhf8nAUYL+FNdvnpqa7A/O+7CUJFcajK2GH8sYTtYnOeRE9RYY6Tu3RIZW/OiV5NO7hyrY8Q==
X-Received: by 2002:a17:902:e543:b0:1f6:5551:9e6c with SMTP id d9443c01a7336-1f6a5a6b42amr9616895ad.54.1717537358165;
        Tue, 04 Jun 2024 14:42:38 -0700 (PDT)
Received: from localhost (132.197.125.34.bc.googleusercontent.com. [34.125.197.132])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-1f66c412fd2sm51747355ad.283.2024.06.04.14.42.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 14:42:37 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	patches@lists.linux.dev,
	cros-qcom-dts-watchers@chromium.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 2/3] arm64: dts: qcom: sc7180: pazquel: Add missing comment header
Date: Tue,  4 Jun 2024 14:42:31 -0700
Message-ID: <20240604214233.3551692-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
In-Reply-To: <20240604214233.3551692-1-swboyd@chromium.org>
References: <20240604214233.3551692-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We put a header before modifying pinctrl nodes defined in
sc7180-trogdor.dtsi in every other file. Add one here so we know that
this section is for pinctrl modifications.

Cc: <cros-qcom-dts-watchers@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Pin-yen Lin <treapking@chromium.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
index 8823edbb4d6e..73aa75621721 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
@@ -83,6 +83,8 @@ &pp3300_dx_edp {
 	gpio = <&tlmm 67 GPIO_ACTIVE_HIGH>;
 };
 
+/* PINCTRL - modifications to sc7180-trogdor.dtsi */
+
 &en_pp3300_dx_edp {
 	pins = "gpio67";
 };
-- 
https://chromeos.dev


