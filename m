Return-Path: <devicetree+bounces-248696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 60595CD51FA
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 02382300162D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A022F30FC2E;
	Mon, 22 Dec 2025 08:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WzDR2hUR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VirQHyN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2177330F526
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766393069; cv=none; b=bz0/KkiD3kE7JD7QwY9aEsJsBEsKdWVb+5vK3a9OhT/EWPWzZc77eJAbfKeGcuAk41ZMxtR2sGS3aIKTSo656s+SBWo6MN8BsVkXby6CD/MKnGOfDFP1FzKoIjAy34EC8tVk/v2sb9rx02US9vG/ysCpOAGQV4UJiunZ6xCyFNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766393069; c=relaxed/simple;
	bh=+65XFLjmzkBfsSXsN4uZBfj8j9rlxmw6Qkdl91guMDs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ct/6nu1QlaxollitSQq/ftS9J2Mr0V8pYUWFzinTwyH+aGwPWDURxUBBYbEVUREcxf2Q/yQGf+kkDsnT8OnS5sjjYQD5eAoZ51u10ZLdpGF5FJ2QNuugH47xcvtQdGf08ahoLQe9HnlpM/PXa6rFD0dyqAsDSsFkpcKXoseJ5TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WzDR2hUR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VirQHyN6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM5CYvA1783581
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:44:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FUKnIotoxp2c8hNstV45OI
	ejvixZ1FAP2laOOHlZegU=; b=WzDR2hUR3vs3NN7gaOK1e+N2RoSK+yG/kHG/zT
	l7cRKxrmwLPVeeDZsmunh32GrEpwVGCaUd7/ikbuZoxTNLykjbDlk1t8whIVodQJ
	xJU4zS+wQMjw4xTENalxGi7XcVmcCa34LYPfbtuJz4VEzin2IpPwiRJa74YLSxAY
	/VIPlQ6rFu8gEyulDw+GO8EZA/RMEXISUySfu8LZOXwz09oYi/7AzTl87LLojTUR
	rhdWrQlR4pLf/S/WvMQZsv/M90I9Vhws4lG12qm2+k7Mle6f8qWgIDN11dNUeKEH
	U/Wjw4Ulyl8ZHgCDvu0N7lj0a/elzf/sVOwoAGrxtkkxZRDg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mtqmcgm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:44:24 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b24a25cff5so1091905985a.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 00:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766393064; x=1766997864; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FUKnIotoxp2c8hNstV45OIejvixZ1FAP2laOOHlZegU=;
        b=VirQHyN6amjvQVU3bEPFZ0ozjMB34RERZbhvc1IzG6lrIYhlJfHyxe+Tq5+lezuoOC
         XAGLjt30l1TFfgvlgftgQ7yCuZy+n3UYvetUmIWMNzmkLHwOqK1+MEwS4ZIWFfrLK+qg
         VctEEi9N/ZotL/D9uYZfx2hFQdKaNzaUUo+QqhITd3zlDH2FTS/XpqGqQjJE++8piiQz
         mhUCDrYdEPJFJa+7ljYPg7phtkTXEa4k/GRTVYwvb5zhyim0vnd2fXpjdz5CnqsqCyhG
         r4ezfELd5whNzVFHnQk3U1RJfhkNOYnOlDfkqwuJwkzMo0y4/O6xRe+mAzw6kp/WoGNO
         blZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766393064; x=1766997864;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FUKnIotoxp2c8hNstV45OIejvixZ1FAP2laOOHlZegU=;
        b=DcczksIldR25dciVWSKwxfMWKRte9KIm4LNKwzuori1YWaI3bugstDxpkLBPaYcwn6
         GDzJ3gmVErA8NWrUOONfRuse5KqtMQBSn9e4tw3KMP8HqzpEBnfOzIc6wyxgS8IZUo5Q
         p4go+uSVcsmiZurEiHtI1jSRg3tFqYkwv4DFXPVLR2hMpQInNSbXdNPrDv/fv/OH5fXD
         m5VJbiZh0fd3AgN/5XMOmu5Z1WFVskxfQlJENP+S1VoUSnxfB+CYk5NuYO2r2Jqn5fLs
         fDe6hxVO/XNKy1ASVC7VrpRm2Sf+ZWd0wN8BE5ZlWO0rx/jNQ2lfnaTgP/xnqZ/lsNPP
         +e1A==
X-Forwarded-Encrypted: i=1; AJvYcCVn4+32gvRYVzrQ7kwOq6jmM2ciMmdP2fwQJ9gqJNc5GcK7EIV5RH1ELZvvXLDcvv+oWkbfycAsKnHC@vger.kernel.org
X-Gm-Message-State: AOJu0YyGiA0ipTgTdv/4JBJUXLLZDy58g7yr9nJAsCdOu0iTjqse9lX3
	uAhf48SqNr2SWVbrHukEOTwjhRkTgMu+FlWu4bjyi+uo7K8krNokrNHPBeSumBAwX4mA/8CZas7
	T6xDtBhUQ2r5+g9G3i3jksPxMXOVUor4fSBzWUjXPtd56YFhcYXRUcBccJa9DFei+
X-Gm-Gg: AY/fxX4KRT1IF6XbqrSs0NgfTmtcoYrLJceIrlm4h3PXnrpUBiM/IUvaC1VWKpDB7AR
	GhUDdSXeD7wfvHXfUaoNQSnUCdbjyorpVYM1ZMWLs+uG1/RFcHCoMrfxBI2BAxwSZBsV72ZYxn6
	s4ePKAMCi8MEaWZyFP0cgvBbq57RY/touow8B2Yy7iNOFDGgnHGl9eydjT9sYBoSNedeT5d+BbU
	BdCd9DztKl+W800088rXl/q++eKPRsEF3xssNFRlirWwLkDbp+PpuJfPn0DVQn8RS7cdEPaqgN3
	veC/F4LtKL4DdD1H1sH+cy8g3vK3xa/wCF4XxAlVF4eFAsNddadNf7JSFRUcw4azAP4u8mACTsA
	XxGxtU0XD3jFonQ5fFqnx04MXq7+TLAZpK+3hESyI6EjkPgmPQ9IHV5OVdqVwffZzLqpIIgkotc
	DH
