Return-Path: <devicetree+bounces-288535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMjcHxzG5WlIoAEAu9opvQ
	(envelope-from <devicetree+bounces-288535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 08:22:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E564272AD
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 08:22:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81C45300DA5E
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 06:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79CF381AFF;
	Mon, 20 Apr 2026 06:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b="eywXAyTF"
X-Original-To: devicetree@vger.kernel.org
Received: from out28-219.mail.aliyun.com (out28-219.mail.aliyun.com [115.124.28.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104483815F8;
	Mon, 20 Apr 2026 06:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.28.219
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776666137; cv=none; b=LY+TW1RBMENJN3wDm6q/dzklVj/ZEA0C0TcrBlGD6QGZzDbND5sW7WzyQdUFWCq64jiJQy94jDkRDzN5TpfZZV8iqJlhYnQ9kxnxeiiXZ/l8R/ARBCiFJZo/yctRALExjQigo8SOSoNWWPMTA4Ogomhel6VtqsJBEeiS9ArsBLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776666137; c=relaxed/simple;
	bh=aSzx8ligpJz+V1IfmgO27fs8nAFy4undncnvBb3GN2M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=usseVRe9N/lMx7t7ipIgieA1RDGLvKPuOU9KmAuNuSlH9drlj76WP5vzm0fsc2CIB7hK6mX4A9ozpya+fg5G4FKpeDmlHTu9J1c6y8dZXyo8qd5rMOKH/PWVpRiR36IaQSTYzqwfJwpLb/hhnzoHYk7zFkgeJxJSpPlz1QbA3JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=eywXAyTF; arc=none smtp.client-ip=115.124.28.219
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lontium.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1776666131; h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
	bh=fz8ZCV6KPGHfcgLZir30aImQqrHMaqA6nm9Cs0iqeIw=;
	b=eywXAyTFf/GUvfoHBQBKwWchBnhWxAdz737vaxzxKZ6T+sf3zoKfrHgZ5Fn16yKj45HX9D//67JnQuhW/Qbs14oc00qtedjn2S0dQQbR08i+bga5dQHoH9Y/wiZMlCzCQu2RrPFsAOLYpk7zWHr5xGgwgR8oD5woVFaRgw+1VAPuJf8AuvQrjf1RZPmfwo/9kPO+dazYeSjZ757ORkWE2HXKpYozEZjdgoo1Y4knEdEpG8JW7MdNlUN0lZQ9utV14Jo2eJzEHi1MJAzRhJNBNGdWKgKtvp3TAgrVmKv9lHDpK4zYyu4EjSTzKg1oTKRUtNIEHnx6eEjXWR19sT4wug==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.09271921|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0545463-0.00504074-0.940413;FP=10089197397812664209|0|0|0|0|-1|-1|-1;HT=maildocker-contentspam033045220102;MF=syyang@lontium.com;NM=1;PH=DS;RN=19;RT=19;SR=0;TI=SMTPD_---.hFz0LvD_1776665808;
Received: from DESKTOP-V2MKAT2.localdomain(mailfrom:syyang@lontium.com fp:SMTPD_---.hFz0LvD_1776665808 cluster:ay29)
          by smtp.aliyun-inc.com;
          Mon, 20 Apr 2026 14:16:50 +0800
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
Subject: [PATCH v3 1/2] dt-bindings: bridge: This patch adds new content  to the lontium,lt9611.yaml binding file
Date: Mon, 20 Apr 2026 14:16:43 +0800
Message-Id: <20260420061644.1251070-2-syyang@lontium.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260420061644.1251070-1-syyang@lontium.com>
References: <20260420061644.1251070-1-syyang@lontium.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288535-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[lontium.com];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lontium.com:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E9E564272AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sunyun Yang <syyang@lontium.com>

Add lt9611c,lt9611ex,lt9611uxd to the lontium,lt9611.yaml file.
LT9611C(EX/UXD) is a high performance Single/Dual-Port MIPI to
HDMI 1.4/2.0 converter:

-Single/Dual-port MIPI DSI Receiver
 1. Compliantwith D-PHY1.2&DSI-2 1.0
 2. 1/2configurable ports
 3. 1 clock lane and 1/2/3/4 configurable data lanes per port
 4. 80Mbps~2.5Gbps per data lane
 5. Support RGB666, loosely RGB666, RGB888, RGB565,16-bit YCbCr4:2:2

-HDMI 1.4/2.0 Transmitter
 1.Data rate up to 6Gbps
 2.Support HDCP1.4/2.3
 3.Support CEC,HDR10
 4.Support lane swap

-audio
 1.sample rates of 32~192 KHz and sample sizes
   of 16~24 bits
 2.SPDIF interface supports PCM, Dolbydigital, DTS digital audio
   at up to 192KHz frame rate

-Miscellaneous
 1.CSC:RGB<->YUV444<->YUV422

Signed-off-by: Sunyun Yang <syyang@lontium.com>
---
 .../bindings/display/bridge/lontium,lt9611.yaml           | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
index 429a06057ae8..a67e63a5c87e 100644
--- a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
@@ -4,19 +4,23 @@
 $id: http://devicetree.org/schemas/display/bridge/lontium,lt9611.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Lontium LT9611(UXC) 2 Port MIPI to HDMI Bridge
+title: Lontium LT9611(UXC/C/EX/UXD) 2 Port MIPI to HDMI Bridge
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
 
 description: |
-  The LT9611 and LT9611UXC are bridge devices which convert DSI to HDMI
+  The LT9611、LT9611UXC、LT9611C、LT9611EX and LT9611UXD 
+  are bridge devices which convert DSI to HDMI
 
 properties:
   compatible:
     enum:
       - lontium,lt9611
       - lontium,lt9611uxc
+      - lontium,lt9611c
+      - lontium,lt9611ex
+      - lontium,lt9611uxd
 
   reg:
     maxItems: 1
-- 
2.34.1


