Return-Path: <devicetree+bounces-215041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C08BAB501DD
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 17:48:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 415631B2651B
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 15:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38C7526E16C;
	Tue,  9 Sep 2025 15:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b5xefnJc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCC5260578
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 15:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757432840; cv=none; b=Ji7Kv8uTVu6+VjpUaNInUvcjpx+PFvb6bLzoeiqyoHs0FYccTmEwziDyEjMVStfcc/70LUlGo9eAHs22EGniP6HhyMBHH7rGs7XTyxZuAyzfhxugg78SIEljC3Pgrz0OPubb/9q8JXyISj04dkhgsMbrdKSIybMyVp0Z/Pyu2X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757432840; c=relaxed/simple;
	bh=C9LK1WdC7ojGj85d4m6vSi4ddX/WKTOu7LxtGP6Q/zI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ZEhnmbcTuVgl/XTMheVXRbfQ4tMT+pXZxP7IHDUtfzNNogaAbt+FU4fO54gyQ9fx2mLGFF0i77y62ArFChyjlMsSiSa3lAaMErzUFYTMY7CcwvHj4Pkzu+xt/0QlNWYPQbzqcMz1ghnWuovkNhrx7pZG86/jeAChfY5D3lAHAYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b5xefnJc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LXCg024566
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 15:47:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=1k4k3M+ejf1ZdXTdYwYaWy
	c+FT5goL93bKn3Wtbsii0=; b=b5xefnJclxrFFl7ExgLMMN53Rz6p9XvNE7xX2+
	hewHrOL+X/cWAAzRY97v0uojTcMD43nimNR0xi3c8LWGndYB5K/YL2Pj6S20N3tS
	KdBgfsVXoydLLHzVbT3PYz7LUDBgvE/YlUQVEgrGdJG/ZD7BXpDePEP0d4GzXHn7
	TH3ervXplbRaJRRbAfYoV6arf94wsQOfeDIspcF1gRKkOC5B/cq8kuOh0EP2vp7T
	vnswFtLpDqRWzEDskwKy0NTuKh+yjVnrL/byMrdTfzswQCa9gq4+pc4nXl04k7pa
	VdTVM9cG7dQcfgj2FQBlcrY1ncBK27xeKN88tZbP8zpHkQJQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by90sgh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 15:47:17 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7723aca1cbcso5478738b3a.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 08:47:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757432836; x=1758037636;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1k4k3M+ejf1ZdXTdYwYaWyc+FT5goL93bKn3Wtbsii0=;
        b=EeklYdKokoL0annpud8sjzYr7LH6IuYafrT48QN4MW5SYTQ2V1eLBUA3nF2/Lcb7IV
         psC9gBuAXb9AeMIs4UPsvkgpIHYW6XFwUeHN4OQCRtGxaSDtA7UoR1N4gS6HWdst1y5A
         GSxW8tNAO3nX9xpLjVlk7dg0R3HPqNXixwTsoG4SJXrGdOpwQK9RlPSldBjyFphBM1Bk
         EDTA7PuADquJBHg3od+iPgN+6D5LV0x+m7ZN8b/2Zjast7UojYQV2LNzCFO8PDvYgj0L
         CNFsU7wd3iqrLuz6Gn9SOc2RliuZd7E3hB7NqNGE6/zSQBX50dobKd0jUFApXUmlN9kw
         9wmA==
X-Forwarded-Encrypted: i=1; AJvYcCXr2KP4giWv2xVw3raKtOkaPHVilN+WfzIdu5fa4h4mXHKs5w2y9DnSXxYXnObbSdD+N7tNX0Dzq7XI@vger.kernel.org
X-Gm-Message-State: AOJu0YyhDgYbbhOWkCtJctKX0rS8Hup85B7GYXuX83Jl/DINF40K5YcH
	H5Hkgq2mPB7cu4vbRKizsN057e5LToU7EZKXUzXgWSmJhrwKxIRpspG2y2XKIEX72J8f8Yj/8BS
	gqRWOKeh4ydbG4dcws+UkgBsbF/Qd8DAqZ97rBG8XE+8HXuCFO79ldJoGTF9uHo1+y9Kc/mG7
X-Gm-Gg: ASbGncuMb/KiW/c7BniCKjyaiBdjF3Fu2/jBgseGDifpSUz11HWG7d2NiB6NNDr5btD
	2l9hisf/iiGOx9zio8DQzP862xVc0dPQTjou7cckc8H/laWFMAvK5Q+OhAVAJccE0IZHSqzRaix
	fI06MVUTqKCCLFmtI8s019EWdZuL1aQF64UJuSalwXpIMzjCaM11RLuYlGVJVDoJrpSZ7k2tO2z
	O+711WfqtHZTkpQC19mq+JDvRu1QOuftZ1hj0wL3SKItem7bgarMSB0pHqUt6BHGEr96NTjz18s
	uEr6XsJeRLaZN8/mLgjj0yiZGMmgRk/4FojUWIU+//6a3BOQKDz+3H+4/x94hAM5
