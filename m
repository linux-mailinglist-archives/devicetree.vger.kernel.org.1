Return-Path: <devicetree+bounces-150807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A9707A43988
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26E66189915D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6255E25A2D4;
	Tue, 25 Feb 2025 09:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R2eIzvDa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E7C1FE465
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740475857; cv=none; b=f9nZLtIPzJUgymnfcrSy45nqBMSGRZ1gXtvKbR51UDiiLVNuiWiu/I0Ny+j8TVwlrmqW0GlEZsal5xl3PwCeMl5GuCdHuO3+tD2+jVC8rLlL+V6J3XJwfL9h2zWL3aIQJdgiyMF/WfxUFNVOLz4McMRvGAWgwgBttSrn1QjiFqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740475857; c=relaxed/simple;
	bh=Tu0wrCNQbs7SeX2KXHKzypxoD8BKPLt0X1AhllqWK/E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TaGjucKHVawPUy8/bev3ymZLgRbPAGME09wXgNUMftnM4xTT40JhM5E8i6kVLoiKDthKSwiJRY+nJSdyBXqGQS6o47937g3B6Mt4v5SnVqvWQ217k9yw43WyWxQsAJ5Z+oOxcnXDMr3WqHxOf+CpwhFMM+ivUTeVoOsx3q5bT8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R2eIzvDa; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e02e77ea3cso953436a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740475854; x=1741080654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9eYtHkeTugcicE4QpN0FwS9XxN6NIPRCZ3nNLtCSc8A=;
        b=R2eIzvDawNwhMmOwGl7CPSWCXGgzfPWMx698K9O2bxXVCO3wefvNZgSQ/7KFLe9QGA
         dFQzDOjsWlx2HIE43V7a9yuTgqzq+1L1d5yq5GLR46NrvHijBVslnNAJFwFC+21s5sAu
         GfRTP17zn75+VbFHsoG+3OaVjxgewiMANEKmeXB/PJ5EmDXes1wlzN1I6o4tQe092cjR
         aqZfSiMXMrIxTI0n+Zf9R0lrvHM7Mok3c4n6nvUNQDs3yAItlhsgzFMjhOiPKjh7Q/qg
         2Wz3YOyjCjcNXdu8Yp47NlywFMVH7KYe7wV0HrhucTybQ03ksL2Q4Lkzas0f1sX4PRoR
         c83A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740475854; x=1741080654;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9eYtHkeTugcicE4QpN0FwS9XxN6NIPRCZ3nNLtCSc8A=;
        b=krcFH6FxW+vmvmTDd8NMLwNKyGHRd5yl9yau/CeFDOGLPec2+J0pAH5Jb11iE75+5h
         yKJkXev/gLgJUwvCVOcNfBvemBmdOwAnCiKEzt+5VzkfCwl0ygO/rlIY4HqSvhfUpUNY
         BCH+L2RWBrb6U2804lpFY24V6HEbDmGfagozGHSDTDkx/bjDj7RTCRlBOmaFU0cl5L4l
         2T0edAlCXf4h+L3nnZfWvDt7NVFANsBUxRT0XB3j/p6iukNzsqx6A0XtJe2s3nEIqVi0
         pu9kd/oTc52DTylBquNW1KZqgxwgY4t08o3AOvlSV3BSwEbL5lI18IDCIeBtH8hLPbSA
         PfxA==
X-Forwarded-Encrypted: i=1; AJvYcCXIp9dKHtaCSjCaWFQmfawxTZL3MiutFlipStdJtERpE4zNN9n5vZ1Usx9+ZQYdPQQgPlFfqwvtllsK@vger.kernel.org
X-Gm-Message-State: AOJu0YyLKe+FK6eH+sPHwg3JawJ6r6CMqz3iX0Zr5RXY5lnpMdkhecQy
	dF3sjlUNo2F0oO+ndMsY7UNCq8yCep07vHggwOOmPoUSFSTHi47JbNyJ37MvjSQ=
X-Gm-Gg: ASbGnctNCDjasRz4+eulgbRyP5TEg/6o2S0jLWbx1GsW0ZbC/hwE2LIv2atr/g4Aesb
	Zkgj95Fo1AMiBJK8P6Q4hVTvN3MAQI+U7niA1lZ8gA18SicW3dlRDHnVpnTj9+mYmQKW50nG31G
	tA8oDhT4WVCuT0YEVbN98J7FTvIo8KGh0u95l0qfNs+7hXxAJgeb6121PdYB6Cb4rzTkAFVKBnq
	wldULnozZKCurCCYA8W8z4qKazqVvENi3/Ocx/R35uMXP3OAzfCNkk6Pe1WRxIqpwMYwhlDp4Jk
	ZWndt8kpe+Ebi8BnCOXwv3LK5C5fTlArBtA7Gtv9YKtqpc5hS6G4vYfokMU9rW9Z9jPYeahmyKQ
	=
X-Google-Smtp-Source: AGHT+IEAXazWhifLPGaLDMrdqG1jBglNulFz4jD8p8GTVNKHnMYVgFnc4WJYXJthmOdHQz5hCElo8Q==
X-Received: by 2002:a05:6402:50ce:b0:5dc:882f:74b1 with SMTP id 4fb4d7f45d1cf-5e0b70e2e62mr5718546a12.3.1740475853940;
        Tue, 25 Feb 2025 01:30:53 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e459b4b67csm949490a12.11.2025.02.25.01.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:30:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: x1e80100-slim7x: Drop incorrect qcom,ath12k-calibration-variant
Date: Tue, 25 Feb 2025 10:30:51 +0100
Message-ID: <20250225093051.58406-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no such property as qcom,ath12k-calibration-variant: neither in
the bindings nor in the driver.  See dtbs_check:

  x1e80100-lenovo-yoga-slim7x.dtb: wifi@0: 'qcom,ath12k-calibration-variant' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index a3d53f2ba2c3..9aff5a1f044d 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -674,8 +674,6 @@ &pcie4_port0 {
 	wifi@0 {
 		compatible = "pci17cb,1107";
 		reg = <0x10000 0x0 0x0 0x0 0x0>;
-
-		qcom,ath12k-calibration-variant = "LES790";
 	};
 };
 
-- 
2.43.0


