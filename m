Return-Path: <devicetree+bounces-249937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54969CE50B1
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 14:40:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBEE330088AE
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 13:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 183941F0995;
	Sun, 28 Dec 2025 13:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LjxeZXX7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bxv609Jp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F1D185B48
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 13:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766929251; cv=none; b=mgGMAq9NA6G0vjx0wA+hQwOzfk7jqgoq/mbZd/TxlIlZQ2Gz0Gwfdkyr63LXqX4jg9nniZ65F9Cu+IE/vUNX+gAKRUsC0pb91c3E+WbuqZdSZ00e6NbXklqq9zJhHo1WtxDwWwISMTs+cp7JcgeL2ZD4sDioYg082SrmmMft+Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766929251; c=relaxed/simple;
	bh=GXENwSNF+yLZatnAXPI7O9lGObeJiFw7xo4lSY3qXY0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=l38cjBEqLMnKL32kGO+azn0o6kOp7ZQPMz5A18V6RpKQsm9fEenQjotlDyFQfFYhddTHUG7pbXHz6OB+GmuDYqMz+7jUGlCq17Ze05cv2SWxZkiEVeItkKfzASVt8Bva3rTtaipBg1IWuwOBtD93NsI3v5qm0A0hVJHPVuF9mSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LjxeZXX7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bxv609Jp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSBi0FP2423460
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 13:40:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=YfLtNPT/A9FcCd0uADTsZR
	0Szfko6pjkzfGEDPDQiPA=; b=LjxeZXX7JVJpoRkGhoCZhr9mR++UKZBzlm7Z/k
	ygAgrlBjpAIque4TK53IKDbMq5Q7/84hPUzokz6g8AFnxUHwu0VUAfNyhaN0zsIK
	VvZhpicHWcO4QrrkGJxOZHFerBxYbP3J8JXEOSf52Gd/mAftHYZjQGnBYsJJhdt/
	jd1FKpayGYqjfvWvIgEW5CSi9TKaWQVf0hLRA/WWP0FccPnU8wsJUrDEYD/PerBY
	h2hoWLmA7b3cPSAKXLQXiWW4/icUuR57gqBDb45IxYP4YbPeNz+ZmeGPQ0Cv5rQl
	SMGyHzrrr5HrQCpq9oP8XFz/STxh1rV1Q6zJyN8io+HvruqQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7p1t8p6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 13:40:48 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34a94cadbadso2380376a91.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 05:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766929248; x=1767534048; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YfLtNPT/A9FcCd0uADTsZR0Szfko6pjkzfGEDPDQiPA=;
        b=bxv609JprRXDVH6ZOLQAGpahU1TyMAGBLwNAu/KtRCbHkXsRBRjHjwGO/TuugRcDWc
         18jrWbcJZ4muq9cqfIEUL27uIxgbvSKa1HFZ7IAp8bblisO+WoQ5CMwNRof31ZFGfDxW
         ZSs+xzG4QoAf69H9CiY8yM5TAlUtyMDQQfLUYxRoEQOml4/ICe00YVaUFHgC4Umxcs1q
         x8lFDvVjxL3nSelKyghLmGpnE5PI3p7gpdfzPbR2K34lWHyTAo/5NJ/pd2IS4r+0KFpD
         85P+HhaDOb76clw7+PDPVLmCsXkWKbgM8Y6GagfiXXMVAPirwZMJKDbaobfMxGqNadg8
         zcLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766929248; x=1767534048;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YfLtNPT/A9FcCd0uADTsZR0Szfko6pjkzfGEDPDQiPA=;
        b=eoksTUTUJjnN32uA5VH8MclfNUjh8xHDEAwaU+DHv6SZDKXfVOvDYVlsUwPjcrJv+5
         rJggncuR2GRG8rA9fFH8sMGcObrh/Z061a97qTTEYJ/doksTIzyYkjsDPZAiD423IPtG
         ivnX9nEh1Y6EETPkazsCCTVK/vNvHWTfq0MBYqRCUyqnCy73IG6D0ky3iU86KozkLJ/M
         kLpuuFQjWDSBzGQSC2pnkkOFFCs6FAGOrJycHzwxthlGU/PGQCvnz6QhhtQBIjBrTW39
         dZu5g4jICaL2TmB2JdUr4yXW+SmxQcQ+2dCMrG8asTZNyb92yUj4p5suMJuA4Gmtf1UT
         GwcA==
X-Forwarded-Encrypted: i=1; AJvYcCX2cWe3qmuriNt82/QzZdRsVkBclttx4VimjvVybZjGT5Hkqkw7Xu7ULmucEyrtvv7YyVxYZwTahEo5@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd7L9qDqUlFKCI/FQWUFbZWHWAgswvQafwCxZqlE+HCWb+b/R5
	yeNvh/KsUgVVjCedHkXsylpefrSpRyEPah1r0GhAC3oPadZNNulq+4foJQRJO4PrLgXzR3nuRrB
	QUQtukOAtKXqbIkwAQtEDSX5QSe/DT7dSsnIUaM8zDTRgIp+i3F8JpuUAhpTyqMDl
X-Gm-Gg: AY/fxX7ng1Y2sSJ3J5KcGi4MAtTGJ5kIewWbxhCHU9t18Txn6JDelfK8KkwDDibnOry
	q3FhAlpuVpz1OVPCRyJpRXUT7r6dHv+UksjE+H/BFG1V4v2vICs74CsyN/9W2zPe1moRk3eF8Di
	YqldFzaN1e3AdmOfwvzi3JBlgr5qByhJMMwb5eDcCNS9XACc2OPLupERB2iEe/ZG+wiFFcEUGSW
	sIPiAZV135ZQCaMDSHtikVo6TWaZhf02/1Ah54y6PZhkNGman6lJ7NXwjJGeb9/1PK1+DwOaPvs
	80ZIQepGrCyo1zFp0F4YoRyO5eyzVnjhRClWDkG9uWrmCm6eNXNtx15gqOfZXTmqotzrpw2+wEq
	QqpceKWohNnywUSDUZNrACq71t42w794GCUouXqcL+GQQTAdAD5znE7orJppHKPUP5akSLgEkzH
	SgnbaZKs/w1zbAmc2UR0APPIGcvcm2Jg==
