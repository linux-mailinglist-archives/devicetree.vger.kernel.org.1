Return-Path: <devicetree+bounces-233711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D0FC24EB6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADFC23BEBFC
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E18F5347FDB;
	Fri, 31 Oct 2025 12:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fSdKXISG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YT8qa4ZK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA489347BDE
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912457; cv=none; b=rwyHkZ+44n5BW/BiGsKPIoRdD3YUVJ1sLlScivVtlJaf1zFZ6EBa9tcFQtiKe+dgzOwnkbQDSqn2GrLsSgIHq5DKumlSzIf1EoMQB2vFF1SMXbY92tyUUgbPf28AAqN7v/CdRqCh5/ZvzBabt/EIdAXrzlIto8TAT337nJ3T3wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912457; c=relaxed/simple;
	bh=FBHTA+kR2fbsMsa/SrJEtQSqf/pZXq187Gm8uu9urMc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fEBShnThWg+GoFJ/RlWbAi4GAOlLKeV474o33opatGS3uq6neFTjXiC2S8PQpFaeSntE8dukhusS7XUTGBM9hjdLCUrngxjr70FRrWcYGJxY9ylkfH+OcljdcYIK8kiO8RWwKONtvAV1xWAmOJ25f15t6iCw29AKQL9oS1bD+fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fSdKXISG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YT8qa4ZK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V4Lh5o1826917
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=4032bjOkzCR7p70VNAqkoxOuXsJLBApNSv9
	jSTqGdeI=; b=fSdKXISGFb51HUKLJs7JReOl4+DP6ySMFtD8dxrCiwqaW5ImG+f
	BmohCnrnQtRctcsIf8luHV+SBB6W/LIwHRU8zVsFg5OXiGYGfuD3sbcuQTPSLTtY
	dcCmVoZg/Hop7xNEcHIYUBHOXIdl2aRSmxR8FB6eO0czuGUqGn00j4EPnkzogdUf
	H7eMitzzbVzWqmvkecrvDRjie3rSsqv2HsaoW5u7f0FYTy/JQPtbBg0XeEe9s5+h
	l2SVdQXdtJ20kQd/2/UHL81QFBf9h8AB/q9LO7obCXhpu/IdYNWCsGC1nUDV1ibu
	CMUdYjuQ+3xrZ4LkXx85AQqLmBhvm3MfOEw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4p11s6e7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:33 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-54a7c3c3157so995492e0c.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761912453; x=1762517253; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4032bjOkzCR7p70VNAqkoxOuXsJLBApNSv9jSTqGdeI=;
        b=YT8qa4ZKck+WGZpnQoxOyOcL0EHKjt/tPH5feZz9qL6+lXV6kRRhx/D9aYNWFZpWaB
         iMGD7AFdemgiY8iY+A8wnKfQsV5DtYikRALuM268xXmAqUiJQnV14cryPqcCe9O7dwDr
         9aX79KbS7VfpkFnBqqjqTXgQRFIC7uMnTy1zlP30xXsZo0QJSMrVer8bV+Hd/d2u7HgA
         2UUTNEKOfDXwX3VqA9d8lZLArLM+iHWXSZ5/062f6CSbHe/ARbEOXq5Bo/vdw77mcokE
         ngf8mYsUToyDddt0a5hU8JHA7wt7IoB0qCWV3PmC1uiqmMOLVnCFirk4qeVECwv+xkHP
         F6aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761912453; x=1762517253;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4032bjOkzCR7p70VNAqkoxOuXsJLBApNSv9jSTqGdeI=;
        b=SE/2JLXXg2x552EIkoA6TlbTaG7gQho9yq91h9BugMtJD/+GqZlJfoMxpc1u6P0T/9
         L+WD3oipUVqwlEXJIcYlo1coXTKqxfwe7fkZ52SYQipe35fIUiWC0DoqAY3TNkclUgWe
         e3HkMxD6o7UkPqkFIVgWDyBLc3cBN1Cmx13seopR/Fz7bTbOeCSDZFJO2mOkWARHkYGU
         uch6V2dYk8PzkX1aE20eajLQaZVJhSB5PF7LI6BPYhWVkaWeMJhhEk/iGeYC4SSLWFgJ
         6O69iCay6qCkCBNgaJQLnumUfuIpWGBwfRA2B3OR2VaIxd7/PX0S9XFs5FgpUbLZbyjP
         NYaA==
