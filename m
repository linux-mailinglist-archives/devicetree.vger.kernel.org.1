Return-Path: <devicetree+bounces-195846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3EAB0355E
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:55:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E23D3BA4EA
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 04:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245F81FE47B;
	Mon, 14 Jul 2025 04:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ljYEd3/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854A417A2EC
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 04:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752468804; cv=none; b=US11g+lP+9JR3/2CT/fyIpLKigCB/QyUfkIYUBtVUsVR3zJt2XnGGx/EximjJsYjtHTeSXW2pLvRXf0uoyP0BBxZWZHYM7itLFL4PUs4wFllv3LqXxeh64wosXU+Q7lfpFQkVdwwljacYJ4SoOkAzU1KRP1c4yPEqbzuzxL5AjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752468804; c=relaxed/simple;
	bh=QvGVSx6duPfoOXZGVp8TsRxkNssmW3yTVBJ0qkN66wk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RkVdZ7NrUGyClZtQj2jE/9YQQWVG+uaX35YUdLRJDxgH4sIJ6UERARHqBerwjiM0qMmw/j99oM5CjOGo8ZBsKgNhEYMvjGaadqjuDWyIXyAfJgynorO0zSHfCEjm35xYzlwFoim9o7JJE/wXVhrRdkrq6vP+RZwWr7rgG2yJ3lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ljYEd3/z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DLSi9G018876
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 04:53:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=pk7vM8iR7o4BlMbQxsyShMMSXch2AmUcOwz
	7sKF99ag=; b=ljYEd3/zjJL3/NUNuW3K6sV80JhWaCaPDozEeoO/r42DNlPE56t
	ntBm3jAgNbWn1USHeLeoky9ZpAdizO3JnQlaAWdFe5XV85XV8BT0iXNS9sJMcdxv
	mVBEH1H91CPKUDOUS3VUSOYA00ElyMf+3clr9xXwVd/sjtjzYPLBg97ffKWdZfNK
	lla5mvf9XpL7mho14zgPinUOmDSxmn0G8eJDf9sl1tCZQCvDI1dW1ptO/3trClCA
	7/kAccd3BVMVviKMnv8l9f1yRnA+iH8VhXMFfRQAoeV43njckCN03bie8oUPQL+f
	F6B+c4J3+zcVEkADdNDJ2Yojsjg1PpqX8+A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47uftmb93n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 04:53:21 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-237f8d64263so39745035ad.1
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 21:53:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752468800; x=1753073600;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pk7vM8iR7o4BlMbQxsyShMMSXch2AmUcOwz7sKF99ag=;
        b=UOevg6tguhKd6b8zPDXzwOAzZt8o5c/fkuUQDm7HipcJpvFJ1IVrfDCJNmNDNxedD1
         AFYNHI9kj/C+CPWRA8ZXSjPGy6rjoisAE0SUs3eaX/UDg9lBNUNFer9pDZvpi+5sg6A+
         7c2Mx8ANcwXDmpPQ7BGDRmDlp35IpDJn+ltDGz2tEcAaWcZmXoGLaTl6PcQ8g4XDJtai
         0eRN5C5euos1PoeEDJe+EcFoyECNKkqoTtS9u5NlfPE/wRw5Q0S2Zh8scJ6we9V7FokA
         gSlsC10XVM9rFepjul1Y/ueKJCSFZPupD6ynsAk7De7w/HyQpPD+VMCDMNoQA1ZaLOd7
         g8BA==
X-Forwarded-Encrypted: i=1; AJvYcCVvagjbnQIeHtszyTvkQUMRB+GwyRPKJOdUaqQWGjAgfgxliUREZ5afSglGIb+hrN3Gtmfy+KwHbdlX@vger.kernel.org
X-Gm-Message-State: AOJu0YwWOjxf7Lu28fTFL5Y3JcpZ3KV0IxL53RxBoLhatSOUJZFTWDmc
	T0akAbAyTtVBsPUTX8n53J0nwUd2K31Z3vE0xSv9AfgQqToGcNnqzF6Bblaiy2T4ky9utYO8xkH
	q2g5uN7BiUfTBhjtlq9OMK1xbSwtuC9bboUOXPwumi/6bwdtpVK7LdpB6JZv3zpf3
