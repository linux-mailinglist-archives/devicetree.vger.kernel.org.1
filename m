Return-Path: <devicetree+bounces-204317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6E3B24F44
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF6352A2B1E
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 264942FFDCB;
	Wed, 13 Aug 2025 16:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kgQZrjBm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76B92E92A6
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100799; cv=none; b=MKfd/8LjkOSz6tDlI4PtvZV2aOqi//povsaAZ+aynU75bkXQShpFLixOmUdO4TIhJjbqA7HFgGHPxn328gjh+rQiqZHM1fX7+NKljKasxa3D0USKHuQU1VkWIc8Q5AYkmTA8ZMlfe46pz6GLcBKhbIBH/RRCSbIiBosKvaue39Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100799; c=relaxed/simple;
	bh=OgMk5j+Co8fWzhu7wYx+EI0ZaqZ67Cwt5Pi9dhdbSdE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L6bSZ6aKg1bEunSW+f9wUcEE3hupOVa+Df6hvbB1Rd1E2a2ukHOt2VddTa8hPglEa5JBKCbS08ayQH5wZmQHY1ONpI1I3iAEOIcbenNimpOKMGBrLM6mCXR6r8T1Cw9bJFmWUy+3U8rhiu346COOZlG76vkDAaC7tM0D6qCFCrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kgQZrjBm; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-459ddf8acf1so57255175e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100796; x=1755705596; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aLGRK3y3xDP2UgJq++RG3r+bB3WSDGMIrhAQaV+dVpE=;
        b=kgQZrjBml0Q+5agHM39D+YsFc8d7o8Cozb9LYMhvApmYB1O6GT11jNa6MDA39hwlg0
         yZvFZvnWciKzBhEN03UzwJYFasUuF1QCAegactD/gO9rJQ67lsU+EPBm5Zsl/RKoJ3kR
         P3ova8/IZQByCnxkrobChyMbrd/2cXhFjLDHg5tp77S/finEOOXabNBl5PcSjhzRTtzS
         dEzQ6WVWehG69JA7QfPMtfsOkbhE3qDGm3F/iz2Mh6ixP4MnZe9FYTzRrCK8yYi2FB0D
         gjfP5rCsTR6vZKsVb5mCZsIcE4X85BA2I8r+vq6ZL7IgJNF6y/DzBJ2J9mPCip7uZghi
         5OFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100796; x=1755705596;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aLGRK3y3xDP2UgJq++RG3r+bB3WSDGMIrhAQaV+dVpE=;
        b=FvgZqBqgrLLLGoW3ei0R90l9pofJxXPJjQsWja3PETx/H5eqf+QlepTZto/Aoyjou2
         S7+ra5rOcGQ9HpoySZ4UvxZDy58KT5KkRDIrAYHDX0j3m9OVNhTGRwCojh68BmGezE/U
         eUG9M7cRFngMEmNgXYW0tAZ49l7C7fO9w2+qGZ/QWUpNgejQrfWNXFEW6nSsEBKxKg5p
         WIPxsV8LvRP2sdku88cA0r1pEnb2v/jv8/b3gie3enFLt2R8DmHicm/2w7d8f3Wy2ATk
         eDaH76J45pR10VUkJr/aTZafQmct5Q5K7tx1qapHDoFivWbU8wVa22kQQSkl9VNoWoLb
         /Ong==
X-Forwarded-Encrypted: i=1; AJvYcCWC+MfMpdBCr1NPweBksv7JNTCM7jHlZ3IfCJvF8ZBcz1pK+3MmzpK5G1M/8EOnQ+5HwRBiNTa9gl7f@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/F8L0nZT8dJvyOHoG140l+VWY7r7+D9LiGXkPxflYjmPAbzQO
	Dxt7Yv30cHCAT/sx9jK1PxGC2iDYnp+OQZhe9Lta6kg5cabLjyp7piA9Ke6RNom0UN8=
X-Gm-Gg: ASbGnctoMx4ZfyH7O3wn9VfnIqjuu1a1RvhsG3Q/J4LGqs3+ZiaAChW3eyeMkC5ubZ9
	rB8IW0wpOnEoNAnr+Q4BnGDOzDMM54DHdVHBJXeb8+66vZxNWqgHrYARTyQpdG8TTVazTGTBlFG
	JUDHCK6W644rsJA/+kYct2in/LQhhwr92/V+3p9n7NinOJQjod3Lq+rij3cifS/zIMNOfhAYbKo
	gVGwaSrKgUDuZ3Y8wHnS6eSaCFMcHTyWwUVUxyzkAx9w+6u6OvwpYDL2Vtr0cNC0ciIpBCX7rdH
	xttB/sjx0YqEyeBlju15EoRb14wDlXrBl5YQ4YS7A23+gKawTGnMim0AtyZucKSN+jPA639zDDz
	CTv8UzLQj1ocZLboMxfbaJyhPjktT6k2HzpjNqg==
X-Google-Smtp-Source: AGHT+IF+mTd29GafsqklT6SCsgn+jqtFYZEv/RqV/gBRdY7DrlXQAky4D9Zbx9eLOt3qutOLKgK02Q==
X-Received: by 2002:a05:600c:3b13:b0:459:d821:a45b with SMTP id 5b1f17b1804b1-45a1660b4f4mr33427115e9.9.1755100795933;
        Wed, 13 Aug 2025 08:59:55 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:55 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 13 Aug 2025 17:59:05 +0200
Subject: [PATCH 8/9] arm64: dts: qcom: x1e80100-qcp: Explicitly enable used
 audio codecs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-8-af82d9576f80@linaro.org>
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
In-Reply-To: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
However, they do not probe without the ADSP remoteproc, which is disabled
by default. Also, not all boards make use of all the audio codecs, e.g.
there are several boards with just two speakers. In this case, the
&lpass_wsa2macro is not used.

In preparation of disabling the audio codecs by default in x1e80100.dtsi,
add the missing status lines to explicitly enable the used audio codecs.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 9369b76c668b5c008fefd85d5ca18e87ab9ce93f..8deb07197ffd7c0da74436d8562f540abe4c4713 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -871,7 +871,13 @@ eusb6_repeater: redriver@4f {
 	};
 };
 
+&lpass_rxmacro {
+	status = "okay";
+};
+
 &lpass_tlmm {
+	status = "okay";
+
 	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 		pins = "gpio12";
 		function = "gpio";
@@ -881,6 +887,19 @@ spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 	};
 };
 
+&lpass_txmacro {
+	status = "okay";
+};
+
+&lpass_vamacro {
+	/* Not directly used, but needed for fsgen by all other macros */
+	status = "okay";
+};
+
+&lpass_wsamacro {
+	status = "okay";
+};
+
 &mdss {
 	status = "okay";
 };

-- 
2.50.1


