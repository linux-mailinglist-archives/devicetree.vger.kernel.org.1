Return-Path: <devicetree+bounces-212713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61197B43954
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:56:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26E471787AD
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89F92FAC1E;
	Thu,  4 Sep 2025 10:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cHxejNhQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FB42F9C2C
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 10:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756983407; cv=none; b=LFh+urtWSMzGxQCfdbAbrydLWCXi5NRkY/+H5ppLLm8BKwGk9NpvZjmzjiU6nvDPMO3rZzNhYGbfQUg5V9gh4AXjWS86dKP4swcMiPaL0MYMmD42SBBriboHjiZlYQacPRYPiRJOf//kzl1VsraUkqP0gJqaVaAMtp9wgkq0jKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756983407; c=relaxed/simple;
	bh=ZJI+yu3kb9pKBhFXII4xHvYnh1LrQ0VBRlmlVCuUT2s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=souGpOZtmsJE4jzqq9hM6deDjWd1oYaqIE9xKOfujVCslMxHj3T9QFmkxBebUSYpIgiOfSvtZx1ivlRxD6IcrDPp9m2b4CjzywkKTtBZfIu+T6N6Bhabem/9h5dRNgSoC3HWcLvx/aOXrnw6m8BgrCV2FHAUjhTvvpDV9pp++vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cHxejNhQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XIXh031977
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 10:56:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=JrOHsVLgG7Xc8r3NOkyT0zafNDJIi5as62e
	4i26U5Ok=; b=cHxejNhQD786Sn2xrL0HtH+k1/yWMLzFZqVWafuUHPWLe5P1dG0
	IzqGnJEteqyT9fzzHFYrKG68E5v7QSH4/aGV0nKj9mQXHpioOMYtE2VAW4okJQht
	7kN7RqSHex9RAwKe8SH4CHjnJRvkkJFDg9zqbfRxN5elX4Ndz+EK9C+LVqpjMlYz
	iyUhw5F9q/u8oNBpp37CWB7KAmoIQMWqVNSSpS2zp1sgb5QYarCUI4DZmcTdbnqz
	bdZoISna4ssldB+0DSi72FtUjlB876gPjL4PvUi5S3DREchPZmpXFe8I4Uxzlcl1
	Jjn6mIbpQPcpnNzUSisCuaAGHs3lgDBUTYA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw078gp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:56:45 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-726aec6cf9fso19730516d6.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 03:56:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756983404; x=1757588204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JrOHsVLgG7Xc8r3NOkyT0zafNDJIi5as62e4i26U5Ok=;
        b=ICmDBRIkJ8NW/IDLIT+WTeLByOQOQL1oehDWKlM445vZ6mALMtGSX319/gPx9knpJ6
         2nsgbbsyrEkMv5V+ZLivhMHR/2dcYigIPVBBPLLeg9rcBynFkey8LIokqFwH71XtMZ4P
         xJS6gsIEnTVL/zOge/yQhPxSnNgwCyWEhtUZcACXpfSboHHDn4dQq1qUGuWLYTZyiVPJ
         T/Qjlzk9dzSZ/NDi86mvPstsA/wsYVnd1WO5BPp0Scvmqv0f+lH/6ffGv6fKytmI6KV0
         THVG3ex0Hwp7Iu8CcN3zQ6aV1FmPdWQedAKbbHLyb1DwZuEule7T3Px6Y0oJyKaLUBMA
         mxTw==
X-Forwarded-Encrypted: i=1; AJvYcCX3gVHVkpFIF++pBE3Fo9WLpjSEYXC44RTNUbGMKCw0myFwYKIu3pLPexM4HBeY5gaN7DPxY8kEl0TU@vger.kernel.org
X-Gm-Message-State: AOJu0YwMNI0XCFoFms+9E33DQjngeb9CJDzpPxqoYo9Z5eH5Zesl4lnF
	dbm1Q+YJWCYrBRDQ/P52WmKFEIcawEsUnvWNEBOylmQwzDR/lxDvKq/wlFtOxT41yQdfGZNuv0s
	s6avkITW5r1+G5sJF6udK0F6oXWGZcltLp2Npt9lk2uirCyKwxUYJhRqPDAOwrqa/o33k6gA2