X-Received: by 2002:a17:90a:dfce:b0:340:be2e:9884 with SMTP id 98e67ed59e1d1-34e9211d592mr18538224a91.1.1766929247953;
        Sun, 28 Dec 2025 05:40:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgniYZRYkqVL8L0u75rY4twX54TGAjcqZplHbL0wimrKTWNwF88bo4zLiUYmHwe+68mB26Yg==
X-Received: by 2002:a17:90a:dfce:b0:340:be2e:9884 with SMTP id 98e67ed59e1d1-34e9211d592mr18538208a91.1.1766929247480;
        Sun, 28 Dec 2025 05:40:47 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c14747csm22981950a12.27.2025.12.28.05.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 05:40:47 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Enable lt8713sx bridge with displayport for
 monaco-evk
Date: Sun, 28 Dec 2025 19:10:37 +0530
Message-Id: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFUzUWkC/42Q0WrDIBSGXyV4PYseY9UyRi/2FqOMRI+rkCaN2
 pBR+u4z6cUYHWw3wn+E7zv/uZKEMWAiu+pKIk4hhaEvQTxVxB6b/gNpcCUTYCA5B0a7rBUXaaZ
 tDK58d6G/zNQPkfY4ZyqYFtrKBhQ3pEDOEX2YV8Hb4Z4jjpfiyfchecUz9i7Rod9Vz3cNV9Tl9
 D7apAVjdFKU0dbX4IRBpUHvh5Q246Xp7HA6bcrzsqgeQQD6YV8Xw4SRTqIwDd8a36JnKNvfmW2
 TkC6TkHeVhXprnFU1A7bVtYUGneC1YtwZY6wVyhqpuCJL0WNIeYif62Envjb97w0nXnaDIvNW+
 rY2bD/m8GO31TDBNxW4+ZMKCxWl8LIgsTUPjcnhdrt9ARE9tDcSAgAA
X-Change-ID: 20251120-lt8713sx-bridge-linux-for-next-30838c5a2719
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766929244; l=1249;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=GXENwSNF+yLZatnAXPI7O9lGObeJiFw7xo4lSY3qXY0=;
 b=UTQKJl6QsrX8pTscrG/18cyF5Zc9y5VhoSmVqUyaKapj1BN36MNxHVg8WvR808MHSmr0XZvuW
 tTNlodzP2f2BroRz/I5/LFFr3BpgHklUez7ndl3ObXR+urObm95+g1+
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-ORIG-GUID: htjUTRUTe0PRO13A5EZ2ZmRt_K2WRLmW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDEyNiBTYWx0ZWRfXwJWpCLlH93oW
 +dT5ZNuGMEfobeWC8iIjRRzqm7ZE7lsEJo5cXS8h0Dg7OW3X9krFG6A/NnyL8IU6As1yELNdysd
 UwqceX2RrT07EoxdtNIxgU6jsD2yh1CXKeWs4OugJZ4INB8oTFY/V99qOtroqUmVaR5nLUEgTew
 PXtgrC/xYlVeFCZGDEYrOUDwyGHoJGimdiUshZ4RUUSBZ1/3/5Nbah/kDbXSCTdC0p3IptyYNNb
 C43MzMe81OTrxKB4wubJ6wjOXHhM2ZTihCjl1zH5CmiEWrQQa/o9RkRcGoLUoHKMqIMKGQ8hkyD
 uU52ryTsX71kRaAgVwFYZp3KHEMBd3GrCQ2yJvgBO1q4vNsUxNg2VOAw+aqy2egfm4XYlUceIKa
 vWwzObr3APLKHOHFE6/FRgcyVhDHcu2JRfPvGVuWJL1TT7hx+rahhSKZFGg+HtQ4/36kqp7tYag
 hnTcoktiSSE0TiR36zw==
X-Proofpoint-GUID: htjUTRUTe0PRO13A5EZ2ZmRt_K2WRLmW
X-Authority-Analysis: v=2.4 cv=PKMCOPqC c=1 sm=1 tr=0 ts=69513360 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=FNfohRsh_S1gWZ89RWQA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 priorityscore=1501 adultscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512280126

This series enables lt8713sx bridge and displayport on Qualcomm
monaco-evk platform.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
Changes in v3:
- Used  existing qup_i2c0_data_clk as default i2c0 pinctrl and provided it's drive-strength, bias-pull-up.
- Link to v2: https://lore.kernel.org/r/20251219-lt8713sx-bridge-linux-for-next-v2-0-2e53f5490eb9@oss.qualcomm.com

Changes in v2:
- Configure DP PHY supplies and DP pinctrl
- Configure in/out ports and connectors for lt8713sx bridge
- Use correct base commit and fixed build issues 
- Link to v1: https://lore.kernel.org/r/20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com

---
Vishnu Saini (2):
      arm64: dts: qcom: monaco: add lt8713sx bridge with displayport
      arm64: defconfig: Enable Lontium LT8713sx driver

 arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
 arch/arm64/configs/defconfig            |  1 +
 3 files changed, 96 insertions(+)
---
base-commit: c2469dc74020684c2aed314701d999cc37c95717
change-id: 20251120-lt8713sx-bridge-linux-for-next-30838c5a2719

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>


