Return-Path: <devicetree+bounces-214912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B30FB4FA8F
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:20:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 489894E4B88
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4E8326D62;
	Tue,  9 Sep 2025 12:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ETYLHvTa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E23D32C324
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420422; cv=none; b=lfsnC63KFcsInJTqdn4DL8zpSp03JerYah6HsGCsVgGilErVGHsttsI7MnwtfBX0t0C9Kk96By+VHv/CxjoBsh3rVscIJlK6tP+BXiX5nBygjm9iGPyQdFtjWzes0oyFuPrSTzmPCnxP65Y4ELuCz//dBgMg6WnAFF/3RLsYWww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420422; c=relaxed/simple;
	bh=Lm8x1dNhXe/j62yLxi2MMhiKLe5Zsh2B9bmPzZOZ91Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JQ19NbUGifcnmo2vFMCuvjD9iuEzC1mr+Ab37E5qKqCMkIGNrYCKVcyXmucrgavThzsrO236U/GNgJcpjBRUU2RS1R+eKhdA7upbFEbYB4QI/SvuxVB0Jd87m4g99hc+XSHq/WBHlwX/hIxy5anYieKwnwm3+wlpjqkProQpd6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ETYLHvTa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LQWd009065
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=OIiI3l8AXinxO5Zq0psA7JGhqjDb/RlHxkj
	rqIc9A3w=; b=ETYLHvTarrlQIYs3HS3K+q+W61XJcXRmJjegxmU5IcUsZPyU/P8
	QpvUPjMZ4Ckdd9vWMaTGiiZn0GoUUoWjVF6LwfArAOM818WvUBh2RoemjDpA4Hdx
	D13lPwfoesX6nguLErE1+izxfSR+eDfPb9+xfuYRCrHMzeAOSzV4OefVJVCgHIpJ
	+cwQRMsjNUMe+H3mgsOhK4BDkTJkHSk8kWHLnKx9PwZqx/Imox9yY4etC9FKRNSg
	Dr0OZNdXO2Ij2HY2MPed+J5Ro59V/iURgJMcg3sY6YRPiIqJHv4Ckf4ACGK/fBkl
	vY96HHHypXZ0kTfyha/nAktlQdo9vMx8B/Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdvyap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5f112dafeso107564891cf.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420417; x=1758025217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OIiI3l8AXinxO5Zq0psA7JGhqjDb/RlHxkjrqIc9A3w=;
        b=MFQoFm8vooZssI2S4bcD6iND1+sY4xHdZuAytdT47WyzaYceU78ZROT6vSFmX8WDmI
         ypLlLrB/KB9lUpNzZbfT3lheomFTfPHtALV8rG1FYDB04Fi2YStETrbe371fAReEpmcP
         wXODkkzI2+3Ch8IElK/GswljuIZyLLPhkgeQJp5hlov4pJsijHf52MrURE8Xsc16Xz+v
         BXjOCBe5XzZZFjGgsnEyYyg6h4zGF2Oo3N6ygNOW+1zur7UCJjhXGLTOoBw/hdaE8tEE
         vF7r6qHT5jMjfIfLRO8MA2dZl7LzBIWnNeBHnDwRhZbYUdk/iwX0qZb/FZAfd+7s6XLC
         pdqA==
X-Forwarded-Encrypted: i=1; AJvYcCVHhIA2bCR9E6hE2lI5ireVVRKx5WZJPYsvAIQBNBS1zna/DoXvaG+ADV1XXJCg4Uxsyijcxg8CuL1d@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5y9xk+YLEr82qrctS9FKvMe0l2354WQ7yh5sDMd80ZCmdv5Gq
	/fyGAVbYWb9GCh0o+0MBsxDGHCMstSbC13ZyFbed08UiJErSKjHHdvY9xn9jzsxL/p2EPO8euJU
	3/Hh0bbNBYmfamWeCkxKvBG45LJzcLwm5J21ognCK8Lfowl9pO7Fhtc0pIQ+N7PTJ
X-Gm-Gg: ASbGncsvniQ5pI75hiqxPvkCFNh7FuTj4EjvmXGRiGSxJHOmvfxn15+5ps/T3c/u911
	UwoQPWx/SG2DgVnh56xt+ghFukv2KBp1V+9+fgwuL+BQeLVztjvIxE55K2Ld28yY/h2jrOpbTJV
	1BkNGpg7G0jOfPeGjqMNuEaGdStiwb2Znb6BvK5NYvKqRj0u8AlNSDgVidGL13e+o+Q83XL2AwT
	jAZJ+oSekl76Z7B51b1hY8KXM7ZZYzXQeVkhommebaTQmHEX7qXcpctZ8u5mVYuLRlWVNcA7UuL
	eG9ZzjAK2zITaP8m98CGWOAYKeMqAg2XZDK8nnk/lmh3KRb7An+xUg==
X-Received: by 2002:a05:622a:598b:b0:4b2:8ac5:2588 with SMTP id d75a77b69052e-4b5f85ac9eemr132555981cf.79.1757420416676;
        Tue, 09 Sep 2025 05:20:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEup1sKOipRaxeNyL6Rszfemb0uK/AoYpsNHEFeAvYLJEFn3vxJoPysPVCUbb8G40/wYd7LTw==
X-Received: by 2002:a05:622a:598b:b0:4b2:8ac5:2588 with SMTP id d75a77b69052e-4b5f85ac9eemr132555491cf.79.1757420416058;
        Tue, 09 Sep 2025 05:20:16 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:15 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 00/13] ASoC: codecs: wcd93xxx: remove code duplication
Date: Tue,  9 Sep 2025 13:19:41 +0100
Message-ID: <20250909121954.225833-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: aaAQUlGGOn5AiUBQoDjRVmtQ1K6kKb7D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfXzW2MXaGIE1pn
 kHCcn2W5Nzn3vJJ3+oP1sbxSfKiXk1DfRDQtYYly0Cby9wbMxj6JvMMqu7GODjl3iOtaHcfin0d
 V8me7Xyr9slBrWZVYd8BaH54+d2v9pfj3QpN0FxYFr0pKxquruy0uXBGQZmhqpeBxTUfJPk9+CD
 gvuj13B3P8oE3OadiKHkQwnOKK/pG+ynIr6251Y0Xt06ugpVcpPVlRmOjf+ucqzZLZo0LG69UZ7
 rFIT9D4GGxAW70qVa6qtu7m9J08OMIkS/lKyxGl6X6ETYIJUKLXGBtSlEiVtiltQYDcZEZPzGAP
 mz7/vsT25HfvFkpDjahMZG7QtzJNFUD4d97pkHYrQmJjPI5YcVBb65ODY93NOC6EfjV0k+Mo1oH
 EbxpIHys
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68c01b82 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=OLL_FvSJAAAA:8 a=QyXUC8HyAAAA:8 a=NNk1almXngzNn2I0ufIA:9
 a=sPFwb3Qtu_UA:10 a=kl_IBrakYWIA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=oIrB72frpwYPwTMnlWqB:22
X-Proofpoint-ORIG-GUID: aaAQUlGGOn5AiUBQoDjRVmtQ1K6kKb7D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

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

Changes since v4:
	- fixed sparse warning of possible running over the size.

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


