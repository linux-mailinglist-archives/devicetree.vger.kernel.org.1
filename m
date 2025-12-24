Return-Path: <devicetree+bounces-249480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66600CDC027
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 006F13010FDF
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92027314A9E;
	Wed, 24 Dec 2025 10:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IJNiv0R5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cAjLcP8r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F00D306D3F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766572515; cv=none; b=LomKSbBCwd2hiEvj15UMDqwAsK6XHs1iMWQ/xVPkFtB3+TX9yeofBbi6qbpLn65gJ/RHOArWCrroRIclFs6EG1AS/RcYFG/EGsqUSQXkue7SWgmBwjTOSOzkdFDZgB8AeCxzACfUthaGSjNy1qi+HUHI8YIkuPmFZ0TsPwXvq8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766572515; c=relaxed/simple;
	bh=WBAxW70kLr36N+16VMDnyUYrgMjJ3I+VrVEfqsxWN7w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DW2QMXhi/cQwsf1Wa1DqgdRJd45OlAwuUio+S0D07AQ0UsEMdxoFukwtJ9a7xYcBvy9jUdWIMO2Ooiz1fD0h+kVh4Yd/1uC/hGg/CyFOSbdtOKnYqTW4S43P+VoYz8ZujOhCKYceFLIIJmVUNDBeNL4fk2SqDgjocxp3KsLor1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IJNiv0R5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cAjLcP8r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BOA8t6j1597885
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:35:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=o0wRh4McKVmQ0eCqz7MNa4
	oubLjNjqtOBrRue2Bwmic=; b=IJNiv0R5hRfigZVFdhNJ2GSfXmIFv4SA3CNqbc
	tYYZb6uAPDINnjakzKe6ZXTchRFQ8yRWG5GjX01jTVGC20bgTdopGim6SvF7nWBY
	Qp89WfT6Qc7ovuw6TTu3bNfIQBKXyLX65J/RXsdV3cny0tXtYXWO87a5lt8SAr2P
	0YKZlD85UKUQfQwazAv4W3uqrdTjWPZZFcvBkKw50BpOCiYCTc+/N3Y79JjtMe3T
	3e2rItRD2l5BvPEGgEXTjPA768GB3Az/hbTnNQk76aSLIlqaafRTlM+M8SVGO1LH
	QoLo0IZ3syjUOLnadI5gaqymRWyOKyem2sKBd8uOibEcwg7Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8683hb0k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:35:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee21a0d326so34944761cf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766572512; x=1767177312; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o0wRh4McKVmQ0eCqz7MNa4oubLjNjqtOBrRue2Bwmic=;
        b=cAjLcP8rbF1Mb0SbofVTNbFeRn7QmWbiYSr9L0af0bfU54Qffl7twpe+z8bh+ZtW1z
         1c3DHk6GoD+gWW5cOKcvzCAnFZzN+AoRJiXDw0hbAc8P3UETvHVyj8L7DduVfQSmWUuI
         HoGlbQKD3kb5wHOsAdg46OrBou3FtNBJj75C5iDtsz0PDxgOAHymBAFrCv4vk8nuQhRS
         rsaBmksN2DJX3L/zv+DbWsBCdRJG7PF7zoNTtIWZCWKfCM0ziBZqfRkBGtzc+lnMcaBR
         OGCqlgRtsH+gOxOx9D+eObxMwL+nD3JfRl/GJn68lN2ZUZ+Deh5LO5X0WpL/iafNFEe5
         kZOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766572512; x=1767177312;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o0wRh4McKVmQ0eCqz7MNa4oubLjNjqtOBrRue2Bwmic=;
        b=pWnOX8NYiYZOA7BX3pKh8MnhVmbTDRPLgeCEEma/z0r+z1Jt5h/3dykjxWKhIq5Hqu
         YA+J/wawV1Tp/dpKYHal60PfQCjwZmhYg0ESzMP6Hps1cVO4SqkNMkDhQ/i2vZrgVoy1
         7pghAB1rygRxvgS3SEcFNHnKpy8+mLEg6IUBTspwwKXbhFydQhn0+g4n3obt/J6b3cW5
         RvIsxOmjw3N1FK4NLZftNV6nmXD8MuxJ2Er+R5Umx4rus/qDPkdU4goo8L+tf4CcMX5M
         jXDgYSYxb4wag1yXuzmrmumbIl6tS70knKaKDfxLXXPQv4gDihDHMGYc/8i7qhgDsvot
         0x0g==
