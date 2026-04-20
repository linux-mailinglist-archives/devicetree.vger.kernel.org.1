Return-Path: <devicetree+bounces-288494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iI2WMKyQ5WlNlgEAu9opvQ
	(envelope-from <devicetree+bounces-288494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 04:34:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7EC4264E9
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 04:34:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43B4F30031CD
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 02:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D04537646A;
	Mon, 20 Apr 2026 02:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b="deHk99Z1"
X-Original-To: devicetree@vger.kernel.org
Received: from out28-99.mail.aliyun.com (out28-99.mail.aliyun.com [115.124.28.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8401346FB5;
	Mon, 20 Apr 2026 02:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.28.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776652454; cv=none; b=rx68WbVkHqXrebgNCufJDhaAQkNHn0DrtiFhnjSIYL/Qp9UeGHjzBNoaLTPyc50I2Qpp+khVFseiOi7ddNSnv6eQ1GYG9Y2HyeSAsP7YxaGRCxCrW27+wwh6+q6JHqOBN+yDKZsOldUvs0rv0LVJJY6hHyw+bC2AOm3JJ9F9YJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776652454; c=relaxed/simple;
	bh=AViuP/vukSm1bYwBrfdZBi4rzQ2N/P77JlnIer3YrD0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=h4wNRT9bYSFJnG8LjcOXZChyTVgBxRAGMW7VhQ/HhTWQsQ+ULJAbDgMU87+S/HbQuvO7sAuiQo8xYqquhrYOhyht+1CKi7JiVcZ4LExhjxKE80C0ntiDqtE06VSemZ4GcoI8YGjyGwTGMWQKIdHtHG7Bc5daAOoUuiQKdveM2Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=deHk99Z1; arc=none smtp.client-ip=115.124.28.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lontium.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1776652443; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=TzUGLYacwsKCVW9G/6aJQu90u36lBCxZ6anY27Su7b8=;
	b=deHk99Z16E6eomWjfi+WAl3YxHIE9HCi+WTaw3nnaCdu8kcx8mSNN90rwuw5wPIuDTVzXru/mcK3O0BbOx7W4r/sxaRRh038jnyuFMimdgwLzhpz62doGosBCT39mdCJpkAEQvzhpaxuGXKXyRrezK+kJ0/MD5xeKFCAf7BBKQAMlO4u2mc1Lak9drGIQKVWJRCNKVVZrAxcfpZM+Xv/s4caiHQIq8AYpeV1hdi7OdWzIBC4651RhCxUUbGjB46nnLr1K+swWg2A1AEaXuBXZwAmTEVPBX4d2w5qnc3CDKXotS34kS2Og2anRm7u8q8oV/DSuZ9eNPyjG5vvG/WI5w==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.185872|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0215629-0.00143445-0.977003;FP=12486424288784215529|0|0|0|0|-1|-1|-1;HT=maildocker-contentspam011083013073;MF=syyang@lontium.com;NM=1;PH=DS;RN=19;RT=19;SR=0;TI=SMTPD_---.hFmvE13_1776652440;
Received: from DESKTOP-V2MKAT2.localdomain(mailfrom:syyang@lontium.com fp:SMTPD_---.hFmvE13_1776652440 cluster:ay29)
          by smtp.aliyun-inc.com;
          Mon, 20 Apr 2026 10:34:01 +0800
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
	tzimmermann@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	yangsunyun1993@gmail.com,
	xmzhu@lontium.corp-partner.google.com,
	Sunyun Yang <syyang@lontium.com>
Subject: [PATCH 0/2] Add LT7911EXC edp to mipi bridge driver
Date: Mon, 20 Apr 2026 10:33:52 +0800
Message-Id: <20260420023354.1192642-1-syyang@lontium.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288494-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[lontium.com];
	DKIM_TRACE(0.00)[lontium.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lontium.com:email,lontium.com:dkim,lontium.com:mid]
X-Rspamd-Queue-Id: 3E7EC4264E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sunyun Yang <syyang@lontium.com>

This patch series adds support for the LT7911EXC edp to mipi
bidge chip.

The LT7911EXC is an I2C-controlled bridge that Receiver eDP1.4
and output signal/dual port mipi. This series introduces:

- A device tree binding YAML file describing the hardware
- A new DRM bridge driver implementing the basic functionality 

Signed-off-by: Sunyun Yang<syyang@lontium.com>
---
Sunyun Yang (2):
  dt-bindings:bridge Add LT7911EXC binding
  drm/bridge: Add LT7911EXC edp to mipi bridge driver

 .../display/bridge/lontium,lt7911exc.yaml     |  91 +++
 drivers/gpu/drm/bridge/Kconfig                |  18 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/lontium-lt7911exc.c    | 571 ++++++++++++++++++
 4 files changed, 681 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
 create mode 100644 drivers/gpu/drm/bridge/lontium-lt7911exc.c

-- 
2.34.1


