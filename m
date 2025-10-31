Return-Path: <devicetree+bounces-233695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D7692C24D57
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 12E9A34FD57
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA5D3346E7C;
	Fri, 31 Oct 2025 11:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P8rN4qxx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tr1VXJl0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFDA346789
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761911305; cv=none; b=tXN+Ye5cNavf1/7u07YRfLXR7gzqKXSOH84SZwVqc32B9rxXz9y4/3dVm3dBu18U9de0spuZ8qdNJggm3SEO8O7agQ/cTlgCBQ0c+nnV1ncrzxWd52x72gF7YLEdY81nAe6TGqprPsPxWA/eVoDO1wg0SsYLgUG6QgWHiUZfqFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761911305; c=relaxed/simple;
	bh=dItJdgHUJs1UViTcltNYdVRQKbflbnmQjHFvKJeVGJA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MqIDB2BODbSyAr5cK9BPXVNia+kANj6R+SNWqb1ry07+6Aai3gPBxccDGtpnfbH4vQ8IE8xwcWcx8fl7ghwFUtLZshKvPn8V1qR5dqYtEngC12T93USMmcAP7bfc0ioPLe3G5Ae0RGN4ALJmhuW396HtLgCeCqzX5dZR01I+vRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P8rN4qxx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tr1VXJl0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V9jQ6f2471250
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=CREb++Zs7HHNjOQFOKPIizCrDGl0LQjv6t/
	Y+I+Q4V0=; b=P8rN4qxx7VmSIKd4cYMyGrZzDcDD9V0DO+LHGZYh6a+YBb0rwOn
	qFCnFDVV0NnL8VALMM8N6X7Ye1dY5x98HJ0yddxuM6VtQUXclxlCGQISmfqpl5WK
	IIcKJiPxfSEdhjxlhFh2PHuvD0W3mqOrwZ09l0/bn1vQXo8Abj04kk55oAhBhLna
	fOc6M9gAdkN4cV8SXgoXMJgj9rlberGWiXQWFCzKgU7dzi3S3PlDaA/KbxzQgy8g
	qtuinX9CWMNVpa8d6ImwbI+h0xrw+kVsMXuCQkw8BB0Tnf7wuXWF3SlKcuJGAvZY
	8oShi3Vc49EJSBHBy356qTCbcVlcy7zz/+w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4trv0a9j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:23 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed240c3d93so18536791cf.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761911302; x=1762516102; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CREb++Zs7HHNjOQFOKPIizCrDGl0LQjv6t/Y+I+Q4V0=;
        b=Tr1VXJl0FZVkD+0rJC2o4jsnuKafhMOxaRJDyn3rNq8Y7BtCrFOSM1S5BDPjzFixYN
         aYrQYjAcA3QKbwts0vkDoZ14i6G2wdhVSsng3uuhOQmS77agCekAerTIF+YcvlngjO/P
         /1vXSiGMpHlcnrR+g9zgFVYuZWeicVy+J3IckL2+ureUrYJ1fJZbG8iDxztMEm+YTiEK
         QN+3A6PGzc0cPpEO1GNoqsJ6NAUkAJs2/sAkE/NH7wYNHTRz3wafaQPUAoRT4KZP/tk8
         XEtbzNP2FC44d96FhdnxSkr8dnuWDwgooEec/H3faaAOeJMMdFE/81NP68fSJzU/1fnt
         SONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761911302; x=1762516102;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CREb++Zs7HHNjOQFOKPIizCrDGl0LQjv6t/Y+I+Q4V0=;
        b=U66NwO5aaB0vc7uM++Or2AhLOFJSiJWjDZ2Qni+grGmTA6Ly1zrxEB9ovd1LwT/clt
         k9neGHL0jNm7b4+0Okgk2Pd06LONiw4GYG9GIrlSNX+8aYZOWNb/couMksImQJJ2dslF
         fBaSdu1iPzDH7j2+u+clVi3V3Fdt+sZi/ZHRkYcHcwFYIKdhvNxcyYKHJ+2NRnkNXc59
         eIt6bNzbthZC1diVwRhpM/7jfzf0/a0vVUi/VfVO7VvrGD5KbEd33I6WjLukovQIvdpN
         qkaWUXAEw/2MJYFHg/LXQj/hXQzl153apoinHR0eetEqZeQ/hFdgQjwoGuomj3WUeUhY
         eSgg==
X-Forwarded-Encrypted: i=1; AJvYcCWzhTotk+07K3yh84hyV7YiSytJxAZ0QpVac8b4EpD8ZslnojwXUBcNNBY8p504Yfq5qVohgICtaamm@vger.kernel.org
X-Gm-Message-State: AOJu0YxT1fiRsI2kOWV97puU3FwfKS5k7SpDPsImlF52VmBuIzGGsq2t
	IVJ3WTCuElNAYDLHcEn02YsvL7xITGpHUhbrgb8/H7iV+G8bERaudN8RXSQ0K7Xnp6iKRG+PfsG
	CiEXIV8FlA4YbPFF8krXtoepRM7nzqsiH1KuBRXJVDfQIaxQdE9Evu0KWzQnMYH7H
