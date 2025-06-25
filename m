Return-Path: <devicetree+bounces-189613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 089E1AE881C
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 17:30:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C68A16ADD5
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 15:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 270C525D213;
	Wed, 25 Jun 2025 15:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="GoHy6fmw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A9026A1AB
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 15:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750865332; cv=none; b=S4NvIxz6hq41k9NDtQ6VVQCb4B1usv095bx8dYDqp3XcZqwsz5gVG23R24J/11LlfW67LAJEuqxgA6tTJhGR0bDzhjtlDnrjyL0/VXt1AHFNCeuSQjdlydPcSmitXr+KEsF/SFs2ZaP4UE1BEpfhjLC0j2W1ehUcIuXqN4MGb/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750865332; c=relaxed/simple;
	bh=DGQGEnve4/bgkJQyVwSOGe9EimBGv4nown95OAXf1bk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BCvv08kxRWpAqGZ6eSxHHb0SPR206pRfnJic5vpn4RS/3W5N0Hyh6uYLU+8viR/83cOQwcrdULk9N8XunVrioMzu4xbnCjfqHBnEVLX7u18+RMO9PdJrWohLpu6dyrDmO3swwBfTEsA8907lTqo0NvCoh+3loWD/H1b7EWS4Ifg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=GoHy6fmw; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4537deebb01so12368885e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 08:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750865329; x=1751470129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PI3qPrTkmKZMuiNpclcJbamBpUy45L3AQm07k2EFtpk=;
        b=GoHy6fmwRcYFfI6v0eKyexJuCfgMF7byV7Jfu/cIlEuuj1MZgVZTHMuPgjRb3WhihF
         KV4L3pXgY/CeSXSntjw5c9PLxz5wmstP/lryCDi/3O7yMPJd69hr1/lAiNJRjc0UtAep
         YAx9WZvfJPXpHUUPVBHwoltOcq1hJrhpsYjVwua0d0zTLwdnVmAp+oAeJgqkbs1Xzgok
         vdgysTMrr45SOZ+sqPOb7pJ52VD20orKNLL+dPtJMvLLLBQET8AcxegQzMIpjo7FLanA
         RVJfR3m01YIkCnsEbMnyFXa6rWE5PCBENlFpD8BSmVZyHMSeTlsQTalKuedMa1uvgv4q
         orXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750865329; x=1751470129;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PI3qPrTkmKZMuiNpclcJbamBpUy45L3AQm07k2EFtpk=;
        b=S2gwBwKiRStoWGh66I3gNjVSrqiKmMaumFfsoQvMnD9S4cj1+Jk+nFP4BJPqFc1Pi/
         +jJ2JsrRLMKXkf1bZncIB1/QUajKS+waELW6ROMy5CmidTexkizRAvZhlusCmRDHLejc
         lfdIcl8Ee5gFZI98RCxRtHcyaSHvfqXyfxvLILW36Pd3wvnfcObPV9523QuQqLQBw5js
         qeTjdpvwd4z8EhvqQEZk9PVaJOjjs/q4bt6x1wyvhZIPo7v0o0E6Ch+kl4bK376HbggV
         dzriiHUBYjP0hKy1WYnwwFUjrVoUIvaXP4a/gNwV57P9SJlQ0TUWyCdwlYA5azdusEzG
         Ry5w==
X-Forwarded-Encrypted: i=1; AJvYcCUsQkHlZY1EMnfIJztagVsPf3U5chvTnc9he9XcyiQYFs3ojOirv2Oqau5qd2l/YhLS3ItTueKetpGM@vger.kernel.org
X-Gm-Message-State: AOJu0YyCGxKI4shfHkvXtac0eY4dD0iX7ZVlm8p0W5Lf+15v77Qgh/zT
	hq4jal8hWbsh22JSA71jr7kzbBrsQuB2UJ++Wa4/I9MkXSx1YMmUEWKFO4g5VB062NU=
X-Gm-Gg: ASbGncuklq3YYdhAsKSGo1sUaXxctrIjHUn+lN8Z2HAecVb2kQfBbBaSY/tIUyYlV7k
	eRwCsNT6D+aB/iBIjqNv1yTXLarlVXc8Tu0d505zQXSa77F706eQ45CkG6sdrHoBbXdiV/P9FqI
	EFvYnDiNymwzZrCHQMNMG7yOqZoJIeAYVRXvPWrejKNBTCJYMhQEtechXvu9pCWCiKt16Ec4F4K
	0emfLYQtH57UW35AffEG0hbji07lAAu0dA5T9p8vW8ij/kwNrVCuKLELR8wNz+6rsgE3vIBc/O3
	npJM5HRDv6woJBlo2B7LB65D+D4NFo/MYSqNLABi5llVwBJBoyLcH6VAsCRAxD8=
X-Google-Smtp-Source: AGHT+IE8ILEBDNbFHwVn4CTLwkc5qRiSUjqDg5Sdx22jaPZhlrkws3KhJcV/ZrUUcqtIut17KcQNeQ==
X-Received: by 2002:a05:600c:8217:b0:442:f482:c429 with SMTP id 5b1f17b1804b1-45381aee7e7mr31642335e9.8.1750865328896;
        Wed, 25 Jun 2025 08:28:48 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:d216:42f3:1e7e:472e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45382366f88sm23283235e9.30.2025.06.25.08.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 08:28:48 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm6115: add debug UART pins
Date: Wed, 25 Jun 2025 17:28:38 +0200
Message-ID: <20250625152839.193672-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

We should not rely on the bootloader to set up the pinmux of the debug
UART port. Let's add pin definitions for uart4 to tlmm and bind them to
the relevant device node.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index c8865779173ec..91fc36b59abf9 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -721,6 +721,13 @@ qup_spi5_default: qup-spi5-default-state {
 				bias-pull-up;
 			};
 
+			qup_uart4_default: qup-uart4-default-state {
+				pins = "gpio12", "gpio13";
+				function = "qup4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			sdc1_state_on: sdc1-on-state {
 				clk-pins {
 					pins = "sdc1_clk";
@@ -1565,6 +1572,8 @@ uart4: serial@4a90000 {
 				reg = <0x0 0x04a90000 0x0 0x4000>;
 				clock-names = "se";
 				clocks = <&gcc GCC_QUPV3_WRAP0_S4_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_uart4_default>;
 				interrupts = <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>;
 				interconnects = <&clk_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &clk_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
-- 
2.48.1


