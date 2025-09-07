Return-Path: <devicetree+bounces-213965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFF1B47ACD
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57A4417C1B6
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35C41260575;
	Sun,  7 Sep 2025 11:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RRJr9K3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7395018FDAB
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 11:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244129; cv=none; b=MXeIzFzaRMbuITyBzhgMYlAOzHJjfLvZnMcNO1OSk2MNJcCPdvF9uuI4Qymn929WSNdh2sBwnmK8INQA2Yk/hCkUpBUdtevGTAQJDmO/3wnF1V3UUcCgQygsPX45KVMhjfjTMxWdbNld1nRUponXnviKPpSVoztSjxDhugJnGcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244129; c=relaxed/simple;
	bh=8ZtINVwrqJmJKdkXZAFj16MJBFZQDrqOKOnZ89LFH44=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GnIy4lByiv3Vl8zxaCYGOn5Yu/J01ohIit19XWQZWwPbSFhQmlyuMrLoU9oHDQkbttPOSvW/EB1xhNuib4EoWjriRpTKG0n2V46WhCkyTdeE4eByj/sm8Amwm+WF8bau8KOaHfHjIB7hP+wMIk39q5yVsRZPmJBU7CWBEWl2HTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RRJr9K3y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5878jO4r002709
	for <devicetree@vger.kernel.org>; Sun, 7 Sep 2025 11:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=z5lwbFAbub1kacx3kQmlk5pdS6Nt779OaEy
	iq0UjVoM=; b=RRJr9K3yDCfSbGpGsRBxyGv3XzSAAwha1dtYK3gKSKFkaIwJm1G
	tGHtRodQKEK42xvyQpeesbxnycvWXGZP/ibEMDu9+4twrKr43+PpXHp4wFzWeiiM
	+mcZQNv88/EFGSQJvySRHo5IsML/VveSqSzCqqTGgMtRunp3gaCFh3G6ZCSG3fcO
	F7Rk1yD6zeTSIjmQZb/r1jLC4WM/ySn2dy+Cq55cMpFOLWKIq54jlu6Pbq2k4UzK
	VS4MOHYiM5HtuS9TvJiwU7wkQUGXwB+mUcqckB7Z4c9JCH++xfjGcJJvHdztcie6
	G2LNkXaMzhXZdSoivOugHFPgTUMQrQmkpaQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9j22qe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 11:22:06 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-728f554de59so102373876d6.0
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 04:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757244125; x=1757848925;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z5lwbFAbub1kacx3kQmlk5pdS6Nt779OaEyiq0UjVoM=;
        b=EhKGz8slCPnEL6GMY/Qa5H/CUq5lWYktPlaQlzsH57qg+zbPaCMZQ3pBSlziW8FbF4
         83ZIzUnv9OIhLfufaBRAweCzDZVHufyO1Dr88cpz0ANAdXLoww+XqYfewY6YRh/O+3wY
         94THPYJmHdXFiaGT+UPDkLnAmAktcmfKs3/G+TNI7n2PQocd7wmVS3ly3sP2jzYOg9YI
         EvTMv0C4TlAY6TmDXgVSao7rWTKjO1sDNhW2teyDiN87iHP/jISxNWTQQ8u7hY87B2QY
         kuocE5hWP9vQ8sNt3Ux0gB1CmuJyWlcn/cXCFce0IWuWQk5l1SBCja25qriAoTc/AOy4
         XONQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmXtEbruNDBE2LByT6ZfLiFnhXDqqTyAQ3z3Rn7Sb1iXImix34oHts1oQS/BVuB+mjXP+bf6o6VjEy@vger.kernel.org
X-Gm-Message-State: AOJu0YwB+kz8OrdJpU+wP+bpNDt/fuxNScIXOl1E/wbh/ZlAX4xLHq71
	JAukCw0TzB8dTMgpBqiXUqOAY+NtpGarghrxJJGb5ncHelUScJaUmkqIafaiJ40E8wHlIRuRpyq
	Xu9U9uLqrrOdnbx3Eq7Ubf2ic52DaDI4sVKTMcDyrxVIQ3C/hdGjx6sn9vUNpsh5p
X-Gm-Gg: ASbGncsobq+BmTY6hjuu/g7k6YVbPe87kwMZuTm6EAkYEJeIKvmOxK5veY2e+yQTcuK
	FqAAtR0Ql+fEZMIfr1Go9TOcZWzoGuiYMhc7tIWz1sz3XSF62IU52lGiKZouFfPymAwRndlU0xl
	jfO4rUOTx8/u4vmnAdL+bpa2KWQD8H6Co2GIh+ZSVsQt/PcWp6eRtC2xS8rClvHstnVUaukLksV
	OE3ygwaQrL7kTGmDtsvzq5qhiEUzjubgORe8HtkVZDuyyq7RP+6HN7tW87rZ7wHWiGRCan2qBqZ
	5Myb6eBUD7zcZZCbst6CbQB1PMgq8z1GPCXP+kITlRQw0pejMovJsQ==
X-Received: by 2002:a05:6214:5009:b0:707:68f2:3275 with SMTP id 6a1803df08f44-739253df0c3mr44145546d6.24.1757244125460;
        Sun, 07 Sep 2025 04:22:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKUGBYnSF5i57SFoHRunF0/Ta03rZv7tEJw8AyW7VZIM+AwWjqeSfrzDoVDUQfv2ztrpokfg==
X-Received: by 2002:a05:6214:5009:b0:707:68f2:3275 with SMTP id 6a1803df08f44-739253df0c3mr44145266d6.24.1757244125020;
        Sun, 07 Sep 2025 04:22:05 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34494776sm37523289f8f.61.2025.09.07.04.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 04:22:04 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        srini@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 00/13] ASoC: codecs: wcd93xxx: remove code duplication
