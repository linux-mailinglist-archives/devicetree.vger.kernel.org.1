Return-Path: <devicetree+bounces-232832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5984DC1C17D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:32:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDA0D626736
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7325B34E764;
	Wed, 29 Oct 2025 16:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DT/xK2qK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BtrECFhd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3FE345754
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761753670; cv=none; b=SPXkSnVHAxifusKUlUDm2d9GiAdW3h3Sg3SwEdZ4c4GUr5e/6nS0EEqxgNd/Bi8sddCVJpkSbYAkKTNa7LUhmLAOq+YM8lx5Zb+VoQHWWpLKFJN9hqyuBLgHdYebMy4qJwwfVi5P7gV2ygfbj8KZQ7HBx3bKncNsFZ+3mKAppZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761753670; c=relaxed/simple;
	bh=TILMcgRj0kC60wf4eiNeL+x6Ppo3TKOdtnZW13u6rEw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZtlgUsdqchM69zebe1mNysw2TfDAyhLW5hQIe05QA76TGoLDPVMXvtC1PH3/Lcxk+4QQAzdx2JAnM/i0PC/ODZWauOWMMoBidx9M7APAPedAQgcZCHicYS1GiRU/xTy5ZDVyq/Mcs9hvVcfXnKdbmFrYc4/+DP16xuDbkuzfcEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DT/xK2qK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BtrECFhd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TEhTHC816961
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=kkVD4J5QeGsAGYyihfrN5ZhJkOber/W0iUx
	3w/k7ZD0=; b=DT/xK2qKa5JtmyI1WU/9Ici3j/1AerHU2c72sfVfVIUjIdXfN+Z
	Qu3g7J7XfnuaIlQZue2mW4RaMYRams0Z21n1Xa9fazra/g3n/aznvtF/m40laJSc
	ypwOyATWAXTDhkil2GdxtRkbFB4jtjN+AOFRcWF3vOLdqpPFhC1uq8QwPqpV9UF6
	5PjtMMEVcXpGmZKHwmNoDJv2pD4D0mzOVUU79tGRa17Jvbgp7dATY5ZpkjtcDB6b
	nNdxD78crJTnHXodf7ib9z3tn44kmIn16lWjynDOevTrbSnw5M/ipqoMeXyTQ0LQ
	g3cvp8x63xhDvSpGTjq0Aq97dsQBEY2fZvg==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3mxgg8p8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:07 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5569ecd7afbso29552e0c.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761753667; x=1762358467; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kkVD4J5QeGsAGYyihfrN5ZhJkOber/W0iUx3w/k7ZD0=;
        b=BtrECFhdmhEjFqLU3Ws1xrevl3gjOObNXtujQXOFh2Sc1Lo/YlHmtlnfvIpZBwkNiD
         +1A5FkR0OCWElb4ltZE46uZrD3sHLPirJWtEFhRXctzNRnwp2mH7tRB1fm4zzyBL6grV
         Hm7KmuNJt043GXGXbAjSNmsLIFmOuTwKCd7YRUtEGuTxWvjEoYE1C9Z5nSnECn26Oe5e
         CWyFZd4AJGuJ4t8US5CHxMmNR4hjm41KqQDpuZBcun7a1g63maelOFa+DGX+UH7bPoc6
         pBJEB0QqFJ+4sJSTw90YCyTtxTXLWuDmQmZyawoZdty/5v06/D+IU70lSxKcZmEbskcm
         INXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761753667; x=1762358467;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kkVD4J5QeGsAGYyihfrN5ZhJkOber/W0iUx3w/k7ZD0=;
        b=S6kYCJGjrZDyT81ZjFn75II9apN+hqlj6l9BtH04IA236D8RI9iZAjjh+zAixqKUKa
         zrS3Yflpx3Fr0eVD4Q7Fm3EkBinq8vAAiIf/P92Im/MIaZBi2uNCbTBZdnOyjlQFcQne
         RtGbgPCNXv0Lpd4ncSF+Tyh6NSsj7TRnbJdmETZj+lCxQ22zQC7P7xou+FooYuw4UHpm
         UZG5yZK4+j8InfP8jkLzmY3DZwTs39X1G4v1XYB8mQDg46lCMpxR6KvLzZrSn00wh95F
         64mT5mTHvc9OUkH/yd6rYGgAC4iuFHrgZHJDJOC7hCUWlccstRy9CJ/xA0X0P5KTTnXW
         vmqw==
X-Forwarded-Encrypted: i=1; AJvYcCVPBib3Ef+0EhfFxinIEs+c87yFvLX/kZ8o8NbZ3U2ki4sganqawSeHhxbAkeLfSNPZAKtZoGHvs6uf@vger.kernel.org
X-Gm-Message-State: AOJu0YwmZND6+Lt/h+ETx+UV+0NT7aXI3ZGgJgs7FCVog7RLlzseYttN
	Be2suQgumsDXdMLkJzqKC2eJmqk0UXp2zowfuN8Tr8T8soBAhcLgoRdlz66a40OPNMDbAJu/V8M
	ZiUYAEYZEHXCDpi+6O3BV6I6aDrNFeaEkWRnxus5bf7P9h1QPuvIAoC0rjTo8BXYW
