Return-Path: <devicetree+bounces-312716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EOQXDnAAMmpctgUAu9opvQ
	(envelope-from <devicetree+bounces-312716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 04:03:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 877E6696094
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 04:03:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=analog.com header.s=DKIM header.b=rzKv7yKb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312716-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312716-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=analog.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57B03300CBD5
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 02:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBBF529AAFA;
	Wed, 17 Jun 2026 02:03:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289091A0B15;
	Wed, 17 Jun 2026 02:03:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781661805; cv=none; b=uCHC+wNn2w7KVcLeqvQvdgjKp0em81NzjxAptVPbZv8sS17Iv6F9Ya7/QQTLyMkkEtO4/vYlS6ZME0PAdkBoWuh/nFckfR7XDfcDaxset9JqOLwqPxEfiIXY7nUSA2cV8X/X6VWkyw2YC82wIJfT9hlOVv9UGP9yQZ5zLNimzmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781661805; c=relaxed/simple;
	bh=24j6PEd3NcL++Hp6f/tHkNKvblCNfs+j5MRP9b19oI4=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=QUXCvipPEDpKra8YNv44+t1AvW4hYKBKTDpCSuhy31AHMWedDAsAgXfusWp2WKyAejI33fZ7P++Ilv9iGjeC5voviOtp8oJFkLpBsSc1boum6bafCc9VGwgylzzUqqZcikWmyMD0lNevotxxcda4QC/tF2bum2EQMDSWP4Wbqu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=rzKv7yKb; arc=none smtp.client-ip=148.163.135.77
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GLWg0D878593;
	Tue, 16 Jun 2026 22:03:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=K6OCkd47mOOsywm1oPtFeQpPj2R
	x7ld/M9dmFJbRTEs=; b=rzKv7yKb7q4E9/cahvlOg19cGA4AE1bLe+oREBIDkR/
	YmQEl5ye8nrYSYqphbfOZjSstRD+qXuYHapt+igxYzTLwOfRmCaez1+qzMmOxoKg
	SGsifew9HaOnKeIUp3PcWRgH27xb9o67bPdNKnZbZG1PHpVBT9RgXt9CYHqwkHH4
	X63qCA235NKvEcedET5UzO0Bl1zt0c/DtuX47PF6KDhZVSsmzDLTX7FchebN/Skm
	SHLCqt5xTxtMReDqBn/U/jJdgkvSnwtkseImu08or55sEvSpRyFZYynshDX0gvWz
	dgl2mZtqNrB5EeAOBcCfaI1W5IzcVaKrI8p+O0x2Psw==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4euegdrs3g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Jun 2026 22:03:08 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 65H237Va013928
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 16 Jun 2026 22:03:07 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Tue, 16 Jun
 2026 22:03:07 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Tue, 16 Jun 2026 22:03:07 -0400
Received: from work.maxim-ic.internal ([10.66.6.192])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 65H22sQq006703;
	Tue, 16 Jun 2026 22:02:56 -0400
From: Marcelo Schmitt <marcelo.schmitt@analog.com>
To: <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: <jic23@kernel.org>, <nuno.sa@analog.com>, <Michael.Hennerich@analog.com>,
        <dlechner@baylibre.com>, <andy@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <pop.ioan-daniel@analog.com>, <marcelo.schmitt1@gmail.com>
Subject: [PATCH v3 0/5] iio: adc: Add support for LTC2378 and similar ADCs
Date: Tue, 16 Jun 2026 23:02:45 -0300
Message-ID: <cover.1781661028.git.marcelo.schmitt@analog.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE3MDAxNyBTYWx0ZWRfX1RmaMjgFws9B
 Nsd6LPjF3WnJJOR/w62oP5rCGSZZhPzeDizyvNlMvCMHZHjhXzumARyWe5FbgTgqzAYK6Z9RID4
 TgZu7HXbtNC4Vmg1TdGRwR79D/ssqkHiP084OHrZ+nDzbUoUisljZ4tAF8/ogq9OkbRXx/ua3k5
 lbRgqImKA/ZSmEX7Q0oyvNVevcjgT1DL2MdCBjAPIIhiQQOrIY5MyxM4G9g2V53fgJXgaxqhQ3w
 0cBv2a9OuBXmUYaIJTCHYRZR+SEjzk49VgByUwxzKegYblPPFlsfumE4Da1D63LfdnHMa+gPcUG
 oe/ErfQ9lgGlwd+9SSO1CL5D05jUp1ZqfEfgOmjNpAAW4X+KhfkV6j6DzA+tzvx5kVpUPrxl7Gf
 jVVSPMSBJJmroqmdUeS/qLp1vZc1PB2Vi/J+EbJb2qbBU94kdpzf9Q86kHrxnGgD3b3FVIYr8ZH
 QTu1DBrsuVE/pUOt+Vw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE3MDAxNyBTYWx0ZWRfX8j6kh8VWPLDC
 jnM7ZxAw7yE00DzZh16hvbN9inKzfmtN9rgiN+0ZhaKrOMZW9Tn8q1TeDId/elIdXJwUYzPpLXb
 M+j5VaL564Qmeyf/vzI47OJ+JDSYNPyEoh/iAZMBiMzedIeD7Ip5
X-Authority-Analysis: v=2.4 cv=BbvoFLt2 c=1 sm=1 tr=0 ts=6a32005c cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=0sLvza09kfJOxVLZPwjg:22
 a=N--XFCr6TIEc_64PeIT2:22 a=gAnH3GRIAAAA:8 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=6obF6lvjxA8WYllX4Z4A:9
X-Proofpoint-GUID: js29MJKG-svJRD53rZhCZpy0v-cZhwaJ
X-Proofpoint-ORIG-GUID: js29MJKG-svJRD53rZhCZpy0v-cZhwaJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_05,2026-06-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606170017
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pop.ioan-daniel@analog.com,m:marcelo.schmitt1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:marceloschmitt1@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,gmail.com];
	FORGED_SENDER(0.00)[marcelo.schmitt@analog.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-312716-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcelo.schmitt@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:dkim,analog.com:mid,analog.com:url,analog.com:from_mime];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 877E6696094

