Return-Path: <devicetree+bounces-261107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULqZBtRkfGkKMQIAu9opvQ
	(envelope-from <devicetree+bounces-261107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:59:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3A3B8179
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:59:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6FD6B3007210
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC1213128AF;
	Fri, 30 Jan 2026 07:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b="qITWi1+G"
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (hc210-202-87-179.vdslpro.static.apol.com.tw [210.202.87.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCE03128A2;
	Fri, 30 Jan 2026 07:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.202.87.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769759948; cv=none; b=NLwGRPidXXU/WYJFzoDc0wVLv57SIIYpkrkVfUyQX5qSZMksDDz9Ul4UJTuWLTXusbPCNzmTawgoLQu0ekb/nPqTPG6MexyP8c+XLYUO+YrsddAW/F8qiESqX3jPHqc0UBbh4RbNmm77olX60qvbyGpMty5Ccm2CQxDRPosVKxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769759948; c=relaxed/simple;
	bh=JQUBEj75A0PTPSvXYmoh2ILgh4mBxianhtilZh6JVag=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=m34FbNZn/WLOSq+nBrJrQ5cq4PmNBshvWNV7gNmUiaS0Fhy0Fg3DNVXI5En8ox7mECoxQqhR7gKo8IYBwAb47zgP8sVjgrALhSPgZAMJXgGTLchhnlTJ4oJKp8t+T3Ql2RDHrcyAp3bjq6gyV+esSleYnTnwBj+ZdcMFiuuPLkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=qITWi1+G; arc=none smtp.client-ip=210.202.87.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ite.com.tw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=7S8jJuzimXa5C2vacv/YGWN5Ao9lPtw9w+xLYWUDZVc=;
  b=qITWi1+GmDvoLRXPqQrR4pByW5mHteiQHDJtjbc5z+NO68Q7rtS7rb32
   IFs/3lXhtEGcJp17lo+5FYBw4SJ9LbLpIT4cVjAMeKbQLtPBrJP9lksvj
   LPHYAIT97y+6fAD1hE8JAO7/xyJynda/UNnEqmipLT/O/q7UIspv4sHiz
   N2EGIIA7snY6gBTIM+JbL8I+G/vhE+gFDIdWPME286k9zdV5E6oy7eOv/
   /YuXWpkXm65tX72SB0o0Qn5IJ2n/V3GJ7NPkTrmP/LL50C8IuDWlpZ9bP
   7DOSMW9TCi3JtZhLjfmeDxkE87Qb+QYtsNJ9NueHfSBcRLCPJzxS6MhZR
   Q==;
X-CSE-ConnectionGUID: X0tGPioBRui1+qp/yVPo0w==
X-CSE-MsgGUID: YdMbuaMQQmGm0mOwYmX/5Q==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 30 Jan 2026 15:48:57 +0800
Received: from CSBMAIL1.internal.ite.com.tw (CSBMAIL2.internal.ite.com.tw [192.168.65.41])
	by mse.ite.com.tw with ESMTP id 60U7pSVd005434;
	Fri, 30 Jan 2026 15:51:28 +0800 (+08)
	(envelope-from Pet.Weng@ite.com.tw)
Received: from [127.0.1.1] (192.168.72.40) by CSBMAIL2.internal.ite.com.tw
 (192.168.65.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.35; Fri, 30 Jan
 2026 15:51:27 +0800
From: Pet Weng <pet.weng@ite.com.tw>
Date: Fri, 30 Jan 2026 15:51:36 +0800
Subject: [PATCH v6 3/3] MAINTAINERS: Add entry for ITE IT61620 MIPI to HDMI
 bridge driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260130-it61620-0714-v6-3-70afa65923b5@ite.com.tw>
References: <20260130-it61620-0714-v6-0-70afa65923b5@ite.com.tw>
In-Reply-To: <20260130-it61620-0714-v6-0-70afa65923b5@ite.com.tw>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej
 Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Hermes Wu <hermes.Wu@ite.com.tw>,
        Kenneth
 Hung <kenneth.Hung@ite.com.tw>,
        Pet Weng <pet.weng@ite.com.tw>,
        Jau-chih
 Tseng <jau-chih.tseng@ite.com.tw>,
        Pin-yen Lin <treapking@google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769759532; l=1028;
 i=pet.weng@ite.com.tw; s=20250702; h=from:subject:message-id;
 bh=JQUBEj75A0PTPSvXYmoh2ILgh4mBxianhtilZh6JVag=;
 b=ojnNRPB1/JmO9j7imxv7TqYas2ju7dPlAmeeEjRwAHlMcZXxE+B8LFohcJc29KvTafVxb4eCU
 egsMNsDWeBOBGqz9iP65cszBBlsKrWVMTlORTzpm4rEgLb7TqOcAmSt
X-Developer-Key: i=pet.weng@ite.com.tw; a=ed25519;
 pk=wd08uBtTLb93x2ixbKVNsxiZPdMh1Ov4z5klodh2bqo=
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 CSBMAIL2.internal.ite.com.tw (192.168.65.41)
X-TM-SNTS-SMTP:
	0C16B00633E41729994B987A836449DC29F11FE226CA7C7EA9D9FF18F723B6532002:8
X-MAIL:mse.ite.com.tw 60U7pSVd005434
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ite.com.tw,quarantine];
	R_DKIM_ALLOW(-0.20)[ite.com.tw:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261107-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pet.weng@ite.com.tw,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ite.com.tw:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email,lists.freedesktop.org:email,gitlab.freedesktop.org:url,ite.com.tw:email,ite.com.tw:dkim,ite.com.tw:mid,baylibre.com:email]
X-Rspamd-Queue-Id: 3F3A3B8179
X-Rspamd-Action: no action

Add a new entry for the ITE IT61620 MIPI to HDMI bridge driver to the
MAINTAINERS file, include the responsible maintainer, mailing list, and
file patterns.

Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3b84ad595e226f231b256d24f0da6bac459e93a8..6775ee371aa11bcaa1c45bbf5ea31d4aa5522288 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13504,6 +13504,13 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/bridge/ite,it6263.yaml
 F:	drivers/gpu/drm/bridge/ite-it6263.c
 
+ITE IT61620 MIPI DSI TO HDMI BRIDGE DRIVER
+M:	Pet Weng <pet.weng@ite.com.tw>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
+F:	drivers/gpu/drm/bridge/ite-it61620.c
+
 ITE IT66121 HDMI BRIDGE DRIVER
 M:	Phong LE <ple@baylibre.com>
 M:	Neil Armstrong <neil.armstrong@linaro.org>

-- 
2.34.1


