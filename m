Return-Path: <devicetree+bounces-189308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C62AE7926
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0BEB61BC596E
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 07:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9962A20DD54;
	Wed, 25 Jun 2025 07:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nlPhXTe1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E354B207A2A
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750838136; cv=none; b=i4ZF9C8ZK5CAhgYQPiMTTrez/JhUj1szFEmLPn2ML7xraALMo0qGFPls3aYn8lsV8x3lbHaI6c02LVGoos0X3SHaMpE4lq0PheD14rXATH48tmJE/P0TTXj75vx4zO76HESZPQjS6sqzepIPN6kODw7xU1v5QmqpbO+pqeg+Yoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750838136; c=relaxed/simple;
	bh=UXLreCEKENzP7lanGUV4Bm2PCN0o7P4FxkHutEz2K/Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=WKjNIfX7LCAdqM50jrJLVrRsytrxqFc+c+Z7KJs7KgMIf5QjEqvXoo4GJBoCzVEYxDaj2tB6jEapj6Oc+txd8DCEbZIbyl/+9QPRDp7s2CBFS7z0Giul0bMWyF+JJJhH9PruwwYh/63esyTXqGdp5vLyzjIWad3IkzRR2prObD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nlPhXTe1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P3DFYp008761
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=mVqTDThOIaWdiBFJIde1gg
	/5zleQ3dpP3d0V7N3R1KQ=; b=nlPhXTe1OMJedP5ZaD5BGs3VF9s0FVa7U+OJnv
	zz+mOI059mPYx1rIpjgOUm7sJ6kYScssekw5MD12l3KdpxhKFDkBuIO6VpZO+xtj
	54feYix7mPRmDpwrv9cgRRD+CV28ycsKr85jyoS2BTBUUITU8yfywNFKrdjAT79p
	kmF0Yc+vrUIOxmA0ZENFfQ/iT2wUXd1tiYVFTD5FBJeRMdRznNyLHdNgTt8DsSC3
	aX9C+44NHzWRRBt4aL3jQ9UlznmcP4D8uHte7ZU687wFQjn5y1KVOJ0hMOx1TnsS
	UoY526SfF8LQNS0Kr/UMPNgtQL70WPfaulF5RwwgG/cAB60A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcmrn77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:32 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748b4d5c045so5011671b3a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 00:55:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750838131; x=1751442931;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mVqTDThOIaWdiBFJIde1gg/5zleQ3dpP3d0V7N3R1KQ=;
        b=OLBRm4+QPY3hMtt/ESDafJ3jYPxGkp3gCRhvd5DiG0pds3cclj8gnYjCE5XgCL3FT7
         GHrcwjXccD5Xjg5y9yD53QlRlsmSuWRE8M03VtPV7wwfSutE+7qg9ugGjTYmaXy3VIRX
         Atj6qqqKqFHn8l2d/yXs4vAzNSAmFUG4BRv5z+2A011yo5PvOc5Q03l384M8drD+dsFj
         xcLXPTNeokX0g32dDdsiyWNiUcxgykNbZZVj0OxuEryrYz5La/OS3/BbrjRTjiAYh0zD
         KPa7+dK10AIyRTW60SYRDkay4laiix/n/c7Y+C+9VreYSKjGLFVvURbQWya+tVfHtbar
         Tu+A==
X-Forwarded-Encrypted: i=1; AJvYcCXBJLaV7bgfM3xCWEDyE9Tn67lE9FBXso/oiWrA0jRIOyBZayWofUd+83GBqPnXWkaMkANhsTHvn4Ri@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0zYiyadMrzE80Wq6Z1z1AJl8W/udi1pioOtObWxTvUbUNxMnG
	7CjY/leUKYfLNtEaxTPTnMuUt/847x5Jb8XetiC+j2pIRoklXkegBvxoecXKv4fxloE8wXAaesb
	sZqSTl4LSA357Ni+aORn6+R+qqlKsOQ2lebHe0IgMA+EtJEJLA0huhNrIq4TxrUdG
X-Gm-Gg: ASbGncucBgp9nCG+s4RjVSEeveCJ+En4vtrq2dCsoGx509wwOrQ8ozBsgisJ2ARbL1z
	+9MEvNZYzxnM3JToNXyfJSU+LoqlUxkdTRRFSOW5ZQrcd4x2su986Iew0jFTcc31EJJlkb4/VmV
	k7GZOSWb6E5t8fsIjNWzei+9RLEkSj7fcvPH+eF2Mh7zymH/TdGKxxqeI6RhndTzCE+fotmcbWD
	Ftp0aC1EVvAnd6iGGqyWqukwf4aT3dcsNQQ4pe2JELTMsyxaNuP6Cng/GlRCYEInWqlmUEvxTja
	HfZhQd9pVixFKONofdzEcKTGBKQO7kUDxuiXkwl3q8oahYfBQ0Omlc4kS2loyCEs7MUrOG680ms
	kUtezJScTmw==
