Return-Path: <devicetree+bounces-199004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B23ADB0EFF6
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD2F43BDD5A
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA33329B782;
	Wed, 23 Jul 2025 10:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KeeFg4o0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A05428D85F
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753267026; cv=none; b=hfSuGkk2FUcTLgWnCzinMTp7YLc/usXCo/h4RtrtTz9ki55B0nvEupAYFjbf2oG/9L4DPwwiB39X8E+JTzZLkxWQP2cT5T0Ha+EMcrB6ZBzkjk29f05oCCraumOaa1cGkLopcF/rDlLBm4QTE1YFdBJC9OpKWVQEhIuI//VHmgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753267026; c=relaxed/simple;
	bh=SBkpMsGrGahLmvK5mXf7uU4yJc9wzbgowThkMVVAhc0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FIyuTH8XiOt5nrQRndGKznGWBtWq/wVq/TeI/kcjDovVOGYco+VSgS8XL7mhVKoETiA8yy71NKmuwOE9ugyvkTScea0TNN3pyFms7qYLRmN5a/E0NTatE1mYg/4pqTH83gGwYepJEpUv/WuIk0Oy/iHoQG9yvx9hrvNfOdrAVBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KeeFg4o0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9HDQE030590
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=BZahhtsdxwSGeWMV/+xeQGiaLIv/GIPmtHC
	4taip/PU=; b=KeeFg4o0Nxj8dwDTIKJBNa68K8fXqATd6h4Cpl9NTbJ7ta2g3Hu
	W01t4A0OF545qB2UQFJOLW9/y0cW1SrLGdvzzKCrSbLYa2CSHF4h7V9zGWr8M3Vl
	DefTN7dS8n4he9FYoKYEq+QaskfegakFPyaIHW3gg4CKsSJ5VRwXBkIKz/guov89
	8QCBdR3PlAq9Rg1HQ2aUPld94YJaXW32MQKwUCQcis83Q80M3xWDhTlKyS3MV+/Z
	jlQgUyiD+XhDCdZUUdmqgelnIw61QZBVJfa+ufiv3HudlqIWAh6mqTYOd4vS+p90
	aG5tv+qTpvWh/TuwTzTaiNfdkSwro2jzl1g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048s4u2k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:03 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-756bb07b029so5965203b3a.1
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 03:37:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753267022; x=1753871822;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZahhtsdxwSGeWMV/+xeQGiaLIv/GIPmtHC4taip/PU=;
        b=nDSkypoW/IpLbVyVg3LOudeJtlsmvHgiaoi7ijxnXUlJ8YqZ5/HYwsG1gukS4CxrUG
         NRzSxryxVdvFfEVfseJ/uUtXq/eEVxyCFBj5qBbeb9E1LFuXLPnZi7BJfqDXuuY9fpup
         8QjiulJtQVblCnam7gj6huraGe1sZ1KhElWY+0FCTfur1YuABEIUU5bf/3UKioEKOoQe
         lVvUKC7TsS2wg+l8rf653hhqTtB8laMwMbydNqubbr8Zq+boL80E8o5eS78QL2Lf2Fww
         Nt80EkzHfeXfpcmpZEJYmcGp4IITOiypzg8pQRrWT1HAcg/ZgL990VQFgBNgtvFy0/bH
         UNtg==
X-Forwarded-Encrypted: i=1; AJvYcCVBEJL+979IdQb23896Rw9xPavijE6Gtbrg5ZXbMNXoH+MfyP6Y/4J+4RE3NCvNsNay7MNx6rz44GDX@vger.kernel.org
X-Gm-Message-State: AOJu0YwGsfkxX/oiZqlZmbj2WLe5qX+sxjvyouvpgDRQS+ugi6Zx+NhV
	XnEeieX2bqHcUBmPzanY9RIaO/3dNL52ysvJr64sqDGkich7yinijn78F9MxQ/sSX69fPymy6sG
	5jYHcEWJ/69Y6NCt0y6BEBsXZLY/oB5GXVTXS7AOw/0Wx1XZX4o9szS49A3+4Qctc
