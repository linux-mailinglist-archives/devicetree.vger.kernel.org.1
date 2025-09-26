Return-Path: <devicetree+bounces-221889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DBABA3E4E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E1484A2DEC
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 844352F547A;
	Fri, 26 Sep 2025 13:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FDvH8+yN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061D42AD2C
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758893430; cv=none; b=HA6xmcKj96N9misZ+d9uiIMCddlpDPfA+fCzRaIXoE6+/3FZaJMC0/YzTCHmvzTwv5P5lZetnEtIhqNMAY7EmIlC4Wf75ftHN2ZwzSV+l8xHESgYZ/fIBSdAKluC9rxWTswVBjwqGCA/4iXK+0o/uoSxoBECTvdTHZ9a7dRkApI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758893430; c=relaxed/simple;
	bh=sBL5VFqjA7dAOE+3fWCfFfyRLa+xg3ZQNoJJ1E1miiE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LJMbK1za9pZyp1XWjjYIgh/W88wiE2tJHzj2Gw0FjwbyVxePMXBr+VbzRqVHpxpiBZqxevvpXeMneRaUTgfCGvOQqPOV1OlIME1cADn0TRnM6XnIargcTg9ujUStrj70/H5Jc7pIGWHYLenPYcEfb5DFZ4yHiPpG/otaQboG9ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FDvH8+yN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QBAlFu019620
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=uoKwV0Sq51MNwidirUMq5Xk0YmJQ4zILgpI
	xT3e4Fyg=; b=FDvH8+yNzzEOiwaXKTY8sPYfIV8PHWJJ1jDY2JYdvEQphR4FCZ1
	naDyl/KhmBWPSkMWSbNDcMYCJMddHfoeVoZmfWPEU7Ne+envdUOvVFwmf1yfWpSX
	9VE3lBM9sG8nPokgnMWH5hBu9Iym62wzx8cBbJzz8GqdtRclAG4Wn/1oJliXTneQ
	EMeAK8Q0V931PWLUnuh4XBU4HZuT5zQWrgrdjBbyIo9zinqOThj6c/0l3LT0xWga
	tG52d9M4VGR+xojl9fURcPeHr02paFtCFihu6C3Ed8nC0C33eiLCnBX9krwatCMi
	RbYDmIWtTmx2RkEwSMhXJI25i0Jkg1zuXMA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49dsqrgbjh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:28 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-780fb254938so2044004b3a.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758893427; x=1759498227;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uoKwV0Sq51MNwidirUMq5Xk0YmJQ4zILgpIxT3e4Fyg=;
        b=ceb+VUy6u0DsW3ys+W718MCwWSa8b4UYetWSg3S0nFxzLgbJlPpCRdRAyDDmlDTlkY
         S+jbfpE9tOIejEc4V1i1Ki/9OWoyDH+VjKnyIJ3lZkP4TvkMSqSD52tA9fN3jDt6+9jR
         rB1/bXDLQle+55o18O+43HfB1aWjr7T7UL/75jOcKN7Sjf9mN5HHYvQADQvTdO/T3nDO
         +I/+WltbZHbli4iSBedvCGVesD9BE6m6eZF7dL2JnYmJrY74B5AEhf8ZT203mzFER/OR
         aiUz7HDHDtQcQWS6q+nMBvpW4JI4y9oAA7GRUV0jOieQbcair6MsXutJOXKzrb4sIAFo
         IfNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEi0EIwBySEA7eY0RLH9xOFs4boJMMI7lv8JVGazOYCB9uTCULpb4vFa0tPX0WRjH2B2aw7JDE3+yt@vger.kernel.org
X-Gm-Message-State: AOJu0YytkHXx9yGVj4IEL+HW/0ib/MTMFGQAs674hQHZQ0S9kJ6jWNoS
	+ok3nyrQLgvogllrO+Dqoztoy6/BLPf2B8oZQSmE+7yUOiAipoClDwk5H9ToS89NlporPeo6pEF
	5qdBmQxSW9MO4DKAKYkrYOlOLtN19sjwmma3yGbQfoE8OzrH2yK6IwFCdi1NLcWEQ
