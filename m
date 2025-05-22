Return-Path: <devicetree+bounces-179395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3E5AC01BD
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 03:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 192AD189E5B7
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 01:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02763182B7;
	Thu, 22 May 2025 01:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CB3Weyw+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBAC9460
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747877709; cv=none; b=K6TMVK6MA3APJk5544ZydbIIgtjCn5ZgiU3Jyg8cOXfLpg0568J5R4M5W9McrehX1u1/Q/tpN8vQP3xL1kR4t7pSR7K8xQo4CHTEJUOH/F/OOqEP3BaaqZ082k4dh4jvLpcHkhc6DHYbOjM7OCU9cdYP+m7hKI0iE49VmNHmXFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747877709; c=relaxed/simple;
	bh=cMCnnc7X/yklxiDU9hwwsSkevTU+xRlusst0496/U3c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MEvSex/+L89/z3h492TdDuR6uwPfdDnu1CLULadvMvmPCe3zwYsZ9iO9f3GNqUxT0euuadNrmbdiOqFaNePOOsvHumej+V9B2PkPbqFXUri3PBaur+PalgnTp6vrKMvC5GDNFY5OpiNJZXAK7zZjkmrw8cFjvDGYSDcYWwWJoaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CB3Weyw+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LIPR0c001233
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=HPUGdKm+6wjWn2dW0R+KWWtLOsj1VrZbuMm
	juk7/Syc=; b=CB3Weyw+sfP0cfKIOVfUqmpzc/ZTtNMuemRT6UZvoDlbzr32mPa
	4hGOXCLAXS/fs721n19jgwFt3fjQW356eddsJrv/y4C6OPL0WX7gWUV0XwDcZ/6k
	jkmn/OlecZ/37kf8RioM+8m2q6rNX6iA6wrGc4ZkTDZ3gF6vktcPdFg46gkgZQke
	6qm7eX74b/04Mf2aUlY95msGMdlu/14pcVQPfsQ2+Q11okR48x4bAFu9bx6kHiug
	jJp+vZoCePMCcAvcdkVJ/05hSF8FP22YEGTsTJXM8ygOi703owddk8FiVbzi6ftq
	UDi8jB/+QOZb3nDSl0O42e6APTkholRsi0g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf6vm84-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:06 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-310a0668968so1142010a91.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 18:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747877705; x=1748482505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HPUGdKm+6wjWn2dW0R+KWWtLOsj1VrZbuMmjuk7/Syc=;
        b=P/+Ags02KHo+ZazLrTYWR80ovmPlU0qDKpyuAyEH9nQujwwc0r72AhBjZA4MzlSTCx
         1zwQBRJgeoRlxDuFnjEA037DVYiOQfIO3r/O4jkMD9jPM0QlNB7/skYUa5NMVW1ebJAU
         CgjAZtRqhGC5vtd9BBt0AaJb6lmU9oxTsJHzLp1i3/TEPmXioqYsZubjtex8sDBs2im4
         g6K+sA8wWuhA9MMetQbebXMNn/uHlK+VpapYFrtSt11IXyEpQkkJ563S98JqQG0mf+Ik
         0NXEYtBcV9Bqj8PMwxuePo7ggZm2O+KlFUQK+Gc+dYY+RsTihHx8zjAuzhyPHXbksTDQ
         quzg==
X-Forwarded-Encrypted: i=1; AJvYcCUjshrZBI+a0acHuMf7xtj8Ua0LjFRAd8OgVq31AbeRn9EmyGB/3oi+jo2T38L7qrtIb4nkd0kj7HQZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzBioEWEi/5C6a3W8J0U2PaVCZhk+YjoBDQSKO4FHxJtIWCW72L
	x346G7oW+pLnXpQKX/pLr9KgPT92X7O9FN64VCjC5keRZAGJ6fnT7MmsQcxFhYTqPVXmozFgRw2
	EqaLMr1UKLvDwYV1hmIgrAWayeNb5QI5mODaX8eHZuRYnkz3Ml4MW+tCABxfEQSsM
