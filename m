Return-Path: <devicetree+bounces-220942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F8EB9C8FD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:29:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E47AB1BC3BD0
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0A1298CA7;
	Wed, 24 Sep 2025 23:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pXOkAyPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB2D25B2FA
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756547; cv=none; b=c0pSLLYdCqfg6mNfRaq1D9kPqoTLjQRQADnAHGzkGh+g73XgT0POxscpGIemUOWo3A5ztZie3SITHDhYSMymog30lKYK0DU/BRB+kwLxjIh/rbHg81xiQEBeVlzlX5AfCkUTzq8HtIvy6K1cF9A1TZ3L5lesAkdyQDaqpK4jUx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756547; c=relaxed/simple;
	bh=iNvBhLDG9ygoIMGrSAjur0ixwelDiqAhu5UHp/R+O/o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FQES0u463MyydhSNMp7Dtf4Dpw3DhXPgDHlCdo/duMsXetWNK3DuD+Oiu+djLe6uipVK5GWef+6BpxJDc9Xhpu9BtJZ/3PhbgH/QkMk8BZATnBo1dCr3hjInT7ceozJFk5vmuMnqxppoac0hHkzA+Du+cAVKZ5tvKgtfGAmaHoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pXOkAyPS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCKSYw025366
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9+l0csdA98QdCq8IK8vG8I
	Wfe5KMbV7vWJnvNBVhQ9w=; b=pXOkAyPSBZXFtG2rliNUD5sQmFFf9FZim01R5Z
	r99r2wPHw2nyj0Q2mPfoVqUBdPD1RFJarrW46tgkpRmnj8GvPqsb4OfGI+eYiRQA
	z5ob4Zv3J1zmNRj0CAFQpY4AUnXigx1GTaqBKsaVMlXYki6dzGNE/pdCpOf9zo1O
	Oi3nCArt74qgdLBZVTWOXPQ9NJujBjhOgxg97sVWBkHbVi+sxm5dyfhar7/69TPD
	3tb40dsM+BpX33k03BquvfgtMfe/LsopH6+vX+JFefBDQviV1nQ/1nJ8Q/1ODgh5
	jIoIsX6QStNrDGP/HH6ZYJpTqxFA5C1Zoth+yQp+yY32pVxg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexbkr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:05 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-26985173d8eso5023945ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:29:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756545; x=1759361345;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+l0csdA98QdCq8IK8vG8IWfe5KMbV7vWJnvNBVhQ9w=;
        b=dBKfMVlOeFKQTAJ8Tm42mI0NjH7N3zq5z1/uS+h4CPK5WehhCRfQIEu5XFi1uIFA7I
         a/jAcPWx0JaaLeNV1rwBPfAlub6OYN/HQoDELN1eyiEwebKCKGz+E242XQY3YIgb4IeS
         1x9suYq9I9GXjnkAYan3PxgDZ3oalLS4GeaKJynvvX+faifqhD+RPw0lSYPmi207gdwH
         Gu/sHLCd+nCurU369nkEBP53oBJaCqC2uW7XFV6jC4JXTnFfrO0M05yyZvubZjIWZlUv
         Q+78L8ycYSIeWUjZobCCoCHzhpC0pwtanpH422pbDJ9Dl3C+Wc25b6U3CwgYMAXQ9pCk
         YX1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXr25oEN+GxI/bjpKz8VPEgz543atRanDj/ZhVgtZzS/KgiPCuOp0P9Y1XkIIDfnQfKuKrHe1fAa1WR@vger.kernel.org
X-Gm-Message-State: AOJu0YzKAHVjg4ogXA36lwj5xzeemfdSePxmtt44Zajaj5HzKyGGxNaO
	FiiZexlq4+nGPt/oQJQX2lgdwC7EMq52psS6+akE7K3BBy8sHQYd861xT0Z3dIJljVRXiWJ3joZ
	mFLf7L6E4ijNa7h6n1RAs9kpZEhG3t2cWsLaUfpruXDlOFHV0DoXJRYzBCuoA/kwC
