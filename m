Return-Path: <devicetree+bounces-136149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0139EA040A3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D3EC3A20E9
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9AB81F12E3;
	Tue,  7 Jan 2025 13:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iHOPt3iY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184F21EE013
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 13:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736255735; cv=none; b=dGBVBAIwvdBXpvnSSxhWG9IJspKPnsiWIzxjkCZhx/pCBCYeiqaBX5wmLPMC3obWctW+Fiz1EdU7BE8FsKEXIdPxKylpaYnTw/Q29qAYATdVeMZYem904QOl0r61ehdwy2AVQYmoROgcIXm6guXPUSgK3bQu+DYNUuxbYsHxKu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736255735; c=relaxed/simple;
	bh=oYzqvIf+wCDniuUvssACkenuFEvjNa4bjfk6Ws5/dTE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Jk3wlvitDsbp1kACvBacbN+gt9HTJvVMw4q2rzU6n0jsBpTTpucKtGcwza8q/UaIijnFu/NYxYTxyjOnA0X8YGJHQbwMLv2h9CA1jVtd4kdDF9J+N6GMkqqSN75Gpv2aC1Q7RFIwM96gwtU1zY+5qaulPdvNx74iSap7+R0JUQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iHOPt3iY; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so5817747f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 05:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736255730; x=1736860530; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C9XXt0ttMv2/QztAJ9+7l4FSsauoyF7ovKy9WoI1qxs=;
        b=iHOPt3iY6OTKZwiK2OYgN+IE4aTTk/UokX42WaGZxlWfJQKeXmWGF6tigeEKf+UXUl
         IJbOjN3KvD/a8PjVYcx5AwjVoo1W6/MGFdBedF+bU+6DtAYhAi366u/vn+eJobOkkLPC
         M3UdOFFY3swr/wMT6QPF6o9lQJvOzBGCg8MLKGO82V0NnbfBAS4xLWFV/5pFrdQBt+Mw
         DNNxBJHh+ZT3k0cV37GAhfIj3Y4zO0BCty4b+DRSnRj/Oqj7I1gGbiFr1jgWhsCAyoAW
         vuD8zhTMCr9xXjBzk0lVUerBv/FyhteSsWpXT8wfcUG0QAn6UgOKgvV03mVxkShZcSlZ
         U8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736255730; x=1736860530;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C9XXt0ttMv2/QztAJ9+7l4FSsauoyF7ovKy9WoI1qxs=;
        b=JQ+rDdAflYcmKSgqEF4p5sFKCU6oFXPdnfd/UU/RwhKwlzvFNb4qp9mVZkF8MLOwQ8
         Fahe96XgpMg4Pzs96g7qFi498tJR1jFpRKHV8zEM1i7iIX592GK20nq+YIWimEC6vVd/
         az55OErkENHjQq1U0bOHyW6VLk0SjQikDSKoz5CFMypzLM7fAOqwcZx5uhn8YySCTxPc
         LJx64d39gFRVXEkVNVPxB3nruLFdnHLtMspNuCLX93Ta5ML4v4Kj5X0AXEydrxXNuv4o
         +ykzWImC0cmWMHvjiAOj1ZkxRIJKNLUDW2tUmGzCZ1dZpG3fnDZCR14/3HQMfeqUd4S/
         zxiw==
X-Forwarded-Encrypted: i=1; AJvYcCUdPF2KSVQIBsKGUrGe5zr5RfMFVcx1K5WmnDOobQBQF2sFyV/FzBTYSjhz9j9wMWaU4l59wX0vunOF@vger.kernel.org
X-Gm-Message-State: AOJu0YztU9jdhbcJs/EIFttllfvGugW7+MQqZuQSDUp51oR1YBIxMEf4
	3DmJFwIqu5+BjqRekXf5/aR5iMFKDQCf8DOocHKTFRz1KRa/tRc3GFcs1MMmOQE=
X-Gm-Gg: ASbGncusFROA4W55J9bDRBuLGcTjO9FBkbuvDPQi/xvDy4fP8ybEgRvwSGt2RkiUapQ
	/bwYS+ijUFDILiMKGXTYdGVJSeRPOOTtPoresimp6YjC9kGKkCsu2BY4/kr3SBz5pxqFf+q1V5/
	GY3jJImuj0CYMbDBAMHjy9ZDRb1cCAQxXUQcgzAWdykE+pol3eT7aRmUeOZcai10Cyzfp+UpzjP
	t7tmikq+KS5Dddp+BKfa8xFJUUZSCRGt05tKBNFhxvo+ry6/PeJRUTJ
