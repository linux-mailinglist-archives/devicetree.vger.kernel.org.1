Return-Path: <devicetree+bounces-220946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A127B9C92A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B321F1761EC
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0401A83F9;
	Wed, 24 Sep 2025 23:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gspdbcs1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 791FA11185
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756656; cv=none; b=k3XIRieP2FO4uBDZzFcKDsvaVvvtih1ub+eT+s513AwEcxSAo0+CzfHhTxWI8ykPeeLn8KLWw0AuL33xomRPR7djPkPfl3ZIl3/JO0wJbt0zIG+7Oz72bJl6PfNQGQJcEuOevMSYyKiH1akdjnIslZ2swbDVszAsauRxrP690bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756656; c=relaxed/simple;
	bh=kh6kEegUFtYNFJ3aS49j3X17Llncmc/V0qRsyGJYmE0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rOOM2fpnXgHv9p0j2WINLcaytVYiVPFiwlMQTz3L03eCpovt8h5AgfOyF899428Vz5IZHXtrjV3cZY9Zr/0C8J8H6j9UO91h6xOl2uTLiioh+2GYXaQpJOQff3LRGaDgUSTShb3SdUE/r6yQyIAVgCCkQaFUhAtpq5l8rN2MQDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gspdbcs1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCGQuY016438
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:30:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8sKUB96w2c81cjypF1uciP
	4GhDssTJHhQe+aJF7cAs8=; b=Gspdbcs1r1rYDi3xUHRulFhyRD1qKP3U9exg+q
	bgQjWUa4Y2JQ5+YFsW0woYjzVH8T7i7sYHKhooEouMIak3VFDWQIxzsKH27lMn75
	2yvH6qB3tk7hyAEsUZxP49n2bJ0wc3Q9a6J1nPArLk8JL0RubRkREoGKuPjwZaoF
	vCOzGMLOlvgDAjFK3l/Vz6epC6/nV1rdyIb+Nx1bAS+RI2vRoHJ15BpOpleS+GTX
	HIa/qngngrIkQgYrp7T5vmTAOx5jVYNk9D7/VzGgEaE93GH+eW7RS+0sBH6dVB4Z
	4EOWdSWEQMcJNaX3ngTyGWRsAU/oQbgkyro/U/APSwyFRE4A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyhusj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:30:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-268149e1c28so3174245ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:30:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756654; x=1759361454;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8sKUB96w2c81cjypF1uciP4GhDssTJHhQe+aJF7cAs8=;
        b=b+mP/QbO4x8MoyfnrmlNNCrCb7rBNIkJ0g8BdtUF+kPJFm7iM92lfE7WTwLc1ht3Q8
         jAzkxqc9aeFcvkNgKnnv8EemxHzdv3HMxDrY36Sqt3Ial5LlmCfL+ieRa8m0wXu77ZZe
         JmGCnjcKrTAKDaWwba+L9bQHxYkMG2+XJ/DBy7e6r3088gF3wK1d4oe305Aw/zqIP1US
         5Mos78zrTygQ1AXBHVU2gt9b7H7wHm+d4SoCWHIbxsHthRPIZmS8rYEdFXUiG2VRjRbT
         faI52G+7O4XMzdE42qbxhY6uDDdZf4ayHZZHzVAQvaC9eG7bxuJCICUd2RXaWN5w+Hjs
         lVLg==
X-Forwarded-Encrypted: i=1; AJvYcCVbI8JCTkHNaTSaXPHSZOxvec4gsoYCfDteZ6xtnpnQayR4/vKVfJzXGEvZyJthDYMD/ZhpD5dgrCEb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0gUOZRq1FtWmewlpxvj38ZDj7C7GTtrbu94shUBqQaq3vJdBK
	6eZ9XPpsNTAu+nhwPdiGPzsoE0pg26x5MIp6Zn5um4Rg9Bp40mntI0j1syTtyQS1Ip9bg5S+FlE
	OEJb5KkbU9nfbc2U6Qd5IBitjcfZ4eDCuRkcdgq6MogJCVzOVjdHCAyKdTpvYp50r
