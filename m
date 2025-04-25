Return-Path: <devicetree+bounces-171009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 781B0A9CFE2
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:47:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B92977A807F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53DD821147A;
	Fri, 25 Apr 2025 17:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sb0Gs5DS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B973D19E7FA
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745603234; cv=none; b=EK0zHfBLClWmYpg2hLmRD0nQoWkoJCL3brKCqTv/862RyBSF5wgivVCRn3TeFm5bvLPXhLcXwSOAHjNKE9z5YRTUfngJjDeAdUwNysXZ6HQSQryziTuWkiaXghMVoICS+dehDDmOVjP2Mkc8WlB589Gbs5sLVyuSoa4ntBYqn2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745603234; c=relaxed/simple;
	bh=J08TN0ztRB7ngJ2Xbw4dsWy2SXPRknR9RhUG+D0mpHY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hxW3dZ2BhB2P4r8gExXs7vee8Y5NPQUTif2DKQfi3JObWDqopGW/K9kdoMpwONdS8C7Uj8FC8vZ7R6KSRy0rbcP6YCffVnl8Dy4ltG5PGJDJg3l0NkFCplbkazamy8k2XMHpsfubPA1ElkPW2jRnCci7hmX4spO5+iVlgJTA7tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sb0Gs5DS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJrou011053
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S9JEODdv7z0HyQoe8gmfrEdwLtIPX7H4ORLuaqxrBCY=; b=Sb0Gs5DSSnebJTdu
	4BFchMWOjEE0/t3PszXoumzDdAkbREcFkxZMObDKxurApR65XoWnli/37EbH72yo
	QdgmvX2e0TjNFLk1GcQ25hGJede+M8ONzPwznWoqqfqPTW1j6hvyEwqUyyq2bmXS
	O2de+4/nSPLREmLWKlhrzaMadHwe61rY5pniZNIrB2YG9dlBcUw+ASTRc6olK2go
	A8MBMfWEsY64NHJ7MziFAkl6y+pMlQ684oyYk61Z/JgCc3QkKLgZU491nhHZj6Tb
	ToW40fkBIQ03tEvNR8zH3dnwVuPdZcyuxfm1XlLddMOmEQ6nX7PiicKseKn1tgrJ
	FWHvzw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0j177-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:11 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e9083404b7so44074396d6.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:47:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745603230; x=1746208030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9JEODdv7z0HyQoe8gmfrEdwLtIPX7H4ORLuaqxrBCY=;
        b=dWvwk0Z8rw2jU0nTeCqGEXN+xkqgzFuSzOzLOIayFMkgQ7b9jJ73ZU/ku9gMeEBK9t
         g853RKmRXHZN2pePWLYrxtDdF6pRSTXtswKhVsDEKe9tqz8ECnbmw4dB2SEwW23vl7Bq
         /yRLOK7OzbG75GnXBkAX3g6nfjwDgOYjeml1kAIYcWHpdKdFsvebN4/wqOtRvMJF6u1U
         +hvKRJkwIl7Tjn1sx3YAltBeM0f19pfzDI4FW2qv9KduSxRZFz2jK4excqCUN2Vhon2O
         iykamB0c6yXkOimuisogsV2NsLPNjn1Js9fI/cYuCwguPF98GaNePRp3gC9A6Sv7MghH
         hGwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXHmYQnT2l1lNNfbJCLGuekoJK5w/dfeXoh5WaBbRzLB9sgRqojr4Ww47IyiVs8ael+bifz+3UQbho@vger.kernel.org
X-Gm-Message-State: AOJu0YzndnMrzRi3PcvileMh0GQnnWuWhHluQnTGiqCydpUsyu9MUWCd
	igXA9BzgE7GguR2HB8NN6vHkbsZg2hT2UdIE3yrzWIdr9iSShLm/zKVh1wGTIq9wtexNygjGV3t
	z4rxTnhLkpU17OArJ+rS6lXLCWDcpYKjKkXlSfbRmrk8g5Q0EClCGFFMUg8wQ
X-Gm-Gg: ASbGncvWc0qPJgwRQtGY66N1dGfS5UyjVtg0AwECnfkYEm0rKDDy0ojgYp+E9bwTT/c
	SHczS3aT1z+aWFEYgwt9w8jLkt3yvHUJFS3sl+pxJFyjSADXMz0TvSCSk9yTyW0J3PEdWmGyNc/
	ApI3oLY082+OjxnJWhGGT9B38uokYZANfmqd7XqM76F1NMOx5v5DjbA8EC6XeYxib7VwcTpxtlw
	e7ZUKz39rxFC3PuwzjP+6FdRSqVXTyJceLRvPPOwd6bk7bHLDwLkXGahtTQasjra2Ts1ssTzvC/
	40pltI5mlKov0+HbTkDQiclcNLVxCKgpLLY5DzLCo74WvxC9w7N+hwB7IL/4hPKSnO8dpl2SNa1
	9HP20C0JzcHhTEpYEIAGMJk3h
