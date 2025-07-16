Return-Path: <devicetree+bounces-196789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB342B07146
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 11:11:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8152D582115
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 09:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC1112F2729;
	Wed, 16 Jul 2025 09:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gWBFx4kw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81FD62F236E
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752656971; cv=none; b=YIxEq31knT/AScWRd+DwcTr2o26er67rj2TnoTDhMybJrp9fF9rZtD7KGEV4cgkMWpkDqnpeHwpvri2Y2aEIwMqUnxt9B56HMFTlmZTHwwDqaWhNOH68vgxsGBeeTrK19j83XLihZ/rto6bfg2bNxs3YHu3nfMsFT2AzxLf2G74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752656971; c=relaxed/simple;
	bh=Fly8KKTzJ7CWD+LVdqYCrxjMnt8d1gn0I63K2HEHwgs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kVwpbeX/+Xs3J3e97XoYa1tzMcsXWXP2yqYR+xQC2TEkPBMq8vgJ8hDhlZ1XHREE6YmjbZXex158psN8G+HChVpjZoe+LCEVsfFTEbG8pLBqAX+OH5FU+X1cVdQemWBmPR+LcyhvTIPGYu6SV1ptVxOlEqjv56QbuunOViEWuH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gWBFx4kw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56G6GVQt020748
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+ZSsnmMLXdvjAOfPiKvJiJHPk4pPjVmM4Mc6ZjXFXlE=; b=gWBFx4kwYIXr28Fm
	nWaFxgwPsuhwyg8PqFkxo3OC0AALOv5UeIqYG9kQCqlYtNycFTWWe+vx4rlT7V9z
	WIMIBiMfTZ4kMgPh2szU5BX/0QsgH3OiyX/nPEZRYlIEO9howtMD8n+yasoqw8LT
	5IWN4fpLLo+3/xFaZG16ntN/7G+AySAKsX+KPLEm/6fKmrfQU0Zof7CwFcifmqAu
	KbLvdqijLqUP4sRpznfytyXML6wlbzgWDocLjZfsYLuzU5WLC+S/X2Re5mDtMH6X
	HC0cEaB39ksSxIJgkDo3IHWHEDxhqeM3l7ZhoxlaBectXb1fV40DoyToHCS2wCDX
	GYU0KA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsy3246-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:09:22 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7489ac848f3so9656285b3a.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 02:09:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752656962; x=1753261762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ZSsnmMLXdvjAOfPiKvJiJHPk4pPjVmM4Mc6ZjXFXlE=;
        b=o2l2mX+5M+/2oO1kxJAtQ+AexrSNuId/t2BfnhMnXrI7lk2tuLCo81F0L48Q/ZRLu1
         hmMIDVx/EHuRrXqvAcp0meVswMiJkgpGPGpI2D/5acm6jGq6PHgBV+A0bjHKLprhAegy
         kKFoPhI0mfdX6lxVTXyALCSSdyFxX515oGgucMTpLjI1PmKQOO2H1UUOyfBWt7a6qwpV
         WqWO1anoWNUk2BzxmY4p3szv0LDbPCAreDF1aukhQmqCd+4mfrOynIqPwMwuxYuyQs3v
         FkJ208lHP7E5Cr1hiYIcIFcpUoaR6LiOEE8VeXp+v55N0D2lPIIjb53HGhdC4sZkrcdo
         zCPQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3ejxb7xN3ZMsUrqqmZmqBq9k3H5xYFcVwjilKZuzYX89jU+mlEHxzLCWrhWZqmSzpKzdnHhBTf0jv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0mNwVfAgqJDry61cCpnXewUuY5kV6s+/hlWIpMq7q6ZRkyDT0
	b6zlKYH0evw6gXRYPC0fcwdKUxaly0fEo9q+v5W+pTQbTsN22R16jzVHEtZj5KIA+X30tnreAUd
	xt42NkJXo2XBDDIG2gTBjWAo9Rc9XfwfLjRvKqFyo6cvrLsT5vF8xBqIOH2yV3iua
X-Gm-Gg: ASbGnctw0+r1/jhdZOAzMdnvg/90aVjNwH2D5owR0XLu2ii9joiELjfDl1J27Gb8IQP
	J74P9juk4fAkzK7wKU2m7jUzuayI5ms8T8wr+msH184xTDoGagWv7hi+4hLSMUGUTNrp7+RtlQp
	cO47COgSie+2ZHNUqf6ZxQGRMyISTPJCp9+R8F9PzeOsCnUGirJ3XOpGVzr3gxxcjQIQMjw3c+V
	UOHnNWOscd+Op3csu3jkq68uloLS5QTLOul+j9yadXrhmJeoDYsjDGFEomYb8JOUyxdAxiULIkO
	jeG15aNcYgFxoC6xGGqasUmHjaCUTiaLp9VhxzwrW3gwrFTtVVSek95Ujzmj//giizC2viQWQyT
	wLFYqJYmMcBUcIfp52z/VXidM1RfGdNpqMA==