X-Forwarded-Encrypted: i=1; AJvYcCWS3UUTs3z+TrcBLzWyycqEn20eEn51Q//Yd7kupGBFPCFWYi5he7NLU9uCqnDQ/RJn4Hr1zvr4CmlO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/vXmzti2OaBZjChe0FI2qiLowVeDVjYIVv7dSDaRl8sYkWwlx
	+EA3TXsFsuvErYWidlNbKxFM+/3HCmUj4AUPjBr1QKCV9AJEkihuyTyQojBy0TlgxYWrJmeV3Kk
	Cmmg7YfpPqm3grFO3q0Vx+BOAgweq4l4NbjkCT8vXHiX+4AMgxHISa76hip9kev41
X-Gm-Gg: AY/fxX7sKlX5ZNaRsPI10QINqNegr2ZPTurEq5vhypmUXMuDM80AdvA2/stKCZS+9ux
	ur7CUZB+V78DZ/CcXpz2girpQEcIPz7ue+7JEQsr7N+4Cdso7nlQjKIbhWFcBpmdv7Pvz9CfJiN
	83bRkM49ViXm195IPIigAdYSPCJs2dHIP+iYQupNLa6NrsvTybzYkjhox1ltvfGEKHNAWQrsIUR
	c5N1Mq0WwDINA75edea9iHfnuA4W9ltDXvAGFJqQ6RZOcJKIoy4rQ8hQU1W2uz9S3Rp5DOlTj/g
	GZkUrD3x7tryPtS4ehv86cJrQWNeasJLwqEV416JLP2A0Qzve0ybe7IYhPcqsNHKHLn+7lV3zNI
	TW0TTpLJxxzpDQWY=
X-Received: by 2002:a05:622a:341:b0:4ee:24fc:be81 with SMTP id d75a77b69052e-4f4abd400d4mr265149141cf.36.1766572512045;
        Wed, 24 Dec 2025 02:35:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSi9Ewyw0GUdoJ7T4Ey1Be2Kg2DU5JzeaC0kxe8WprrOkVsKHayOTqD1ZI8V5VDJHlkvaSig==
X-Received: by 2002:a05:622a:341:b0:4ee:24fc:be81 with SMTP id d75a77b69052e-4f4abd400d4mr265148861cf.36.1766572511527;
        Wed, 24 Dec 2025 02:35:11 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad806asm1729496266b.23.2025.12.24.02.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:35:10 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 0/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Date: Wed, 24 Dec 2025 12:35:00 +0200
Message-Id: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANTBS2kC/43NTQ6DIBAF4KsY1h0DWLB25T0aF5QfJVFRqKTGe
 Peim+6abiZ5kzffbChob3VA92xDXkcbrBtTKC4Zkp0YWw1WpYwopoxgwmDqVpilG2CSVoNQCtp
 +HRYPuOJPripGjJAonU9eG/s+6UeTcmfDy/n1/BTJsf0DjQQwEGFuRpGrwUVR93YU3uXOt+hQI
 /1KlPAfEk0S41yUjJeUVVXtQsjnRfSpPeRpoGbf9w+P+e0FEQEAAA==
