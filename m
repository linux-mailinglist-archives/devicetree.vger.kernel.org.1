Return-Path: <devicetree+bounces-30083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED5882672D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 02:48:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6DE21C21828
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 01:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E476D6D9;
	Mon,  8 Jan 2024 01:48:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF02F8BF3;
	Mon,  8 Jan 2024 01:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=richtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=richtek.com
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(636803:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Mon, 08 Jan 2024 09:47:30 +0800 (CST)
Received: from ex4.rt.l (192.168.10.47) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.27; Mon, 8 Jan
 2024 09:47:29 +0800
Received: from linuxcarl2.richtek.com (192.168.10.154) by ex4.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1258.27 via Frontend
 Transport; Mon, 8 Jan 2024 09:47:29 +0800
From: <cy_huang@richtek.com>
To: Jonathan Cameron <jic23@kernel.org>
CC: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, ChiYuan Huang <cy_huang@richtek.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	<linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/2] RTQ6056: Add compatible for the same chip family
Date: Mon, 8 Jan 2024 09:47:26 +0800
Message-ID: <cover.1704676198.git.cy_huang@richtek.com>
X-Mailer: git-send-email 1.8.3.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

From: ChiYuan Huang <cy_huang@richtek.com>

RTQ6053 and RTQ6059 are the same RTQ6056 family.
The differences are listed below
- RTQ6053
  Only change chip package type
- RTQ6059
  1. Enlarge the shunt voltage sensing range
  2. Shrink the pinout for VBUS sense pin
  3. Due to 1, the scale value is also changed

Since v5:
- Correct field names for rtq6059 bitfield declaration

Since v4:
- Remove the unused chip type enum
- Directly return in switch case of read_channel function
- Refine in write_raw switch case for IIO_CHAN_INFO_SAMP_FREQ
  If sample frequency is fixed, return invalid and break switch case
- Use devdata->num_channels to replace the predefined constant
- Change the rtq6059 difference part for the control bitfield name from
  the general 'F_xxx' to 'F_RTQ6059_xxx'
- Fix rtq6059 average sample variable store problem in 'set_average' function

Since v3:
- Add Reviewed-by tag in binding document patch
- Resotre the enum for control field.
- Put all the predefined datas/callbacks in dev_data.
- Remove the unused 'rtq6059_info'.
- Change 'default_conv_time' to 'default_conv_time_us'.
- Move the comment for default config above the dev_data setting line.

Since v2:
- Refine the description of 'compatible' property

ChiYuan Huang (2):
  dt-bindings: iio: adc: rtq6056: add support for the whole RTQ6056
    family
  iio: adc: rtq6056: Add support for the whole RTQ6056 family

 .../bindings/iio/adc/richtek,rtq6056.yaml     |   9 +-
 drivers/iio/adc/rtq6056.c                     | 275 ++++++++++++++++--
 2 files changed, 263 insertions(+), 21 deletions(-)


base-commit: 610a9b8f49fbcf1100716370d3b5f6f884a2835a
-- 
2.34.1