X-Gm-Gg: ASbGncsI6uSgk/vdyrNmmZZ1ltQXsWsu0ZvFnf1c0XtfGhWRLRSNuXPYXVkUjwOJU2V
	G26pegPghm4MDZjA4j4tkVRBi6IYLuSbzL/CuOuvJIbYapz3NDbR2A8UaM2HLG9LNGPXMhZNIqI
	14SgKvUaMoFagRqHqW7lZOLVGE2dc5jWVqh29z3Oc1BT9r4RZHtD195N1cV00nzZR+mxoV2MvpP
	wUySXRK+zUB9Yoa2TN9o0NdNQGh5U6zUhkTLWza6zWyOxdWgOoZUsothkF7KrtSzZ7zi+wXh8t8
	MCjodBDFAOpMUUeHeMpn9NShMqkmY9BCoS0kjVni6YISQfq19mcaXMggtfGOYAPD3tEAJ/uEZQl
	hNYT9W0UUmvGd
X-Received: by 2002:a05:622a:1a0e:b0:4e8:9ade:108c with SMTP id d75a77b69052e-4ed30e17a3amr35245281cf.34.1761911302378;
        Fri, 31 Oct 2025 04:48:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrLMBqXq1lpss5fYYEYEBdkpGMMktplpYGgijhBBMxwiDCmZvkiKiAaqFkPlxpIxhU0z65pg==
X-Received: by 2002:a05:622a:1a0e:b0:4e8:9ade:108c with SMTP id d75a77b69052e-4ed30e17a3amr35244861cf.34.1761911301871;
        Fri, 31 Oct 2025 04:48:21 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47728aa915asm86831165e9.16.2025.10.31.04.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 04:48:21 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 0/6] ASoC: codecs: lpass-macro: complete sm6115 support
Date: Fri, 31 Oct 2025 11:47:46 +0000
Message-ID: <20251031114752.572270-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ETaJDY49fXd6i9K1NCWxJB_ljSThVjbu
X-Proofpoint-GUID: ETaJDY49fXd6i9K1NCWxJB_ljSThVjbu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwNiBTYWx0ZWRfXxbbRVCR6eC/E
 sTtfigfbj1FSk5tCUhYiDxv2KpK+bWKbUsfJsga08ZkA67jbsfbVwpIF6EsSzJWb1Kc1nRJHMMF
 LqGwaZE558lYECw9L3nbulVthtx8ripyInkLhu8bepd1P9OMMpAEpHqYpAS/2dVeVYy6aPO/64e
 09e9WQZcdA2gtQMKONlRH0WEow4o/FRhfi+GKlyYCR+fauli6tklePU5Kg+k6QXlnBH4o+gGLwd
 GaFczNQtY7JqYannQi+slhe8boytc+exds+Gu8VN7BCoR/6sr4dkyng7DnlH1uZdZ6mliIqfCUZ
 C5j66qJF9bUd6ip62+FC+kxG8wLmprcUMb1AzzhH5bcAJGwbE+urZUyJID01p1TpCkKcdKcLH6t
 s+uEQJJu22HMrvV4qwIwzw1Hk8IUQw==
X-Authority-Analysis: v=2.4 cv=XoP3+FF9 c=1 sm=1 tr=0 ts=6904a207 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=XNMdb2pSUVPagnxhOkYA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310106

This patch series fixes SM6115 lpass codec macro support and adding
missing dt-bindings to complete support for SM6115.

SM6115 lpass codec macro support is added partially and broken to some
extent, Fix this broken support and add complete lpass macro support for
this SoC.


Changes since v1:
	- cleaned up va-macro bindings for clock-names.
	- cleaned up va-macro codec driver to include soundwire reset
	  for sm6115
	- updated tx and rx codec driver and bindings to have a dedicated 
	compatible due to changes in number of clocks.

Srinivas Kandagatla (6):
  ASoC: codecs: lpass-tx-macro: fix SM6115 support
  ASoC: dt-bindings: qcom,lpass-rx-macro: Add sm6115 LPASS RX
  ASoC: dt-bindings: qcom,lpass-va-macro: re-arrange clock-names
  ASoC: dt-bindings: qcom,lpass-va-macro: Add sm6115 LPASS VA
  ASoC: codecs: lpass-va-macro: add SM6115 compatible
  ASoC: codecs: lpass-rx-macro: add SM6115 compatible

 .../bindings/sound/qcom,lpass-rx-macro.yaml   | 18 +++++++
 .../bindings/sound/qcom,lpass-va-macro.yaml   | 49 +++++++++++++------
 sound/soc/codecs/lpass-rx-macro.c             |  3 ++
 sound/soc/codecs/lpass-tx-macro.c             |  1 +
 sound/soc/codecs/lpass-va-macro.c             |  1 +
 5 files changed, 58 insertions(+), 14 deletions(-)

-- 
2.51.0


