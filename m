Return-Path: <devicetree+bounces-141067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D16A1D4E4
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A9F016182C
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C46B71FE449;
	Mon, 27 Jan 2025 10:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="AyOhSgCG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208661FCD13;
	Mon, 27 Jan 2025 10:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737975466; cv=none; b=bunPGLsXjGm56yl/tmik6QCl7BcndVP4L8F+4N+/ihR9IcTE+MXRUnsBVas+PQwtFjjrfdyj9gr29iPxBKGuY987dUdrCXpyK+klQo88RF6Rwqe4YQbBVAFbsd2zrfKE2zbZtoSgeDoLMau9FOBxKf0eGtkJXkw3eXZwMelxqgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737975466; c=relaxed/simple;
	bh=htWYpFro1ZCNNFreaW4T97HNxIoLyS5v+duavn1sjPo=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NRDwlFgqnyEa6Rt3mgkVdhGjnNxmOWxlQlyS1Q/uev+HE2WkKYDOFbvDR8e0MEOm9A96kRvSbgF40fvDmFhjjSd7vduwPzu7g9wOcQu/wyDIX4s+QAAeHUYLew3Vuj90WoApBlHnCI7xrU6nkf87842O1lsjmSbK3ST3N72g90k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=AyOhSgCG; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R9bkXf005532;
	Mon, 27 Jan 2025 05:57:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=KsJEc5+KR1Pp94/+Og9A2jL/nrE
	Ry40wCCw/dtKzd94=; b=AyOhSgCGCwPwJ2n5awa27BY4eS/OZABJGEDjmsy/z0u
	lLF65fCdCuCKPhoWhgrqUcU6tUztn33VuPZd/xMlaox4HzoJiHKlMEaWYNPtfXOQ
	MgpajoLWsxrrYD2reJ1E2HhAVOLl8LnoSWGeo9F4NH1Hf73r+RScellk+bx6LPjg
	93QU4qMg3GBwrLbcnXXVVObUWxnFmRmJB+SS9bB0h2tlqB/4xf1T0QbNXXJoMzcd
	1eFD/vrcvUkOWWdV0eWdABro0K49IgcrN2Icld85pzpHwRPu42Nw0VV/8vd2JdTr
	2s/tBDaJu/V5JS+g0DmPbIhlJS73YrHeJfttEkHj3rA==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 44e2n11bg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Jan 2025 05:57:42 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 50RAvewG001763
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 27 Jan 2025 05:57:40 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Mon, 27 Jan 2025 05:57:40 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Mon, 27 Jan 2025 05:57:40 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Mon, 27 Jan 2025 05:57:40 -0500
Received: from amiclaus-VirtualBox.ad.analog.com (AMICLAUS-L02.ad.analog.com [10.48.65.165])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 50RAvUT6018078;
	Mon, 27 Jan 2025 05:57:32 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: <jic23@kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
        <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-pwm@vger.kernel.org>
CC: Antoniu Miclaus <antoniu.miclaus@analog.com>
Subject: [PATCH v11 0/8] Add support for AD485x DAS Family
Date: Mon, 27 Jan 2025 12:57:18 +0200
Message-ID: <20250127105726.6314-1-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: 4serGn82St7lF7nGGYUzFrsy3us-zmqh
X-Proofpoint-ORIG-GUID: 4serGn82St7lF7nGGYUzFrsy3us-zmqh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 clxscore=1015 mlxlogscore=961
 phishscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270088

Add support for AD485X fully buffered, 8-channel simultaneous sampling,
16/20-bit, 1 MSPS data acquisition system (DAS) with differential, wide
common-mode range inputs.

Most of the review comments which make sense in v9 were addressed. Some of them
might have been ommitted, especially those that are a matter of preference.
Since we reached v10, I tried to cover everything that was pointed out until now.

Antoniu Miclaus (8):
  iio: backend: add API for interface get
  iio: backend: add support for data size set
  iio: backend: add API for oversampling
  iio: adc: adi-axi-adc: add interface type
  iio: adc: adi-axi-adc: set data format
  iio: adc: adi-axi-adc: add oversampling
  dt-bindings: iio: adc: add ad4851
  iio: adc: ad4851: add ad485x driver

 .../bindings/iio/adc/adi,ad4851.yaml          |  153 ++
 drivers/iio/adc/Kconfig                       |   14 +
 drivers/iio/adc/Makefile                      |    1 +
 drivers/iio/adc/ad4851.c                      | 1302 +++++++++++++++++
 drivers/iio/adc/adi-axi-adc.c                 |   93 ++
 drivers/iio/industrialio-backend.c            |   60 +
 include/linux/iio/backend.h                   |   19 +
 7 files changed, 1642 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad4851.yaml
 create mode 100644 drivers/iio/adc/ad4851.c

-- 
2.48.1