X-Received: by 2002:a05:6a00:14c3:b0:742:a02e:dd8d with SMTP id d2e1a72fcca58-74ad45bb35emr3326847b3a.20.1750838131126;
        Wed, 25 Jun 2025 00:55:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7fagUQe9PsTurDS3L9VP8Bz0ybv+OrS3Ghz/7SQDJxxmOptDAiB5wA8rQTqU88Mrb2vxlnA==
X-Received: by 2002:a05:6a00:14c3:b0:742:a02e:dd8d with SMTP id d2e1a72fcca58-74ad45bb35emr3326818b3a.20.1750838130714;
        Wed, 25 Jun 2025 00:55:30 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749c8853133sm3707478b3a.129.2025.06.25.00.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 00:55:30 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Add WiFi/BT node for qcs615 ride board.
Date: Wed, 25 Jun 2025 15:55:05 +0800
Message-Id: <20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFqrW2gC/13O0Q6CMAwF0F8hfXZkGwwcMcb/MMTArLpEmKxCV
 MK/O+abj7dpT+8MhN4iQZXM4HGyZF0fgtwkYG5Nf0VmzyGD5FLxQio2GCqEYgKbs8Z826IwEJY
 fHi/2FaFj/csehzF4z98QOiRqolclu8gpWfJS8qxIM6U1LwsmWDgxp499j5/w/bAm25vUuG4PK
 3uz9HT+HetOIrr/zSbBOGuDLrTWl9zgwRGlw9jcg9KtFNTLsnwBu6tlffoAAAA=
X-Change-ID: 20250625-qcs615-1ead9e48be1c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750838127; l=1342;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=UXLreCEKENzP7lanGUV4Bm2PCN0o7P4FxkHutEz2K/Q=;
 b=zOJ9RBOaAsOdSchyGpLOO9QG2X9eXdpcnOMYFCvD9uAjuMLw4Um/LHvxErTSChn0uGwr/oELh
 q4aR3DR33VSDy64WHKWRC3RtkCPa9KenJD9kFDS8nptN8660HSRZHcI
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-GUID: bz5SM_noi9ufGGlSnPQbXcvbpeu6kOXw
X-Proofpoint-ORIG-GUID: bz5SM_noi9ufGGlSnPQbXcvbpeu6kOXw
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=685bab74 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=EFI_8_61vd7ygjqh7MsA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA1OCBTYWx0ZWRfX5AQqxXnVef96
 TfNNhrPz8cLYUZ9gap0snHK+3yyPvbS4RUEpzz7x2r7Z2Ekmy96qYvj4Sk4NBM93n+TwbO/fKqV
 s0Aat1ofbU5QthW0CXLSRg/DFb1Oko7GofPStbTB0/teApPVG+z7UBBb4R+7bjVBTwmVuSD4Kf4
 IyCyJd8OEb1vPCyFx/EpbCsUAov4T+fG2NzniOohkcHuUmUX6wyq37QsK714eCFV85cDOKXjcHk
 BvIJBH4wNVCnW0EtRQSpIdRPlcm/Ay2jEO9vQRYCtY/mjcGCmpfAGSa46n4dbV3FAu1Ujrkno9P
 OUtnz8QVW0/+Edc4H6ACOXwF98jDU8V3GJ+52mjTcgpxYzDb7llKgSBgGdkI+sYNOfVdeqc7ZvG
 SVh5YlGP1fXS3V834O6qxwQ4LuT3YrxnRamXWCQ3dbKIXt2p6nT0bYNkSlgmSuaVLDM9rsUL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=980 adultscore=0 impostorscore=0 clxscore=1011
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250058

This patch series depends on:
- PCIe
https://lore.kernel.org/all/20250527072036.3599076-1-quic_ziyuzhan@quicinc.com/

Changes in V2:
- Correct the version metadata of the previous patch.
- Separate the modifications to the DTS and DTSI files into different
  commits.
- Formatting: adjust layout based on reviewer feedback.
- Updated the email address.
- Link to v1:
  https://lore.kernel.org/all/20241203060318.1750927-1-quic_yuzha@quicinc.com/

Signed-off-by: Yu Zhang (Yuriy) <yu.zhang@oss.qualcomm.com>
---
Yu Zhang(Yuriy) (2):
      arm64: dts: qcom: qcs615: add a PCIe port for WLAN
      arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes

 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 131 +++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi     |   9 +++
 2 files changed, 140 insertions(+)
---
base-commit: 025c0cda9c75d499b71b8e02123fea56a13b324d
change-id: 20250625-qcs615-1ead9e48be1c
prerequisite-message-id: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
prerequisite-patch-id: 37d5ab98a6918dba98ef8fd7e6c91ab98aace170
prerequisite-patch-id: 6d12fa7481ee4900276912d2a7071a9474e62404
prerequisite-patch-id: 7f2e951982cabbae366b1ff516f4cfa233746427
prerequisite-patch-id: efa688b2ddd5744df7aef40182787ee4ceb90c98

Best regards,
-- 
Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>