X-Received: by 2002:a05:6214:76c:b0:6eb:28e4:8518 with SMTP id 6a1803df08f44-6f4cba46035mr54805966d6.34.1745603230601;
        Fri, 25 Apr 2025 10:47:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIEqY7ImncnVDphCtbnSGLOWmanZeVwVNunDzbKH6dvD3Kbv7e2FBrG3D+7RsO/6h6RuRDpw==
X-Received: by 2002:a05:6214:76c:b0:6eb:28e4:8518 with SMTP id 6a1803df08f44-6f4cba46035mr54805586d6.34.1745603230262;
        Fri, 25 Apr 2025 10:47:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bd4asm673193e87.84.2025.04.25.10.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:47:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 20:47:01 +0300
Subject: [PATCH v3 01/11] Revert "dt-bindings: mfd: syscon: Add
 qcom,apq8064-mmss-sfpb"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fix-nexus-4-v3-1-da4e39e86d41@oss.qualcomm.com>
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
In-Reply-To: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1372;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=J08TN0ztRB7ngJ2Xbw4dsWy2SXPRknR9RhUG+D0mpHY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC8qZUWSwuEll7v2nmDp8IdjOzzGjkt+i3ZClV
 2s3mTPvyBmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAvKmQAKCRCLPIo+Aiko
 1VIeB/9B6xPFhmfAsHDltpJxU10pORyD/GZK0TKmUo4EmLcQu/iAUyp7FAAxQ0dV2CKtKv3Yssc
 e+MOgqzwAA7xY30vFFnLWNNdVze4SQm2ozgfZfBU/8A5dRaF1qWhAZhhWuohkpuL0dziErXzkAS
 OdiHeAiZMJ9WR/co7mEq6OxK+gQDVOODLspiwszb1hushVDHWuptWhejp3Xca+Ndl7cUh5eFdrc
 FuBMaXzKBcz+r3bbd7Xq/tuMM1Jh/Y/2T4duIOaUb7FvsQfnYc/Js/+C1MiF64KDlJgARAvrgZD
 xktTjtjH5vqj1E3O5j07YJNwO0JpvH2sn2nuPHnhSb6Xv/GP
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: xfO_prVuCqFOTFekKY2KljlBtcf8KglE
X-Proofpoint-ORIG-GUID: xfO_prVuCqFOTFekKY2KljlBtcf8KglE
X-Authority-Analysis: v=2.4 cv=Fv0F/3rq c=1 sm=1 tr=0 ts=680bca9f cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=LOr32vULjwKzbL0q30IA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNiBTYWx0ZWRfX7zoUWhS+Nsgp J1zRwCMHasigGOHekzI0uFOgsnrtilKcDa/gxERmhtLfQFswXmAKrtOV1/9d4kNPkqG8vzdYMoH fl9wddjWne1jmfRLa+uL7jUfeEQKb73YXvFyvp5sFiL9Tww6UskKhHrgPGRpyrNg4oKqCcO4BvO
 bBp58lD+b/dPVzQJJtMfpSuNFAFQr+qdCulClhPuOVN7hxKoev5ypT0abhIwPUDqY2LyoR3oquj cOvAPSLbXC/OMQij7CBUPWhYN0/x8LiyJc4BAyZKcLODAvekGuK0u58NhtVTQGBVMKzOlSgriiL ho5uc2g+YT7ySqLGLu7v83gnmThZ/AaSR7V+Yj1C2nNPi9Cl/yO5LizaIdejzLuc8muCUByYpWV
 a9eC0tC7qcjiNvZIKCuyEjUi6hz4fqXfR15km8h5W1rlqBckhZWs+VSr4yQHjTeWb47GmS3V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=999 priorityscore=1501 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250126

For some reason Lee has mis-squashed two commits, picking up one chunk
from the first patch and one chunk from the second one. Rather than
trying to fix it, revert commit 2c8de7df7418 ("dt-bindings: mfd: syscon:
Add qcom,apq8064-mmss-sfpb").

Fixes: 2c8de7df7418 ("dt-bindings: mfd: syscon: Add qcom,apq8064-mmss-sfpb")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 71741f06d2fddd2d4fb6b69c1cfd2d449ce73f64..c6bbb19c3e3e2245b4a823df06e7f361da311000 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -98,7 +98,6 @@ select:
           - mstar,msc313-pmsleep
           - nuvoton,ma35d1-sys
           - nuvoton,wpcm450-shm
-          - qcom,apq8064-mmss-sfpb
           - rockchip,px30-qos
           - rockchip,rk3036-qos
           - rockchip,rk3066-qos
@@ -202,7 +201,6 @@ properties:
           - mstar,msc313-pmsleep
           - nuvoton,ma35d1-sys
           - nuvoton,wpcm450-shm
-          - qcom,apq8064-sps-sic
           - rockchip,px30-qos
           - rockchip,rk3036-qos
           - rockchip,rk3066-qos

-- 
2.39.5