X-Gm-Gg: ASbGncuGswVk5Rv0KRW+YtzXZIT1fjbQC+e433KkFDoL0Hb5jTBcJeQ3yg2DCtyoYXB
	OGQW6J+t+M0iAZ+9xT2S70QV/36UhtlLtG8YhadGdxLXYiURrB3UhWnD67u/whnTerDlaCRZa2D
	mDDIG66bIKDqGjWdXkgt3q+606HBJaAqzJ/carn9Cp9iw2IZXr2V97m2dL0AX7bzq0FOVdgqg2H
	C6iJyVGR+nJbeXKX1dCIlX6Q0N3MtWI85773JUZZKo3Pjs9RnAy/Kaq5/MWn6PqfeVdfMTqGAaH
	xCuecRHOhP9nZRGKkHEIDPmA9S/VI7/dR4Y/jneux4SamF5oG11sEo/hahxA0w856vzow2M=
X-Received: by 2002:a17:90b:5750:b0:30e:3737:7c71 with SMTP id 98e67ed59e1d1-30e7d57e4e6mr33408574a91.20.1747877705476;
        Wed, 21 May 2025 18:35:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3oA7UpKoPxzuimQInRPDM0fZl6JIUILi/4VKjHEG11sIfyclQQp1d2zav0ocl3qvvA5YdVg==
X-Received: by 2002:a17:90b:5750:b0:30e:3737:7c71 with SMTP id 98e67ed59e1d1-30e7d57e4e6mr33408543a91.20.1747877705134;
        Wed, 21 May 2025 18:35:05 -0700 (PDT)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f365d45b2sm4341488a91.26.2025.05.21.18.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 18:35:04 -0700 (PDT)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH ath-next 0/2] wifi: ath11k: support usercase-specific firmware overrides
Date: Thu, 22 May 2025 09:34:42 +0800
Message-Id: <20250522013444.1301330-1-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: dTYW4zVcgNsNInuN_7TaVsqdBZbg3q7c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDAxMyBTYWx0ZWRfX9mbhp3u94pbO
 qPuJJ0uROBUultChSdYi8tQdqDBK6bc1xjhNQ8HUlwSEARyIiTsAtbomZYr3bqzCMUleAUkbhLG
 9ACKvIoQEgPxpL06pkuIjBkQHxJYYPnJk6hYWJMlFqaaSHn/1+oMD6RXLuTd2zE0yun3bwZfD8t
 gXdJz2WpiGmFt/We57q07YMa4QDgGwqXA6YZvPL4ZlGWWN/0nNJFXYtqM+wcjUHEeCmBNz+z8hz
 7NIF7CFg3hGdJmJrhVLBvYBNnTSVdeDDas7IY+ZI3RGcvOQ5H9bXYFpGLaW02QUeXLuyjYIhQFK
 8UVEG6nPeTc4jtCHuGmg4sPYZq9d7OAMrnfm/cu23nNJ5sooxPoG8T8gC4ZABqfjn95snCtbWlV
 3ePRSChuJEZvHSKI3Jxb+/6YARDWzGR6jCBGwTn1bZAboZ6OEwX64HX398+Lw/0qvRosZXIr
X-Authority-Analysis: v=2.4 cv=fZOty1QF c=1 sm=1 tr=0 ts=682e7f4a cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=5mkN5bLxXfCjVL2fFVgA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: dTYW4zVcgNsNInuN_7TaVsqdBZbg3q7c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_01,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxscore=0 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220013

Introduce 'firmware-name' property to allow end-users and/or integrators to
decide which usecase-specific firmware to run on the WCN6855.

Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>

Miaoqing Pan (2):
  dt-bindings: net: wireless: ath11k-pci: describe firmware-name
    property
  wifi: ath11k: support usercase-specific firmware overrides

 .../bindings/net/wireless/qcom,ath11k-pci.yaml      |  6 ++++++
 drivers/net/wireless/ath/ath11k/core.h              | 13 +++++++++++--
 2 files changed, 17 insertions(+), 2 deletions(-)


base-commit: db5a2f8ef8d4be926d29ed62182d003110c1a6ca
-- 
2.34.1