X-Google-Smtp-Source: AGHT+IFWqhrL9fx/h8MMASZkt6AjZGqg0ZKLftC3DcyVQFH4cIBrnHSAS40VxT2xPtJZ9BKUIgvh7g==
X-Received: by 2002:a5d:64e2:0:b0:385:e88b:1a76 with SMTP id ffacd0b85a97d-38a2220084cmr50502760f8f.30.1736255729513;
        Tue, 07 Jan 2025 05:15:29 -0800 (PST)
Received: from [127.0.1.1] ([86.121.162.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c89e43dsm51214183f8f.70.2025.01.07.05.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 05:15:29 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 07 Jan 2025 15:15:16 +0200
Subject: [PATCH] arm64: dts: qcom: x1e80100: Fix usb_2 controller
 interrupts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250107-x1e80100-fix-usb2-controller-irqs-v1-1-4689aa9852a7@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOMofWcC/x2NQQrCQAxFr1KyNjATtSNeRbqY1rQGyowmrRRK7
 25w9x48/t/BWIUN7s0Oyl8xqcUlnhoYXrlMjPJ0Bwp0DTEk3CLfHAKOsuFqPeFQy6J1nllR9GP
 YE7U5XdKYzhl8563s7f/j0R3HD0jZHlVzAAAA
X-Change-ID: 20250107-x1e80100-fix-usb2-controller-irqs-b226a747f73a
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1916; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=oYzqvIf+wCDniuUvssACkenuFEvjNa4bjfk6Ws5/dTE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnfSjr3o+/IPbV1Xo8zKTtN2r8Q7+yrVX9uNBQH
 gP0drPHJzqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ30o6wAKCRAbX0TJAJUV
 VkbwEACw3oTCeGOH8w19jmDqMuIRpR9jYRcTQU7y6NcFq16WMgQa6YF2h9exj4YP/ayDnKj7J95
 D39XfqL8xrPZ+g15EWSlPITFbgqgw/Uk4kirQKfqTpD/HD6x7mhzenrNXmuMqrX2ocY9mBSzxzO
 pfLru+HA3drGYQI7OLM6nyQOrXvqnuPF9tMh46wUZWrTpMcq5+VzS8sWzSjm85UxYgYN9pBRQ+w
 qzO/K9vgecsdfyVjeFt0ETIhykolsglwZY0jb64iyB71wYBBWY49d60lgADooGnDr0ycN0ZSKYO
 gMyvue0JgGtfVhJaQM+O/Kh/bBwD3V6X4nhzdnGMojmcf7Wpyf+tfMrDGmSVwpB0pmO948sDNNP
 XLYbjGDbSqhAmvc0ZlfLyln1XUIF2bFn0Xia45d8Ba8CDTcyWA9XklJmC+EgGMf0BD6GnsNxRVm
 juYdj1XZuK48d1cJoiV6LvIm2a1d041oQ1vZz/ITamOzyq+7EWPlGWMBne6zt9YTjYT82I9DdCE
 4xmDN8/R6lviClzl9Xd7wekqx4vBm3sh8ACRnF/+If/w0QBd59Y3x/nwnNS24YFORdDm1H4fqHf
 MWjPLM1HQlU3kritPXcGsj/F/csU8uon4V1pDIQM9pTMmsOhfufnJ6is7sFpcxWrxu/0/N3CsaG
 /3CXujhgWRKwjvQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Back when the CRD support was brought up, the usb_2 controller didn't
have anything connected to it in order to test it properly, so it was
never enabled.

On the Lenovo ThinkPad T14s, the usb_2 controller has the fingerprint
controller connected to it. So enabling it, proved that the interrupts
lines were wrong from the start.

Fix both the pwr_event and the DWC ctrl_irq lines, according to
documentation.

Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
Cc: stable@vger.kernel.org	# 6.9
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index e2f1873296ec7b7ffdb4c57b5c9d5b09368de168..1c3ad5ae0a41ea235cb176095cd49de7fa89ae4a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4631,7 +4631,7 @@ usb_2: usb@a2f8800 {
 					  <&gcc GCC_USB20_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <200000000>;
 
-			interrupts-extended = <&intc GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
 					      <&pdc 50 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 49 IRQ_TYPE_EDGE_BOTH>;
 			interrupt-names = "pwr_event",
@@ -4657,7 +4657,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			usb_2_dwc3: usb@a200000 {
 				compatible = "snps,dwc3";
 				reg = <0 0x0a200000 0 0xcd00>;
-				interrupts = <GIC_SPI 241 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>;
 				iommus = <&apps_smmu 0x14e0 0x0>;
 				phys = <&usb_2_hsphy>;
 				phy-names = "usb2-phy";

---
base-commit: 7b4b9bf203da94fbeac75ed3116c84aa03e74578
change-id: 20250107-x1e80100-fix-usb2-controller-irqs-b226a747f73a

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


