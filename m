Return-Path: <devicetree+bounces-220944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 971D8B9C912
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:29:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4AF08170A67
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F9E2C027A;
	Wed, 24 Sep 2025 23:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GaSp1RQX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FF32BD031
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756550; cv=none; b=EbPoQVl5+YMAmysZwcXkvASRH7nEZv5LTxsJeBvA/DwheRIV1QlTZTOxQo7fu/7gQRqDg1lnt+8v7zCV4QbRSYC1Cv+iuQYamD4ThKcCYS8f5D/IULbPI6QygPKEJwTmIwDeTetMadAWeUfHQ+c6Au2Gnt2m0PIoXw0MJ5fMIF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756550; c=relaxed/simple;
	bh=1ixz4E1H2pIiXzLXyMSyDlIXCkqJA/x/F+DP+KNf3Q0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jmY4Qj3b7u0WZV0RoYg3+UC3t8aaTsu43CRLK2+QO8QlOgGglp9CFczjXHp1shkzLJtSlYWqhwEgKfQRAa1S+0XUkHkcFgJlqYO9luc2vMQa8lQgN0y7obrJpZhcGCfpLl27X0j0FeWI9Y7yH/fKQIHWfLsxTjKCACscD4yXs6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GaSp1RQX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCrF6j025084
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yoYprIzQpGEht+RtS27992YaizRl4nrFk0NKTW3GFWA=; b=GaSp1RQXuPs/Lo47
	6bjaqR8s8oESCs8ROTbo6wAzzzVWbzxoxET/0GlN9dIHC767HknaQBgeHIsstVTe
	my3uH2C7bTc60NlxnpA9AaDAwxDWXcnYYoRY2mUIlfXZBTldGLXruRKtF8JBzdu3
	nReElghga/YDVLdy+vu1TEI/mN8puiRQk9iiSzniQw0pV/0WivLcLSVmOieKycwV
	g6JR0BPiS7dby2qSK9Yrbkb5ZwYJBLP02RKPaghoqXjjlEWMRVQVOTRNT8jDsuKV
	x9ZoKSY488Q0ovObgwBNXdTSebIyUDvLnljn8IOkBK8Byfp54XFfEoSt1UHdGWPM
	pYNC1A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexbkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:08 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-272b7bdf41fso3554945ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756548; x=1759361348;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yoYprIzQpGEht+RtS27992YaizRl4nrFk0NKTW3GFWA=;
        b=vz70Vn/Gr89XI403BzOXXX6m6zuFteo7FtXYWEvKz5lPcpL3MxXtMbZ7viZ8zcbVDM
         xIhAwQZ/IO448XVXcSzGCXuHxqlQMpixMvvFmlRCrc/yvUIfKXXGKVa4IWhy/wqKyE0V
         /ZhtQENeuY2iyLZeqWr7cPU6SD7VNmq34F0NbA66iJnV+lCoBym3yKgg0o9sP7virVQL
         nKY0m7yWctut8DgQ9WTbUiHgJlqwC1zvovQEEXTstistWVC8TR+3VEh7NFU5ZheTPd5T
         hj04oID1+HyJd2D4X8m2VPdGqQrX2FrtW1Ky9vzLgKoLO+y1UFapN6xgG6FtGr23YLYL
         hqIA==
X-Forwarded-Encrypted: i=1; AJvYcCX7PzIrSxH6lNFTLEaVObvnmZkTgdAsvAZ+RBtKPmg/L3doezy01SyEhAuZuVJhg3KldPrts+Mp5SZq@vger.kernel.org
X-Gm-Message-State: AOJu0YwrnyFTNYZey+mIWBqev4/uPZgdumwX/e8BWtkdi2ylDxVVfMyu
	retPz/ugd+uCQ5EsKPQKEYJzFCjNK+Rfa4XbSxFtlJHPi02vgjYlbxVJE/VzaKqWVrnYMlRgnCs
	vSc0oA95UIHUVVFBVp9nxe2AWMBiRZbQ0k7Tz/ixOGysNfTfhxOnkfrlKknwlR1xh
