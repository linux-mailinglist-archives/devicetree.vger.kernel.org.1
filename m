Return-Path: <devicetree+bounces-153771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2048A4DBA7
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 12:00:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CA86188E899
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 254E6202F8F;
	Tue,  4 Mar 2025 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O82sfg1I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50803202C40
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741085896; cv=none; b=NprT4nI0UFMDc4rO2oj43+Q+kLEa5Riphdv80D3Lpu+LY1CU2apmf2TxTN6lZC+LJus41F1n9jbzaizB9RqUUVVAFwszO14WEzWGd+hih4urS/Uhi31fYU82MH4PJ/M/CUat40UCX0Y4K652pDTWJxtUPOtGg2oC/oEQiXhVKFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741085896; c=relaxed/simple;
	bh=Zqqp9kj2qs1kIed4yvhKxtqoam51WaimrpCDyizSfpo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UR3KMeseFZyzyI7XFpShLzPU7DCvCgx3z+CT/lYQQa5m+IxYdbW1NEw05EPNdW4W7+gt+ucuqZVWiZuSOhxI7JggmHd6OEakyx9BM1bpheiLig7nyaeL62vor5nT6Bpb1y0fMYaSngPV/z+mAYY3laAroNJ9BfT0N4pCs+MOEsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O82sfg1I; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-abf538f7be0so477980766b.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741085892; x=1741690692; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Vb9KDOz19ijUANRYpkQgMyAo2OY8uOhKMXDPTYrFM8=;
        b=O82sfg1IEbsqJH8kjhhGL+fIzdCd9gH7J/kdptTkuLljLawGJVJy/t8CsD9Lt5ukh6
         1UF8sTqmmO/Q7ifZ0TWciGfOAyFVC41tiuLBVaIBZiGHRwJLVLYc1X8iRC6Psxbw1EtL
         bvbRLgN4KcGsAWGtn9o8+cYc5p9V73x3gZsisR24Xp23LzVGVXUf6/PIq9TeYdvCn7g7
         ZEYzkPFHfdDbx/g67jeQPxU0wdZMs7a2+dcWea2PWNk+Sq9pG+sNUlHSmnt68B+JBP7j
         AYrwFf5CuMBGsaX0QHfiFGEUEs7lu1iYDjbHkMpr8BOmgYAhU+mCmgXF9lsmeTeqYP0i
         VMwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741085892; x=1741690692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Vb9KDOz19ijUANRYpkQgMyAo2OY8uOhKMXDPTYrFM8=;
        b=Lu6Ao9kPu14vQG1fj+Oyyj/R6K9bgf1V2BDSl2KvrcF4PuYy6lqdej/DTkVWsjvdGk
         fon9WOF6sRgXWDMaucbMx06DVIsDqlHucJXBmqkP6vhfa1V8rVJZmmpOJInTs5TMbFc+
         oP/OpIihU+JucFxM2RaQV5etepnCoICaxs2f67+TBk123FQTdtmnYMiXXqeePNKU8FMF
         n+mVRqQ18b3vpNm86aDuh2TRdYsmhydCzuyVqlCzxQJOAfyI++XEGEMi5GMKSv36d/MH
         D/xAnYV2x0j8wUZbXuZH9qWtq1Xu2xnKIVICHpEOCy4SLYB7KXnHhKJlr49KHJG64ewU
         n42Q==
X-Forwarded-Encrypted: i=1; AJvYcCViSQoW0F0+uqlegxMphqoUPNdRTYNuitmjTDFNvKPQon5YGserF62Eo7crWkGRbpqJf8cR+BpKO94m@vger.kernel.org
X-Gm-Message-State: AOJu0Yxjzh4fpCWEdNACP5obwHgPn44+YsoEcvh16qqhRVnrDksyKKHF
	ayr8PkNwwDOqmgYj5hLuP+aZrKVTUiNLqGVjlTJHival3dcYnj0SW1YlmrwxN5aRcfFKKU1A+6G
	w
