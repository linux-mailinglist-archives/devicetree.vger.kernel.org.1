Return-Path: <devicetree+bounces-156825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F6FA5DA21
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D07C6189CE1D
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3737A23CF06;
	Wed, 12 Mar 2025 10:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PHpXNVJq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3535C23C380
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741773961; cv=none; b=Y8XSvokOf9vddbTPvhUunWTvJUsGdu1cYDR8SkwPVBy7ONVtS95KN5K1nTuLe78o3x8pHgz1UKf1aiWJFFUTmOh9Ph6ZkS8oIS9H59J0QS6/fjkJ9HKNvNh8rBoDgqacY3iKFIpN3g/hjXFrx5wCtL/5nDjBe9Frzh3+bw3dZ4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741773961; c=relaxed/simple;
	bh=TnV6haB5juXzLwYsnjfTeCliML9Uw7ciBtpPk7YGTJE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JqRwz2GiXqKauoL/Utj8iJEm5SfYvRF+/nxKBAjkLjxl3w/XNn/VPcAvKQIrK0+1bDz2Cpujh+mgayYeFyDjlffvblZBVX3y25a07veD+5SBLG1PnVkr5AoAI/Aqv4K+8muath4A/czwPzb28qdDPDes8VDsA2iJFPFIifjYJHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PHpXNVJq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52BMHtEj024132
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:05:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=HgeWIhIMEhGODE3pVk6y8mTvnaewamGCGvX
	6pDQJFHY=; b=PHpXNVJqqXprA0Vgw+XM7nNbkr16NUZ+BKsPkeG9YOZpBPZoLmh
	M6NqRi800CD44xs1N4FNnjqZV21nFa7j5kEIFw8UwlE5IWyZKVxtpjN1ucAgszsj
	VwIX459kY7yrj4vc4g+v15XxIX7xi0Y2MZZeu9lQGTCsAsQTap4jewJfVLJYt2D1
	5f0XTyFciR1FbJZ0xWUgIVU03rauVX4xdZpDuySP+ERG7KtUCKtDhZ7U5DD0DHtx
	KrFkv4J2UEhrJTyXjy72yHWDRLybP8uLy4AU97FFuBkqqckxiz+RMmdgMNIZ+mlf
	Mml0HD/76/yh8RHBn+6Ny5W9PcIbhSzd61A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2mhy8v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:05:57 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ff7f9a0b9bso8416552a91.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:05:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741773956; x=1742378756;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HgeWIhIMEhGODE3pVk6y8mTvnaewamGCGvX6pDQJFHY=;
        b=Kmha4eSJFMY1hyTYkmgylBa9L9jY3A18dNOjdRtFIDF80XibfwyLa96hAiXAZdV5CL
         PkZP/W6VJiqDmI4bmTGUdV+OkiBTWKEIOkPunqye+gKWu5dqbS3xGY3Vf0t0xt0RSIEd
         doJMvGkyt/Wsh2UxZDclO1anxNmdK//uBKIkR1e9SxpD+hKtZjCO9hUcB5CJM7DElapg
         bCqB3ThLb8p9EnoSXeH0oK05YmlUM/4v7Kha1I0pWlZYESF49LkEZ2ir78ayMQctCu5N
         +9qDF0GPJJRKyRCLJr9qHCyTLbNLRvRASR5rc/U2BoAFYiC4vbQA5hIVe+8lX1SftDkz
         NrZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgss+z8lteD13dE+PXJ17F8fOowI2S0QRj82VejkBNZ9xRKyOsYiKv7S3zENZDPlke8HxmCCDxFbEP@vger.kernel.org
X-Gm-Message-State: AOJu0YzHgwa4HTqyDvpIWnkyVQECUofnmeChGfresrl6lDUW73wHQPkN
	HRk//7uy4EM21i//vMcNLZE/4nza8gBm/XZEBMY0caex3OuRnN2TGQPu9IwrrbPHdfkUGAP2b6W
	mn2EKEDPdh9H6NFN39oDOjbndLAGPEF1O3LUHx0k9y2SkjxnGlW18gg0lUQIF
X-Gm-Gg: ASbGncsalho5x1K57h1peohI8hz5hFz2vrmEqdBYtHXcjgiLZMODkI7SHwcqM8O3WCB
	L7M2iG1EV3bFfUmm4mU0xVotM12sHtjIMmTIaqq5QbhwHBlgJqj4JjIoyNmnzI8Y4j9Nf89Udbn
	n744CaGI1ez9wkTtIrH+brd95vJISIPA7j2Nws9/XpQCrsVVw4xsW8IBfyP27+lsVTnGxLaMFco
	TlScv9IkqB64SMot/oMQJHssTtceqKdXP5JDg1iRzJMHKlTbnRiBPNs47EvuVntdHntOTDq18YX
	tq/fTGpMhNgNY0vkV6OKVRLEIyWeuBGvbT9gu/Rr5ZQ18YHF+rKLUg==
X-Received: by 2002:a05:6a00:6c96:b0:737:9b:582a with SMTP id d2e1a72fcca58-737009b5927mr2847422b3a.24.1741773956427;
        Wed, 12 Mar 2025 03:05:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrpFM9aC2Ybs7x0lcdpTYriXhI+a8LEqu97S/o5XlAYzlpGRhYyyTMTdxU6ktmIfaIwEj/Wg==
X-Received: by 2002:a05:6a00:6c96:b0:737:9b:582a with SMTP id d2e1a72fcca58-737009b5927mr2847376b3a.24.1741773956090;
        Wed, 12 Mar 2025 03:05:56 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736ae7d24ccsm10023993b3a.48.2025.03.12.03.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 03:05:55 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Add orientation gpio
Date: Wed, 12 Mar 2025 15:35:44 +0530
Message-Id: <20250312100544.1510190-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: CKLouZ_UhGey73RPlX7WBzuoF6vVD32G
X-Authority-Analysis: v=2.4 cv=aKnwqa9m c=1 sm=1 tr=0 ts=67d15c85 cx=c_pps a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=76Bs7J6LVpVJVXfC1mgA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: CKLouZ_UhGey73RPlX7WBzuoF6vVD32G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-12_03,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=862 clxscore=1015
 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0 suspectscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503120069

Specify orientation GPIO to the PMIC GLINK node.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index fa7c54f882a4..e6811a094332 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -177,6 +177,7 @@ pmic-glink {
 
 		#address-cells = <1>;
 		#size-cells = <0>;
+		orientation-gpios = <&tlmm 140 GPIO_ACTIVE_HIGH>;
 
 		connector@0 {
 			compatible = "usb-c-connector";
-- 
2.34.1


