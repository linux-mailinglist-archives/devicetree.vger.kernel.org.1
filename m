Return-Path: <devicetree+bounces-250588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 252F6CEA563
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC6F53032944
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 17:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8AB32B99C;
	Tue, 30 Dec 2025 17:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="esguBiK/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aAMyJGdd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A023B322B8A
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767116331; cv=none; b=NdeP3ulXX4HmCj40gEFF/+grhykfxKeGTApW+RWDAEOAzRr8350URDuIzNQC9hwERLsGzzzlmi2ktVfb7XSytJLJEzlnV2mxO1lk8VOc5rxomC3PaM6Alr15MMT531vgMX69SWQlv7PKlDTz5kw3ElfOM1iNQChidQxFYaFanQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767116331; c=relaxed/simple;
	bh=jVSraBDA4jMkL4g3TO+xdE2H0nIGj+TwQt94Ayr2Z1s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IIwiJ+5lcaWg5M3NuPkVkeego2odchh0iHJXlKtHoufs9o1pH1fcpHK+CRxpXBasaX5a1v0ki8ftJCIyzyOM1LJXuoYP+RT6ICioLjafHJNWfwRjO7nUkdDk5NFAnMYYHXvAZvv60+zEjNFsLwFcF0EAgj4RTPbnZX91yvJrqnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=esguBiK/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aAMyJGdd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUEFWpY3538683
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q+zwSlpyRPuZwgBkCnYNj6F2CCLSs0ja/2sdy8YUqks=; b=esguBiK/Uz0wdw3y
	xjOQD+l7idccObUy1x9MVgiQAHbfLDcOd5UIDoAQipoe3rKBmsY2jzd5pZsKA5rG
	jrXPryjz66LqsuHgzO+sBysdlnv/3uqW3o7h4S/8BS9moPk/fi80NqowQg2sMoTF
	aYv3o9P2LlwvE9JW4bog1x/LzneBTguk2gQeiHZMUxMXtfrV39Jys+EPlxhrqGJO
	LKvPcd2ueftVimfya4SdeMNSLvZro1XUF/fcd1Vnz5PLWvcBopR+ljzkzcxt0iug
	4HVGLsHAfXMA7O+joL8VW+lDyUAhDonk98Dkucg7swYuZBkR5+vYkyFElWO3AsTp
	fIn7AA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88yhqu7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:48 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c66cb671fso14140349a91.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767116328; x=1767721128; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+zwSlpyRPuZwgBkCnYNj6F2CCLSs0ja/2sdy8YUqks=;
        b=aAMyJGddP8qPowVuoVTBv3KvJwZO39RUbhssGejsvGLEjLUCbRK44JczTsnVG5Tjft
         6T2CY8bTt3Hj9D7AxbX633TR0CG4sN8TP/LyK0hNZHXPdhk1erZPT38g9hSiQM7ZU5Uw
         scnS1jfa9B/EXHKjT5crfTJT9ThjHqdHR4cWL4ru83xNijoI5gw4U91DjEG7FOVGI7Sb
         WLYTNf5bNGVdu+JwT4rTHTTwBVqDtJFwJmZ2UYS0oYUBhNcKB414Lcly5L9LJ344Mtpo
         /4709URUzI3nA2g6Fih19ZSJIf4YIeieizayCsgUGW3ImnXBlg7HdeKB63YLMdGX0ppO
         RNdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767116328; x=1767721128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q+zwSlpyRPuZwgBkCnYNj6F2CCLSs0ja/2sdy8YUqks=;
        b=i9hzI8BStCt6bm7Nv3BblPcA9msNxRqdcslHHBfMqgkXj0Kr8KnoBgUU4uoHCxmYoc
         tCs6YI+2ygFqmTbmr0LCNweJMQdgiBfbO1mrxM2F5kXPdurY+rkfgXMLRnsd1NmMX9UX
         wVTbBJvDpghMZZo3sfL8/8neQ7GJBUP8fVNGEPc6Bk4pH1grOGupkxXHvwYCzb0Tjb6Z
         LqyxgtcJbUXCSN8IL/P2CB8itYdzBNAhuBCODlgnoRBr8+iDvSLmo3G1jBuil1DC/Z2R
         M9UOG1St8V5d7Gpg8x9+nixTxXBuCfeeD9bRJmDaABxFMGZe9pTKxGuAbIlzVd5ipKOx
         bgxg==
