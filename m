Return-Path: <devicetree+bounces-291464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uA5nDkPU8Wm3kgEAu9opvQ
	(envelope-from <devicetree+bounces-291464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 11:49:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB40D4924D0
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 11:49:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96A1C3019B95
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 09:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A96263B47E2;
	Wed, 29 Apr 2026 09:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OjJHnibv"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484673ACF0C;
	Wed, 29 Apr 2026 09:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455907; cv=none; b=rkP3DdoiBT7zM+O67JwSGTNY5Z0yUrlKb2GsK6AJhII0HmzNIFNR6LkDitET/UiUU0+w+ks/j4JiwnKx+8CN0LeTaVHCkAn793Hy6xSZEomOwHF78JxK2nml5kBDSLbL20dNjEEZoMuoHhhvbdDMMw5kjKB8ke8oJtKkYAKOUCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455907; c=relaxed/simple;
	bh=lq7N+2TMLsd9INSTBHiMUUyVQJXO3AKC2EQZHsgXO4Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qW9JOsb1geLSM8odtSnnmFIxeAE3AyXGd6cmKvtr5kX1FHafmwRrTv0TetjF4dyxAvoC6xDCTUc5LE0Xe/ACoTw7ath+zgM+mi0OMTQGiytwZLNiS7hd1T/9gPJCF24/ZgYM8hzWaTE4bX1Hv4EwCmf1nyU/b29Y8jpxGzYDy2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OjJHnibv; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777455904;
	bh=lq7N+2TMLsd9INSTBHiMUUyVQJXO3AKC2EQZHsgXO4Q=;
	h=From:Subject:Date:To:Cc:From;
	b=OjJHnibvt90JzFz9DoM6y7imNJLIYUNK0ExTlH1LfxLIX/tjy9/3jJ009JpuWruoF
	 vzJ18QZSfEO94XppPh6W3IdssYhzPO/ZYL/wCjXnBO12ceNF97wREOJ6YzJgsIDKXT
	 18ZVh3Wbo1uzpXb3+v+m5TWkdQ9xeKwZf0V1B48mFCGh163kcZMm1t2mORVezE5okd
	 vb6gTzpa/Nq+nWiIalJKj8s8CjosvK/lyezTVy/SOrGcmbha3aa20znbYnBtcf+rJu
	 Yd0dOlKu1JD4OaOataB/NIgne+U9NV8vjsSyog7XczfYikpLmAXtHNwXXsRdsOfr/P
	 AOXYhWm19ddqQ==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 04C7A17E12E5;
	Wed, 29 Apr 2026 11:45:02 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH 0/9] MT6365 PMIC support cleanup
Date: Wed, 29 Apr 2026 11:44:13 +0200
Message-Id: <20260429-mediatek-genio-mt6365-cleanup-v1-0-6f43838be92f@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/zWNQQ7CIBAAv9Ls2U2QVoL9iukBYVs3ClSgpknTv
 0tsPM4cZjbIlJgy9M0GiT6cOYYK51MD9mHCRMiuMkghleikRk+OTaEnThQ4oi+qVRe0LzJhmVF
 Z53Rn21FcNdTGnGjk9de/DQcnei91Uw4Jd5MJbfSeS98EWgv+VzDs+xcBiL26oAAAAA==
X-Change-ID: 20260428-mediatek-genio-mt6365-cleanup-6cdd84c3f098
To: Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Chen Zhong <chen.zhong@mediatek.com>, Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>
Cc: kernel@collabora.com, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-input@vger.kernel.org, linux-iio@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777455902; l=2418;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=lq7N+2TMLsd9INSTBHiMUUyVQJXO3AKC2EQZHsgXO4Q=;
 b=HJi/WQP85IC64GbSSISNtK93roWE/r528Oy00lWKTLscMvosH0AUECdbPfAGGlPy3SY0FzFgw
 VK4zU5VAE5sCa1yzCNGFRUVJSJx6wU/4OwUQXavHv1nepfMc3vv2Bl1
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Rspamd-Queue-Id: CB40D4924D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291464-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,collabora.com,baylibre.com,analog.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:dkim,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Several Mediatek and Radxa boards, based on MT8370, MT8390 or MT8395
SoC, integrate the MT6365 PMIC, that is a MT6359P variant:
 - Mediatek Genio 1200-EVK
 - Mediatek Genio 700-EVK
 - Mediatek Genio 510-EVK
 - Radxa NIO-12L
It is compatible with the MT6359 PMIC.

But both MT6365 PMIC support and compatibility were never expressed in
the dt-bindings and there is no MT6365 include file as well.
So, since these board support was introduced, their devicetrees use the
mt6359 include file to enable this PMIC support. 

The goal of this series is to clean this support by adding the missing
compatible strings for this MFD main and subdevices in the dt-bindings,
and add a include for MT6365 definitions to replace the MT6359 include
in these board devicetrees and for future ones (like Genio 520/720
EVKs).

The series is based on linux-next tree (tag: next-20260428) and has
been tested on Mediatek Genio 510, 700 and 1200-EVK boards.

---
Louis-Alexis Eyraud (9):
      dt-bindings: mfd: mediatek: mt6397: Add rtc for MT6359
      dt-bindings: mfd: mediatek: mt6397: Add MT6365 PMIC support
      dt-bindings: input: mediatek,pmic-keys: Add MT6365 support
      dt-bindings: iio: adc: mt6359: Add MT6365 PMIC AuxADC
      arm64: dts: mediatek: mt6359: use proper compatible for rtc
      arm64: dts: mediatek: add MT6365 PMIC include
      arm64: dts: mediatek: mt8390-genio-common: use MT6365 PMIC definitions
      arm64: dts: mediatek: mt8395-genio-common: use MT6365 PMIC definitions
      arm64: dts: mediatek: mt8395-radxa-nio-12l: use MT6365 PMIC definitions

 .../bindings/iio/adc/mediatek,mt6359-auxadc.yaml   | 17 +++++++++-----
 .../bindings/input/mediatek,pmic-keys.yaml         | 21 ++++++++++-------
 .../devicetree/bindings/mfd/mediatek,mt6397.yaml   | 14 ++++++++++++
 arch/arm64/boot/dts/mediatek/mt6359.dtsi           |  4 ++--
 arch/arm64/boot/dts/mediatek/mt6365.dtsi           | 26 ++++++++++++++++++++++
 .../boot/dts/mediatek/mt8390-genio-common.dtsi     |  8 +++----
 .../boot/dts/mediatek/mt8395-genio-common.dtsi     |  8 +++----
 .../boot/dts/mediatek/mt8395-radxa-nio-12l.dts     |  6 ++---
 8 files changed, 77 insertions(+), 27 deletions(-)
---
base-commit: 0f3ef35b0747832b58b97171bad99011d084c6b1
change-id: 20260428-mediatek-genio-mt6365-cleanup-6cdd84c3f098

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


