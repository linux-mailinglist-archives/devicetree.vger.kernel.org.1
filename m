Return-Path: <devicetree+bounces-160048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E204A6D67C
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 09:42:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 892837A5B06
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 08:40:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FDF325DAEF;
	Mon, 24 Mar 2025 08:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="BQOc0eox"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F189425D8FC
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 08:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742805673; cv=none; b=qPTam/aDqVmL8Or/FmDuoVN6b7RR3XJZwDkAmM+EouG5zpMPgtdmYjNMOpc/AyfR+1qPVS5m4wZJmgHotfJkba05Cie20FDEIpR8rVc9LGG0+SXFUXWjYLEqRpUn/NdcOaNH2vo+NrE0NWq3M6tmZFBkNkYTSPFZvCohGu4nA1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742805673; c=relaxed/simple;
	bh=AFOsIAC6SS0fPbzq7D7EjSpe/9E/6d/qhu5Xf6WqtyU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uzJaa6ymDOiEKVQsuDZi8Cm3/bR8+BSxLCFcazS81MBWVNJZ9Utn5Us4MMe9p47hOQc+MD4sH1QRDE93hjomTWjSqx+cyb0ihQd1aOmvqvMYi9ya7CxmjLnh0OVlLffGCaRx9HarRaxtQIaJg30oA2AtxkTPF3qVeG9lz/0T84U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=BQOc0eox; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac34257295dso857794466b.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 01:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1742805669; x=1743410469; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uqyxDkKBXP2Up3UhH96Dx8TXoOJgbv9o3SaMoIVWQrE=;
        b=BQOc0eoxoA4tl5p+pK+LyTEKozxCWGMFmUZJttxNB7EXcd/fD87YBvEC5EoYL2vJWm
         HqJI/UTP22aCeaVl1igHjzTiKxb2A9ntxdH3T80xYpl0pNrLARnaNBZlfJkaX0Zqw/G2
         aoC2OPFkt4yJdQsEleObm0TGqPUWa4591somJ2ggRKwzIz+IeTpz6OcIaa717Fxnsqbu
         HAaf5sDwcgxW4ED7KdUZ6V5sAYDSE7PacQdlUxkLpk2fQRm4xH4YKDj6oyze8grtT2gf
         ZUV4DsYLKBrRIMpuUpwqDe11Nl92a6XNE4saUkcMjZ30DTSWsi2W+UtI27HuTEfv09KO
         t66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742805669; x=1743410469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uqyxDkKBXP2Up3UhH96Dx8TXoOJgbv9o3SaMoIVWQrE=;
        b=F/tOYCbx69Lkp/DJK4fOfHNsOR93nH0t4R5LupjRPng13b1XyPVXtbUvTz7kArmABK
         7FirnBMQv6AvzFEx8Eo+2GVhxZM2GW57tx12kMTy+nEP2x1QII/M36uzo0dftm0lRYwc
         9A/IEqR+2v4QBvi9QrzJ7dowNgRHOd0CBxgCKkV16ppME7JcPk46kwp+dW48xVOm4sOo
         9fOUux+LE1IHKtAAbQpsppeBJIxoBtgBijJiFPnw5Y2+x2iwg+jeotmhqFcUsMjvFpxm
         RfgvtLWt0/gpTjAkJj69ULGW2sN1rEmX6vSnQijVA+rc366TwjXErMXLy+VQTd9bkXl3
         mdfw==
X-Forwarded-Encrypted: i=1; AJvYcCV6NpV/lFeCV6xswJzZDLDFrQuawOWHJIvyTznXHVMF64LAyvu7rFaOgirKKqlHfd1XJRNBW4BJpnb6@vger.kernel.org
X-Gm-Message-State: AOJu0YyykAtJB/wAYSGTTpQOU7M+9Xr6A8ar6VfmfLIcEpZm+c8/IS2T
	EyZ/vMNoBFARz3soWTBiqXWz99lhxRSPzEkoE603NXxcg8r6G6W7e7C1tlnbMWQ=
X-Gm-Gg: ASbGncue1M4WGpn2/QSCTZrcW1amo+NzadOrSc3NReecShe5KgTHJMvPZYDaWFUfMFR
	I7dVevv/560fCQw6oObqxIILNrRpOZw608+US2r9cI/ebYeGd63THK6IfRP1DqxnJZRGsiFxshk
	T8tBA3yy82K9/GgQIcviMkhRkUVPzSZ5GPyBHvM9Cj3jMdKTPHgC84Dlc0M0HhrAqOiSMu9S1VL
	bkj6sVCNeSFr1l+Kv0M+ef7BjANyuEFPqQ8OzLbMLges4grhIzgxWPLclOeCw7RIyZBYbyMhn2+
	+jc/8wb3+RoNgGHyMOfmvak2auNGBJiM4CSLUlzlaChvK+cGHRjcn0zGWBxZCIlsqWgPH4ENUr7
	Y5orQPETDBwaFWc4evA==
X-Google-Smtp-Source: AGHT+IEIbECex1u2sz3obxMBVg9MXWDK5ZdDdAZm5/qlaOXilZZG6R+6m05Bcoh0lt+nXYcl9z01hQ==
X-Received: by 2002:a17:907:d88:b0:ac1:e31e:de0a with SMTP id a640c23a62f3a-ac3f20f7101mr1341850266b.12.1742805669049;
        Mon, 24 Mar 2025 01:41:09 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebcd0dfb33sm5715937a12.68.2025.03.24.01.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 01:41:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 24 Mar 2025 09:41:04 +0100
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm6350: Add video clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250324-sm6350-videocc-v2-4-cc22386433f4@fairphone.com>
References: <20250324-sm6350-videocc-v2-0-cc22386433f4@fairphone.com>
In-Reply-To: <20250324-sm6350-videocc-v2-0-cc22386433f4@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add a node for the videocc found on the SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 42f9d16c2fa6da66a8bb524a33c2687a1e4b40e0..4498d6dfd61a7e30a050a8654d54dae2d06c220c 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1952,6 +1952,20 @@ usb_1_dwc3_ss_out: endpoint {
 			};
 		};
 
+		videocc: clock-controller@aaf0000 {
+			compatible = "qcom,sm6350-videocc";
+			reg = <0x0 0x0aaf0000 0x0 0x10000>;
+			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&sleep_clk>;
+			clock-names = "iface",
+				      "bi_tcxo",
+				      "sleep_clk";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		cci0: cci@ac4a000 {
 			compatible = "qcom,sm6350-cci", "qcom,msm8996-cci";
 			reg = <0x0 0x0ac4a000 0x0 0x1000>;

-- 
2.49.0


