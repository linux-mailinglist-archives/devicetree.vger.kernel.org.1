Return-Path: <devicetree+bounces-294555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Oa6Jlzt/WlJkwAAu9opvQ
	(envelope-from <devicetree+bounces-294555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 16:04:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD6E4F78B2
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 16:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 092C13016D2F
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 14:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D2F63EC2CD;
	Fri,  8 May 2026 14:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b="N5Hvyy2t"
X-Original-To: devicetree@vger.kernel.org
Received: from out28-148.mail.aliyun.com (out28-148.mail.aliyun.com [115.124.28.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D08F3E869A;
	Fri,  8 May 2026 14:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.28.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778248980; cv=none; b=JSRT0GYnI7KFGY5iN8qkLQk8z7SsEEsgxoUsA0Y7jlt5l93XQpSi+l2nKsnLVaEZBLkv6u+HozuBa+WCxWIZ30/TDCvzUyRMHBO2Sv/J/8XTdLjm5Al3fsvPlbEwGsECCfgwuOly9GRYfCvBtAyNDN62ogE9ro1NbXSfh00k8rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778248980; c=relaxed/simple;
	bh=EHdVThZtYwy9FVFWmzPWcgDaSWT0AOQS247lpc2KIFs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GlH4wv1ThteRWOSTO44xbaXd+LvtkEH/53+sS/uoJpnB1lFPqneVF7DK1OmdLKqN76tsEzM8dYiuaxzxOFzPsEFDWqr0kE0bsMLnLfuw6BY1IqKQFClguTpF+NsBZaRoyAxA7yG4TU+oc34/EwhWrLoUymI+URIDd8Hzna6jfbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=N5Hvyy2t; arc=none smtp.client-ip=115.124.28.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lontium.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1778248970; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=plRzfbW8Qws5ho7KRsBfti1sG4WFDyy3YZ+bQe0Yb2U=;
	b=N5Hvyy2tjEVOKl0apPJmM4A8dQvI8NQlBN39fTYp0tDdKeNlhVpTCvFRwbeNKG+I2/lhh9fmyXsfamUCiX3c1wjgt8SnmzHEhTJ5l5YAe2gbDEsTnirA102pkfqxg9/3jm/hYxJ1gA7Vqd+oHiz0scI2wmzUI0BGT0b11CbG76YAZsDXbSbJunFgjqdZgw3k32ajHSGMVqJOYtl6TuKh08HvTB2qaPtVUeBGIkkJzPD8xsoPL8KOiGOgBULHjREQhbqKtK8vRy1luF03S8UISn0jba8DxprK2icJRveRX0qd8whZxf/+cRYLjO4v/bEwJxBqp4blTlMPEs5erDPYBg==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.100362|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.00363759-8.50324e-05-0.996277;FP=7802761490420370552|0|0|0|0|-1|-1|-1;HT=maildocker-contentspam033037006180;MF=syyang@lontium.com;NM=1;PH=DS;RN=22;RT=22;SR=0;TI=SMTPD_---.hSic0zK_1778248029;
Received: from DESKTOP-V2MKAT2.localdomain(mailfrom:syyang@lontium.com fp:SMTPD_---.hSic0zK_1778248029 cluster:ay29)
          by smtp.aliyun-inc.com;
          Fri, 08 May 2026 21:47:10 +0800
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
	yangsunyun1993@gmail.com,
	xmzhu@lontium.corp-partner.google.com,
	xmzhu@lontium.com,
	rlyu@lontium.com,
	xbpeng@lontium.com,
	Sunyun Yang <syyang@lontium.com>
Subject: [PATCH v6 0/2] Add Lontium LT7911EXC eDP to MIPI DSI bridge
Date: Fri,  8 May 2026 21:47:00 +0800
Message-Id: <20260508134702.4713-1-syyang@lontium.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0DD6E4F78B2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294555-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[lontium.com:s=default];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DMARC_NA(0.00)[lontium.com];
	DKIM_TRACE(0.00)[lontium.com:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c04:e001:36c::/64:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.980];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lontium.com:email,lontium.com:mid,lontium.com:dkim,0.0.0.0:email,0.0.0.1:email]
X-Rspamd-Action: add header
X-Spam: Yes

From: Sunyun Yang <syyang@lontium.com>

The LT7911EXC is an I2C-controlled bridge that Receiver eDP1.4
and output signal/dual port mipi dsi. This series introduces:

- A device tree binding YAML file describing the hardware
- A new DRM bridge driver implementing the basic functionality

Signed-off-by: Sunyun Yang<syyang@lontium.com>
---
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

 .../display/bridge/lontium,lt7911exc.yaml     |  89 ++++
 drivers/gpu/drm/bridge/Kconfig                |  13 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/lontium-lt7911exc.c    | 493 ++++++++++++++++++
 4 files changed, 596 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
 create mode 100644 drivers/gpu/drm/bridge/lontium-lt7911exc.c

-- 
2.34.1