X-Change-ID: 20251015-phy-qcom-pcie-add-glymur-096b6d951fac
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1305;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=WBAxW70kLr36N+16VMDnyUYrgMjJ3I+VrVEfqsxWN7w=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8HWhHQtDdSEVoYJxea7dghUNT653wUP2zN2Y
 ubbpH5HYjaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvB1gAKCRAbX0TJAJUV
 VmZSEACIRfe3BGB3ilmF0Ghsy+pek5aRzxoJ4aXuo8K1ipfgA2G1xV1cY2H6mpzkxB7KGfPMaoa
 oSg5JNqE8Htv2OuGs5n2/OT9H+YwF9B5rZv0gLfsBwu9NDxByL7SNyEbM/WyAGyjBg1i8uv70L/
 B4+5cTl0A2xHoF1q4BcaD/jBaIHNn5TXkrLzZvX/7rRFW1xm26jaqLhxHOZ9vxwnD7O3VS6MQvM
 g/0QEq5GMXZnT10O8ZQPSX5Cf92vlsDGvjkNJsSc039UlJBQ9wY3PbJIcmArnqt6WSjtmCuuzgH
 uGS3jF9OI4Ut3qGMGU73IHEJyBxPMB/BP2b4jpo3NDJDFJjdyrO54SZD6+4Smz323rXDnVmFkFW
 0XVlBBdt4/+2PqcJ7UUCUy9eVzRFRWUOp19t4E70aGINJWKAvYJbWEgvfp+Oka05wK19o2L4fwn
 4EWEwq5e+oNqAO2iDYxSGPGFmHoX3ht+k8i2LTsse9JscLTnyKEWiGQnli7ExGklnQ7ED2wSqYa
 +35VEH4o7tKkQSt9+x8hMqTDutulZRVWigGlGelHmlgr6BXaNE2BnmJXboRCsjG29fvzfFa6s57
 126+yp0q5yocn3GIS5U0IXofHZAGzsb2PSnxqZts4DYVAL4FcTEtj3WCLox3GKc2MRpoOEyiJN4
 6bv/AchUNMgqQJA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: 247bAGSvNF9aTVfdeZXsDrXgmoquuwud
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5MCBTYWx0ZWRfXzuvrtR3JTEYA
 iMQArZ59L05wlez4CHVJaF0h4bPtknOFdHg0cMF33eAePtoSDF9oWJo9Vi0nlw724JKUAoeassS
 ofPZDAaWfQFo9INmcem2NZhDMU0+rwRE1BgQxx0wFeSfeZh6vCDEkUrRzvSc1J3z7k49MzaTZw6
 ApnXGpNE7pPLFfjjUrF7HiLwrz3ug/C1Y4rh6smcd0JqdZha8S0pE3eWAd14qtql4AqE8PlfYxY
 cZ43kcboXnJgBRtGteSzc5haQegDV/7vCOjjKRYOSB7Xn/B3Xd0FRpunfPdrZ1CMRECgJ4imlD/
 AByfJpg133UZKEAHHbi37dBb/lwlm00F6BW2PZznQYYSLzT0BryfbnlBNKD6VMYBWsyfUaoTk0C
 O64cQLTGVfoNosN3TV26DMm7nV8JFQ78Tp5op0RoGyaJJ1MheGsRiK4EYUTfe369l9cH+75ZQmb
 VK7a8dkeDEzRZffEhAg==
X-Authority-Analysis: v=2.4 cv=HqV72kTS c=1 sm=1 tr=0 ts=694bc1e1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=25G5sqDuFd8dvZOKy0MA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 247bAGSvNF9aTVfdeZXsDrXgmoquuwud
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240090

The Glymur platform comes with two PCIe Gen4 2-lanes controllers.

Add support for their PHYs and document the compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Picked up Dmitry's R-b tag for the 2nd patch.
- Rebased on linux-phy/next: 27287e3b52b5 ("phy: ti: phy-j721e-wiz: convert from round_rate() to determine_rate()")
  So it can be applied without conflicts.
- Link to v2: https://patch.msgid.link/20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com

Changes in v2:
- Rebased on next-20251215 
- Dropped dependency since it was merged.
- Picked up Krzysztof's R-b tag for the bindings patch.
- Link to v1: https://lore.kernel.org/r/20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org

---
Abel Vesa (2):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur PCIe Gen4 2-lanes PHY
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen4x2 PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml      |  3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c              | 19 +++++++++++++++++++
 2 files changed, 22 insertions(+)
---
base-commit: 27287e3b52b5954b73203d32ee76ffd5f53f5074
change-id: 20251015-phy-qcom-pcie-add-glymur-096b6d951fac

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