X-Gm-Gg: ASbGncts41st/hizK0ncsHv8vGHzPh1eYvij4YmWmRmYDgoisoWFTL3FYWCh2z2U+f0
	QXy1RimU5imTLWc7vfbyGwnBMD/JtOO9MvYiN5k+nw3bbkh1K6Q43DYdZcZd/nwZHvEKP6NbG4n
	r1B5VJKA60EQcd1W3Gdfnq2qs5Qvtazr3VgQpdRp5UQiFXtm8Q4me5lYaqReQrcszjnl4mcTpR8
	Wd1mS2Ppbu/nd6P/B5P7oOREsPApJicomQM7eiGwbtwKV6Ge2y7bwlCJZYdw2W/olwv9VjExgsE
	4gDNsbcWeDCf8QfBF31IpMJjG0KrZfDlSie9Tjjs4lLBXu5EKNIyIPz3B0qe39o0Vci1l8RRjH5
	ZVY01ODQJY9jLFnY=
X-Received: by 2002:a17:902:db01:b0:272:dee1:c133 with SMTP id d9443c01a7336-27ed49ded13mr14244205ad.22.1758756544867;
        Wed, 24 Sep 2025 16:29:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUEPADcwlddCviiL0reaYKNZCOT/tRIgVAPefqNdpaaX6oQdCmVpOJj5ORnG7Clz7s+SorlA==
X-Received: by 2002:a17:902:db01:b0:272:dee1:c133 with SMTP id d9443c01a7336-27ed49ded13mr14243955ad.22.1758756544429;
        Wed, 24 Sep 2025 16:29:04 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm4292825ad.30.2025.09.24.16.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:29:04 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/2] Add UFS support for Kaanapali
Date: Wed, 24 Sep 2025 16:28:59 -0700
Message-Id: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALt+1GgC/x3MUQqDMBCE4avIPndBpVXTq5Q+xDjRpTSVXVsE8
 e6mPn7wz2xkUIHRvdhI8ROTT8qoLgWFyacRLEM21WV9K13V8ivN/I3G17YJLqJzDSLlelZEWc+
 nxzO79wbu1acw/fdvbwuU9v0AMNSaCHIAAAA=
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
        yijie.yang@oss.qualcomm.com,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756543; l=658;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=iNvBhLDG9ygoIMGrSAjur0ixwelDiqAhu5UHp/R+O/o=;
 b=259J+ycLevBFX4HiFzgSeQV3oznulyjnT7EPeTQadK+TvFBBkL0cJtcubNHatuDgWE2EAWeFO
 wSvsT6yl5qzDNQJe7HxhU/TDFOjakz3gnGHdI2MRwPveN68RqnE3bS/
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: HVXRCWxdB0rZwVOgycTyVsH_ZOgb5hxP
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d47ec1 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=YZPfJuuz2T7GfvdrPZMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX3A8qyC9nsES4
 iowfYqfgCTBY6sIf7BywcHKGlU4/GztVMHCh6nMlsiGNES8lSJ3tk/7J3B64kDvFfDyXqXqcf3b
 MG2RIGUPmaWIs9L1tn9WH8FWzMmSkCk4XXanhGJ98zYFUOMJguV/UdKaNBdMoUJZLgCiFgDDj60
 pp00HK0/wpjU3z7BHz1Jn5xsHpFHwKVH5PSLAthPRTFx6SllGGLQkzEpGNBUm9LhP9k2m03uWPa
 H2kBb1jgHTA5vj+6GTb8HGDaSWqA/24ubDwdKFMTNK7qdK42LS71kUBaKWXBPdqTPeKI08JAOKi
 sboCUXs2jY8xf4GU40+xAUulxNzFx74YPYPeMJPt5GFWLJw6wy4tttRpmVBrNFidoJ76yTRNjAg
 LCeiLorD
X-Proofpoint-ORIG-GUID: HVXRCWxdB0rZwVOgycTyVsH_ZOgb5hxP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

Document the Kaanapali UFS controller and QMP UFS PHY.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Jingyi Wang (1):
      dt-bindings: phy: Add QMP UFS PHY compatible for Kaanapali

Nitin Rawat (1):
      dt-bindings: ufs: qcom: Document the Kaanapali UFS controller

 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml         | 2 ++
 2 files changed, 6 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-ufs-476c9fe896ef

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


