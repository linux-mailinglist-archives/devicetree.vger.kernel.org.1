Return-Path: <devicetree+bounces-222958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D555BAFCA6
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E0B01C2967
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D08B9279782;
	Wed,  1 Oct 2025 09:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cs3KW9wy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E91326FDB2
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309818; cv=none; b=E+BNxxeBjqiWgSx7ZelSCGELsukPY6SwGsEKpXz4UqyB7zn93WjL0mArd5uk1AoEBP0cFtsPOHdb1crF9CV8NFPkVSeonNVxv2ORhDfjbGFL9RtYW2uYpUq1Zlv3Q6gzlu//NRcHH/RLfIrio1HsFF5JlVq/duj8pCv2T/gLWzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309818; c=relaxed/simple;
	bh=UyVEvwAYo4fSvnzb0e/4dzS8EsEpGI3fDXNtQzwqMU4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=srEv71m2Q6sY9ggvdShR16rMzGAx857S1P0spKufBovjaQbKCiDQ2rE64pwFh7BnbDnWVVThqstvpN7Us4gwyJcOfURQAr8CojYsVl9f6Z8e6Z60kthVQq2iFyGHKQ13sioQJPXGcGW+MmbCjLNInSyP2mKsHLTHNq/ap4bfaQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cs3KW9wy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ULZc6v014987
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:10:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=lNeRLPEUYWV5BSZQOFcWupcqoxEfdoUY9Dt
	Rc7VMxGo=; b=cs3KW9wyJxuoqwMzScpV8dL+thIIjvu4hqq0lU8UHHZDID0Squf
	u0f6v2bf5PAtCCUa7usQ6Tc8IozfVwPXE6RqPoKyXblRhpfy9YVtbQhXrsOFU0Ju
	WbLrMmJEdeOMjYYiKuMFLKpcxQ/A+G4g8EFm+1aApDri3bdDLBDEDsnYjIFuVGHX
	4/6TO+AWtB0bc3i366FBqi+u7uC5iUV6dEIk5q4YXog18MySutsy+47AlE1WKI42
	+LqyZCCzK2DZ6qmcZ8UJ+Fw0Bqa5d9q5f/JuP0iyYwDJ69uPbQG4F+5xJPsmM+Ie
	5//HKF+une5/7fOn8OsFXwEm1MrxMNXcKDw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr3yf1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:10:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-286a252bfbfso79670395ad.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:10:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309815; x=1759914615;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lNeRLPEUYWV5BSZQOFcWupcqoxEfdoUY9DtRc7VMxGo=;
        b=CJh6sP2HtkUJcByKFhhWjlN7IRZH6XnyOFIABAXcKIAzPSXDwfVAn5QgYX1YZP0CJR
         b2BiRzBND6ylRMpmF5IJNm6y3n5anFe1vvONPiG4OBf8am0G6O5HYU3X8Jm49+ztk3yh
         9MrKjbXKbweMEq+n87qMtc7ge6gU5lLQd+xbLcxLt/CbqYHoDNB1T58psFuvG0FbFhiJ
         BAtPXJWTlO5k5+GN6nn3vLi1Ss+mMiB/Q9bi+4Mv3jfz2Z1Q+kcf5nHof0SxnKpH0/8S
         C179FTEMieLK6ueNi/FbuBm8hMEGir0gtGAfFrIAOyvRJTkcPJicQ/wJKE2BQQHNGw/K
         lR6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1bi3SKQT0mq4GRQ6blbegriLUd8On8MjkdokLoj1xnFrgoSDi27wfJSEpdcTPE9tSFlNz3riGL0+Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxASaix1gZAN50RLXnAPa9uGk1mmepvRsf2rZPL53rQYC3orWro
	hzy5mrE/Fe+7mT7nNSxuUwE64IE5zDVdtSJcu+RZe2Ty4Xpc4pQt1pwEW+PuzWuUB4CeJx0hMwf
	QUI/HnXAYm+3ZvnKp4i1yirqBnLvV5M5jBh6LvDOVAKyuTOM1EkBSjmscSRVvM4jw
X-Gm-Gg: ASbGncu0U3rRlLJovnEv5rRtlJzYvTyZvlWWBs6xOhkLDmAegqwf7DCCUPdLNWPnXdz
	A6k9cKttgTUup3asoStn+6UeJ714a/Odx9Uu+/Ef/1jLGx7gaZHwDem4b9sxmSQgeAogsP7ffyZ
	iKw5U/xW49KkdzNceP9h4zPXB9IPl60p/CZB/zOA7vYtacBXTOzcx/awZV0BqyBNMPXzyK3fpoW
	wLR1/mw2JiK9s7/oyqFUbcPHHPuxjXm20oEReNKBkzvK0V++8N/GcmdHoeWY2tVEN5b5RKVo/4a
	uzmcBVl85M5NIIqZiZsIIVChfDQUgXkwe7WCTnByDGHC3cqc0jnMteHuMxttFRYjxcCX1ByJlu9
	Z4nTWzg==
X-Received: by 2002:a17:902:cecd:b0:25e:37ed:d15d with SMTP id d9443c01a7336-28e7ecaf7e2mr34346135ad.0.1759309814973;
        Wed, 01 Oct 2025 02:10:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfNj7f557yGS4zV0OIPzKADeCcll3WFCIzqLMSWFr6e1FWj582ctC461ZTnDu2IPH09h6TZw==
