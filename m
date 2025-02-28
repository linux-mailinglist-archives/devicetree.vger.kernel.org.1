Return-Path: <devicetree+bounces-152500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C623A493C5
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:40:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BBD516B450
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C517C253343;
	Fri, 28 Feb 2025 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="twVis1WJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9C92512C3
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 08:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740732034; cv=none; b=kGL9clJcPgQXBmdtPyAJYNFL4qqIhFs0a2MP2Ij/t/h7Ph8eTRWJ4mxiif70xM623718Iry2OiofDhnA+GeGs+nK4sF/6BHzG9Y5N/HmmNZg3Lqhi0QRwTeN2CPpnXO+tLArMzM3s/2bFbSXZf30uLTTASuoBQq4l4hzb9Zbu54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740732034; c=relaxed/simple;
	bh=u5VXlTAUaqWflkJ79v0DdhZHZoQi1HvLsNzEEg4t3tU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mycgImtu9liGGbuyh/PwKWTrHSLclqO76Dy0GB0K8LpgMguQ8hoHswAf5YMu3O81A2Zmo3oG8/8D4aoUyO8QbPrO3708Djd/IF9a1zxmuUzsAa7eDCzcj4HY74dzLYtsjnu+zgCw5MiZ90VYoZRm1KVTDw08h4EFc5Eq4d3oLVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=twVis1WJ; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-439350f1a0bso12018125e9.0
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 00:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740732031; x=1741336831; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oqrad9xfDYzOdk7X4I3bN8yDsq2f9Gsb4PN14Ja9cDo=;
        b=twVis1WJowBXC8kSjydAr3XG3CQRsJnSM6+BHjk3MYLwSgCHqb2PsVP+E6dEcXLcb2
         hqIsjJvKD4id5Kbifh1Ew4aXFhRAjCFK6yLY2X4IZPf1xuKQAnQYPS0jJl9fRHXrtX0p
         yObDuxp3qtKJZ0G7DN1XVmtmtgTo8BrfnjJggfgnyx6vyOKCWX0FvE76+USEm2G7ByFU
         pVeL/SdcollkGHOLIe8O9vDWkAwIDN5ZpSxXCJpVXCsbohumdOxWQYHke8wFozay1+GH
         3C8cZRvtMynkUh9ALwQgA5paJienvo4F49OKZ+smkRorDrDBqlRyNh76oNsdwy64NRzy
         BETQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740732031; x=1741336831;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oqrad9xfDYzOdk7X4I3bN8yDsq2f9Gsb4PN14Ja9cDo=;
        b=Dv+P5EB25xHyxxWcu6G61oRdzD+8c9uLtfKL12r0IwBuii2bq4a/e2FmA8/H6TenAe
         nefN2ZU+m0luccrDhfwHawG31mCvMMCT8HJTmC9IbhW4qdpLW43QIn/ULKs/rfSMKXRP
         MpCtGdR+/Tzgqt6ouM7tdZtcXxb77uSdnq2cTxPiXl3Zt2xFbtZ+GK73xl59DqFjJzJ0
         ZO/rrcZ+CpthSXQh/D1EFd78L3o/CpiLYpTIK8T2vBmcXgwnn7coqbUCKS/+RECoDi0N
         sErdzGKKFNM39hLEckxHu0tK0tOhT3iJLNnZTh8DmB3EChKzkBRhLOnBs1pLrB5Xtg1I
         Nxbg==
X-Forwarded-Encrypted: i=1; AJvYcCXHW3uJaHcc2JBgWC3ZX1Er2UggBuXIG9I84MbUFyQOEN2OQNo6MXj2+ubApfrAoedE+FmqyfcmoIt5@vger.kernel.org
X-Gm-Message-State: AOJu0YwP/Z0dJPCWcb1EnGUbNAfY051CNEtilsU7r/+APuTdsH2SvyLC
	dtOdSPsOzxxQs7wmwF2BJ2JoJNlaB4pZtL+dgHZ/TSdnE+Tky3sbqvB1YgMLTNU=
X-Gm-Gg: ASbGncsoayAxfuAb9hBDhEVpv39c19bCSLytUB+vOmLwyae1HTuM6gNFKXswfvsEgyV
	Psy8E/RnqmufkNFgtKBgjt/pEWH8bODWGQweUzbG5yu7bbKBaNLoL7zTT7swjtr+qdXzjMX1IUj
	RKsrlL5HodnhssE2YxwVMGx/as54Ao79ZVX4PuX3naX6KimdSHrScsSFbKCShk9Q8kvsXp5xxRU
	tEKINfTg24hVicXzb2lR7lw1LlHbQg5Xpi05MuGBLpzi+fygYYyYK1wqagFscFFKV4Ls/E3RPR6
	hjjoBmbblUmQSVJ1vFwdMsuoJE3b8V6v902X+lcsaT82kSc=
