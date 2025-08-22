Return-Path: <devicetree+bounces-208015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7ECB31576
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:33:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FD18168724
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E612F546C;
	Fri, 22 Aug 2025 10:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VBVbF8fk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1819D2F3C39
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755858624; cv=none; b=KlATpQ1/dwqOPr9ZEU8UgB1lI7UDXSTM2gDurNPDXSJNdlydHmHmLymW6b/pytzziQavzNnynYQjSB+hZwBXR/g2xi50o8y9i0ojUT6xvCeOtuIvYyeawXmntYd777C6gHwKfsW9lsrlqbSkLETgRlzB9gRNWLArkdyiC803+jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755858624; c=relaxed/simple;
	bh=IZFswyabIJJi0zH6aBxL35ZR99UVJvCTrpStayRwLFs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bhSL/ht8hRvWwxMmRGbHhQ2wAVEQ30S5E5J5bSLzMlKSxC2IEiCSEb/H6u/r4SX36bwuKINmJP3EwiY2illTG2xFndnmakjRwCdQnCHUcKENQvdfsQpMi4K/T5Nf2HnvFLHTTBA3yfF1nMOhM3JflF9QSYrJjr8I9z/aTm014OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VBVbF8fk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UKVi017920
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=jcKarMudV2b8SNd6x7MSB0qXu7fuZnu4rJt
	xAKfBKPw=; b=VBVbF8fk6V/fMyntvbNNukuLIy+Bx/cQ7Mra2V6vyoOmt+vI9G5
	3lFSfcKZRVFbsEy9dZtXRMxXAWQ7VkHh+yHwBoAxf/gPRg3+5DPyam/3eA1L3EsU
	LltoADFv24tuj5aaKHGkarqvHoqeQqzTUpugsPVz+X/ctxJLb5MJWDwmLhThWl0c
	hmkwe9bgakFbTxdYe18l8SuhOp+eZDfHob2nfWisBbDVmyCbTwxch7JDIFuly3er
	WVArVyy9qa4SWXfpHeB687/FrusdRkkTx0m8caIhxOR/dTh9xNS9OyNvBvX3TVr1
	4M/5dlp1XUf2HBEtmaGDcDNDYvzOO1qF1dw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52b0rcr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:21 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2eac3650so5051210b3a.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:30:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755858615; x=1756463415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jcKarMudV2b8SNd6x7MSB0qXu7fuZnu4rJtxAKfBKPw=;
        b=tw1yewQt2IG5ieqz4CUz0aim33vOdH3sRKbuojqsSsOCFFxiYoiQzo0jQ9Yx46s4vc
         HiLxygBk2SFHt2ek7CpMoZnvwEDJt4j8r+GclHNMZZ8EYVZEOOuAIWm+ln5Pk9I9Y3/R
         j2745gdhpjy2kIh68lBRwZaRx+SS6I8RNh3BB7fI2MUqeR7PDYZkyqxkvbn4e1B3fER5
         KJUwwcEXnCJQEXujaovyFLl/Vg8QEejFhpspkSDY2XUjQdnF6gw5JDabJTaGCmuU981D
         or4JSkyuDVNfK0Yg/3MGhf+jPDJV34KLp7AsA8UdyMYjpI3qyYVjKLXQ5pXldeL7wyqo
         zmPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWi4e77C+w8uBN/He11rzYHNJVihaszxymNFmDU1JQwX/cPU+C203g+DhOcEJKbzZf+t+xAoczraZEj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0ZkZ4PrKflRsFOU8EjxJHg4txG0w2J2KYkFZMFxyxKIrZQmSC
	ShXrp3ubov9wT3q3/v+CDS6nLhsyhyU79kxxu0mi0Y56/TMzoxJESSyrdV9ThQlR9C2OrDEnLVR
	LiwxFv05q/ssxq+zxSQaGD0QCIHMC7k1zfr11p7BtUsPI4dIvdmsf0DnRjE1/knpo
