Return-Path: <devicetree+bounces-195425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFE4B019B0
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 627251CA4225
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 10:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5962283141;
	Fri, 11 Jul 2025 10:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lyit5L4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629A028313F
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752229559; cv=none; b=J4sWN1GksC/uZGfZTiudi96OFZQupn37v9LX+C93RwyQPNtdTS/WCHZUt0TsDXEs9ZnnMrE4WMDNwhglnqRYj1OFE5z4AvpK6Xeld2WpypieLQheakJ2zoKWiE4DcniAHdjTHVYcnUaZ0h1SIg3oimV3XB0o1WsqUrurOajh3a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752229559; c=relaxed/simple;
	bh=M4/1zW6eg8rGjRFEXSCi8ldnIpnhgwBY1LCfEz3wlLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j9Y9XEaHw0rp0UyAl1nirdiJ9BANtB0vAuTjE0cqMXE/vZI3KA7KnEPOjdcEffvUtQBnXt2TSlO1VXRI+AyApOkgKpNQbn8qllRYstrrIALGo5UcyaSd/dyVyUkni5AUQdH/OxLhYvM33o9bCvNHaOKTFriV/Bp7rDy6PuQSjGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lyit5L4a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAAXRI021781
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:25:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LAo7+LmXMWY
	aVSvdOinK2bRx0fazfdgWlxITs8x41dc=; b=lyit5L4acT0WO65hknn5N/a971Y
	qpWZIO/kuc7aXXR6pc16iKf0xh4MaXjPwzNUt5nBwBvws/7euVKyhGLHCKF7Bsiv
	FZyL5WTWH/T609HaC/YVhGpP7HXa82JCEnznezLpm9wx4FLS6egcZYE+KVV56h7+
	FSEg7PCI0PFlUyQaCRCCB20vtc/A5OKmEaUw3Vvutemh3BKS5Sv7F9g58mOA2Co7
	YIZfNR2Z3Qb3dvZIMBkSkf2Q2ijswZmU+7IJ6tlQW0I6wy5NnxhjwKp9NO/VUz7g
	TVeDE6yKClCIQSj6TwdDiog98NUGYYPZK9DoL5+v4qDFmnxy+DJBkoSYr3A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47r9b198fr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:25:57 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-234f1acc707so15868375ad.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 03:25:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752229557; x=1752834357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LAo7+LmXMWYaVSvdOinK2bRx0fazfdgWlxITs8x41dc=;
        b=mTOSSLsLp3tmgxqYMACnMcMco7XMuTmJMjOnFd3+7Jm7uVfPK9iHfqywTvrJcGcq0O
         GoxMg6l+AK64v07iEKiaf2C+P9uLbC+hjdgW5ydV5rhMv21IdiBRkukTMYkNq+HFoI55
         ingaIGOqOx7C5KcNjz6zNnu0STj5lmpcB/AradfSJ3F4mtslVMVECUMMUqMQ4b0ZaeuU
         JK/zi/yZYLhzMSogMTx+yBOQF0jaPA2wRH+BceKobEwKyYUtySR/JjuESWvzXQUDI2Vr
         zoTnY1onLeDvmzxIR/Uegjfeq0TnnT9VycPeujm/KDKNBDSNrKP63TtCsQT6+kGkTUuN
         xl8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXYRYN5rIrnbbyykai93OTVs83yCbR1HFns93ae43jHJQKgsSckehxcuqaT1g7lEYjfndaJan4Uxc7F@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdj3YoKptZucLvuVlxYDfv565ClUU3N2/bYzxhP8MNkRah148F
	oAq5DcAu+bc4GPBnHjb+Zqmw7uFiP2IBNcHWmUHvuLQzfQN7Nzu+/D/cTQNDAucsYJyx9xjQvLe
	TxUE9mqQL6McavDtwANTPkhBi/bmZSfntPmg1LSRIYOUVZWOjaXeFZSiKXvXvlenX
