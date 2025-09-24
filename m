Return-Path: <devicetree+bounces-220960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A5BB9C9DB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 445BB1B21800
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51C82BD5BC;
	Wed, 24 Sep 2025 23:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mEFt/XKK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20A827EFE9
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756858; cv=none; b=ijIccK3qcrfAqcbX6CbNribNQ2d7O+NbDY3jPlolhSbXtll6mmVzxOrJx3ibTBmZ3RAuA2enHz1fN3y5M1VzA50Z6/lCYVAP4Dg349Y5XOs6xK9SqV9m1utsxILmd0ZgCZV8ivlzYI5H+7gnAz+B9kWg7nc03x0BhXdoI6J/YVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756858; c=relaxed/simple;
	bh=I4O3gfHT5BcznZ7La6vavOxDfqkx1w/HB7s3CwlpSnc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=pLekr3aJdURuGJVsd4RfRxlh0zY61IIijRWujOicUiCoUFBVh5Jw/zIk+5i0U0jVzGQWZeisVFYBJqg47yy/OTLqZo/GEhFK/+F6D8+2ROK/+wFmXgHcVWatIdB5pNE97EZy/a97IF8vDJYRoHmqemyIbca6Ag592fJId/gw9pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mEFt/XKK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCdgmU021486
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9PLTUQ5zeHXprnp5PmquzR
	9IVyqdudfdb0ioefL8Pe8=; b=mEFt/XKK0p265IVjpi5b0STaV+D0FQb6+9wEfN
	OWvBq4YGz6hsambjLOXvag+0cRN/e+Ax0qtQYrRoLied1pGRyV8WmXscr2Inn5bY
	laL2rqbGUg/E4uDCiTenW0f9ra2l/KYf4rLou8XsHXYi5YFr40YjY+ordVztkOb2
	4e7inXzZcOvo2Yxl8EXMEMaAY+YSSZkThYmuuKcYy4ixCyqFC+ePLZwrKULOUnuU
	CW+de3EKXZb/ZSZzITd3g19U+GoMkBWGu20KnaJRf4LGKpUp7/bgBjF/zEPRB1il
	0BZbViH+PFQvBNQLvR0/7H54flFtokc17Am1unVjGmX1x9wQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budadkn9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-26983c4d708so2829905ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:34:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756853; x=1759361653;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9PLTUQ5zeHXprnp5PmquzR9IVyqdudfdb0ioefL8Pe8=;
        b=jkWimFKlnBvrjCYTwrll5tOzgxDFcUIU6Ky5mcLMiBAP01oViVLe5g48PhgmfqtDM4
         5WdKac7kryVAfTZWR5tNfxPQamR4/afTzSsyOXX6pZYLKYscsTz21EmL5pLsGPcTmP4E
         k+SI8ypElXBlChXQ+fpqNnGizx3jhtDl83YJ/8wfXfxfydbTItS0idWC5GOBvCEaQGl7
         tFmn80/bow8n5kTVAGOZKBqvdfUoeE/2gniqB8atxWFOUba9dNdf77WuSw8E3sJjXAWh
         PjqtwNOqrNi51A+WK/ck0YGGDZejEVX6NMWsURLuj+cLgf6vuBit6JFnV0UxyGq6K/0u
         W89Q==
X-Forwarded-Encrypted: i=1; AJvYcCWgkc/PvXPBxk5BEQFHnwmLd6/hC6hYxDC41OMVqNyn7i3XW4aN9aCYjZT3pC4qEp3M1OpqInBzQ8F0@vger.kernel.org
X-Gm-Message-State: AOJu0YxRBz4g8bqBzVV05JoK5SzpVl6D/Nub+tzK5GkKbytkdS6p+T0N
	jIjL58IMPz6IsWq8RfaZCVkADWDxVLEM9jQN7QqXfMYT9iqn6OuB0ZFQ0WWGza+bQ8nbX6UsyLc
	5MIzGK34xaYDaiNvLqaNpcF4CsRRhnSkWXDv1uQeU/idDWDLSPAXCiYXV8Gi9jMQh