X-Received: by 2002:a17:902:cecd:b0:25e:37ed:d15d with SMTP id d9443c01a7336-28e7ecaf7e2mr34345945ad.0.1759309814463;
        Wed, 01 Oct 2025 02:10:14 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a6ea09ebsm1859315a91.2.2025.10.01.02.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 02:10:14 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v6 0/6] can: mcp251xfd: add gpio functionality
Date: Wed,  1 Oct 2025 14:40:00 +0530
Message-Id: <20251001091006.4003841-1-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: mGoA5-2iVxUkXFnHh8skJyFsdu0DGyC1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX5jsDP0jc77Z4
 aktDBWrjB0rGsKN0XnGmJOSUmRz3VrbO1OAlA2JPZh6XF2OvmDkxaY+7IJmupksFp5JGWtgHWZc
 /4+CObBwVXklCSEQRgMvMPEkaLaU0f1Fvz+sE1R02IwThJJkFEaZ94ZP2JXVOSPKfIH3avf8V6B
 3ZZr8k04OVsF3YfEdV7781hiSP5hMygrO3fhI65LtzDf0Msg7LobFuKFuBUsNGghZI2zM2KBd0A
 v3ooAya9WECCq+YXht0G49vdoT5gY/x6PX7wknIpcpH3qBJ0TrBnf+XeEfZfxC3LRxvc8+0W/XJ
 SQEB0cYliUuJriPj75hH8PpBUEkqO0KWRCKSYGo0hHxMCU+dYDn+7XTaUZoM+HP+rYFzBUZ52Ie
 NrZzhu85LPMP/1DV5a4yNk7dZCumSg==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68dceff8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8f9FM25-AAAA:8
 a=O1qDPIM8N228WRSNLNwA:9 a=uG9DUKGECoFWVXl0Dc02:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: mGoA5-2iVxUkXFnHh8skJyFsdu0DGyC1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

Hi all,

The mcp251xfd allows two pins to be configured as GPIOs. This series
adds support for this feature.

The GPIO functionality is controlled with the IOCON register which has
an erratum.

Patch 1 from https://lore.kernel.org/linux-can/20240429-mcp251xfd-runtime_pm-v1-3-c26a93a66544@pengutronix.de/
Patch 2 refactor of no-crc functions to prepare workaround for non-crc writes
Patch 3 is the fix/workaround for the aforementioned erratum
Patch 4 only configure pin1 for rx-int
Patch 5 adds the gpio support
Patch 6 updates dt-binding

As per Marc's comment on below patch, we aim to get this series into
linux-next since the functionality is essential for CAN on the RB3 Gen2
board. As progress has stalled, Take this series forward with minor code
adjustments. Include a Tested-by tag to reflect validation performed on the
target hardware.

https://lore.kernel.org/all/20240806-industrious-augmented-crane-44239a-mkl@pengutronix.de/
---
Changes in v6:
- Simplified error handling by directly returning regmap_update_bits() result.
- Added Acked-By tag.
- Link to v5: https://lore.kernel.org/all/20250926133018.3071446-1-viken.dadhaniya@oss.qualcomm.com/

Changes in v5:
- Removed #ifdef GPIOLIB and added select GPIOLIB in Kconfig
- Rebased patch on latest baseline
- Resolved Kernel Test Robot warnings
- Link to v4: https://lore.kernel.org/all/20250918064903.241372-1-viken.dadhaniya@oss.qualcomm.com/

Changes in v4:
- Moved GPIO register initialization into mcp251xfd_register after enabling
  runtime PM to avoid GPIO request failures when using the gpio-hog
  property to set default GPIO state.
- Added Tested-by and Signed-off-by tags.
- Dropped the 1st and 2nd patches from the v3 series as they have already been merged.
- Link to v3: https://lore.kernel.org/linux-can/20240522-mcp251xfd-gpio-feature-v3-0-8829970269c5@ew.tq-group.com/

Changes in v3:
- Implement workaround for non-crc writes
- Configure only Pin1 for rx-int feature
- moved errata check to .gather_write callback function
- Added MCP251XFD_REG_IOCON_*() macros
- Added Marcs suggestions
- Collect Krzysztofs Acked-By
- Link to v2: https://lore.kernel.org/r/20240506-mcp251xfd-gpio-feature-v2-0-615b16fa8789@ew.tq-group.com

---
Gregor Herburger (5):
  can: mcp251xfd: utilize gather_write function for all non-CRC writes
  can: mcp251xfd: add workaround for errata 5
  can: mcp251xfd: only configure PIN1 when rx_int is set
  can: mcp251xfd: add gpio functionality
  dt-bindings: can: mcp251xfd: add gpio-controller property

Marc Kleine-Budde (1):
  can: mcp251xfd: move chip sleep mode into runtime pm

 .../bindings/net/can/microchip,mcp251xfd.yaml |   5 +
 drivers/net/can/spi/mcp251xfd/Kconfig         |   1 +
 .../net/can/spi/mcp251xfd/mcp251xfd-core.c    | 273 +++++++++++++++---
 .../net/can/spi/mcp251xfd/mcp251xfd-regmap.c  | 114 ++++++--
 drivers/net/can/spi/mcp251xfd/mcp251xfd.h     |   8 +
 5 files changed, 335 insertions(+), 66 deletions(-)

-- 
2.34.1