X-Gm-Gg: ASbGncshro1P2baZzjKmaz9S/H/U9Bz+xnMVBmuOywmCvGO5WXOu8JCDzxZP/d+qvO+
	ay48A6M5yYXkPBG068MdNolET8sP+l2V9g49L1mhsbCnaK3Qo/raZotxfSAO5Y8+ayjGT4r+ZR+
	FulqpBwthCtXC1V8sVqJUjMHRs0zYdIo/h0vS7u8eewb8eZas7e2oWOZcMofSnzndD2FsyfksKd
	O0EX5FG5b66mDb8ud7+nw/2oJHtIOPdkCyAnnkni8Y24uTUspc8dW5ToklqNfSOhossm4lpTfxk
	2lqqJeiof1Yq1/zG42kJ4ZBwsXK2f3YVlb1qIwnGoQ+dLt2/afRstJy29P/s7rTvwcwD94PdGMa
	RDwc=
X-Received: by 2002:a17:903:40d1:b0:235:f45f:ed41 with SMTP id d9443c01a7336-23dee1ae472mr35779995ad.19.1752229556278;
        Fri, 11 Jul 2025 03:25:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQv80PZJx79PU5ryxk66WdVg6dRamBPztALKkT8zsOOgqaEemmBQGVGuRSz3CrDGmB5zKI4A==
X-Received: by 2002:a17:903:40d1:b0:235:f45f:ed41 with SMTP id d9443c01a7336-23dee1ae472mr35779595ad.19.1752229555819;
        Fri, 11 Jul 2025 03:25:55 -0700 (PDT)
Received: from a10065738a1d.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de436839bsm42861375ad.253.2025.07.11.03.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 03:25:55 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mdtipton@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH V2 1/3] dt-bindings: interconnect: Add EPSS L3 compatible for QCS8300 SoC
Date: Fri, 11 Jul 2025 10:25:38 +0000
Message-ID: <20250711102540.143-2-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250711102540.143-1-raviteja.laggyshetty@oss.qualcomm.com>
References: <20250711102540.143-1-raviteja.laggyshetty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dYuA3WXe c=1 sm=1 tr=0 ts=6870e6b5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=tdxlyS0QQrc70uz5QrwA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA3MyBTYWx0ZWRfX9O0ktxsqJW4Q
 RL1OY699yRhWnbeKn0XHPXCalZXkkL2p31EqMNvvXziTozOumPv59WgRYn+tmlEnmSSEO0a1JIi
 Y5YEemepdagrUFVUE32OdIy8QlvvZkHaGtbWvopR7ZeBHQJwdMpcq3UW50G2xiLYIicPJ9Eue3T
 aUK/5XhV0VgidnXZcLCnAAEbwibazD3HJ54GPsRMcOUaWpZBqZ8/+LsLwYooSUALNwPBA5Gtr/S
 feHHKpP0HoAnr8of0TH66pNCE93q32xid9Ptp9pS579A1K+r7K6tBP88kelvdgRM/Z6BBIBbybE
 Z9Y3RpAMpaukmRzKayBnPnUc5IEb+lbKU1mDZYwquHWbMNukM1tO6JMUoPIZyNQKDKWvnMCe2JC
 6bqKRUcq7C8n8Z07QmP/AxVj2C+rvwHlaWm+9fgYsOl+MrI3qSd9mSdFBrY4MkKmC+o+01C4
X-Proofpoint-GUID: BbiWyR0Q7xYBd9bXl9_fh2YcEPP3aXSk
X-Proofpoint-ORIG-GUID: BbiWyR0Q7xYBd9bXl9_fh2YcEPP3aXSk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110073

Add Epoch Subsystem (EPSS) L3 interconnect provider binding for
QCS8300 SoC. As the EPSS hardware in QCS8300 and SA8775P are same,
added a family-level compatible for SA877P SoC. This shared fallback
compatible allows grouping of SoCs with similar hardware, reducing
the need to explicitly list each variant in the driver match table.

Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 .../devicetree/bindings/interconnect/qcom,osm-l3.yaml        | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
index cd4bb912e0dc..ab5a921c3495 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
@@ -36,6 +36,11 @@ properties:
               - qcom,sm8350-epss-l3
               - qcom,sm8650-epss-l3
           - const: qcom,epss-l3
+      - items:
+          - enum:
+              - qcom,qcs8300-epss-l3
+          - const: qcom,sa8775p-epss-l3
+          - const: qcom,epss-l3
 
   reg:
     maxItems: 1
-- 
2.43.0


