Return-Path: <devicetree+bounces-182940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB04ACE947
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 07:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E83471894EC2
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 05:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5B561FAC4E;
	Thu,  5 Jun 2025 05:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R8fsk6O6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEC51F4295
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 05:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749101105; cv=none; b=EFzAjTIMp2iYkSTH6C77vXGjt2IUNI+iUZ2gM8q98RGAyb70mDr7Oa9edRbTXGyZzogyYSkrFtvPoI7V98k238b9TrMOyBgz8vO/FS32n+xQy5ZH3akzIUQjKIMrYDejQg8F4PrRwBNJelfkiQFpbAxyr3ujQZuQ6DDa/vToUZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749101105; c=relaxed/simple;
	bh=ELxi17BXt0gUz8Vso9W9F/JQZ64lsRJBRbCAqrjU9wM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ak9GxNVz6kTsCQ//Xc//RUnWBZDijbfGWsN/gj9U0y2D3SVzt3G44ApfzxvvrvjqWnE9QBO/W8aQzKUFwI+sbH2RSJH84tUzUbNWtojZzg243XoTAB5DQ1LHR6znP+A32dN+5cqAg10RLdAR8lUyyuPIzO1LX00P9ixhUNZ+Z/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R8fsk6O6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 554JZ9mP013814
	for <devicetree@vger.kernel.org>; Thu, 5 Jun 2025 05:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PfHwB6dSzDJGAFnPurJMLNcpoaZQ2vaUHXaSKUEc1ss=; b=R8fsk6O65TjBEr/i
	2MKATE6ooeKrziRItWHRxG0QoENTvOHuQWiUJlG2vKtQUCytSBv8I4xUL1fYxB5J
	n9BApNZTjQI2BB/6wyt2x1t84RziyrFS3QJHowZ2BIKZtcBgUBbNIr1MkhEOarVv
	ugQU7KVLaX85aVgHOeX24mT6s9lLu48MUgf7YOlLFOZ4igZ1Xlbzct1rbEWEbDry
	Sa/XmrxigvRmkQKS/xpt+UVWzZk4fCQiZ5fq3iv8oMf081FqTxil0jQnqq8Wx39r
	qRrWPX/NjchYNNRd17dfITkHntGfFaEeHPivT/FTO/hHY8Lb6eGGQzm00NtvfWJe
	4TkoMA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8t056t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 05:25:03 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-31215090074so941794a91.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 22:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749101102; x=1749705902;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PfHwB6dSzDJGAFnPurJMLNcpoaZQ2vaUHXaSKUEc1ss=;
        b=sDt8V6cOnKUoNXt2FgbKL51fTTP4aumcpqX6tYz+/OLNpURkHfnRjRCb5AB5kqmEux
         g+c8nfzH65IH/9CpaEj7c94k3PLezxQj3ToeDMVjPTUiHyfDXewikq8x4revQPDSeHP+
         oX1pxv4Dsy+Q1ot5FVYzcP28s4wwq82FwF9/O+oTUIdEhlsRjxlTf4NL6Vh9REzLCEkE
         +dUI28WTFSZdDXd1lOQsca9FTrlIQkjLobcKpJ240VrFAyldfyuDfRoe27XU5k9S3hvc
         7XAQWrhRq/QbZdgqDVlQMu1QaIClRMht6Vl4LIL+I+D87c8gKLQcU8SlmoJn9BwaTc3D
         KeJw==
X-Forwarded-Encrypted: i=1; AJvYcCX5f4p9svZVazXuZvmaSL/lL1IlZYjklsv+6F8BU28BRRA3gwDmyKE3XM60qtqqb3tb1YGdmnzJ6bk/@vger.kernel.org
X-Gm-Message-State: AOJu0YzpN03WicBtXCf9IF+RIEgcEUha3ypWlPbN0YCyuR90OeyiGSFv
	JabKjPstCz7eFvhrn7glBmbak0Lm4wrIxdQL86+7sC73CFYsIliT1vdhuvo5CeHMabgkom+55+Q
	2+y1dkMj+YPMzk+YfjcKfzFCvQRBUnYsL98AKitckb7qHswKvPM6tcAfU8jJWEBW2
X-Gm-Gg: ASbGncsVKjxGgBhDQoVdZC4c76tL2xudXEzBDLegDdA6StUSlXMRg8zwggi/wSkrsFu
	D0u7m8EOsrWxTnd/+eDibdiKJSKxwnbjQVHWBfmgONvzmyBnWlET+F7er8BKYQBbh2R5g0HJy/R
	gAfDQESvAhSf1lVZYgKwx5tXv6DuFu6fHo4Q5ip9RxB50B53xusYf6RU8fINr5tYcjSCFJ/g6M6
	O9Zz/bvODpquIYVr9WJpe6i2O/vhoAPmK75WJkAXesN5ciMM/fQBYuTJx4Q/i8cetQixQl7B/sp
	aVzOZOrDNe/syAUarxSs8xFYlpZdksdqNi3eMSsorv4cXPQoKk7BiF+pnA==