X-Received: by 2002:a05:6a00:3e09:b0:772:59c6:433a with SMTP id d2e1a72fcca58-7742de8f0c3mr17088666b3a.24.1757432836041;
        Tue, 09 Sep 2025 08:47:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvNJr4EgR1GoQTAGZ2FHWNgj9YH1BS2YTNlcoRdDXqJiV7wPavuFgE2Y14hVudFxM50gXXjw==
X-Received: by 2002:a05:6a00:3e09:b0:772:59c6:433a with SMTP id d2e1a72fcca58-7742de8f0c3mr17088615b3a.24.1757432835492;
        Tue, 09 Sep 2025 08:47:15 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662c6e63sm2446329b3a.74.2025.09.09.08.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 08:47:15 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 21:16:59 +0530
Subject: [PATCH] arm64: dts: qcom: monaco-evk: Enable Adreno 623 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-monaco-evk-gpu-v1-1-e14938780411@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPJLwGgC/zWNywqDMBREf0Wy7pX4iCSu+h/FRapXG1qN5kYRx
 H9v1HYzcAbmzMYInUFiZbQxh4shY4cAyS1i9UsPHYJpArOUp4IrrqC3g64t4PKGbpyBN3nSZqp
 VMi9YGI0OW7Oewkd1scNpDl5/leypCaG2fW98GQ24evi7j32PRPp8LaNfn4Eu0ux8o3kcrfOwC
 OAgMiWFFJgqmdwtUTzN+nOI4xCs2vcvejjWzd0AAAA=
X-Change-ID: 20250909-monaco-evk-gpu-0d41f39f9846
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757432832; l=1352;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=C9LK1WdC7ojGj85d4m6vSi4ddX/WKTOu7LxtGP6Q/zI=;
 b=XDJ3Btp+gasE/rIMDqcHyzYHWxNR+b6hYwwCDT7oEkWvGDVWfpe07xRU20eyZaCaDAOuXqck/
 2rjhRDqz563CjN6ic/fllvUvqo2pfKf+HPe5oCzgn3cb7Vf+T7pVBok
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68c04c05 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=rKJ_xPvgyJPZTdnExrwA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: aV86nz9ti_uG2ZMPwbGkyfm-rnali54c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX2Kqb4gQISpEv
 6eCrkrfRbKnUCK/J/5CBTpWXwv16KkzDcMV6UQf9mE/C3EDmpk0NdOWj+8kIHJIymxymt13RMvQ
 l5x/QzrzAHW82qnPcxUIEYseILQELl8e7W8+WSKyThyTQzyVi04rMr6WSgvXxT7ni40TEON/zeB
 tsEDSCxasyB0UcwTv/p6wufe/oDGPWZH+GBriM0NezIM5FZEYLuX20qxT3OrtldnOStfP6XU4cd
 t3Y57jnoO67PNCy1YsDpCOrZywoK1FMZeAOpno3B+bsQrW2PwF2qF0P4O49a9kxxaqCSY0qb6pH
 HFNINJcOKP5Yz95+Zd1zLbMMk1NPpc2QIj4uTm0twQYQgoyYIDOX3sFBDrQ0v6Se03TZlLQV/5C
 wb+xXNja
X-Proofpoint-ORIG-GUID: aV86nz9ti_uG2ZMPwbGkyfm-rnali54c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

Enable GPU for monaco-evk platform and provide path for zap
shader.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index f3c5d363921e324f53cf55a0e8427a7f1e903bd6..7768e6500e77f65b4ad78538d6bacebccd86dad5 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -309,6 +309,14 @@ &gpi_dma1 {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs8300/a623_zap.mbn";
+};
+
 &i2c1 {
 	pinctrl-0 = <&qup_i2c1_default>;
 	pinctrl-names = "default";

---
base-commit: c62a516303b963817a9d008c432013b18581997e
change-id: 20250909-monaco-evk-gpu-0d41f39f9846
prerequisite-message-id: 20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com
prerequisite-patch-id: d8c7fad05e08ca14de6b534c046dd9127a24de1e
prerequisite-patch-id: 55fc97cf5e69d19d7153440ab8053baca13003a3
prerequisite-patch-id: 9ed5c69b0fdb9d167bdee1017d72e5e7140cbf68
prerequisite-patch-id: 9dc7eac6e54b19327eb4808669d224efbd7be683
prerequisite-patch-id: e9e02389c7ece5894e1fbcbe92ab9df946f406da

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


