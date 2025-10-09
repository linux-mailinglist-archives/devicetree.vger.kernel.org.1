Return-Path: <devicetree+bounces-224752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BDCBC7876
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 08:19:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 743654EE347
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 06:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DF7C29BD89;
	Thu,  9 Oct 2025 06:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b6eJ3jPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA54290D81
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 06:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759990765; cv=none; b=KAMYesNNFvPxvvDjbX8IubmLJ2JrRUiRK4qN/FGoQnR1tD1PS4GtQ2yl6uJ+X9QUELYuZHg+7408j/BZIlo5pTOZDxF2AghfJ8SEUfatpTBQGy8g9SKotdgqxZoXIf7MUzN098fRauEMAqu9BMTnhAOkzrQBhZCfOJ9kaTBLZvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759990765; c=relaxed/simple;
	bh=hq6lPwx/LlAxDemNp/o43bmJQh1mZWxBV9kEbcr71VA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kmfja6OhouDYWJs43JL5pWLsFY1ap+4vZwLQyDMwIf+qlsk9n9862tYguLPjYH+ty0qdsA6RmLnSpTO1sHTccbmLISkqY9Mun9qu3gn9X+ChLMSDYZKAxe59CuWhqXeJ7yIpyvgL00Aqd/gXJdaZJ6y0aO08nuwEbQ/Q7TgWUks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b6eJ3jPy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EQRr029800
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 06:19:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vihRQdTrmgMT5JdtyKr026uGWsPWwj22Qw1GxNp1440=; b=b6eJ3jPyTK5hkGce
	KQsS/Yqt/3qKYyd8AHrcEUXvCxCByXwfCIh7t/NxMDiVutd/lsR1LLQvnrV+mXbw
	pSx8Nm6ftBnSNgzJ34bOmcZ+Efg1cQCZVOTxD/bsRYCDVZR6Pn52VR2V4FEzA+NX
	KL1G28u6Dq3ncOdOkxnlZJyCON1tXgdzrBnaBHIFCiR6I/r19GD23dPn/6mK+sE5
	Fq+1NUtRTu6VEEljzAP879YzBYbDO3KiXfgGs0FBpAKsKfWEW8TGcuyUHBmVX5N6
	v1A2jKDwzImO6T6csmwu+hUzE/AdW8AgpcChknL0ttquGPIe833i2kgpfTU4M5lg
	vK4IKA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4n9pc0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:19:22 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b55283ff3fcso776286a12.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 23:19:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759990762; x=1760595562;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vihRQdTrmgMT5JdtyKr026uGWsPWwj22Qw1GxNp1440=;
        b=k4FMdnLYU08I5C4PCF8CnEi+74CvPZVj851MisyL6WOug1wTXMoU5dt3Tr5wGx4g9V
         5jNRSHsoSId18eye+0ZADDbUEID3zFZ8PHw9LNBV1anM14AiAU+VcSNJxkXDx+ZTaaMS
         OHWA6/XYvbOHjaJYf/rrfUwT4CvrnxSEUm7wFNjn5Uh/5Ut1rx+NYKeK8JwFP3mjShOH
         +DUkyFFEO0liwzaNWWkBvrKF2jrYk8NN9W74qJRkX6OiQVN/tz6OzrYrdC4VX2DI1lO/
         FgLG4KR2qbyrb0Xl/1wttezz4zd5fPSHcEMzBA9cLZk4RcVF1UsW6d8Povlp77MWQSGs
         JrKw==
X-Forwarded-Encrypted: i=1; AJvYcCXf52xp57z3XROtTH7g0HWM+tLKEb+wZMW4D8/ljqZge8It4NBJ8Qkjv/imJo+0JtDtA9272oTi/dMt@vger.kernel.org
X-Gm-Message-State: AOJu0YxErr/KjxDPIP+lZJKsq6qK8lrYqi15d/pksS26EH/n4znVxP+h
	srLNaVKazPl7zmyvMYqi9LZLh7UWEJPhJ0qnQNYUa9uZnunbob013YdfGPUGhxWfEXYnSLYpt3Q
	xaDqKbToLamP3jBr7/1di882Kiod3n569SdJ+xESktcBWAomb3iopZOM9qn8ELRxd