Date: Sun,  7 Sep 2025 12:21:47 +0100
Message-ID: <20250907112201.259405-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfXzlWq/p5QjYnd
 UpbWpVsgclWIKV/hyjrEX9z37BbEtmC+5n0TGMbepPgDflHH+2HTXdKKaF2RlZk/FWXhq1ksZCH
 v2Vk6dyl6Hw1msCHoC9CNREMPURX8jGg9kCgtbFVA0I5BFTbuNuxgNsxDGlVVwCiBvBQdlODrWM
 c7A0W4nyO86h/pfBBg3kga6w7ahwJhNr62G/YvOuISu3rRJj+0nz3kKlY9n2SwrhMZp4P/4nTtr
 WQJ75qr6fN90v93lYfYsNq/50RuoDH6vu6wmCcs13hyIbFnwN+IKQWX/S0yc1r1jdIt2d7S+w2b
 pzldr0aSM+6JZLX9vvGkpMF4Tby+0z/19W7es46QS6GANVa9g6USg1z8sAhjUlw1lta5EolmURC
 iJUejvl6
X-Proofpoint-ORIG-GUID: nMdx38vXh0sJdXrq_-XttXVbiIUAOVwp
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68bd6ade cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=OLL_FvSJAAAA:8 a=QyXUC8HyAAAA:8 a=NNk1almXngzNn2I0ufIA:9
 a=sPFwb3Qtu_UA:10 a=kl_IBrakYWIA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=oIrB72frpwYPwTMnlWqB:22
X-Proofpoint-GUID: nMdx38vXh0sJdXrq_-XttXVbiIUAOVwp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022

All the Qualcomm WCD codecs and WCD based codecs have lots of code in
common, resulting in lot of duplicate code.
This series is an attempt to clean some of this by moving the common
code to wcd-common library or to soundwire helper functions.

Currently I have done cleanups for 4 codecs wcd934x, wcd937x, wcd938x
and wcd939x, however any new Qualcomm codecs can avoid this duplication
by using the wcd-common library.

I have also added two helpers of_sdw_find_device_by_node() and
sdw_slave_get_current_bank() in soundwire layer for the codecs to use them,
this series was already acked by Soundwire maintainer Vinod.

As original cleanup series was depending on the new soundwire interfaces
I have combined both the series as they are cleaning up code
duplications.

As am touching the same codec drivers, 2 bug fixes are also added at the
start of the series.

There is still lot of code that is duplicate, but this is just a
starting point for such cleanups.

I have tested this on T14s, any testing is appreciated.

Changes since v3:
	- fixed a typo in wcd-common.h
	- fixed wcd937x build errors reported by Kernel test robot lkp@intel.com
	- added patch to fix stub functions in wcd937x which an result
	  in build errors.
Changes since v2:
	-combined other cleanup patch series 
	("[PATCH v2 0/4] ASoC: codecs: wcd937x/8x/9x: cleanup")
	https://www.spinics.net/linux/fedora/linux-sound/msg25202.html
	into this series to make it easy to apply.
	- fixed copyright text.
	- fixed few empty spaces and re-arrage header inclusion into
	  source file.

Changes since v1:
	- add new patches to remove usage of dev_get_regmap
	- add fix to wcd937x for comp soundwire ports


Srinivas Kandagatla (13):
  ASoC: codecs: wcd937x: set the comp soundwire port correctly
  ASoC: codecs: wcd937x: make stub functions inline
  soundwire: bus: add of_sdw_find_device_by_node helper
  soundwire: bus: add sdw_slave_get_current_bank helper
  ASoC: codecs: wcdxxxx: use of_sdw_find_device_by_node helper
  ASoC: codecs: wcdxxxx: use sdw_slave_get_current_bank helper
  ASoC: codecs: wcd: add common helper for wcd codecs
  ASoC: codecs: wcd-common: move WCD_SDW_CH to common
  ASoC: codecs: wcd-common: move component ops to common
  ASoC: codecs: wcd939x: get regmap directly
  ASoC: codecs: wcd-common: move status_update callback to common
  ASoC: codecs: wcd938x: get regmap directly
  ASoC: codecs: wcd937x: get regmap directly

 drivers/soundwire/bus.c        |  12 +++
 drivers/soundwire/slave.c      |   6 ++
 include/linux/soundwire/sdw.h  |  17 ++++
 sound/soc/codecs/Kconfig       |   7 ++
 sound/soc/codecs/Makefile      |   2 +
 sound/soc/codecs/wcd-common.c  | 143 +++++++++++++++++++++++++++++++++
 sound/soc/codecs/wcd-common.h  |  46 +++++++++++
 sound/soc/codecs/wcd934x.c     |  82 ++++++-------------
 sound/soc/codecs/wcd937x-sdw.c |  67 ++-------------
 sound/soc/codecs/wcd937x.c     |  93 ++++++---------------
 sound/soc/codecs/wcd937x.h     |  24 ++----
 sound/soc/codecs/wcd938x-sdw.c |  83 +++----------------
 sound/soc/codecs/wcd938x.c     |  99 +++++------------------
 sound/soc/codecs/wcd938x.h     |  26 +-----
 sound/soc/codecs/wcd939x-sdw.c |  98 +++-------------------
 sound/soc/codecs/wcd939x.c     | 104 ++++++------------------
 sound/soc/codecs/wcd939x.h     |  32 +-------
 17 files changed, 359 insertions(+), 582 deletions(-)
 create mode 100644 sound/soc/codecs/wcd-common.c
 create mode 100644 sound/soc/codecs/wcd-common.h

-- 
2.50.0