X-Gm-Gg: ASbGncvfE7bVnfAA9EB2RvX2ari96zeMuD2V5CTfbcZDfmhgl5GSQIjC5mff0ETzL/e
	0dT3R1gL6anndDJYs3OHdlfF11bM8GPv3NQFesrxIS/Wsd9G/oiguu7cSfLHX7oPhBdfzKoEHf4
	S25WtWaLf5Psat1a4ZzypeyrI7QvkXHhxPWthcpK3XTmSW7dPzzZuAb2AqDCa0RMMhe3vTOyAOT
	iB32ZmwwkKOSw07Phcc84xTuOTDllrSnE6IB8aS1k7FOtFnFRZ6rU8na1qmHybqfEKQtzVY2v/o
	4idTWIITDY8XyXrC5qbAd6qIPVZS1fB7qfLHabPlJ4w=
X-Google-Smtp-Source: AGHT+IEb6EuiS7+dqi0bOsXT4Ym7YeiUZxDY4eCglHY6UpaosBItLqyrdP3V6eA6K1sjLH5BfCCguA==
X-Received: by 2002:a17:907:9815:b0:abf:641a:5727 with SMTP id a640c23a62f3a-abf641a5b44mr960726166b.7.1741085892630;
        Tue, 04 Mar 2025 02:58:12 -0800 (PST)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac1fde3f585sm38973266b.53.2025.03.04.02.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:58:12 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 04 Mar 2025 12:57:49 +0200
Subject: [PATCH v6 4/4] arm64: dts: qcom: x1e80100-t14s: Enable external
 DisplayPort support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-4-e5a49fae4e94@linaro.org>
References: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-0-e5a49fae4e94@linaro.org>
In-Reply-To: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-0-e5a49fae4e94@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1426; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Zqqp9kj2qs1kIed4yvhKxtqoam51WaimrpCDyizSfpo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnxty8xDqJ7tIs1vHQGl75zJ9YMfmFdEX5aZ9tH
 Xr32KIn8ouJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ8bcvAAKCRAbX0TJAJUV
 VpBJEACX3dW3/8corJf9Px6nz2ARucorC6oYdZW0igUQU4rTBy7bepm/UpbBA7qwulCmelx3WLB
 7cF5N5zt56lFGhrip8y+b2Wz4YcdiqDXFLh4qOQGQY/P3JreSZ/EAIEuZCJ1N5NpviqfQLERLNl
 2IWb+/+Ja5d3GEGux26msLHl3Ee/AYzL/8ERE1XxGtCFeLy11LrdupIT6hFMR2/H7o/fpmdG0ab
 ZZx5uTtPIcB0S7N+jmLoQdKwtE+nM+kJVkPhCjNhFipTQvV/8Ft/drZylti9jmmtwg6qSbN4smw
 qgtA7XK0u20qklXeJPEtrrr6WnJWBA3Qg0cDjPCGkVpX62ds5OoGpCWLXKeQ9v2SLYNXMwM+CFq
 yUiakuqCJIUs/84W/hXvSKpGuxrxGeGX3l+LAfsm4FjxeXXQekOso4CHAylnMYFyViPxFR29zop
 xp55c696KwdJ7K8NOPEutNIoat6cGfOSxHB6EfL3KYmVm/nIrGJYHD3G8R0plcsJPnxTOvoCnqS
 6DXWMSaQRkIxRM9fvuATNIrEs94joa6WR0aWiwPZmnPzoJ0NcL9HLD1EIWCRl8vaiv00ulqCxId
 KPczgueY0Evy/d0kkSVZQNTpO4NVa1Ff3KIqcopheIoDWoRUL4eC9sHT7aocFVr95n0PAM0iWeg
 qKqny9o2BXHFTaQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Lenovo ThinkPad T14s Gen6 provides external DisplayPort on all
2 USB Type-C ports. Each one of this ports is connected to a dedicated
DisplayPort controller.

Due to support missing in the USB/DisplayPort combo PHY driver,
the external DisplayPort is limited to 2 lanes.

So enable the first and second DisplayPort controllers and limit their
data lanes number to 2.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Tested-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index 9c0903b8436396b2fe6e17ee3bc4d454cb5a0f8b..05b2f3bf1fc81c1b10e375b5335377c9ce39be95 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -923,6 +923,22 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1>;
+};
+
+&mdss_dp1 {
+	status = "okay";
+};
+
+&mdss_dp1_out {
+	data-lanes = <0 1>;
+};
+
 &mdss_dp3 {
 	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;

-- 
2.34.1


