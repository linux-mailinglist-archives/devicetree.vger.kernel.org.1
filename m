Return-Path: <devicetree+bounces-215142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90317B50966
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 01:56:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B9B15465B3
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 23:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B2228D8ED;
	Tue,  9 Sep 2025 23:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RDbYYtC9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E1A28CF6F
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 23:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757462165; cv=none; b=lsGRMEKwcNWdSRIpCluFN+DrUNTu9S8Ul9p/YegJQw9pnyrTWbSMyOG250UgtDsw2ffLYkY1SggbHqbUVaBgo4Biz2zzpwK81XUNJpMRXcZWf7XRlMqBuruo9W0b37L928ciQEeI5wmxLYRmBMNEOe2LZhtu34vRer3ROnhiLF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757462165; c=relaxed/simple;
	bh=V/4bySwnQHyMs3ISIH9yIpaRt7bcIxL4U2GAC/rhWHs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OyPz5xG9I6qgzbM2KXhDN68+NDoDWApVRjaPpQrbZLFUxNykjdbT+195AO7Vgvwb2RKtntefXMp1qzGebtCLeH++RWEEyj8lK3BTPo7PiaKDzqH9+yXfYf3aFRPzwr2SqrggawEp/0y5r6dUfmAddccRAt1iS2oYvOFSLVqubJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RDbYYtC9; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-337e43f9c20so5040081fa.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 16:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757462161; x=1758066961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7wut2N6v7MXaS7iMDatzIHHoOrLQhmLH2PYx5ZEyzN4=;
        b=RDbYYtC9MgYN+9CBqpEq3e0f6wHM5brpundGbvY3sT6Tyd/x+nfJzfdaagnkUDSWw3
         qpuyldzO1ewP/+XEga2fVWCwoSX0uw7i5E4N1nNLqHnxDzgMkbu9yPq+AlNVVUBCK3LL
         7xQ7cUgIC8PsJlg/Cv6UZ0omn3ALn1xLfuYFLcuTgSygVFEkh1Iht0jBksuTc69P3gHv
         Ecz8eEQ6j7prON5Zl0R6BPYj9RBVQR5ey7J1MyV31JAK8afBBOu80gY66RJIXjhsX/5s
         x3IkJavdpuRVbN66PwOElhiRZW5v3oBhkY/iNLub2LEDsEL/KMlJ6gdPD/QykBelVMtp
         GtMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757462161; x=1758066961;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7wut2N6v7MXaS7iMDatzIHHoOrLQhmLH2PYx5ZEyzN4=;
        b=IlBWXdR7C7C/Vhb5x8Xq6FebuLDdvza+6xP14X4T7YwZr7VA8mwQOmX46/MhXVxIn6
         jgizm2cYej48M6IYISvEOeXu8dIAyGvTe05NyULON2n80QsX/kzWemV6KXZ/8q9IAp/E
         Symuo/oe3GPSwmBPKu0sI9uyuLjfvc9fTxNSqev6CjXJncFFzHSvzuJ6zNlQRMcBG8/K
         14DYW/eaqlb1bR4BtJMYmLzOSY5Bkv+l1ELR5FcOj281VHG/dmy8M9pP4cgpt/gJmhAh
         YGCPHMrmHF7yg/H2Drw1xbWU5jC10tqcF7z9s5iNcork6pmAfZwq3+xr9LA9/zbvdNDX
         IAPg==
X-Forwarded-Encrypted: i=1; AJvYcCWdJuxzDbx/97JJysjvnTsuKhSGyoSj82d3C97PP5JmgA0L83JZra5/yPCkgGg0UCviYL8uM8v4n+Il@vger.kernel.org
X-Gm-Message-State: AOJu0YxrT4CX+1ttHGR94KQu1dOGKm7y3XYlL3/Z7uHHUbBblUA2Cc5r
	ym+cQ0Jc+Z52WgEb0d2sreNzYSWlfjaXb666vESPCALwbO1//Xg+OKPE8eOyazYpbJM=
X-Gm-Gg: ASbGncu7X8LN5mHnD1Z+OfGSXAuvoLMboaBluTGL5BGo96mLrMTNPj7eNUBii8A94Tg
	x0TN4F4M8/SVmxVTGOA7fa/IgsFMTUDQCfkrvgnJ24IFiE5oI1KvYJeEKZceKJ3X3CdF4guDfwl
	PgQ65kcDt7+s8Nd50Eq1Sk3JB91eF+eJekbqiHEXSsoX/h0Px+TUz/0d7qQaFEb652/U178Mt3u
	kUB85tYdCoTNr0JFpmx9W7nSrvBR+7dgHAgJOeIYs89lzq1lnOcW1vDCrqHshpmRGXoHWTXF76U
	RsEFTT3j3GcMrqTPsVQ418Cr8714I6MGQDfUOGPWTn6JsWv3dG65uyPdnhUq+KzNor2Kj5xMByq
	bZaa0lFDeANjSi5oY4+qy0+km7lSs8iFeoTgvARBSPtz+f9gw4MF1IiceP95S3Wxpp8G68bk=
X-Google-Smtp-Source: AGHT+IGbUmd3BnTOAfvqhxqaxM6jeYhQvHJR1zvOluF6st0Se5DPt6WufPTIfT4AHhc7z45LT5rx+w==
X-Received: by 2002:a2e:a9a0:0:b0:336:d8e5:8dd2 with SMTP id 38308e7fff4ca-33b4b230a64mr18040141fa.2.1757462161060;
        Tue, 09 Sep 2025 16:56:01 -0700 (PDT)
Received: from thyme.local (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c905d6sm44112571fa.20.2025.09.09.16.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 16:55:59 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8450: enable camera clock controller by default
Date: Wed, 10 Sep 2025 02:55:47 +0300
Message-ID: <20250909235547.787396-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable camera clock controller on Qualcomm SM8450 boards by default
due to a reasonable agreement of having all clock controllers enabled.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
The change is based on Bjorn's qcom/arm64-for-6.18 branch.

 arch/arm64/boot/dts/qcom/sm8450.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 9ebf2b8700d2..e9ffa0af3cb3 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -3300,7 +3300,6 @@ camcc: clock-controller@ade0000 {
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-			status = "disabled";
 		};
 
 		mdss: display-subsystem@ae00000 {
-- 
2.49.0