X-Gm-Gg: ASbGncuWOzQXdetlTkXum67n2r6qj2IPnlrF4BCzljGtu+Iexc7GgSHZRyI+6iY+Iiv
	5V1Qe7w4wspgm2tmKLHdTbP43wl2NCWUeYEqLAncNiJiNSGBD/CF5vnQyM2IUlBgTsgcMozsPa8
	fvHspCipg7k+URYdrtT3GNwUFae4iEO478Cd8zLIn8u4K9QyprWsbVxYFUCO3yVjZZ32CWbqRkg
	OBT9+4a6oyw222CehkGWpudt6j+Dfn/PL8H8sObX35O76fBFlbj77Ps90DFdR3DXzcqMMCWWW52
	+Kt7tgWkT0+88r3G31+FuTTf3TtwR0Jn08KdRJfWsFS6HJUZHqvE3Q==
X-Received: by 2002:ad4:5c63:0:b0:716:856c:4a5 with SMTP id 6a1803df08f44-716856c0613mr178623956d6.43.1756983404186;
        Thu, 04 Sep 2025 03:56:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEETHs6hBI1fqkOKuJVgfies5p/ujrhSYMuRzN1b+j0JOrWTlVQdXIxWN3WRoiEoZZ1+Lc2hQ==
X-Received: by 2002:ad4:5c63:0:b0:716:856c:4a5 with SMTP id 6a1803df08f44-716856c0613mr178618556d6.43.1756983392680;
        Thu, 04 Sep 2025 03:56:32 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a1f807f9sm26462334f8f.38.2025.09.04.03.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 03:56:32 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 0/7] soundwire: qcom: add support for v3.1.0
Date: Thu,  4 Sep 2025 11:56:09 +0100
Message-ID: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7a0zY0Gh0uWP9t0PfY3SkcjfdzEiJzyI
X-Proofpoint-ORIG-GUID: 7a0zY0Gh0uWP9t0PfY3SkcjfdzEiJzyI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX7KTc/P+wf6st
 6gZdN5T8es5x+3cGTt9i5pUbB7c+Z2G8ULPg32XvlcTHAmMHLX4hNZx+wK1YkJYoQbqb8cNYuMF
 +fA/byoRjo/GfLoXBoDwoiHrpRG1zm1xWhLFV3MnczRgJhTnO0R/8QCVleJhAM3Dmez7cb9kuY2
 dLP0zP/jgSZzt1GJLEgiWhW8yR0aUaI0ZI+DUt8W2oFJ7c3DseHQEhwYQgm71A9vk3inhl3wTRh
 itBFhX2J9TrmqayrdJufxpZ7s7OXVSHoh9f1PjsCCG1Pt9MJ7j+mzqL+/LGRoelrSLB6lNyflrw
 9yfQ3fFRlrOT4I7PDHLkD7ttq4uiTp2PELlC9NgjlnnYmCpCf8q80PsULkMIOtdON+NHECJoxT/
 N5KIAiXv
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b9706d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=plMaQY1jPcDNhxvH7e0A:9 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

This patch series adds support for Qualcomm Soundwire Controller
version v3.1.0.
As part for adding this support, a new macro of_property_read_u8_index()
is added so that we can remove the qcom,din-ports and qcom,dout-ports.
As v3.1.0 supports more than 17 soundwire ports. Also due to change in
the register offsets, new entries are added to the variant data.

Tested this patchset on X14s and Glymur reference platform.

Merge strategy:

I think the patches can go via soundwire tree given that Rob has
provided Reviewed-by on the of_property patch.
Vinod are you okay with this?


Thanks,
Srini

Changes since v2:
	- updated of_property_read_u8_index to use index of u8 array
	  instead of pointer as suggested by Rob H.
Changes since v1:
	- fixed typo in non OF config of of_property_read_u8_index
	- adjusted scoped-based cleanup initalization.
	- remove unused macros.

Srinivas Kandagatla (7):
  of: base: Add of_property_read_u8_index
  soundwire: qcom: remove unused rd_fifo_depth
  dt-bindings: soundwire: qcom: deprecate qcom,din/out-ports
  soundwire: qcom: deprecate qcom,din/out-ports
  soundwire: qcom: prepare for v3.x
  dt-bindings: soundwire: qcom: Document v3.1.0 version of IP block
  soundwire: qcom: adding support for v3.1.0

 .../bindings/soundwire/qcom,soundwire.yaml    |   8 +-
 drivers/of/property.c                         |  33 +++
 drivers/soundwire/qcom.c                      | 249 ++++++++++--------
 include/linux/of.h                            |   9 +
 4 files changed, 185 insertions(+), 114 deletions(-)

-- 
2.50.0