X-Received: by 2002:a05:620a:2699:b0:8b2:e561:78c9 with SMTP id af79cd13be357-8c08fa9f0f3mr1560389185a.43.1766393063968;
        Mon, 22 Dec 2025 00:44:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFW1SRKpIvC/1h/9jR0hbT6ol8vDr8W2OUoCBZbvQryIDaTonOx9XFKfEWt3VF2eh7VFgh7Lg==
X-Received: by 2002:a05:620a:2699:b0:8b2:e561:78c9 with SMTP id af79cd13be357-8c08fa9f0f3mr1560387085a.43.1766393063471;
        Mon, 22 Dec 2025 00:44:23 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0975ec0f0sm782975385a.50.2025.12.22.00.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 00:44:23 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Subject: [PATCH 0/3] Add CCI and imx577 sensor support for Talos evk
Date: Mon, 22 Dec 2025 16:44:13 +0800
Message-Id: <20251222-sm6150_evk-v1-0-4d260a31c00d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN4ESWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIyMj3eJcM0NTg/jUsmxdi9Sk1BTLVMs046RkJaCGgqLUtMwKsGHRsbW
 1AJgf9XNcAAAA
X-Change-ID: 20251222-sm6150_evk-8ebed9e9f3bc
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766393057; l=1724;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=+65XFLjmzkBfsSXsN4uZBfj8j9rlxmw6Qkdl91guMDs=;
 b=C6TNkm8SuVEhjmlqbdKYWWJosiC8UXwKP2nZJNyOCqJzSsCZw7bFA/lEluUNhPHpJge+YWHL3
 bBT11TKsJyzA8wpCOeYYxIiIB7opwhGjpIPexaYUGTUqJt7Gq8cnGJ+
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-GUID: jkUGi2BhssTcSqryYS85jNipRQuOx43D
X-Authority-Analysis: v=2.4 cv=dPWrWeZb c=1 sm=1 tr=0 ts=694904e8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=1eq2e09OEcjZih1k5uoA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: jkUGi2BhssTcSqryYS85jNipRQuOx43D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA3OCBTYWx0ZWRfX73XRBxecMVBa
 tr3CESz3xoTyrNLk7zAuDmedmbuPIvEd76KayDUbaga8AHnA3viex8ytgzdeJV5kYdGkOs+2mOd
 iEUxhHLNIyLBBrwH4Ven0gSrC2XFdhLInih3Uyn1Mwyf1fKxjIhvEtj8oAsGTOB+TugLb4VwpJw
 uPhE6ytdMurCIagRqED9GTSkn05iP+pLtIrgyfbkqgReQY3lSLhSvrU2DZ9p3qk8r4avMIfkDhy
 C2iyYUfPytDqPIRLCFqnF1qSVx7s41ivWa7tvWKFWISSjpnoQe+Dca9Ua4W3BZB9Xxg8niLhASA
 I7DalcUDt7W4EJoFu6gRBKyIed019B+ghfPLlSOcc5DqAyNF7GLCoelT5NIogmX12qL4kGiIjSZ
 8NYJ/Ujdd8IRxuZ2vkC1qtxYmxdMTBMDwGMeqVtRawvmfpp87bmztVaMLlLKmPM1c0Rzqd5xB3e
 r82tAcOM2z52TYEMzAA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220078

Talos EVK is  based on the Qualcomm SM6150 SoC.
It lacks a camera sensor in its default configuration.
This series adds CCI support and enables the IMX577 sensor via CSIPHY1
through device tree overlay.

We have tested IMX577 Sensor on CCI1 with following commands:
- media-ctl -d /dev/media0 --reset
- media-ctl -d /dev/media0 -V '"imx577 1-001a":0[fmt:SRGGB10/4056x3040 field:none]'
- media-ctl -d /dev/media0 -V '"msm_csiphy1":0[fmt:SRGGB10/4056x3040]'
- media-ctl -d /dev/media0 -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
- media-ctl -d /dev/media0 -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
- media-ctl -d /dev/media0 -l '"msm_csiphy1":1->"msm_csid0":0[1]'
- media-ctl -d /dev/media0 -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
- yavta -B capture-mplane -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video0 --capture=5

This patch series depends on patch series:
https://lore.kernel.org/all/20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com/
https://lore.kernel.org/all/20251201172222.3764933-1-tessolveupstream@gmail.com/

---
Wenmeng Liu (3):
      dt-bindings: i2c: qcom-cci: Document sm6150 compatible
      arm64: dts: qcom: talos: Add CCI definitions
      arm64: dts: qcom: talos-evk-camera: Add DT overlay

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      | 18 ++++
 arch/arm64/boot/dts/qcom/Makefile                  |  2 +
 arch/arm64/boot/dts/qcom/talos-evk-camera.dtso     | 64 ++++++++++++++
 arch/arm64/boot/dts/qcom/talos.dtsi                | 97 ++++++++++++++++++++++
 4 files changed, 181 insertions(+)
---
base-commit: 1d9566d56c3b6d42b8d3684e940561ef783fe6a1
change-id: 20251222-sm6150_evk-8ebed9e9f3bc

Best regards,
-- 
Wenmeng <wenmeng.liu@oss.qualcomm.com>


