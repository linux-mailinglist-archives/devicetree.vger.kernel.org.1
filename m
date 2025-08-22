Return-Path: <devicetree+bounces-207921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA266B3130A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:29:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD5773BE8AA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E0332EC54B;
	Fri, 22 Aug 2025 09:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WPN7qEWL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644212D3218
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854804; cv=none; b=CKA2h0edEmdUqtF1+1hSM4CjkQIzSK1bSbIJw+5erjje7P8uaCnqF/hBwoG+WMO9+cuX9qbkG+S9tyBQRq1rTWtf5hvTdDYbiunb1GhQYFG99ns9RCv85SL9/+V6zBOsTcpIl1UuFUi13NAbOU4hOWya6BeC5OqZ0/6YLh/rVYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854804; c=relaxed/simple;
	bh=jR/DVJ6iHDhOV9awxYxxy+P7xYkU9pJ0t0jQsaJ2ZMc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pbyPR3COR7/BDyq8aMit7t99qyVMtP7cnPsXiCp39Z3cK0OWEXE7omWVSqVWN92675GaR9RTBBwILq1CxpmlA+BAr9n3WwnBwFSHKScmv2pV2IFf0cG6Nt24flOlH2WmzwQ5LudPU5ai1QvimKvTn4EhOXRENDgoFEKmz5EQo1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WPN7qEWL; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45a1ac7c066so11964995e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854800; x=1756459600; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=InzC6AEUn6N2EzT5qCdqSdLJvQVx7PhxAAj3EHoLbYQ=;
        b=WPN7qEWLpgMSk7RLRGq+8gS1op+1SZ+CLuY1TLwf5kyyLuEMxHJzqzZ2EYFGVid3Rd
         9qE1b5bJ7DcC9V+Xd8ipJaqKNoVzzJrLRt+pdWuwk0R/bGUxx0Ym9CVebMoZzWTqSZLE
         O9n8DKFmHhe7ca8rl2zHss0LcH8Qdv5FJRZczVkjMZuxP6EJTVEVi0wiO3PS0IAhXFM8
         gplkh37xlUcLRa2ptQE1iZdfbHjYMNESxvJxZjT0W3bK9moj/NC0j/7lbTm4TdNx1Jqw
         3lXqhVi1cEHXo+yRhx/9gPQjkFU5USR1QMK2OkQDDs+jUtM1B91WilKHtnx2Bj5jqIzi
         lHBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854800; x=1756459600;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=InzC6AEUn6N2EzT5qCdqSdLJvQVx7PhxAAj3EHoLbYQ=;
        b=jlF5CchudW3kknpokkoIK7WgxYmOrktIKkyR4CDC+Y5gFvh03U6nrz4FaJpR7JMN7H
         g4oG2D/geOdw8NSYMcOy2oUiGSsIaqcwQOxGxXHHm14TzPLsFZsvh6oVwh8XMNuvsfUd
         Mwl0hDeNPe7FO4P5mx9d7F2GkmZ/Qxjw9nuvDQwi4MzDprP2IaO+xxQZzI0Dajzpy9KP
         1h1rbw3jJJhacBjF9IJ5NfIQ/2Q4w+EXtezAmxZdlcfOV3ojnUY4BOUz7dTqqrOA7Lrw
         +UhOlcO0TDSacHcN6nHHgZii2spwtkTR39zlBOfHM4nPMpl6yOsVCCAq1Echr+mSTLGz
         SRvg==
X-Forwarded-Encrypted: i=1; AJvYcCXLl+W4mf+ZuQgyz7Dx7wos4xF5akE3aeaFaczOtQ8Lw7G57YmrZSva9nNDCt/uoVfROrNhxPwUi+vZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwM3CQsIbxOq5q3Bsy7WBRqMfUzRmpC/KJ1l0U8iGuyRqiZdvwr
	pmOUvpOagcFY3MYfCfVPuYy/7VrRUqFVWs+GQNGk0XpcB9VmbyKzxEsEj3Sx4FerxDY=
X-Gm-Gg: ASbGncvd/L3VhQWNjngfWHgCFP3C92gDz64DCcDoCHFoJRu9rbLQwUQXsR2vw0LOnz5
	vAAdaRJFnZQCeORTlGteF/XEeSzDRgMi1Td6AAHpcjPHNfUxtqc9rRmHnamuFJHgOeMFSb3cjpg
	gzY9McJiiDmhU0WCzmMKEZMmDIM9cA+Z78rzx+eaNGJ7XR1ofaDMR0nONs1C8mObIT4VOfzIGg2
	UArRrgQKqib2b8WKoBzjtlsaSaH+6atXVuH/cvrNEHBERihy5QOLCuDuBOCquJOc07aB7WBK3ao
	G3RD2c6trPyMOlX/2x7XZd0rkDRP3xkvlnr0OSTKBSK0a0hOdArZKTfQ8Vt16EPYtcle7OMu0T1
	s+5xBxl6dYjvp0Xyzo8tf8IHV8t7jUeSeyshC7Ck7h5k=