X-Gm-Gg: ASbGncvE6dDPqlK5BSiDYy1YxLZnL2dx0JkZ6y8slbJkFBCuuZhUmHYqH2QlAZmeIpX
	bLYeQ1OpKU7gxccb4iJ1/PpgvA6ZfUomemiFtrQwkj4c9Tw3ZHlwLXsW6PtNiZcWUno8tJDAtG2
	1PeAs/q5J89L9hBmyeY1I6cXzuepQ+d3WQqL8o2w8UAs8qfnuxUtt2JnFvUFtc0lqFHB2znxGwc
	e3LkYunMEzFnHVLDTafEX2LT1Im/2ESaL80w+CsRq5lNJ+gNYlopMaEttDJDt9fdANJlgWHJPSN
	tNdGjzUTxGm+0hVCkYQQenhzn9aqhrPDHQoEkrVUqHgXY5+/hsyBpDxSMnBzA28Vf4o16uL7nV4
	iiA==
X-Received: by 2002:a17:902:f70a:b0:235:f3b0:ae81 with SMTP id d9443c01a7336-23df08e5e30mr184101095ad.27.1752468800119;
        Sun, 13 Jul 2025 21:53:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlV73S9kgnxtMSDiX6ciJJa0pMHds7dtbdrLub0f7j+fXjTHuuXR8CeV8xnJfnl9GO/5bWOQ==
X-Received: by 2002:a17:902:f70a:b0:235:f3b0:ae81 with SMTP id d9443c01a7336-23df08e5e30mr184100755ad.27.1752468799678;
        Sun, 13 Jul 2025 21:53:19 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42864a8sm85664325ad.42.2025.07.13.21.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 21:53:19 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, neil.armstrong@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Flattening USB controller on SM8450
Date: Mon, 14 Jul 2025 10:23:08 +0530
Message-Id: <20250714045310.2092385-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=AI4FyeZ1 c=1 sm=1 tr=0 ts=68748d41 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=UcbzNMOkSj1vwIQaWDsA:9 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 7W5Qnj-cDnB1g8Ef5edM7OS3ZLqTsnTs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAyNiBTYWx0ZWRfXxFxj4qAbo7Ky
 6amMPGcPx82M7zPv20K/+4/OlTTWeJKdQmUQsK3oftikaKjc0uM7XQohLg5ByUiiuAPO2DVOMpX
 VA8zHk/3ccTbXOqHpAFv7tzT3flzsu2TcQenpTCnfgVnJod9OqHWPNLhs8IL4d348n9gFG1MPac
 1k4o90G2eV/Q2E33/NBDoGNQnhRdGfdmmi+0NaXbNUWJbvulDBlgN/r0ioNhLzzsTiPwodVQCgl
 DoHIwJsQuEfMKuOmlS3lxSGEdwYRS89BXZ5ZLjfx3KZodYZK/ZmUh0JwMw9M32VvbATsa7D+J4h
 irqjW/c8VPmQCnOE+rsztNgc0pRBKhWxmZ6bsM+6EG8eqCkqnbaUesIQ5WUC8mRF3sQrCrErLnH
 m1Z0Nd1o8pOTB5EzDKVou8fMRp+87M1moNLH6F0LyYexCW2eWOt+vpVqkMQdnwNXjqHE0kEz
X-Proofpoint-GUID: 7W5Qnj-cDnB1g8Ef5edM7OS3ZLqTsnTs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=695 phishscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140026

Flatten USB Controller node on SM8450 QRD to move away from legacy USB
Qualcomm glue driver and make use of new one.

Tested the series on top of a QRD. As per Neil's comments, made changes
for HDK as well. Gave a compile test for the sony-xperia-nagara changes.

Changes in v3:
As per comments received:
a) Flattened all platforms.
b) Addressed Dmitry's comments - moving properties from QRD to base DT.

Changes in v2:
Rebase from RFC.

Link to v2:
https://lore.kernel.org/all/20250610091805.2997546-1-krishna.kurapati@oss.qualcomm.com/

Link to RFC:
https://lore.kernel.org/all/20231017131851.8299-5-quic_kriskura@quicinc.com/
https://lore.kernel.org/all/20231017131851.8299-6-quic_kriskura@quicinc.com/


Krishna Kurapati (2):
  arm64: dts: qcom: sm8450-qrd: add pmic glink node
  arm64: dts: qcom: sm8450: Flatten usb controller node

 arch/arm64/boot/dts/qcom/sm8450-hdk.dts       |  5 --
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts       | 51 ++++++++++++++++-
 .../dts/qcom/sm8450-sony-xperia-nagara.dtsi   |  5 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 57 +++++++++----------
 4 files changed, 76 insertions(+), 42 deletions(-)

-- 
2.34.1