This patch series adds support for LTC2378 and similar low noise, low power,
high speed, successive approximation register (SAR) ADCs. These ADCs are similar
among each other, varying mainly on the amount of precision bits, maximum sample
rate, and input configuration (either fully differential or pseudo-differential).

The first patch adds device tree documentation for LTC2378.

The second patch enables single-shot sample read with a GPIO connected
to the LTC2378 CNV pin.

The third patch extends IIO DMAengine buffer interface to make
sampling_frequency and sampling_frequency_available buffer attributes.

The fourth patch enables high-speed data captures with SPI offloading.
The setup is similar to AD4030, with a specialized PWM generator being used both
for SPI offload triggering and conversion start signaling.

The last support patch enables running buffered data captures without SPI offloading.

Even though these parts are somewhat similar to AD4000, the wiring configuration
for LTC parts is different as well as the available HDL for high speed sample
rate mode. Because of that, I propose creating a new device driver for
supporting LTC2378-like devices.

Specifications can be found at:
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/233818fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/236416fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/236418f.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/236716fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/236718f.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/236816f.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/236818f.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/236918fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237016fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237616fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237618fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237620fb.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237716fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237718fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237720fb.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237816fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237818fa.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237820fb.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/237918fb.pdf
Link: https://www.analog.com/media/en/technical-documentation/data-sheets/238016fb.pdf

Some structures and variables are introduced earlier to reduce diff in latter patches.

The initial version of the LTC2378 driver was developed by Ioan-Daniel. Though,
despite of the many changes I made to the code, I've kept him as module author
to provide credit for his work.

