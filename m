Return-Path: <devicetree+bounces-105871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E84DF988283
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 12:32:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 240631C216EF
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 10:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC52188CC3;
	Fri, 27 Sep 2024 10:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PGVNDkIL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023A7156864
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 10:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727433139; cv=none; b=d6XzWsRIqr4dCf7Il744NVlSOgg5Y4s25o8rCP90A5vtuldYoTMGZ4Vypqd+gZ/5Y+Hok/+rm3QMIPxTXm7xu+HxUEbJJ3staR07codyZWkcb3maaImzN0n3RX16DL4N/eu4FllXcFMsvVsZwdaLftwCOZ274hyAJSJT2BISiHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727433139; c=relaxed/simple;
	bh=VpBNp249YzpZXC9Rky5huhq6sb6/jAcrlMwbud4eelw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b/KFOjyGYZmMH48aR2+h7kklTFa/UoKfHrSf/oG2Ijie9s14uvTRmkNdWodiI3uTscNpWKHhllq2J9ZpPNijGixb/YOfFjYvl0q11JXQ2+vYCWFONm5VoMDwcgqVyyDCaaJ6V8XVufcaSeBChgFmkegvCiASiaEbSl+E8lZtyKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PGVNDkIL; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2f75d0441a8so1256071fa.0
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 03:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727433136; x=1728037936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OrSvEBMT63eFKBOH/M9CK7Cc9dzPCKyHIsn8PR3V8co=;
        b=PGVNDkILwM8JGOC4US6aEYRU1JRSuX682QuDqca4HbFhaKfonBQgjkdqGnzp84B6lk
         Sv4vqXVNhZDF+QhXMC3iIRLmFYPHWmQbru2SoZ0IrETAGr4dsIIOtrQ8d5w6QzwPVpH0
         Jl6P+1c4horo/TWfMdsL1LxrIlzVkAOtc8JyHujCOaMFqnFw7AvMwHfpe0gerkUrKa+/
         olGHz4RFWweGzmaqkOf56KQhUe024yShNSXsjmSLmEnGzkM9g0EmwVxDIZqWmuG/drE5
         2cdUq1mkeXH7gLLyNW3A1Qc3Jhh+qqM7jeiVSQO3ogHtpIX38uolhpXTQloK288/wr4b
         rq4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727433136; x=1728037936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OrSvEBMT63eFKBOH/M9CK7Cc9dzPCKyHIsn8PR3V8co=;
        b=IaMjRZN4Shgl8pZGjkCQJxocAjPc4wzu2pk9DH1yCnXaLqOnCoLQzA+bJwMy4Q7e+a
         kCnCT9As8LK1vzX/YCmQLhx4IpmNCpL1Q7Cl+SEMVWgh+u34pWpcFclZ7AkRoKXZqhJt
         BFJko6UWpTxxBz7JnkCt4Gc6I3MVbgQtZqbw4uM1R6PDriXIOwvXYKkUXKHSAuMKi3zK
         oenrnrbzI88leC0LUwAvip+PiZEaHVy8hUoR6ffiTxBSZW/XWCtUeMXMcWBmYw0r3VEG
         u2PZPNbQf18LMC70bNXvGnocnLOPBtIar53QVysTdM1fMC6cmJ9Mo5SpTgl/t41UYpmZ
         P7TA==
X-Forwarded-Encrypted: i=1; AJvYcCX7Sj68UZa7RQa9VtO/RvLDV26zyngafm6W0YybCVkT6hslucxS6SmHof/MZRRgUn+qRddN9OeLccIB@vger.kernel.org
X-Gm-Message-State: AOJu0YzVBFhOt8hszf1nfT97m5nq6FKWSJLX0akSLDILmQcjMbCEsPsg
	1+4dZmSPmXlKwUgbwcWnzq2NNjJ23AM8pZxEOKsO8w+wI7fcvOlMiI4Gvj/zDDk=
X-Google-Smtp-Source: AGHT+IGcdmN2CX08WxP43TGUcVs80qumV8LOKvPfnAtO/+6Y5H5nrPaYJjWrIlkM9WODMBJ1MMd2rg==
X-Received: by 2002:a05:651c:54c:b0:2f7:5c23:98fd with SMTP id 38308e7fff4ca-2f9d41c1bc0mr5341211fa.12.1727433136151;
        Fri, 27 Sep 2024 03:32:16 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5389fd5e333sm259724e87.76.2024.09.27.03.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 03:32:14 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/3] arm: qcom: sm8550: Change camcc power domain from  MMCX to MXC
Date: Fri, 27 Sep 2024 13:32:09 +0300
Message-ID: <20240927103212.4154273-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The problem is trivial to reproduce and the fix is trivial to verify,
it's sufficient to enable SM8550 camera clock controller and a CCI
controller, for instance on SM8550-QRD CCI0 or CCI1 can be enabled:

    &cci0 {
	status = "okay";
    };

I made a special effort to check that the power domain in SM8550 camcc
is sufficient to be replaced, and Titan and other provided GDSCs can
be turned on/off, if the clock controller is disconneced from MMCX and
MMCX is off according to /sys/kernel/debug/pm_genpd/pm_genpd_summary.

Vladimir Zapolskiy (3):
  arm64: dts: qcom: sm8550: Change camcc power domain from MMCX to MXC
  dt-bindings: clock: qcom,sm8450-camcc: do not restrict power domain to MMCX
  dt-bindings: clock: qcom,sm8450-camcc: generalize title and description

 .../devicetree/bindings/clock/qcom,sm8450-camcc.yaml      | 8 ++++----
 arch/arm64/boot/dts/qcom/sm8550.dtsi                      | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)


base-commit: 11a299a7933e03c83818b431e6a1c53ad387423d
-- 
2.45.2