X-Gm-Gg: ASbGncsgd2NsUKribehHifm/5h+WxJMjnU2y3k8vXn36IXM1fwxQH7wkIT3H95msVVi
	kz0Cw9+H18unjhU1CBmflgca3yh4pSq0VTpkvVUDv9qsKSpfph8olyjWtc/4bPx2GJy4Gy7Ao5d
	X/xeqk568r+lCuLzjq5rC//Q6g5pLBWMZuIlkAY0GmG5nI8Kuy+RwVwagRqjFYFgFabhA16n8v5
	6gSpKZ2xjAbRWUbw9eGyJXlV0okfeNVQbRWbNWA2ErJCA4qP82MCojWR04GbV4s5KRXzEbRk58T
	XVB5ivXOxVIsrX7GXwq0Ivs9W451CWW7KX3DJNtkpNxAOyZYIaM3ePZR14kb5cRu5ED75Lv5xZM
	IJaUF4Hatzkkmbcg=
X-Received: by 2002:a17:902:dacd:b0:272:f27d:33c7 with SMTP id d9443c01a7336-27ed45e7b1cmr15474315ad.0.1758756654017;
        Wed, 24 Sep 2025 16:30:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLOFJEMfmqYE2I0X8NTp04g+0odPKBsvb/FFRbpVvIIynbyA0XvTKOEx2K0bAYTptvE+S6+w==
X-Received: by 2002:a17:902:dacd:b0:272:f27d:33c7 with SMTP id d9443c01a7336-27ed45e7b1cmr15474085ad.0.1758756653599;
        Wed, 24 Sep 2025 16:30:53 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6882284sm4122655ad.69.2025.09.24.16.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:30:53 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/2] Add rpmh regulator support for Kaanapali
Date: Wed, 24 Sep 2025 16:30:46 -0700
Message-Id: <20250924-knp-regulator-v1-0-d9cde9a98a44@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACZ/1GgC/y2NWw6DIBQFt2L4LglCfOBWGj8ucFHSiu0FmybGv
 ZfWfk4yZ87OElLAxIZqZ4SvkMIaC9SXitkZ4oQ8uMJMCtkIXff8Fh+ccNrukFfinWosIoLyvmd
 l8yD04f3rXcfCBhJyQxDt/K0skDLSXyR8buUvn/ap2nVZQh4qQOmkEOW0a53stUIL3svGGeU69
 LrWAqwwLRuP4wPKBphrxAAAAA==
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756652; l=785;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=kh6kEegUFtYNFJ3aS49j3X17Llncmc/V0qRsyGJYmE0=;
 b=g+HdfxOzxLd28NuS5/JD5a/2uLK5z/TbbKyjoC1yO+7g4q2xqdbXGv3h+Q/Z7NAjWEossF052
 2hGsh7fx77kCuY/wMGRdlWwii69l2h4QJSe158ndFATxVAqpIukQJin
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d47f2e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=2c85Y0ljqCixjCLaVhIA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: Ch3jwLfNUEE4s33GvHKt4gajLNOhdbh8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX/EdALuToUOod
 QXLVoSqBLZkZd4RNwhVTUqVpzE3sYIWdxOx6OE7I+GfhNs10ez/Muq4iiAsLMdPfFHnHuo/MtLd
 mW3snheqn/3Nc47sa6eVcXNwHDSKsnfGA/qStShonPWqgVWN7UbA38iaqTAa32NUofdCU8NDZXN
 2vytO+w7cJSoB+yv7PFVVFqjdUCaRHpv5QhVEHPDZKDHWZ18oraIbO60ppiTny0/MYiedESGFqp
 ydM0mQT/vfNnxi15w+dgJD+/PXvx2gKu7SwksBztlnNhHzbzKbYrxzlR4SjZtBHwrNHKdsP5GQI
 VXtaLBjymd+ITWVTvA5eKqL21+7KXBOPK2IE+zg9Rgh1nBgekEk7xro55tq3tBvOf1hR154aieF
 0jCkgsmI
X-Proofpoint-ORIG-GUID: Ch3jwLfNUEE4s33GvHKt4gajLNOhdbh8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

Add rpmh regulator support for Kaanapali by adding PMR735D PMIC.

dependency:
https://lore.kernel.org/all/20250916-glymur-rpmh-regulator-driver-v2-0-c6593ff9b4be@oss.qualcomm.com/#t

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Jishnu Prakash (2):
      regulator: dt-bindings: qcom,rpmh: Add support for PMR735D
      regulator: rpmh-regulator: Add RPMH regulator support for PMR735D

 .../bindings/regulator/qcom,rpmh-regulator.yaml           | 14 ++++++++++++++
 drivers/regulator/qcom-rpmh-regulator.c                   | 15 +++++++++++++++
 2 files changed, 29 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250918-knp-regulator-735ceeea3ff8

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