X-Gm-Gg: ASbGncs+pdyzafwwxd+Boj3JdlLMIfjAulXHkQyruRhOq7C959g0zxXt9IYvMbiCi8E
	XwZQUeDK8u9vlHTmC9WT8Frw2MUFjIvGrik6WN4AjdbIlyC3AAI6NF9kY36VpCLfSALb4B8h/cK
	m2PzzsBo7Vgz4i4txYsoRZ4pV2wJOJBxC0xn/HG8tPd2tm3jyH0sSNMJKmgp8ECAli/1y3xmytQ
	SgMTpIj2hNGYhg0Lsk7NGf8SI52iEq1UVYRe9ON/IJXgqXYPqo+lrZU7Bdi7yGiKyCnErJGM3ai
	EAnQpX0MYKkhuF4p5iOyauR8TjaDj1oqDmc571M61i8lqVof2oF3LqS+KLsFtm1QxBUUvMcmAv3
	1IpVoWlc=
X-Received: by 2002:a05:6a20:3d93:b0:2f6:ec69:d448 with SMTP id adf61e73a8af0-32da83e389bmr8621617637.31.1759990761919;
        Wed, 08 Oct 2025 23:19:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmGBOeCai2v9eRB0KpRm+tuIHJxkr+PscYZcrlVB1lXuEuGL44JtmrAh4zV0b7qSGb6VhPsg==
X-Received: by 2002:a05:6a20:3d93:b0:2f6:ec69:d448 with SMTP id adf61e73a8af0-32da83e389bmr8621573637.31.1759990761401;
        Wed, 08 Oct 2025 23:19:21 -0700 (PDT)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099adbcbesm19239671a12.4.2025.10.08.23.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 23:19:21 -0700 (PDT)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Thu, 09 Oct 2025 11:48:52 +0530
Subject: [PATCH 2/5] dt-bindings: crypto: ice: add freq-table-hz property
 to ICE schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-2-2a34d8d03c72@oss.qualcomm.com>
References: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
In-Reply-To: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>
Cc: linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=ZJzaWH7b c=1 sm=1 tr=0 ts=68e753ea cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=RNL4ykPXmF0GAHKcDNUA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: M38aJPdxIPTA0oJn-zCVYZ5vm82NLyv5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXzxDSYdOurAdh
 0peNefkH3MdmabzQPKAJpi5P/vzyEMFT2E0RRSbwBwMZe/u4ds80WjFG65ZHgAhs5hI+eIvOsdz
 33CnUgVngv41hf42XZ3miAXsVTcuf+KGkk4U8zAvUv3NdXC24kQPElYh40J5TA9vR6urw/B7Gyn
 N14nNnHxFc76W63pNkP25cTnRkyAILh5hY/yXMs6p6TDJsQWw145Hvrpn8K2YHOC1qQlfSoiocS
 yZkWZOFZ3Q6z52L5+/4yLHJpyCCcugSYDIkZiw6Cuh1cPHbOXX7vPX4pWW87MRgr45Zrz0a9tGi
 JyY0U2UbaJGY6qwss4fQXTSnnZMZAO2s7J63h1kgLmQQrgIyU4hJdWprSLqbgFNl2MXU6ThtXUF
 BV+ICilOf1UUJi9Cz2t4ugj8M8Jl9Q==
X-Proofpoint-GUID: M38aJPdxIPTA0oJn-zCVYZ5vm82NLyv5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1011 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

Introduce the 'freq-table-hz' property to specify the minimum and maximum
frequencies supported by the Inline Crypto Engine (ICE) clock.

This property is added to the ICE device node because the ICE clock is
managed independently by the ICE driver and requires frequency information
to be available in the device tree for the proper configuration.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 .../devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml       | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index 08fe6a707a3714ff11d01b36afc8a2aab1ad490c..88bef1d38013fc7d0e6842e370b2adb3bf3e8735 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -29,6 +29,11 @@ properties:
   clocks:
     maxItems: 1
 
+  freq-table-hz:
+    items:
+      - description: Minimum frequency for ICE core clock in Hz
+      - description: Maximum frequency for ICE core clock in Hz
+
 required:
   - compatible
   - reg
@@ -45,5 +50,6 @@ examples:
                    "qcom,inline-crypto-engine";
       reg = <0x01d88000 0x8000>;
       clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+      freq-table-hz = <75000000 300000000>;
     };
 ...

-- 
2.34.1