X-Forwarded-Encrypted: i=1; AJvYcCUvl4Vps5xkhXTCfghSKuCcqO0xnTnJD1E6FCO6IkWWF2+aJiEXSHdvV1lfzxYC54VaoAe+zzVYWwVc@vger.kernel.org
X-Gm-Message-State: AOJu0YwxW1EVeWJ0n0EuWGYZzltOE3Ch67KiByxuNCvAS3zq/5K+wCze
	Uu37nW6OT93IyilDkmb8xUKwJC4VqwNIYm9oAiK4WGPgJFH5pr/9iJ6D2A2WmvLeUEjVlgEgEzf
	C8wZouNzW4zUN+/TfFNrRB2F7rljMbPr666dmX1qxFM6iknhwMAjVafxfzVCg40RuZSA9X5o1
X-Gm-Gg: AY/fxX4hHcLAVNmuW6xsw9nvAjdCkvuAnNIDraR4yaOrWZstUu+EZ8xm2kTVEsbKsgh
	eBrZ/TPapE2kkTrW7WhYJYktUqAhHEUTOmzmfu3irr0PuO81yTRdv0lJohTugPpqGb4mu9fBLxw
	fisQZJpExHZmtOcuem8+OX4Dl6h9SgAklmrwHsQEouCsQ/PRXqhxco9IStZWxiVVhnbZaUXkqnZ
	b16Gq5wdn/9GN/MpKWgIzPH2oY3Jt4G4IQr1+PKk0dEeryxR7M7PtEbf1uatYYEj1PV+HK85BDv
	lvcK6cVakCXB3ra4oeBWpVOXJtmxeLzFDjVwDEH/a555w3XE75j0XYYHYhUGvSChgsg98a0Ap7O
	71aA8Z5xdRknB0hz5P7tDu9JOguz6QJ4F8w==
X-Received: by 2002:a17:90b:5150:b0:340:a5b2:c305 with SMTP id 98e67ed59e1d1-34e9211c3e6mr22916491a91.2.1767116327909;
        Tue, 30 Dec 2025 09:38:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjcIppQOp/lYW/6BjVtI4iBdg5KRUFk2bS5pyGjzca45pQfd8vpN3EsNQ0/dwVVWuPEzNpug==
X-Received: by 2002:a17:90b:5150:b0:340:a5b2:c305 with SMTP id 98e67ed59e1d1-34e9211c3e6mr22916468a91.2.1767116327454;
        Tue, 30 Dec 2025 09:38:47 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7af35f37sm32865208b3a.18.2025.12.30.09.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 09:38:47 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 23:08:34 +0530
Subject: [PATCH 1/3] dt-bindings: clock: qcom,x1e80100-gcc: Add missing UFS
 mux clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-ufs_symbol_clk-v1-1-47d46b24c087@oss.qualcomm.com>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