X-Gm-Gg: ASbGnctqRaX1TMOjbLLbPdpSgTA+wvI4LUAGNNcvX8XFhJoOtAT5EFwLE59N6tpVA/C
	WTFPpYOSeBLTbW9u+tW98jQEOUl1EStiRv65H2sE02E5Non1jZUlvncrUMH4fNX/NpdkrwQSvdS
	8Id5VOZkkMj4JqHl6dDUJ6gIEHVvc+gQdDb8HJEO1DgX/aThU3SJU/+kxwDhpB1/byWNFizgWl9
	NrlDfFrpCInX+b88z10WWE3o1Vxc4ROVlIpuZf/3G112U/+R+UVAPa1v9F1isXMr/F7bqvRG6BI
	GGqNg0eau0h5L4odr0TdYerWzCo/kekP0qQ/l7RDG3RLu++sTq5QKZ1Ol9b+0k8tMsmM2eklx87
	XQg/De8X824C8/p0=
X-Received: by 2002:a17:902:e749:b0:27d:6cdc:99e4 with SMTP id d9443c01a7336-27ed49e6cacmr15277855ad.21.1758756547566;
        Wed, 24 Sep 2025 16:29:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgt7aoTizG+JzBBCRszUgmA8ZQFFFV6kXdzPC21oHMm1YuShUXyP6D9IxHyhwdW2zXjSqSjQ==
X-Received: by 2002:a17:902:e749:b0:27d:6cdc:99e4 with SMTP id d9443c01a7336-27ed49e6cacmr15277545ad.21.1758756547098;
        Wed, 24 Sep 2025 16:29:07 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm4292825ad.30.2025.09.24.16.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:29:06 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:29:01 -0700
Subject: [PATCH 2/2] dt-bindings: phy: Add QMP UFS PHY compatible for
 Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-ufs-v1-2-42e0955a1f7c@oss.qualcomm.com>
References: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
In-Reply-To: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756543; l=1139;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=1ixz4E1H2pIiXzLXyMSyDlIXCkqJA/x/F+DP+KNf3Q0=;
 b=e4+RfHwGDQQ69QoAGJgmiuXeCPI6N/wpSRjaFCHERX+3Y9Wd6oeSiZH9OuG6nj1rSJ9ctggJX
 nFb12dXQbf5A+22joIbSiJNqgjR/D9hN/PK5aZ9Cp+UdhKJ5qHcQo4N
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: EGIoJ_30KJFBCzRnk3iPltd1o1XNzyNB
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d47ec4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=CSN1HuAOl2xf59Ui8-YA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX70eL4YmYFT82
 /QkhFTmqXtYp0gbmGMjYK3x9eeskdbc20S12xpW2MYFNuuBG1fMYlnIHqxPKgY1tfTzrDnNwQIN
 YqhKrElo17EkJOEPgt+oyLFXvkwA43+zdhZz3Ow6AQeTx02rwfsjwT+rkzq+JfAMqAJOv1ikEqp
 kji91+rWNDKQkYemvNFgdwLLeVoZONbGjkXDjKcz+CSSqA5PrZhdU2cfbRrjk0IH0map+abAMWY
 nWBMpppV0zoyG3ygiJjeGv2RrNy6cvS57tpUJTCbW4aVX4cjRZx1KVEbHQUNyV7uRNXrIetNh7s
 YOxcVJAZyfh8Cmbpk1ZXC9FmiQxdsu5VkGN/cT+3+rPFbmgPmBFMn7Yxvb+NDpeUbf/E6HlZxyl
 LQtG7GaG
X-Proofpoint-ORIG-GUID: EGIoJ_30KJFBCzRnk3iPltd1o1XNzyNB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

Document the QMP UFS PHY compatible for Qualcomm Kaanapali to support
physical layer functionality for UFS found on the SoC. Use fallback to
indicate the compatibility of the QMP UFS PHY on the Kaanapali with that
on the SM8750.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a58370a6a5d3..fba7b2549dde 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -24,6 +24,10 @@ properties:
           - enum:
               - qcom,qcs8300-qmp-ufs-phy
           - const: qcom,sa8775p-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,kaanapali-qmp-ufs-phy
+          - const: qcom,sm8750-qmp-ufs-phy
       - enum:
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy

-- 
2.25.1