X-Gm-Gg: ASbGncuU5R1TI49KzhIJ46N1xU4cS1Cft56p9U2Am7Qi1slhXMVB6fbIBFCJHw8MdJH
	Yl4stWX4YqGsJzS/24smFtV73J1w9KJkzzWeoLdl0M01L95Z3m6F14ZHxL7CImRME9IpKIS8fiN
	sVRtHCgvJukapUhwpVMtEYKxscb8zbo5LpKya/MjVznvnDJkxBQ2DEj+22lUA6VgqYT2Gt9dNWU
	/9UIYCgXbDcTkxMprkOixpUjWh/qFu+OUQUoi1hSgfMhOrCI15nSSUkD+1UZ/d6REQr76IepRgC
	p0rpGO23LK8m7MiPTaXavAdFirDsiqAAUVAPaKSp5QychYtnA0fgjjRikASGtlcmEO6pEMQiBRp
	bFD8ecbqohb81sAo=
X-Received: by 2002:a17:902:c946:b0:264:c886:8188 with SMTP id d9443c01a7336-27ed49d159cmr16244495ad.24.1758756853611;
        Wed, 24 Sep 2025 16:34:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUrRMjSmB32RI2c0SHWNZW6mKRVY1S7Lvuou4K8ot/C0eRhg1imSELLecAfWv3RvXD+1haFg==
X-Received: by 2002:a17:902:c946:b0:264:c886:8188 with SMTP id d9443c01a7336-27ed49d159cmr16244265ad.24.1758756853148;
        Wed, 24 Sep 2025 16:34:13 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d3013sm4433405ad.3.2025.09.24.16.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:34:12 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:08 -0700
Subject: [PATCH] dt-bindings: mmc: sdhci-msm: Add Kaanapali compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-sdcard-v1-1-fc54940066f1@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAO9/1GgC/x3MQQrCQAxG4auUrA20AxLqVcRFOvPXBnEsiYhQe
 nfHLr/FexsF3BB06TZyfCzsVRuGU0d50XoHW2mm1KdzPw7Cj7pylKxeWCRBJCvGkqgFq2O27zG
 73ponDfDkWvPyXzw13nDa9x/GdHfodQAAAA==
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Manish Pandey <manish.pandey@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756851; l=1055;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=YZcMD7R1E/x5JsyNQnW7xKDXrTrxA0bWqZscFtGLLU4=;
 b=8bZx79PgRjy0zyZWg/MuI7JNaqTNImRZDABXed+lMGWCSCiJm/enMPJh/rqOmh5D6HbjHIJt4
 Ues9PkIpWLEB2mXi3GhxBdsldTRJUxk8CYgqlHE9H6WjVaSRFWZPJXJ
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: NHiJAfRcLfcDfdmqFdXOz6m1z4gt1qgz
X-Proofpoint-ORIG-GUID: NHiJAfRcLfcDfdmqFdXOz6m1z4gt1qgz
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d47ff6 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=0ikcEHTr7t7WTpsdClUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfXzVK18H6x2GnD
 9UY7R8tLUFJmogc/jIKrzUms+NVM8ijTSJXtOeTxdgn63QwOUdiyLMyE1+9O9a4NC9LZRduEx5q
 ztf8UsmRG9u/95zk+XwfyaJzs/oIHxYcnz1uCNtQXH588a+ma1pGiFrcjuStQIQxpfZ6O8fvZL5
 T58VO8k5e/SlzLSlnnSg8wzpGgBGxNQeBMu2Bk43BAhJG4Sc4dEuEgq6og7pwuMEgbZyHSHKvxK
 SuxMDAy2IPxItSzVQxhgYI+cdLWtFCG9MfL9tFjE0eQMBAc58OjgmwKmWjYgd904vR0o+ddWTtu
 n+0swn3gXXOzkhihdftUfjH2mBTaRWT2B6EkO+d7d4WEbwiDxNNDC9J4esBHG6R2d4xQI+SyDs1
 kbOTbnJq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

From: Manish Pandey <manish.pandey@oss.qualcomm.com>

Document the compatible string for the SDHCI controller on the
Kaanapali platform.

Signed-off-by: Manish Pandey <manish.pandey@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 594bd174ff21..474afc98c8f6 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -42,6 +42,7 @@ properties:
               - qcom,ipq5424-sdhci
               - qcom,ipq6018-sdhci
               - qcom,ipq9574-sdhci
+              - qcom,kaanapali-sdhci
               - qcom,milos-sdhci
               - qcom,qcm2290-sdhci
               - qcom,qcs404-sdhci

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-sdcard-772e77cae9d2

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