X-Google-Smtp-Source: AGHT+IHj/debPj3AF+wfArUxR9wwDm7ZVG+p4jjPslw0JJ64XTjQA8wlXji7gqknsPS5xlcQeVdntg==
X-Received: by 2002:a05:600c:4343:b0:45b:47e1:f603 with SMTP id 5b1f17b1804b1-45b4d817001mr25345445e9.18.1755854799533;
        Fri, 22 Aug 2025 02:26:39 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c5826751d5sm3297007f8f.14.2025.08.22.02.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:26:39 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/6] arm64: dts: qcom: Add multiple power domains in
 videocc/gpucc
Date: Fri, 22 Aug 2025 11:26:32 +0200
Message-Id: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMg3qGgC/53NQQ7CIBCF4auYWTsGSKjFlfcwXZCC7SQUCFBS0
 /TuYo/g8n+L9+2QbSKb4XHZIdlKmYJvIa4XGGftJ4tkWoNgQrJecCwh0oh56TfJcI25JKsXjM7
 hsrpCGA3WUMhPaApq2QnFjZLKamiXMdk3bSf3GlrPlEtIn1Ov/Lf+CVWOrGmcjXdhNFPd05HXK
 dxCmmA4juMLJJkdjekAAAA=
X-Change-ID: 20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-a56291d959ea
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Taniya Das <quic_tdas@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1871;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=jR/DVJ6iHDhOV9awxYxxy+P7xYkU9pJ0t0jQsaJ2ZMc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDfLssrex89Htd+CHrcEIaVG1MX0XtHQx5y2Wea9
 5GO8oqyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg3ywAKCRB33NvayMhJ0R3wEA
 Ci6aSitiWcpVoz9QLvm9Ri5o+4WiDPhqS+c2da2fbIwp/eG9T8lQp1PBB/Dv2TIrO6alzy6kFU6sMT
 U+lQxsQUz/OkRIypgBZ78tEYvwD1Bpc9G0XFbRpO8sPzqnOSakq9sJ4aDuFUZZSDDTSO7JUe0i2DsZ
 j484inFgHl3lGsTJabtdHbSKMJd9tcaN4oSKIJ+dHlC3z9xfSJX5tmjS5tv3/uHGTiaZqlEyD3CQAU
 dG2r743c6rptCw+C74qEtrH0cd+01Z1Rm6EQ5KlB4lwFJXUCGX6R1dgKovhjPvC98KnJbgM/8FcqBX
 7iLf+5fLkmXbgNsOt+QqiZ4FcaDkf1XO5AV/Po7nRZCfaBn8MF9zED16d/bw3ya69P7CHaXUQS/iR1
 VV7Fn5bYZp/AknQBJ1Q8uYjv5I7SDea4zzSleqAuWN2sEKfNM2jlDBqYtMA4HSbnrYd8JXRxHwy55w
 O4WHbbHzCPNKKllP3P0dapQRUTXv/i30VW+TkTgUujqZH7AxY7Na2vgjwac2Z5w6T0cOuWdxvEIrpa
 vCMfYQr6nB8grRR59kzlIJRB8j4dwIQB9XPUx2zEyXr5uYs0aYZxPvXGcNQRZg3mYdi95yljPjS/cZ
 VzG2iA5T2diuxVkNbOY5nOk+N5OuZyUlHVYDitZ60cCe5D2dSkx2gaLVphrQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This is a continuation of [1] ("clk: qcom: Add support to attach multiple power domains in cc probe"),
where all the clock changes were merged and the DT changes are lying
on the lists for allmost 4 months now.

I kindly asked for those patches to be re-send separately [2], but was
ignored, and the lack of those causes a bunch of DT check errors, hopefully they can
be picked for the next revision.

I did apply them on current next and fixed a patch 4 that
didn't apply cleanly.

[1] https://lore.kernel.org/all/20250530-videocc-pll-multi-pd-voting-v5-0-02303b3a582d@quicinc.com/
[2] https://lore.kernel.org/all/8e56e1a8-7b26-44df-ad57-e2092cb5c9ab@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Fixed patch 5 commit msg
- Link to v1: https://lore.kernel.org/r/20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org

---
Jagadeesh Kona (5):
      arm64: dts: qcom: sm8450: Additionally manage MXC power domain in videocc
      arm64: dts: qcom: sm8550: Additionally manage MXC power domain in videocc
      arm64: dts: qcom: sm8650: Additionally manage MXC power domain in videocc
      arm64: dts: qcom: sm8450: Additionally manage MXC power domain in camcc
      arm64: dts: qcom: sm8650: Additionally manage MXC power domain in camcc

Vladimir Zapolskiy (1):
      arm64: dts: qcom: sm8550: Additionally manage MXC power domain in camcc

 arch/arm64/boot/dts/qcom/sm8450.dtsi | 12 ++++++++----
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 12 ++++++++----
 arch/arm64/boot/dts/qcom/sm8650.dtsi |  6 ++++--
 3 files changed, 20 insertions(+), 10 deletions(-)
---
base-commit: 6f66e22d741775dbd54e174560ae76b46750e570
change-id: 20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-a56291d959ea

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