Previous submissions:
  v2: https://lore.kernel.org/linux-iio/cover.1779976379.git.marcelo.schmitt@analog.com/
  v1: https://lore.kernel.org/linux-iio/cover.1779117444.git.marcelo.schmitt1@gmail.com/

Change log v2 -> v3:
[DT]
- Re-added device tree fallback compatibles for LTC2378 chips, now with options
  to provide a single compatible string or a pair of single compatible string
  plus a fallback string to a slower sample rate spec in case a driver for the
  specific part is not found.
[IIO]
- Restricted LTC2378 dependency list to require GPIO
- Use datasheet terminology to indicate polarity/output code.
- Added missing block scope to IIO_DEV_ACQUIRE_DIRECT_MODE.
- Added missing static inline modifier to function stubs declared in header file.
- Fixed the evaluation loop conditions for CNV PWM and SPI Engine trigger PWM,
  avoiding potential infinite loop if and CPU stall.
- Added comment to about initial PWM disable.
- Adjusted SPI offload setup initialization to not print error on a valid condition.
- Fully initialize IIO channel scan_type.
- Reworked to make offload support not imply all dependencies to be built in.
- Made sampling_frequency a buffer attribute.
- Made offload support not require DMA and other features to be built in.
- Now using same scan_type configuration for all use cases.

With best regards,
Marcelo


Marcelo Schmitt (5):
  dt-bindings: iio: adc: Add ltc2378
  iio: adc: ltc2378: Add support for LTC2378-20 and similar ADCs
  iio: buffer: Extend DMAengine buffer interfaces to take extra sysfs
    attributes
  iio: adc: ltc2378: Enable high-speed data capture
  iio: adc: ltc2378: Enable triggered buffer data capture

 .../bindings/iio/adc/adi,ltc2378.yaml         | 160 ++++++++
 MAINTAINERS                                   |   8 +
 drivers/iio/adc/Kconfig                       |  30 ++
 drivers/iio/adc/Makefile                      |   7 +
 drivers/iio/adc/ad4000.c                      |   3 +-
 drivers/iio/adc/ad4030.c                      |   3 +-
 drivers/iio/adc/ad4691.c                      |   3 +-
 drivers/iio/adc/ad4695.c                      |   2 +-
 drivers/iio/adc/ad7380.c                      |   2 +-
 drivers/iio/adc/ad7606_spi.c                  |   2 +-
 drivers/iio/adc/ad7768-1.c                    |   3 +-
 drivers/iio/adc/ad7944.c                      |   2 +-
 drivers/iio/adc/ad_sigma_delta.c              |   2 +-
 drivers/iio/adc/ltc2378-lib-core.c            |  50 +++
 drivers/iio/adc/ltc2378-offload-buffer.c      | 305 ++++++++++++++
 drivers/iio/adc/ltc2378-triggered-buffer.c    |  49 +++
 drivers/iio/adc/ltc2378.c                     | 384 ++++++++++++++++++
 drivers/iio/adc/ltc2378.h                     | 120 ++++++
 .../buffer/industrialio-buffer-dmaengine.c    |  19 +-
 drivers/iio/dac/ad5791.c                      |   2 +-
 drivers/iio/dac/ad8460.c                      |   2 +-
 drivers/iio/dac/adi-axi-dac.c                 |   2 +-
 include/linux/iio/buffer-dmaengine.h          |  16 +-
 23 files changed, 1151 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ltc2378.yaml
 create mode 100644 drivers/iio/adc/ltc2378-lib-core.c
 create mode 100644 drivers/iio/adc/ltc2378-offload-buffer.c
 create mode 100644 drivers/iio/adc/ltc2378-triggered-buffer.c
 create mode 100644 drivers/iio/adc/ltc2378.c
 create mode 100644 drivers/iio/adc/ltc2378.h


base-commit: a50909aa46dec46de3c73235fc15a7d6f763d996
-- 
2.53.0