X-Google-Smtp-Source: AGHT+IH7nz0e5NOGJ8GfP03ff37ZFCs7+rpi5/HWryJ4i+ir3gXKbSs/5g9YbHou/84uzDRqY4YyPA==
X-Received: by 2002:a05:600c:5782:b0:439:8439:de7e with SMTP id 5b1f17b1804b1-43b04dc34afmr57409345e9.15.1740732031098;
        Fri, 28 Feb 2025 00:40:31 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b7a27aa85sm48096605e9.28.2025.02.28.00.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 00:40:30 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 28 Feb 2025 09:40:26 +0100
Subject: [PATCH v4 2/2] arm64: dts: qcom: sm8650: add PPI interrupt
 partitions for the ARM PMUs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-topic-sm8650-pmu-ppi-partition-v4-2-78cffd35c73d@linaro.org>
References: <20250228-topic-sm8650-pmu-ppi-partition-v4-0-78cffd35c73d@linaro.org>
In-Reply-To: <20250228-topic-sm8650-pmu-ppi-partition-v4-0-78cffd35c73d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1827;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=u5VXlTAUaqWflkJ79v0DdhZHZoQi1HvLsNzEEg4t3tU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnwXZ8+/64Ryfj7DOMO4TykxPhIU0N6QuhxeEjtcA6
 ZnlwJquJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8F2fAAKCRB33NvayMhJ0a80D/
 oC/23vBNMa8PQM69nkdfOlmurvXLQwIlU7Z1cYDbT7sBNSqjMWZz0WnxNQ4ARTChpn5ryWl9lfMPw4
 /RZX9CGNCPMjr70nP6KlpMhp3d1SwBdzQnb0dHRQw223WZIk38DiuHdj17Jma1fj7t5UEYX5ll8v2Q
 vZt3w7pzJEJA0WtQBkA30uv9iR1zWZibvFB4PdTpZDraCL2afJO4LVVFQD3zDvF6DJ/PL0DXsxW2X9
 slLVJmmss5wrIMmmhZiGE91eifb2s/NRiXUAA4iwt2PCi4kSxymrq03uUaII85erqQbRd+ny7ReuKD
 9oj5BmObsm41U60YF3jrB62b+ZCAwjUC9GuH6LtcEq3upCFEbQlVJozvfE8CTa6EQXt0abWeLedKKo
 O3oh0LuLK3h1DxBdxbPi7GacmUl/MYARkC2/JGPuEIYq/H21wAlwNzcCvbN5qOBbcvLvsn9cbFKi0j
 wcMP/+vt0D+Fv5aMnOh00nkLj+uCbhvw1jt1epkDvC7dst6UWaJskdjiqCIi3WLq8DlsS8UiAzcROn
 CQhN51B4bvrSBJjwho3w9BgOfG0GjWc/Oos5f6OFD3/DmZ0RXbbya4Xz8a7Mt4Iw8y7jI6SVFRWQP6
 5fBSJP4uPKFi28uyDG7rCnbkYYRS++4eV9PTL5MRGBdDgMgdzrQrY2keIyiQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PMUs shares the same per-cpu (PPI) interrupt, so declare the proper
interrupt partition maps and use the 4th interrupt cell to pass the
partition phandle for each ARM PMU node.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 982579d0af4684f07d5620e03d0cba20e58acd2e..512a5a4c77951d6336082c8e0d94eb69f29d67c7 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -1417,17 +1417,17 @@ opp-3302400000 {
 
 	pmu-a520 {
 		compatible = "arm,cortex-a520-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster0>;
 	};
 
 	pmu-a720 {
 		compatible = "arm,cortex-a720-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster1>;
 	};
 
 	pmu-x4 {
 		compatible = "arm,cortex-x4-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster2>;
 	};
 
 	psci {
@@ -6590,6 +6590,20 @@ intc: interrupt-controller@17100000 {
 			#size-cells = <2>;
 			ranges;
 
+			ppi-partitions {
+				ppi_cluster0: interrupt-partition-0 {
+					affinity = <&cpu0 &cpu1>;
+				};
+
+				ppi_cluster1: interrupt-partition-1 {
+					affinity = <&cpu2 &cpu3 &cpu4 &cpu5 &cpu6>;
+				};
+
+				ppi_cluster2: interrupt-partition-2 {
+					affinity = <&cpu7>;
+				};
+			};
+
 			gic_its: msi-controller@17140000 {
 				compatible = "arm,gic-v3-its";
 				reg = <0 0x17140000 0 0x20000>;

-- 
2.34.1


