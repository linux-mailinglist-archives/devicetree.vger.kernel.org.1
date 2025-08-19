Return-Path: <devicetree+bounces-206136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 550CDB2B99A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 08:37:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC98E7A8F90
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 06:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B241727B353;
	Tue, 19 Aug 2025 06:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c+JMjzgE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4320D26B764
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755585418; cv=none; b=XYwHymxzW8G0i6qK+UZj52kgWEVGisvQHbu9WKO78S0JqwR8ozoxdOA/wU2s+uIjw6SMji+CtSYilw3/TIV6xkipPCsH02CHTy32dHNqDIuRns7DPtWzRnJTKb8+putVZawHaeguZ4ldxxVALRjAvjy13tovlNEYO2rIkwvcmBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755585418; c=relaxed/simple;
	bh=ooP0tmuQEvh+EyQR6KnOEmMXb3H4OJjm1CP4dfl/QSg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eViViHfed5zzWd8RoremqzgRBe65+hPPHR4zqn5/vN/FeVi3Z3eQekOHB/xRkDOoW4Gv2ofQy/Wf3HGfdaYpgxxZtiAKaL3g5SbrsIs6LBpZZ4CMIsEBUTyvVDG5q/BtV3F4BmQUpr3c0JwxPpfNQhJ6Gr3EiIV8X5D5BBZT5jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c+JMjzgE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J2GbSx021396
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NsIfrvTLDxKj7MQKwmdBE+vbOboHExWTllcv4P/M3bA=; b=c+JMjzgEcVFmcxER
	v3JF67q6FOkC376kvXdUcyupeLy+T1ZB7CInbTGMcmOqLH9pfIQJBW36EzhEpaBq
	DbrcoBs2lK955IEMidOTVzVyfT5r2YUqIRQ7qj6CO6diaagvPNHPsKGyML2HGMEv
	D2gzTc+lJMlCGsx8pbAtcoLHnJZyyTGWfK1a+H63aMZXvVqNOaLQGv64d1Thl/s5
	r//HcGmwGHFurajZqtmQHu4O0bsO/9P9ludM8U95If+lfO5bRdsdwjbVF7nve8cI
	sW7vTww3IVzI5faDIxEYcFwv5e/lDUQaHRioSqn+w4sCntTJn+Ks/YWsYccxhSrs
	pBIyVQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jh077ghj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:55 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244581950a1so57167415ad.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 23:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755585414; x=1756190214;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NsIfrvTLDxKj7MQKwmdBE+vbOboHExWTllcv4P/M3bA=;
        b=kHjVAhmoXSVKGUdRab9bLlakTR4UkhQY5F+OWTgEFo7q/h5n8p9SBSv5VlqDTO4/Sz
         XrrwDTrQR7tDRY6nD7gmGjWGmX63nMaIi29OF/cW3xmr+HwEdJ4+0SC4J68oH00mx4FS
         eOXNWcb53jwaDzv5RXMAULU+Pd1uZoArYRFNXtc5LcevQjefBEpGhftUef6FOt3G6Azh
         2E3TTM/9idH23d0iER4KGFRrPqUiZH4tFWcyVuQxGVoXo9J7yF9KOnZ8ljxx0/Gv21sQ
         qYD+6mFO+DyZK8tHpRiNftkEXGLMKae3vk+qk1p0g3XqHR+zGvqNu1txwpl+Ggh0agnq
         BBXg==
X-Forwarded-Encrypted: i=1; AJvYcCVSzBIMw0sLhoYqw4uJZV3JSXhDr65xp4+1oM3AayWoEEO0793zhy0wbO6CfLfvvd1VFz708u0+J6ha@vger.kernel.org
X-Gm-Message-State: AOJu0YxWxtQgAoTs1JkUZk9MoBb05T6lVDuOIwcYvHjmzHey3bxmb1Zn
	SVkVV6r8PDORun3WTFvj9EfYlLQoTpyfwKj2xDG6rLyJueAQHcpmRehk4GFv4emqZkYcUkBXtSG
	s95lTWYlWakaGFcymBEiwTyPUAqmrVvHWY1afqFdvFcjgTZbQLA2oIj+wYpMO+D5V
X-Gm-Gg: ASbGncu5SnkuiT8zbBqQ9PL2STxUB7dY6ipC1J92lebR92OehQIXXZECw8fXXXdqYzY
	Dh05NkzTQ07LAEZ4uM/nP2nYmsdSO4sQBU6nJhFVVd492phwkXs8k+NKwLjP3CFwVAEl7J8c5a1
	aQiAuNy6vVXk/e5gy19P7SfuFdE9A+En9l+6Lz7CUnxrJoX4ib/bOaW6HV5eDauO4Dl/cdWFWsX
	+ToHRW7dv9eQx64ZE3yVM1S4h2XU31vaBEjC/HWgspSQRsPBK6MlqqmQMCCg0ZjDfqAHP9gYQIg
	DqjW4nBqptvgLVb5nMt5vOw+6m0Tz8gnOyuof6+2+CbsAtAK2LTzFQJDtf3/THPza4EMShGThNq
	yYnqbpgTAQygSHU6JHIyHK6/iC77xPcL+gQ==
