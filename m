Return-Path: <devicetree+bounces-193887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC6CAFC21E
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 07:39:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75E1B1AA2FE3
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 05:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85D7C21ABA3;
	Tue,  8 Jul 2025 05:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aqrQKsyV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7282018024
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 05:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751953163; cv=none; b=DaEh3SVGp/6dJyyu6spO9/2LpM/tOUckW1+3YX/ajwQOEzfrQN9Oi8s7uFJIPVCH60TLP5zgEG/ZaSoNiIMbzYR2IhZBI6DDeqwKkN3FM/G3e0RZqPtIZqz5Cv9f8AisOlaXdUYZKkiMWl7Nlu7VKLT0WMnhycTq9r29f/xnB9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751953163; c=relaxed/simple;
	bh=1emyH+IK8BKjfdzbHRwt2Rbs/u4wKH+8vU1UpJL6fT0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gU49t+WxoJbrYJKJv7RUt2txV2jVDEdcSdGKXlK8AflAFrPtGNhUQmalBexQaWOY1Lf1hbYSL77/qav0yxNj1zAKFPFuNNUmbMP+NlmABCDbEYr3SlvsrxK47xQ3iWOCk8+sBcOwCjqGhPdnnO2DXfvkZHGeOYFnP2C0LT1WwJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aqrQKsyV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 567JBqxf029614
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 05:39:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=WURnYbPhR9z1CJv07aeJTV
	KiCsxXUrk4ZKzYBZvXSWA=; b=aqrQKsyVpoRM805ZPQrjeP9zYsCQ4qkCaV7eAx
	SSzaGgo830tE/1PRv9FmHLr2n2njFKj6ayWnkH9zycfw7qcnOIoPIdxmOCBrwOrq
	25p+CWqXoeQL3EesTAbescPxXpTAmy8FJdJwFctZ+R2dOfthpcApWVmmG1RuHoA8
	Ekfjyql1J5V0HTNHuFqBvJ9ZqaV1lh8u8JmbZc1qXi4IFr0Or16WoMg7QesffDbr
	kcamksNHcIN+2ldh0I3Nozy6YDHrm5XwT1aIQmJxIJjBHNt21XiNrKGyNpYB1IBH
	MU5XI3t6ZKDXLtYRAdqHrS8ciCGZwxQTo9sgv8HFw5i1erzA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pvefb6c0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 05:39:19 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74d15d8dcd1so1242117b3a.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 22:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751953158; x=1752557958;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WURnYbPhR9z1CJv07aeJTVKiCsxXUrk4ZKzYBZvXSWA=;
        b=egIFcCi8RXZmeCPpBeG44alKqnEr9INXO4jLwO72E4DozZDngxpkatnFooy82L/EVM
         5clnNX2JGmoTxoaYZktPQoeq+uZ7ecdHRyiINNpSRUTKtcbO7OKfXvNznNBc8OziNBNJ
         buFW2mE0iU9qunwiG6vS8HaouldzrkGMFxkpidncuh/+yQfHjRNgCpTT6nBxP5iwtSqF
         5klPFhMS9K6AOXObnr6thd7ZJ4mrkrNQ8QOFCv1mmwT0gqmB4+7l17jlmOcA7oPvxLHJ
         lTT1x2Ek+qQ1b/n1VAHJwcugDQoHmTO6XFUG8CogYYJOdZP9Xg0ZRGfOoqcGRuzV4ZzS
         e5Aw==
X-Forwarded-Encrypted: i=1; AJvYcCUoMG2FnCn+8ZS0eAasJCMdalyKUjztxueJcqsS3s8LBA1nCdPkYE8FcefVkLP1oomyI872YbeRzhTo@vger.kernel.org
X-Gm-Message-State: AOJu0YwYsN/G60rEWCincMTbal4tGp7zVRAKdJ3EKTwcJ4dYVgvnBdql
	tzg4SMsthv2R/Hr7uFPVlvpPCGxm1QlAOi7Z2+yJqGjWv0Xhcd4EwcIo3GjliOcV1xhQw8uS4OC
	TBO8o//u/Nn8aDLj0fg6F7dQEBxz94G95xDAZGVgDnAKabvDTy7LSBZ8aYuRffDwW
X-Gm-Gg: ASbGncuR7qNCO7OI4XSua4BRp39g0D/q2yoLLUL4dk19WD9G9fS1VuCRE5fPFKjXx8V
	DLE0DQxY99uJWfeshfB1fTuHhYWUSXZGVtBLndSbLvJbaVfcpIQIyGTy4ldMfa7mnEsQiopAgcK
	3B84wav2U/+RH62uH4+sS3imVwanz3pdyvU9JIjHbaGTjusZfhOvbiX5y5uR3KkiXO+4yAXa0mJ
	HeMuSvn6RLf5vaknjLa26IsvIEw/8DytD5eIqDv0ZOS10fEsDPvgvpeBMiLu6SdaLsbHZa0gcox
	Mm6qAe2dqsKy4Hky5OmiwooqZxtSf2aGyZgyHi1xPanU58mIYfZ1XeoOv+9Elmka/fBMvTz87GA
	2Q0tXKK1PFNUqHOPKgQTAJbJfTrzCWkQ+E+vlz42i3zrJQ0BpITXYgYZ7rg==