In-Reply-To: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=69540e28 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=05vd4pdRr5DbID_KwmEA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: SAvsiNQjWZmQ0rqksnaOEz7I5t0wKn84
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE1OCBTYWx0ZWRfX0T0Pd0XDWaqX
 K7XysQ/tobfRyKave+Z6rWcFXUKBN1CdU/CzNqZdVlR5tfL7beVFGeIKDDytNmO9Z3WWmj15JB4
 k7xrLAJgDdo0CxTG/PM4MQiHNKWG0gDLIc5y3Q4/CFDv6HpZEvDgh37NR/0jgLPB5nXuUsgaOWR
 iMPTrt/CD8YbI5N56Inf02lBk5HURX4Y7rLntSslt1mtME9RM/iWAFQENJq5BklfxWB6+d2x8S2
 uq03aSj+g4JpjMXSHbQTvCAaxbhDdQOu7+cGvSj0ds4x8XbKvL51S9PQELRt9qlJ0i2EN8cNgTW
 0qkGwrKB9wxkFUk/NlGdDdh4PGdmh/AC0cywIBhqM9S9im97uMTNvoImDK3X3UqxLEV8uHRfYSu
 Vs3qvCzUvbfXpsrmZ2PlQ6+AB8lG2BZtGY+lq/4Y3WZQhMeK1rLY32XiRNh0/9X79hlbl8Tj0EM
 aY9Cy9nedIv2X51WCtA==
X-Proofpoint-GUID: SAvsiNQjWZmQ0rqksnaOEz7I5t0wKn84
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300158

Some of the UFS symbol rx/tx muxes were not initially described.

Add indices for them to allow extending the driver.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,x1e80100-gcc.yaml | 8 +++++++-
 include/dt-bindings/clock/qcom,x1e80100-gcc.h                  | 3 +++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,x1e80100-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,x1e80100-gcc.yaml
index 1b15b507095455c93b1ba39404cafbb6f96be5a9..881a5dd8d06f924a4627db5f8d17ad147a1011dd 100644
--- a/Documentation/devicetree/bindings/clock/qcom,x1e80100-gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,x1e80100-gcc.yaml
@@ -62,6 +62,9 @@ properties:
       - description: USB4_1 PHY max PIPE clock source
       - description: USB4_2 PHY PCIE PIPE clock source
       - description: USB4_2 PHY max PIPE clock source
+      - description: UFS PHY RX Symbol 0 clock source
+      - description: UFS PHY RX Symbol 1 clock source
+      - description: UFS PHY TX Symbol 0 clock source
 
   power-domains:
     description:
@@ -121,7 +124,10 @@ examples:
                <&usb4_1_phy_pcie_pipe_clk>,
                <&usb4_1_phy_max_pipe_clk>,
                <&usb4_2_phy_pcie_pipe_clk>,
-               <&usb4_2_phy_max_pipe_clk>;
+               <&usb4_2_phy_max_pipe_clk>,
+               <&ufs_phy_rx_symbol_0>,
+               <&ufs_phy_rx_symbol_1>,
+               <&ufs_phy_tx_symbol_0>;
       power-domains = <&rpmhpd RPMHPD_CX>;
       #clock-cells = <1>;
       #reset-cells = <1>;
diff --git a/include/dt-bindings/clock/qcom,x1e80100-gcc.h b/include/dt-bindings/clock/qcom,x1e80100-gcc.h
index 62aa1242559270dd3bd31cd10322ee265468b8e4..d905804e64654dc8d01ab20eb1106cebf6e54b0e 100644
--- a/include/dt-bindings/clock/qcom,x1e80100-gcc.h
+++ b/include/dt-bindings/clock/qcom,x1e80100-gcc.h
@@ -387,6 +387,9 @@
 #define GCC_USB4_2_PHY_RX0_CLK_SRC				377
 #define GCC_USB4_2_PHY_RX1_CLK_SRC				378
 #define GCC_USB4_2_PHY_SYS_CLK_SRC				379
+#define GCC_UFS_PHY_RX_SYMBOL_0_CLK_SRC				380
+#define GCC_UFS_PHY_RX_SYMBOL_1_CLK_SRC				381
+#define GCC_UFS_PHY_TX_SYMBOL_0_CLK_SRC				382
 
 /* GCC power domains */
 #define GCC_PCIE_0_TUNNEL_GDSC					0

-- 
2.34.1


