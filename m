Return-Path: <devicetree+bounces-138891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBFBA12D87
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:17:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD1273A1D11
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D478A1DA305;
	Wed, 15 Jan 2025 21:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wz5AGtSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176F61DA2FD
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975825; cv=none; b=ZZqPIn/OyrSGIO6qHjL0E4fM3abAoN7WHNux9QnFcvQroGqQiZv4V20Dqt6cNqA8K4sxnBoy8e/C8ksYyCcxqDRz3zQ3uzfG/f39+T/dqSaDYMmWaiwxW1mSODnpiLy38AQwzGymMNoYSBMiWvc1zPEAPNVU75Hom3wEh0Imtpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975825; c=relaxed/simple;
	bh=etyTNWsyTNBPviuHWvJvwZsCImk9N7fZ8OOQlJn4ck8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bbS8ZnTKSWyfG/63jY10K5Y+AtNJe4hgML5+O1et92adMgPjbutubw98hmZ4DQTz8E9t4aJAr7HXCp9D6s2ghQbEvid05brz4tOh2cqbu9eR7oW3eGL9FuoJ1fNbAroaHKRGW2Ey2FFC9+Fkca/1NGGUvjMTbwiqQFcc+nrO/uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wz5AGtSp; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43620a5f81bso208975e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975822; x=1737580622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ms9IEBzpyk/XVKoMAGsaOzSpnjjWL2vmcBPCCTvooQ0=;
        b=Wz5AGtSpPZZLMsGyGIXnKJip09EqIcrhVTHVaen0Lw/tP1eD6JCojJEILLEeHzvOmc
         6AQ7j0jj5UO7j3S/vl45cCOmN3f1lB3RHEKhPsiVDezSUs9140rMFa8gQ/LQct7MFVkp
         GpMiZan2kBRvy/JGLORtnd66Hqa0ZyAHEP4FvS5yn69rEuCXSoJX/CbDg/Wgptu++oDa
         H7nTNzh66njFgcYWjvcrgbEmEQWdnvWeaEwk91e1ZD70YRcCpHDhfpZyvtXWZF2QMyl5
         DnxXCnVoT2hsGYiXbsRMZWt8QSPCPjjhdQwTEH1YJppDsPwx/YS29j5j6jhJWP/ZW/nR
         +8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975822; x=1737580622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ms9IEBzpyk/XVKoMAGsaOzSpnjjWL2vmcBPCCTvooQ0=;
        b=WIWfq6wpOAsysJsLlh5RxGjjsnFg6q0ulWlG/rZK7Zh1hNbpNZq92AfadAX4FC8En0
         O/we4kAvOLJfibOjrj15pgwOHBAjGi4U3rr9we5gShqnhfAnGe3JJxEa7UoHw/ZOMVr5
         mj9FAz4B+/c/NiVgnlLqGuGfUnoH43cUQhZ4u0kIcFZj225u2/Q9lLynNv4CaJT1s9sa
         3RDmmu8Ds8agPhZJuOJBmf9ACSRAtngS/xtxwx34govsggSG7jT6NmsBseu3x9SBnadH
         nSlXb25X+2jK8spEtOzUTyC/5h7ghkVUiNMXZ36rl5S8EU+1ioM/gvrttySyW2VuVYj9
         QQdg==
X-Forwarded-Encrypted: i=1; AJvYcCV4zWQ/BrV1gCJZ6jQm7QUsxTak0jdMJruJu/mvqoLr9R8SAhZDXh5HhFLt0gFgnuxOjeM8isfaeUpx@vger.kernel.org
X-Gm-Message-State: AOJu0YzRbGKnnyPWbDwGV4bTNM8VgqPrn4qEvO1DZxj4PZkL0vPKwiGH
	hdr5qTOZLFZpKrd8A1LynZvplrmH4SlkGvZJycje2DPkMUg0K1JQpbyQG6rsDEk=
X-Gm-Gg: ASbGncvGQ76H1QM07dB+Q3oXNi/RvgZPlaLybW8sahcVPFegWOi+uWGI8CvvSqbuMPx
	jPSDlsTZHcwQzHp8KM5bmJaDShJ4mwl/9fIAtm8F5FMS83iuI/LLJe1cnSREAIb7Q+cuxLxKLmd
	J5tAjG4a6hpQ6pSsP5ZAtUnebFsLXe7c6rA9LJFC3HmKX9esMYg1i/vqMEOqDUssxYYm7x13LTE
	sv89XHzhO3wKzd4LnfKow1YwQctI4xl6lywLvaZJ9knzmsDfzUXhBAbJYeAxyM+n9oyNX4=
X-Google-Smtp-Source: AGHT+IG5sxlfm93ZZqieB+RkF9UShh5QqNGMEBcIF5ekOU9Z+J040z2Zi857k3ycfhveU6zzpgKNFQ==
X-Received: by 2002:a5d:588a:0:b0:385:de67:229e with SMTP id ffacd0b85a97d-38a87308e30mr10527783f8f.11.1736975822395;
        Wed, 15 Jan 2025 13:17:02 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e38c6a2sm18693379f8f.54.2025.01.15.13.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:17:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Stefan Agner <stefan@agner.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: nxp: vf: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:16:58 +0100
Message-ID: <20250115211659.194072-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  vf610-zii-dev-rev-c.dtb: eth0_intrp: $nodename:0: 'eth0_intrp' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/vf/vf610-zii-dev-rev-c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vf610-zii-dev-rev-c.dts b/arch/arm/boot/dts/nxp/vf/vf610-zii-dev-rev-c.dts
index 6f9878f124c4..4f99044837f8 100644
--- a/arch/arm/boot/dts/nxp/vf/vf610-zii-dev-rev-c.dts
+++ b/arch/arm/boot/dts/nxp/vf/vf610-zii-dev-rev-c.dts
@@ -392,7 +392,7 @@ &uart3 {
 };
 
 &gpio0 {
-	eth0_intrp {
+	eth0-intrp-hog {
 		gpio-hog;
 		gpios = <23 GPIO_ACTIVE_HIGH>;
 		input;
@@ -401,7 +401,7 @@ eth0_intrp {
 };
 
 &gpio3 {
-	eth0_intrp {
+	eth0-intrp-hog {
 		gpio-hog;
 		gpios = <2 GPIO_ACTIVE_HIGH>;
 		input;
-- 
2.43.0