X-Forwarded-Encrypted: i=1; AJvYcCWjGtLtG0MRxecRKB5mjxCDYUL9iVyzglhw8mq/C4L1aQaOTFn3rxsjHtF+ZO5xoaCN1qIhrTUna3w2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx02KtL01574F1B7PNK6104vyJCSmy8q93D0kg0HRX8rE14po+m
	Q78XNwuuoiypr10j6/rkPJtZ8msTux+Ov0nZr5JKCqup83uKse2OXD/QBZpMui5zUmvWmOKntWp
	nTSRYPKJkJLwxlGQHgq0eNF7PonpDStHi0KgopbkilPuZd61YPVxS3T6VuEeuiJZQ
X-Gm-Gg: ASbGncvWtALr9NnH+szAOlrx9Lu1IZnPy2fNPDclzcUp9QXREn4Ilh341x+3UXpDAHM
	N2xtqqk16c6lZXwOEI/+yEOlsV6eKZmtEWYM7U6FpVXc+XAO41jaTXLz9INzHodHy3LLpqqNDEC
	DDf4nWvmVDVCKInbS7NqPCtIfYtQ4QoRozPLu+KSWkB8HWux6VxSCtdL12SRH1W80pVl+KmJNXM
	yj/B7govxJuYpq3hjLM7fVPYaOU5ccdEjUbdvCjdHQU7yGhww1sOHh/9x435V93lku2ImQZYGoR
	8xgt1M0cwcOK8RRpONNsNqhR3HByLWYCybkqTkJu+nPIWLgdiObQ60pJz5GoWnSU/W12exmm2Fg
	loCZjngn3da5F
X-Received: by 2002:a05:6122:3711:b0:556:745f:6a06 with SMTP id 71dfb90a1353d-5593e563b6dmr1087783e0c.10.1761912453085;
        Fri, 31 Oct 2025 05:07:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIcGE2eWLXSFTHonsnjJICwses9jJ9xucL5+zcIhg+h+3QNnE7/PCg9OINg4FnGuKQHFTSlg==
X-Received: by 2002:a05:6122:3711:b0:556:745f:6a06 with SMTP id 71dfb90a1353d-5593e563b6dmr1087747e0c.10.1761912452655;
        Fri, 31 Oct 2025 05:07:32 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772fd280fbsm21273995e9.5.2025.10.31.05.07.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:07:32 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 0/6] ASoC: codecs: lpass-macro: complete sm6115 support
Date: Fri, 31 Oct 2025 12:06:57 +0000
Message-ID: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: W7rFueS4MYMQjAGEvgS8QhPIpTM2Qo2i
X-Authority-Analysis: v=2.4 cv=RbCdyltv c=1 sm=1 tr=0 ts=6904a685 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=XNMdb2pSUVPagnxhOkYA:9 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: W7rFueS4MYMQjAGEvgS8QhPIpTM2Qo2i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwOCBTYWx0ZWRfX7aZ05orhcVvI
 aWgJnhwuFqoWTA2LWC+xNcv0EJILk/LEnU7C6fCanCnvJouTjwIMhgqevUbt4+DDhnNy7n0L4f4
 3bh5JhamjyxFbNF7i839j82breO4tYKfs9qekEAd3hT8tFdji56ZXuE4TfSQjf+lYP3xLOIyGd9
 lrkATvhhvVTgyeMKChZUYjkN1sfyVPGFJ9HT5d45mWEVqiQozenK3VyNhNmFZpQT3PyUqXKv6tw
 gbB8WSHMRpwgH/Diq7zF3dKYFgTHOUVukpuNZzKOcs14ypjbhSrx5JEm4xdnDXjG8DPHhIDviyg
 VdiAZmFnbMODc8rLHuBvdezfTt2mtXVw7+qYKX4L8YVGDWdfobXXqMVe2vUq3NJ7TAJnxFF65/q
 V5n+LviDE4dKJUMfuf+q1hdXzYP9Jw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310108

This patch series fixes SM6115 lpass codec macro support and adding
missing dt-bindings to complete support for SM6115.

SM6115 lpass codec macro support is added partially and broken to some
extent, Fix this broken support and add complete lpass macro support for
this SoC.


Changes since v2:
	- fixed a wrong patch that was sent in v1.

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
 sound/soc/codecs/lpass-tx-macro.c             |  3 +-
 sound/soc/codecs/lpass-va-macro.c             |  1 +
 5 files changed, 59 insertions(+), 15 deletions(-)

-- 
2.51.0


