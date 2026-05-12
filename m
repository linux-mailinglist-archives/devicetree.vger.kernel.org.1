Return-Path: <devicetree+bounces-296051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mP7fBq/NAmo+wwEAu9opvQ
	(envelope-from <devicetree+bounces-296051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 08:50:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6643D51B465
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 08:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0AE1B3103F46
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:41:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A88A42983A;
	Tue, 12 May 2026 06:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b="cbWNv0eU"
X-Original-To: devicetree@vger.kernel.org
Received: from out198-23.us.a.mail.aliyun.com (out198-23.us.a.mail.aliyun.com [47.90.198.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A0A4EA364;
	Tue, 12 May 2026 06:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=47.90.198.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778568055; cv=none; b=l6sV2r+qcSH8lNzk81ww61U492I9iFkkX9qruOB9iIdG7Tz90IgwaD0ZwuNCW06rtyYdSHm6SZ9ScsnLdg1gsAMwe1nrCNj7/vqy9Jws2hGcAeZ2/ZKXxOneJ2n4Kk2wwPheWhETXna1fcLgXYQLeUJ2ym17PwcEwdc52IQZ/48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778568055; c=relaxed/simple;
	bh=f3wKg8R35TS4gMhiVc/cHw1X44qSCFe4iPAa/tXPFrI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=jdHxkVzkhO7sQI1UJ5RX+uOJ3bzvZXiza4esdOqFZOGdFTIcjeMdFpi1qelc5hsQrtuZMakq3ATNbTJhIy2pPcvoOIZO4LBYBq/SDsP2zcLsE8HfJkbtonFlNMDTPfn7KQTwUPBLxeArkcLiZ/hvTi+OR+2DKl+TncSr2IVfgf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=cbWNv0eU; arc=none smtp.client-ip=47.90.198.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lontium.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1778568020; h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
	bh=JW+7j7UCki/gpLvrThuhrppT/b1Nb9OAApGo1N8SQUE=;
	b=cbWNv0eUQLG/nb6oqCI+fzbj7k+xwkaO+g3l8VIWgiQBwVul96+Ld3t16fU7fF5Tr/vkiy60lkRgXsK731a3G0e2KD8FmI/g7fTuRVvGOUZPKuvt/BPUiogUh5srjDLg37tnE8Vvzo49S0xDpIXcrdDIxcc5qy+ZgFpI1q9AoylmPMyJmyATKhdLg1j0NB9w1MrAXXY7mv8qjCScEgzFTTseklHOW5Do2ttEwcJGrri5ZFX0Ln9QC/bKi7e4H37RFghuN1nbDh5MebQtmP0GdEKerIndqCSSJD+1Bkm05QCPBoV1ndd1BAy3MZgJOVHy0We3UVwHNqadUt/LJOJ1VA==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.08034152|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.00515962-0.000134268-0.994706;FP=7586586509019170168|0|0|0|0|-1|-1|-1;HT=maildocker-contentspam033045213054;MF=syyang@lontium.com;NM=1;PH=DS;RN=21;RT=21;SR=0;TI=SMTPD_---.hVBka-7_1778568017;
Received: from DESKTOP-V2MKAT2.localdomain(mailfrom:syyang@lontium.com fp:SMTPD_---.hVBka-7_1778568017 cluster:ay29)
          by smtp.aliyun-inc.com;
          Tue, 12 May 2026 14:40:18 +0800
From: syyang@lontium.com
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com,
	maarten.lankhorst@linux.intel.com,
	rfoss@kernel.org,
	mripard@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	xmzhu@lontium.corp-partner.google.com,
	xmzhu@lontium.com,
	rlyu@lontium.com,
	xbpeng@lontium.com,
	Sunyun Yang <syyang@lontium.com>
Subject: [PATCH v7 0/2] Add Lontium LT7911EXC eDP to MIPI DSI bridge
Date: Tue, 12 May 2026 14:40:11 +0800
Message-Id: <20260512064013.40066-1-syyang@lontium.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6643D51B465
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-296051-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[lontium.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lontium.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email,0.0.0.0:email,lontium.com:email,lontium.com:mid,lontium.com:dkim]
X-Rspamd-Action: no action

From: Sunyun Yang <syyang@lontium.com>

The LT7911EXC is an I2C-controlled bridge that receives eDP1.4
and output mipi dsi. This series introduces:

- A device tree binding YAML file describing the hardware
- A new DRM bridge driver implementing the basic functionality

Signed-off-by: Sunyun Yang<syyang@lontium.com>
---
Change in v7:
- dt-binding:
 1. fix commit message typos(Receiver、signal)                            [sashiko-bot]
 2. remove the ambiguity caused by "signal/dual".
- drm/bridge:
 1. using devm_regulator_get_enable avoids power leaks.                   [sashiko-bot]
 2. set reset gpio is low after cutting off power in lt7911exc_remove function, avoid backpowering.
 3. synchronous request_firmware() call cause a permanent probe failure if the driver is built-in,
    probe executes before the root filesystem is mounted, which would cause this to fail with -ENOENT,
    we have removed this functionality. Use trigger to upgrade.
 4. add `depends on I2C` and `select REGMAP_I2C` in Kconfig.
 5. add return value of `devm_drm_bridge_add()` in `probe()`.
 6. add directly header files (linux/slab.h, linux/delay.h, linux/regulator/consumer.h)
- Link to v6: https://lore.kernel.org/lkml/20260508134702.4713-1-syyang@lontium.com/

Change in v6:
- dt-binding:
- drm/bridge:
 1. use #define FW_FILE  "Lontium/lt7911exc_fw.bin" to match linux-firmware
- Link to v5: https://lore.kernel.org/lkml/20260506013153.2240-1-syyang@lontium.com/

Change in v5:
- dt-binding:
- drm/bridge:
 1. Change "mipi" to "mipi dsi" in the commit message.     [Dmitry]
 2. Change "eDP/MIPI" to "eDP/MIPI DSI" in Kconfig.
- Link to v4: https://lore.kernel.org/lkml/20260430094612.3408174-1-syyang@lontium.com/

Change in v4:
- dt-binding:
 1. Fix the missing spaces on the "subject".             [Krzysztof]
 2. Fix the error descriptions for port@0 and port@1.
- drm/bridge:
- Link to v3: https://lore.kernel.org/lkml/20260429040541.3404116-1-syyang@lontium.com/

Change in v3:
- dt-binding:
- drm/bridge:
 1. already submit lt7911exc_fw.bin to linux-firmware.  [Dmitry]
 2. remove lt7911exc_remove function.
 3. drop  the "lontium, "  in lt7911exc_i2c_table.
- Link to v2: https://lore.kernel.org/lkml/20260428063224.3316655-1-syyang@lontium.com/

Change in v2:
- dt-binding:
 1. reset pins use active low.                        [Dmitry]
- drm/bridge:
 1. use atomic_* callbacks.                           [Quentin]
 2. fix the incorrect formatting and spaces.
 3. add the required header files.                    [Dmitry]
 4. remove "enabled" flag.
 5. remove *fw from the lt7911exc struct.
 6. .max_register and .range_max use actual range.
 7. regulator use bulk interface.
 8. use dev_err_probe, devm_mutex_init and devm_drm_bridge_add.
 9. Replace GPL v2 with GPL.
- Link to v1: https://lore.kernel.org/lkml/20260420023354.1192642-1-syyang@lontium.com/
---
Sunyun Yang (2):
  dt-bindings: bridge: Add Lontium LT7911EXC eDP to MIPI DSI bridge
  drm/bridge: Add Lontium LT7911EXC eDP to MIPI DSI bridge

 .../display/bridge/lontium,lt7911exc.yaml     |  89 +++
 drivers/gpu/drm/bridge/Kconfig                |  15 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/lontium-lt7911exc.c    | 514 ++++++++++++++++++
 4 files changed, 619 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
 create mode 100644 drivers/gpu/drm/bridge/lontium-lt7911exc.c

-- 
2.34.1