X-Gm-Gg: ASbGnctl/3hj8BGsXTzvpxjH9QFjl5uH+jmntVSd/77cfRPaODkCIqhIcv6Pp+5zg+R
	D0jkKn3zaBZjw+sFqf7hIH9y+LYLEG+nCNIe3LjmZ/H4HPTmflCTJoze8gT3AUCE7OiZ3un7vIk
	Ydg52nT21GNAKivHmg/qF0f34DEI0OVkfERgwe2VvubQRluP/RmFk0t6TzZavREq1Zx3iK0Ditv
	fy2Cj5OJXugR37c3peFxkTYGyjWVJS7WpdnaOKKCzqoJ0ApfkCRnFJB9XX5ODHaTcCy8M0TrJhV
	zZG22pMX9xA+wFko4xUO/xqWsl8L0FbQgigoluwrT35gzrarRS6dzDXvcvJNplY+EEP8Wq9cgw1
	zZOPlxHUxhuJwLhmHvitSg+s67byr4G3BZm1OVzNUlwBaUFONaTsHdTu1iqKz
X-Received: by 2002:a05:6a21:6da2:b0:220:ace9:193c with SMTP id adf61e73a8af0-23d491698eamr3826500637.38.1753267022174;
        Wed, 23 Jul 2025 03:37:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh3iuia7Fnxs1Vjrj7taJa5vrWEz92sHlkDtEQDGIqy8QOF964j+qi8wTzRtiCyAMxDjkHNA==
X-Received: by 2002:a05:6a21:6da2:b0:220:ace9:193c with SMTP id adf61e73a8af0-23d491698eamr3826473637.38.1753267021743;
        Wed, 23 Jul 2025 03:37:01 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb678f21sm9458954b3a.104.2025.07.23.03.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 03:37:01 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] pinctrl: qcom: Introduce Pinctrl for Glymur
Date: Wed, 23 Jul 2025 16:06:42 +0530
Message-Id: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA4OSBTYWx0ZWRfX4jZ7hzMpQmaC
 gBIvUd7g9lGVq7fWmf70C/s4kJG8AOvHjuku1FAu/sNvvKJMekQ2i/oXt+1xzFXRcTrFooJZsIx
 C6epwM3Z+bHvYQ0Pl41b8/L/bNlWA0sp5HdxcMUie905WcmVdrWBJrZYki048JcqbOHtNWvbRC/
 FD1JDQl/haV/HYHUf75hIIwbGtq5ubsA3rwamEbCHdsWGLieBnp0uaSSs6Wp2kO8PkdYBRygF4b
 QPUFBATNpfGWsOLvURvwhyBtoKEoOp3avMv77Jsb7awyRz0d8EkeCYYCxkAuV2Z4rDiABBl82yP
 mZhdWsnFhBNvx8xVCZ9ONbfgaWWndmroTb9vEPr0cGkpooBsA8B6ac/OXBSIdVv6LPP9zE5k+ot
 /8jYrDf/6LPTLjuAODhZabCtMKtVev8GIARyuCKYZxyWn8A80kZWCllhWTGneLgJ/AS3R/Yu
X-Proofpoint-ORIG-GUID: gh4v2KZBy8SFyjv0nnBjFdmKBCCtuo3K
X-Proofpoint-GUID: gh4v2KZBy8SFyjv0nnBjFdmKBCCtuo3K
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=6880bb4f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=epAnejISswTQ0IiE-JAA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=946 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230089

Introduce Top Level Mode Multiplexer dt-binding and driver for
Qualcomm's next gen compute SoC - Glymur.

Changes in v4:
Updated bindings to column length of 80 char

Changes in v3:
Fixed indentation for example tlmm node in bindings file
Fixed s-o-b and review comments in the driver

Changes in v2:
Fixed dt-bindings error from example node's reg propery
Fixed gpio-line-name maxItems
Driver UFS_RESET macro updated
Removed obsolete comment for pingroups
Updated ngpio to include ufs_reset pin

Pankaj Patil (2):
  dt-bindings: pinctrl: qcom: Add Glymur pinctrl bindings
  pinctrl: qcom: Add glymur pinctrl driver

 .../bindings/pinctrl/qcom,glymur-tlmm.yaml    |  133 ++
 drivers/pinctrl/qcom/Kconfig.msm              |   10 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-glymur.c         | 1777 +++++++++++++++++
 4 files changed, 1921 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-glymur.c

-- 
2.34.1