X-Received: by 2002:a17:902:fc50:b0:234:a734:4ab1 with SMTP id d9443c01a7336-245e02c1277mr16956085ad.3.1755585413790;
        Mon, 18 Aug 2025 23:36:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOco999Bi1j/ttDYbCi3adNC02Vim++BGoj+wK9RJiQcjLfwcPNu9Sf7OenyvPy4yfGschLQ==
X-Received: by 2002:a17:902:fc50:b0:234:a734:4ab1 with SMTP id d9443c01a7336-245e02c1277mr16955945ad.3.1755585413364;
        Mon, 18 Aug 2025 23:36:53 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d54fe38sm98120455ad.135.2025.08.18.23.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 23:36:53 -0700 (PDT)
From: YijieYang <yijie.yang@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 14:35:58 +0800
Subject: [PATCH v4 3/6] arm64: dts: qcom: qcs615: add ethernet node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-qcs615_eth-v4-3-5050ed3402cb@oss.qualcomm.com>
References: <20250819-qcs615_eth-v4-0-5050ed3402cb@oss.qualcomm.com>
In-Reply-To: <20250819-qcs615_eth-v4-0-5050ed3402cb@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, stable+noautosel@kernel.org,
        Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755585388; l=1620;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=esGpkrp578FqjkRZx/3YPPX9onv/FUSUV77hdcvh6nw=;
 b=SUGbTSGQ410eDz8ELdraMbuF+QvX9Z7EjnQVSHXQrih713dfkqJqB0VRBBkKfxTattHHcRdCV
 LC73TCyJ5V5CFuy5wSYE3kML7+6fQj/5Yhsi4kHtiXSyscOKAuX5Nlo
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-ORIG-GUID: 5oCQSm30QuvswaUX1c1DMs3temfBuWsI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfX1xEBNq2RvwVK
 1VXniMdUpNwQ0yZ5R8LlvVhzcLb2XJd8Ul9/giK5TwnMxSlBKrOUoaL1Mu1//IiBtQedAZ1rc7M
 0TTrC+ugzIOgMbOa/3XBtsihxJFjitrNMXsfF6xEyIk+CvwzBxpGwPAW02MmceMcravbdCGhu1X
 elcJYylHsWmupAy/1jdr9pGiHTJmcJbP/aabBeLcdj4u6H4gNfqzpcjlIv0eyT0ifpDGuK7hNLy
 dHl3o0pr09zChszhXMitEqEqEwsBujrSW15wztCqCsK7T7BLMP2vtqKrn9j68Kcldn9s5uPpFSM
 y2KbrYf0bW/lL902Z7OSovHcsSPzOVF5VwYgOHVjc/ID+4foXzVbMEoLE4N2mBkCO/mPtgk8O6t
 dlCBInDe
X-Authority-Analysis: v=2.4 cv=a+Mw9VSF c=1 sm=1 tr=0 ts=68a41b87 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ufJ1yBTjRq6Z22V5Zn0A:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 5oCQSm30QuvswaUX1c1DMs3temfBuWsI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160020

From: Yijie Yang <quic_yijiyang@quicinc.com>

Add an ethernet controller node for QCS615 SoC to enable ethernet
functionality.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sm6150.dtsi | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
index 591fcb740259..8ec97532911c 100644
--- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
@@ -491,6 +491,39 @@ soc: soc@0 {
 		dma-ranges = <0 0 0 0 0x10 0>;
 		#address-cells = <2>;
 		#size-cells = <2>;
+		ethernet: ethernet@20000 {
+			compatible = "qcom,qcs615-ethqos", "qcom,qcs404-ethqos";
+			reg = <0x0 0x00020000 0x0 0x10000>,
+			      <0x0 0x00036000 0x0 0x100>;
+			reg-names = "stmmaceth",
+				    "rgmii";
+
+			clocks = <&gcc GCC_EMAC_AXI_CLK>,
+				 <&gcc GCC_EMAC_SLV_AHB_CLK>,
+				 <&gcc GCC_EMAC_PTP_CLK>,
+				 <&gcc GCC_EMAC_RGMII_CLK>;
+			clock-names = "stmmaceth",
+				      "pclk",
+				      "ptp_ref",
+				      "rgmii";
+
+			interrupts = <GIC_SPI 660 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 661 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq",
+					  "eth_lpi";
+
+			power-domains = <&gcc EMAC_GDSC>;
+			resets = <&gcc GCC_EMAC_BCR>;
+
+			iommus = <&apps_smmu 0x1c0 0x0>;
+
+			snps,tso;
+			snps,pbl = <32>;
+			rx-fifo-depth = <16384>;
+			tx-fifo-depth = <20480>;
+
+			status = "disabled";
+		};
 
 		gcc: clock-controller@100000 {
 			compatible = "qcom,qcs615-gcc";

-- 
2.34.1