X-Received: by 2002:a05:6a00:10cf:b0:74b:4cab:f01d with SMTP id d2e1a72fcca58-7572508125bmr2534847b3a.12.1752656961617;
        Wed, 16 Jul 2025 02:09:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEZ5DQcZo62SqHIKjvUivRsKY84ejDfrmA/WQiIfHCdGmDowGSLYTWARk4UVwnc9gfYsuwZw==
X-Received: by 2002:a05:6a00:10cf:b0:74b:4cab:f01d with SMTP id d2e1a72fcca58-7572508125bmr2534803b3a.12.1752656961134;
        Wed, 16 Jul 2025 02:09:21 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd6022sm13926375b3a.8.2025.07.16.02.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 02:09:20 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Wed, 16 Jul 2025 17:08:39 +0800
Subject: [PATCH 1/4] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250716-hamoa_initial-v1-1-f6f5d0f9a163@oss.qualcomm.com>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
In-Reply-To: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752656953; l=1644;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=Fly8KKTzJ7CWD+LVdqYCrxjMnt8d1gn0I63K2HEHwgs=;
 b=S3euloBUvf6vGs39Jz7hp61Q+/lvXntgfNlGRqr/f2q3IlZ0HIlLOZdmX6IadZdQOf6CBZNRn
 di9Nd/MIndhDIsIg0SW9eDV0TN9X3zVATswL2FdRpmRipONRiaFqzRS
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDA4MSBTYWx0ZWRfX6X/vTU1V+uh/
 rO7xZpIcPMehs0BrzwH2fPql4cOkqhcixOmiHsQ0gyCoEaBWd95kcqij0mxeJ5AclimWw0P1uwr
 cWu9wU77eQFglSvN4NUIaxxmzIE0mUT30dLZxR9V77UYF8pqOB9/hduZU1HfTgxqIM4S1BRkFdU
 mGIthoj0oOvxStyHkr8/7IihPfIoJeBUTwKtPPWvD2YL6W3+S7K2Zg0IHs/vsP45dTla/D8lw2E
 x3gl+koczqm2RwZbiejVeoGWYZ8NT1n8M+4F8twvAkgzVSDfBXK353gt5PQivBDALC3QfDve5lp
 kLNGohz7gtt7Hbg5X+fnT8c9r3CoNe1KuWGibgZ0vxuhC6/kwDF4a0glyrY8GCGp2XoEv7pzZXv
 o5f/0dSpFEyQslI5pz5HvI6rw57t/UnheNCmLpJ2jDD+bht8pKwtzVBfX2NVZEDSxDbXfslc
X-Proofpoint-GUID: J2qZrABOLVpl8roEnEeVo8cZmoFVLHCV
X-Proofpoint-ORIG-GUID: J2qZrABOLVpl8roEnEeVo8cZmoFVLHCV
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=68776c42 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=X4CchLBkMRYhfesQTxMA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_01,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160081

Document the device tree binding for a new board named "EVK" based on
the Qualcomm Hamoa-IoT platform.

The "hamoa" name refers to a family of SoCs that share the same silicon
die but are offered in multiple speed bins. The specific SoC used in
this board is the x1e80100, which represents one such bin within the
Hamoa family.

Although "qcom,hamoa-iot-evk" is introduced as the board-specific
compatible, the fallback compatible remains "qcom,x1e80100" to preserve
compatibility with existing in-kernel drivers and software that already
depend on this identifier.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index ae43b35565808ed27cd8354b9a342545c4a98ed6..83b09ec1100ca03044c832212a99e65cc1177985 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -100,8 +100,8 @@ description: |
         sm8550
         sm8650
         sm8750
-        x1e78100
-        x1e80100
+        x1e78100 # hamoa
+        x1e80100 # hamoa
         x1p42100
 
   There are many devices in the list below that run the standard ChromeOS
@@ -1162,6 +1162,11 @@ properties:
               - qcom,x1p42100-crd
           - const: qcom,x1p42100
 
+      - items:
+          - enum:
+              - qcom,hamoa-iot-evk
+          - const: qcom,x1e80100
+
   # Board compatibles go above
 
   qcom,msm-id:

-- 
2.34.1