X-Gm-Gg: ASbGnctAR4uNaH1/89B4wbsb9NEv3y9oZfc+KuK6+TkLqNA9m+Yt3Fty96Zim83iL9u
	9ZcN+uasDphI8bMPCOn2f/t/s89tkVppPDTPYMqOvjm/IYoki0E2z5xuuXwWO49wwOXSHBms31Q
	xAyBxY0pibESlGAsaOeREUgkTROZpSDTiQvMZb81LxsxvPukYHN870V9f6G+hgirOB/Rh94tCRs
	pjDRxgIvcxmYA04u0QvMvRCexsjXPnic9t+iysjaAsgDuUf3S4ZObE9kwT6bW4V6xZA30qCsUGT
	DHTplYihcvGzR0WrQ8T6tPlmyUH1JeLVk1vfTJzyYMAwUiC0U5LgOoh6j2PuAGU2ReuPoXLqD/Q
	1O+OSq6TgYILNC3XOj+nJ
X-Received: by 2002:a05:6a20:1584:b0:240:cd6:a91e with SMTP id adf61e73a8af0-24340b0ed25mr3975346637.20.1755858615164;
        Fri, 22 Aug 2025 03:30:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGM6/4eD2DcoKaSA3nCo67Yg9ZTNA0p3eVi79EitYPShFXo+QxmspWgagHgSI57FCVpNE+xeg==
X-Received: by 2002:a05:6a20:1584:b0:240:cd6:a91e with SMTP id adf61e73a8af0-24340b0ed25mr3975306637.20.1755858614674;
        Fri, 22 Aug 2025 03:30:14 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4763fec0e9sm6825196a12.24.2025.08.22.03.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:30:14 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlmao.mao@oss.qualcomm.com>,
        Tao Zhang <quic_taozha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] coresight: add static TPDM support
Date: Fri, 22 Aug 2025 18:30:05 +0800
Message-Id: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX/kHPF4CC1U9X
 5VqjLMWpVjDFkYZsgfLOCI1x/SbgUAg+gbgdiJMrKrZb557tboR9eReYPneF4UYiB+lByZcKLFU
 qvKw+2Jx87eNb31WbHKjKLvVJchRhmXLNMJxFerubcR3lTaJbf1OqqsKuRRBIGtRbEqP59AAus+
 DSncpXeRrv30wgXwIm8vNBJN1EDhvibdiGnbQG2e8YVFiRj1yuNRGe3P5XAm+Hbsdt0qpeih+31
 xd5KA+FqweZIPpPVKablU1TFUxob8no3oMHrU/Dgh6jdI3NQICgxelJofqNTXUA09i93V5xFL3/
 CVSn9S/VQFTVEh66RikfJAOk7NjVOjMRTYMQrmKHixQc44L5FBLrHGgZnkvMuqYl7wzVij75gUP
 8nrcHjtFT/J9CGXi6YFdpVl2e/keWw==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a846be cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=miiTG7pHY3C1tMSzQ7sA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: vaM24qBeN2zm0xNL-avcFQlWMXQ_nLbo
X-Proofpoint-GUID: vaM24qBeN2zm0xNL-avcFQlWMXQ_nLbo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

The static TPDM function as a dummy source, however, it is essential
to enable the port connected to the TPDA and configure the element size.
Without this, the TPDA cannot correctly receive trace data from the
static TPDM. Since the static TPDM does not require MMIO mapping to
access its registers, a clock controller is not mandatory for its
operation.

Meanwhile, a function has been introduced to determine whether the
current csdev is a static TPDM. This check enables the TPDA device
to correctly read the element size and activate its port accordingly.
Otherwise the TPDA cannot receive the trace data from the TPDM device.

Dependency:
https://lore.kernel.org/all/20250806080931.14322-1-jie.gan@oss.qualcomm.com/

Jie Gan (3):
  dt-bindings: arm: document the static TPDM compatible
  coresight: tpdm: add static tpdm support
  arm64: dts: qcom: lemans: enable static TPDM

 .../bindings/arm/qcom,coresight-tpdm.yaml     |  23 ++-
 arch/arm64/boot/dts/qcom/lemans.dtsi          | 105 +++++++++++++
 drivers/hwtracing/coresight/coresight-tpda.c  |   9 ++
 drivers/hwtracing/coresight/coresight-tpdm.c  | 148 ++++++++++++++----
 drivers/hwtracing/coresight/coresight-tpdm.h  |   8 +
 5 files changed, 256 insertions(+), 37 deletions(-)

-- 
2.34.1