X-Gm-Gg: ASbGncti2ZpznDc5vrR58NpZf9vBo3EFOx0wrxaQJSPmquVfH/HL01gvH575UJtLhLs
	KHq+T6jTzW4nFXzHtZ1N/Ap7sa/DwRm1QTFbqdNg61QE9dBIlG7Y1OKX6oYX3Q4V4Ih1OHyilY8
	Am3Hd34FjpEV7KEhFSH/eXNSERjtvi2LZ7/zoPashcPC9IQzKwpxkYYgayrWG5/mB1LDIMuXbrm
	A/pe4lNFUEZLcRCk0Bizp2mh+dihMVxhrhTxqMBpwnqW/OmbD/ZBRAj0yzzXH10inwM9VwMibnn
	81I1XQpac8HqYCyrDG+q49MJnetgE8xPc9PVn2W0Oz/gRYcjSSG+3xbvcvOO8y9i5RObl6MKh7K
	t22xjWKMw2Bgq
X-Received: by 2002:a05:6122:4f93:b0:54b:bea5:87ee with SMTP id 71dfb90a1353d-55814168731mr1307461e0c.7.1761753666765;
        Wed, 29 Oct 2025 09:01:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjTP9FZKurkzCHatar3BEeLS2nx9Ae/R1xxfOgAjHIz1P4IfYhsPpkU2tFJSrFrwOXmEN0IQ==
X-Received: by 2002:a05:6122:4f93:b0:54b:bea5:87ee with SMTP id 71dfb90a1353d-55814168731mr1307352e0c.7.1761753666080;
        Wed, 29 Oct 2025 09:01:06 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e27f7b8sm57154535e9.0.2025.10.29.09.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 09:01:05 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 0/4] ASoC: codecs: lpass-macro: complete sm6115 support
Date: Wed, 29 Oct 2025 16:00:57 +0000
Message-ID: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=AuHjHe9P c=1 sm=1 tr=0 ts=69023a43 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=1oLurHACul6UgZ_C9z0A:9 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: CkFLDHjaXzj2loeoq-oeYBTstvXa3r5C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDEyNSBTYWx0ZWRfX5yKl2PgU8o7f
 ITIqzJWI4IhIoY/hThBHQspXtK9ob/3SaFUwAhstVan7TFjWNlSDsstdZibUUyQ4geuWi5nvVDR
 y8rCgHgnST28CR70leLFM8fQ5qsrKbc+S0dkEuRyi6N4ganw0sr/zV/tWYagHeB6q/k3jR5F/UT
 EDPYPeb7z5OetAsvgtuIZ8CgDOrn6FV+oqOJ/YxAFhMKtuCqiGkZWZBc6PMvublV3WgGm8kkI+8
 6hVi5gzJUU98xsT3OWiaxyyk6BRZwjTZJN5dBMXOf7KDaSdnmtE1yAZUMw4SRSHNYor6WOWqCRY
 Y8uj+EG5kbwNh/ZYF+5Sllje+j/DEMxdO2HV2qvEP7dZGpvUnoFc1pjKNTyAw2QKQgRHzHIX/1S
 mOpzBQxsY+8nRD7stFoOpqc3CrhE3Q==
X-Proofpoint-ORIG-GUID: CkFLDHjaXzj2loeoq-oeYBTstvXa3r5C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 suspectscore=0
 phishscore=0 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290125

This patch series fixes SM6115 lpass codec macro support and adding
missing dt-bindings to complete support for SM6115.

SM6115 lpass codec macro support is added partially and broken to some
extent, Fix this broken support and add complete lpass macro support for
this SoC.

Srinivas Kandagatla (4):
  ASoC: codecs: lpass-tx-macro: fix SM6115 support
  ASoC: dt-bindings: qcom,lpass-tx-macro: Add sm6115 LPASS TX
  ASoC: dt-bindings: qcom,lpass-rx-macro: Add sm6115 LPASS RX
  ASoC: dt-bindings: qcom,lpass-va-macro: Add sm6115 LPASS VA

 .../bindings/sound/qcom,lpass-rx-macro.yaml          |  4 ++++
 .../bindings/sound/qcom,lpass-tx-macro.yaml          |  5 ++++-
 .../bindings/sound/qcom,lpass-va-macro.yaml          | 10 +++++++---
 sound/soc/codecs/lpass-tx-macro.c                    | 12 ------------
 4 files changed, 15 insertions(+), 16 deletions(-)

-- 
2.51.0