X-Gm-Gg: ASbGncsJXMoMWSGzFVY1jto7TuEH6lxcandLzc9kWMntyYFKm4JOxJO7iJwfuLjWcGE
	PY83iteYgfTn458uLkNTWSmDhRrbGSdJB0fn995Q8SdqiJsCHkZ+/fyJODBpQ4W9XGPG5VdI2Sb
	1KSWGYDce2xaKtxalj4Pb12xz0QuFdOlO5MNK9QkzmKByaQMeUDFuYkeTC15VJI1LAPDhwTTwyH
	iVW8pVSw3gvydOf3GCXQznHEdiU6JRsUGnmUv38HntNBrnXxvLlCc3tJd5EMv4VZh9idavNx4wu
	rDezLL59IRzMKLX+31mU6Dj5hSkWPhti5iLtLZ6x/5DcqH80oPhoyUAkQlMFlmPE1/1ZmDCCkQU
	+
X-Received: by 2002:a05:6a00:6601:b0:77d:a490:269c with SMTP id d2e1a72fcca58-780fced43b4mr5804998b3a.29.1758893427087;
        Fri, 26 Sep 2025 06:30:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGumQSX5BQbxqGqsIJENyb3Nbz5wMeh4B8GMjP3A1nfNcTm/05iiJIt6Wzbgdo06eK/BjzVQ==
X-Received: by 2002:a05:6a00:6601:b0:77d:a490:269c with SMTP id d2e1a72fcca58-780fced43b4mr5804958b3a.29.1758893426364;
        Fri, 26 Sep 2025 06:30:26 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238d321sm4504174b3a.17.2025.09.26.06.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:30:26 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v5 0/6] can: mcp251xfd: add gpio functionality
Date: Fri, 26 Sep 2025 19:00:12 +0530
Message-Id: <20250926133018.3071446-1-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: zPHeTjhXs4Qwfoi0vpvL4NyCR8rnzoG9
X-Authority-Analysis: v=2.4 cv=d8n4CBjE c=1 sm=1 tr=0 ts=68d69574 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8f9FM25-AAAA:8
 a=dBwfbOYln0D7H48MSAAA:9 a=2VI0MkxyNR6bbpdq8BZq:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: zPHeTjhXs4Qwfoi0vpvL4NyCR8rnzoG9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDEwMyBTYWx0ZWRfXyFGDks3xi0Yh
 CCEHU9uzpAcr33XnqTO/UzvwTiI+LwLZ5f5EN1XTp9u5ve8Fb2Z6/BpRpG6iEJIQa23+w/Ocils
 HjMeIxsOidE2DrKkDPK61o2F3PwVGnIRqAtQJ0iWjz+VXv8fUAXeYX/GqhNKycs/FL8K4jB5LSa
 BanquxwmgDKtGhDVgicMcnU9wjsrT/ckt15PzBBZo3uC9e2J24CbDejp2ZSpoDztjgq/iDkvgTN
 L0pvfGMZrd+Ln5dAHnXlpKmY83rgmdW3mR0EGPIbGclj7fLdyMppI52TnXWbmQXhtJa+NZY7ftw
 Mijsl3W8ZKqp7ZwANPShPsz2GVu9Lt6355fx411Lk2pAK84XvA7xo9a745Ydt7aVgluNv1pZDXf
 3zzk8zTJ6Oo75pZ5Bvq+mzNBJJFSgQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509260103

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

Changes in v2:
- picked Marcs patches from https://lore.kernel.org/linux-can/20240429-mcp251xfd-runtime_pm-v1-0-c26a93a66544@pengutronix.de/
- Drop regcache
- Add pm_runtime in mcp251xfd_gpio_request/mcp251xfd_gpio_free
- Implement mcp251xfd_gpio_get_multiple/mcp251xfd_gpio_set_multiple
- Move check for rx_int/gpio conflict to mcp251xfd_gpio_request
- Link to v1: https://lore.kernel.org/r/20240417-mcp251xfd-gpio-feature-v1-0-bc0c61fd0c80@ew.tq-group.com

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
 .../net/can/spi/mcp251xfd/mcp251xfd-core.c    | 285 +++++++++++++++---
 .../net/can/spi/mcp251xfd/mcp251xfd-regmap.c  | 114 +++++--
 drivers/net/can/spi/mcp251xfd/mcp251xfd.h     |   8 +
 5 files changed, 347 insertions(+), 66 deletions(-)

-- 
2.34.1