X-Received: by 2002:a05:6300:6d14:b0:226:2ccd:8347 with SMTP id adf61e73a8af0-2262ccd8372mr16302593637.41.1751953158139;
        Mon, 07 Jul 2025 22:39:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnNPubQYj/nAyHbIsYn0URAigpEmEJ7FaZowa4Rm2DPi/7AzgzsZ3rrTLLYy0UcOS/1ramMA==
X-Received: by 2002:a05:6300:6d14:b0:226:2ccd:8347 with SMTP id adf61e73a8af0-2262ccd8372mr16302558637.41.1751953157701;
        Mon, 07 Jul 2025 22:39:17 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b38ee450db7sm10531829a12.4.2025.07.07.22.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 22:39:16 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v2 0/6] Describe the IMEM present in Qualcomm IPQ SoC's
Date: Tue, 08 Jul 2025 11:09:10 +0530
Message-Id: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP6ubGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDcwMj3czc1FxdS3NLy8RUcwszQ3MDJaDSgqLUtMwKsDHRsbW1AHs6kBR
 WAAAA
X-Change-ID: 20250702-imem-9799ae786170
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751953154; l=1750;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=1emyH+IK8BKjfdzbHRwt2Rbs/u4wKH+8vU1UpJL6fT0=;
 b=MJHshVXWOcBQUM5ESCbYSGa2MFbwQ9PTZaXVvVgJyY1s8u8hxK0YFR+vEpLesArUieVv/BNoI
 zolF/M/qlPtD6+4mhfgjmyvbMUdpe0Sin/XxMkZMdW4uR+wqfzh14LX
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDA0MyBTYWx0ZWRfX4cjViA/r9/9J
 PFngCkPZpxdDNQD5dbRDktqtMR8/kOq9iv7DF9evtjLZruS+HrAq0wf+uV9GuMHv1/sDBAukImD
 oA5YF83HSqdn1h4rydNIEHN4h9LoyVctVNVJ8FyDFLzdeq25J9pj/T7SwKNgAA0Fn/znuTPXPTT
 AUeagR1OQvQQyabyqsnO7lRPSimYbEnFci3iMgaguQZndQ9U2NIuJyCaUFKMZJnoX+aRH56m5pr
 XJo3tQi9RXmPvQj17ff/+1s7nAxS8VhVKj5rRNRbz6cpjvb7/TIxtNQk/1yYuL2eIsBxN+26iR2
 ke83Jo7T2iSmcMl2DO8zHqvAJHs94GfN89pAIdmQ6T4nTQxk+KfkKtMnVHKsKcWp3HoxX/gS673
 ZYtVOJomfK20TF/RrV9udJUVCRJOAio5I85IBIPF7pC4CUhpAmdenIamfyWgEwnjKmgTFFMa
X-Authority-Analysis: v=2.4 cv=dciA3WXe c=1 sm=1 tr=0 ts=686caf07 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Yu0Y65rDbttY8LA09AQA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: nli6q3asIw33RfrAQ6hCx5T9L5KY5cz7
X-Proofpoint-ORIG-GUID: nli6q3asIw33RfrAQ6hCx5T9L5KY5cz7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_01,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxscore=0 mlxlogscore=527 bulkscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080043

Qualcomm IPQ SoCs also have the IMEM region and used for the various
debugging purposes like storing system restart reason and so on. As a
preparatory work, first describe the IMEM region and susbsequently add
the required features.

Across all SoCs, only initial 4KB can be accessed by all the masters in the
SoC, remaining regions are access protected.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
- Dropped the IPQ5424 support
- Sorted the compatibles list
- Rounded off the size for IPQ8074 and IPQ6018
- In IPQ6018, use 0x0 for reg instead of 0
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com/

---
Kathiravan Thirumoorthy (6):
      dt-bindings: sram: qcom,imem: Document Qualcomm IPQ SoC's IMEM compatibles
      arm64: dts: qcom: ipq8074: Add the IMEM node
      arm64: dts: qcom: ipq6018: Add the IMEM node
      arm64: dts: qcom: ipq5018: Add the IMEM node
      arm64: dts: qcom: ipq9574: Add the IMEM node
      arm64: dts: qcom: ipq5332: Add the IMEM node

 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 5 +++++
 arch/arm64/boot/dts/qcom/ipq5018.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq6018.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq8074.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi                 | 9 +++++++++
 6 files changed, 50 insertions(+)
---
base-commit: 26ffb3d6f02cd0935fb9fa3db897767beee1cb2a
change-id: 20250702-imem-9799ae786170

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