X-Received: by 2002:a17:90b:2642:b0:311:df4b:4b91 with SMTP id 98e67ed59e1d1-3130ccf6f5cmr8254218a91.7.1749101102341;
        Wed, 04 Jun 2025 22:25:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFu5kqQmjyC2wMV/C06XGW45WU9PeScNVXB0Pinc7rugWzf9Opy3tahbcubOFLJTWdr/j40hA==
X-Received: by 2002:a17:90b:2642:b0:311:df4b:4b91 with SMTP id 98e67ed59e1d1-3130ccf6f5cmr8254195a91.7.1749101101938;
        Wed, 04 Jun 2025 22:25:01 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3132c0ad55csm621815a91.40.2025.06.04.22.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 22:25:01 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 05 Jun 2025 10:54:44 +0530
Subject: [PATCH v3 1/2] arm64: dts: qcom: sc7280: Add wake GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-wake_irq_support-v3-1-7ba56dc909a5@oss.qualcomm.com>
References: <20250605-wake_irq_support-v3-0-7ba56dc909a5@oss.qualcomm.com>
In-Reply-To: <20250605-wake_irq_support-v3-0-7ba56dc909a5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749101092; l=1848;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=ELxi17BXt0gUz8Vso9W9F/JQZ64lsRJBRbCAqrjU9wM=;
 b=+IOEZE/OHhcub9WfhNW1bm4ZxWxZxWMXvvx9Y3YCqre6IhUr6o6/prm1iG/JCtWdjmmzbysjL
 Jj9UJU0JLeGDeOkWPYyarWeKo5OLILo6f08Rod/0mJI1dUk260wCPgF
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=RMizH5i+ c=1 sm=1 tr=0 ts=68412a2f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=3vADZrDGUz89oz24Pk8A:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA1MDA0NSBTYWx0ZWRfX7RgAjYmvs5Ov
 pngFWidFJYUf5rbAEueBn7WwUKsh8FIqAZTut2NYL0bF3sH6e2nyECDgJ/EqRTSkExvbmMdBJHi
 RPm7LZcDdXwlAgPuytKnU1Wr2UF4sfGpdjI/WedgbwKXuJ8dHdr+P43T/vHFp5PobnLlXxxLycq
 VM4ZkVLYj6U5+YLiVELnWN5lee8DeEw5dOvtOLeWoVJcwlQiYyqRiPyRXI5Uc1vPdWbcd5CodP4
 gnVYL74h2cIafIfWrQ2zURfiltoiQ5Cr0J7eK7dXMJB40lUUQD9nSPNSnIruR1tMx4LiNIrCWr+
 DAW4roWM9ILPLTnPC0HmG/l1QVUhHs2vRiLkOLANtUxD/078KX2Bz20FHuUS/vDLR4aAyfkJrlF
 IRsJxvLoch2hYK1N2LDaqtT3LQgU08hRdltNEY9HyyiIS/xNXlAjAulQ5M2TkGEG2jI23xNB
X-Proofpoint-GUID: a6PIN7tIRCFQZ3QjQwh8vwAnBrflFuHy
X-Proofpoint-ORIG-GUID: a6PIN7tIRCFQZ3QjQwh8vwAnBrflFuHy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-05_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 adultscore=0 mlxlogscore=917 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506050045

Add WAKE# gpio which is needed to bring PCIe device state
from D3cold to D0.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 1 +
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 1 +
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 10c152ac03c874df5f1dc386d9079d3db1c55362..27cd94cb48d91e57d07cb38e008859d0c354b8fc 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -810,6 +810,7 @@ &mdss_edp_phy {
 
 &pcieport1 {
 	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
 };
 
 &pcie1 {
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 60b3cf50ea1d61dd5e8b573b5f1c6faa1c291eee..d435db860625d52842bf8e92d6223f67343121db 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -477,6 +477,7 @@ &pcie1 {
 
 &pcieport1 {
 	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
 };
 
 &pm8350c_pwm {
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 0b0212b670797a364d7f0e7a458fc73245fff8db..762615a61e046c711b248579abcbc58b86e428c1 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -418,6 +418,7 @@ &lpass_va_macro {
 
 &pcieport1 {
 	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
 };
 
 &pcie1 {

-- 
2.34.1


