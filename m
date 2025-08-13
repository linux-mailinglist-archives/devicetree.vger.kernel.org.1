Return-Path: <devicetree+bounces-204310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4B8B24F22
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5932E580C54
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31ED299A82;
	Wed, 13 Aug 2025 15:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XBbYBjtd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBBD291C11
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100791; cv=none; b=W683Vh/MjAm4AYMFafckzoJyEmzuV/Cj299XxruWW/MePGctgc3Ummo8cwp5oUSEI6g76qMZ2XE7MCpttmwpnLoHfShtKtcDXsjFZb2XB/1WQ6FL1dULFEyCa4zHMldlEi2MtWLyyQtNoVIXmcwwx3pshPBuqgxLLVANQ8OTQ5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100791; c=relaxed/simple;
	bh=l3L2yfE27yLL68tGI1MKqrfaMy8Xr8dhr6oWtd8kSXE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cr/Xk4GJMutd1jzdvkWiKUA4FcKxIPHgzbQcuoEbTOwEaO39qG/l/i8edZ2ycQR0+4YZEr9ETo/CZyWsY3sHafFGm/kvAZNcIebvU1Sh50HwYQr+6t2FZv9pe72ZC6njsp3xyNsSiG8uOZE7RyQtdvQYGuraRW9KnSvSpNR2O3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XBbYBjtd; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-459fdc391c6so39618195e9.3
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100788; x=1755705588; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ilAhY86W6D/mCFE0ccFmIl6uGsK2qfdLyAFl6RSiZEQ=;
        b=XBbYBjtdjsANy9idyCL/VhHEcd6n1szyPg16yexdPfOEm8WLdYGG37DTS9gvXFBDGS
         phps6ZyzxabjuoPiDgYMBLBro+y5s8n5bi+qBr2VILI/13ZV1Z8J56H0rkU+GxPgFg0V
         acIgXC2HKl6z/xEMKMoCAYpp8DGklHYlxwE8mYLMau2lqxPt39ugrjPQ9h3Qig9hq04o
         9VrXXQVUG4duq9CxYO+Ru8Emhwlu0V5KJveeW/i4B06FsRQKbID7rV8B1sTdjK/i3zWS
         po5hRY1T88NIighVeZwk59hPeEe675+dPpGg2ykreSIVjR7BhD3NuWv0rW3l8Mk13Bbm
         ZcsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100788; x=1755705588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ilAhY86W6D/mCFE0ccFmIl6uGsK2qfdLyAFl6RSiZEQ=;
        b=fXstBScdhmSjHNU/SjNgjkJBL02xg+R3p3AhGc+1bwmAJ4U+WouTTZRzJgEeHJu2Tw
         7ZmFCsNXQAaPvPpxLGROe0SfY2HW9zKayHeqnfxNSVzi8c7N0Cp+J15hHyMu8hLeL6Xb
         eyW46BdzSZeNqqgCLdevS8DG2axMScZeC7+u2HuuxAcyOOchRYTUqtGT2BuaNv5AknFy
         0G4EFE8FSlmFBJvk36lpdcDD/vB/cQI5Fez7fA833pTBoIlWpwHRwu+P0bHCa5pvQprq
         Hq1Ntk8geBvQOPRIF4S4xTopBLmzwPFh8zkqHvcggzdc+GhQfojUVXSKjl1HRycks7jN
         9XIg==
X-Forwarded-Encrypted: i=1; AJvYcCXxeZPW9hnKlDgDxN5SWLrU6jglMCSQLYk8BRosKoI6rFFFpg2tZIXX30ywLQ9lMJ1CfmroDnQ4+0/K@vger.kernel.org
X-Gm-Message-State: AOJu0YwRq4ot26UeLwZuzfPMy8nVtDrJhLssKP3WWGWS8l4TJfZsG55p
	d2oRgsWAX4SxsTTt0pkcwxnrqJf/HcPwsJztX3cxTCIncKgPTIVTHWnnad1iE7Pa3uw=
X-Gm-Gg: ASbGncsgalfGxQpFoihYvpCBWPOWA4f7eABko5FnW4rptVGwvp/rycqDUj+3w6vMNPF
	iiSnnAADsXtlHiR70v3ZEi5jJgrcH5PaY/0KSqTzqRbzrV+KvWptk+WV66AF3kNNvBp3EgWFRdS
	H/7NVMSIbk0QFg8JebDo52u2cEaXcEthis27HA77RqN3woN4rTputbX/Xim1Fu+4lYA1k332yWN
	nrH5aqCxfGlA5TmWNGUJ96BNvUwJIE9Xj5XlEClrJMJOyGKfEDZQ6OKi20wQCcrOWsDqO23kcmE
	Xz+Hh09GC/LeNbB4CXbKu+2RYYgCZIyGBhJXLXks0mDzXfM6GDaYqHPMVLF/va5h0A3ChNZYZrh
	IgRtXL7dbxjIJ5836mUszTuQHH4NMvqGw/i6kAQ==
X-Google-Smtp-Source: AGHT+IFgRJXQP7h2ypmOmygvb//roZOZXvSuj5BEnjvYNBIjrGkAeA47av9q7BT/h/81tPwAMfHUNA==
X-Received: by 2002:a05:600c:1390:b0:458:bf0a:6049 with SMTP id 5b1f17b1804b1-45a165dc915mr30627565e9.20.1755100787752;
        Wed, 13 Aug 2025 08:59:47 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:47 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 13 Aug 2025 17:58:58 +0200
Subject: [PATCH 1/9] arm64: dts: qcom: x1-asus-zenbook-a14: Explicitly
 enable used audio codecs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-1-af82d9576f80@linaro.org>
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
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
index 16d045cf64c08c02c420787e000f4f45cfc2c6ff..9e6dd0bb527a3b11f9e09d498f3ccc117d52fd0f 100644
--- a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
@@ -958,7 +958,13 @@ keyboard@15 {
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
@@ -968,12 +974,22 @@ spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 	};
 };
 
+&lpass_txmacro {
+	status = "okay";
+};
+
 &lpass_vamacro {
 	pinctrl-0 = <&dmic01_default>;
 	pinctrl-names = "default";
 
 	vdd-micb-supply = <&vreg_l1b_1p8>;
 	qcom,dmic-sample-rate = <4800000>;
+
+	status = "okay";
+};
+
+&lpass_wsamacro {
+	status = "okay";
 };
 
 &mdss {

-- 
2.50.1


