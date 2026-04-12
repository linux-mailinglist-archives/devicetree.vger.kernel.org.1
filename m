Return-Path: <devicetree+bounces-286794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9DufMYdm22kmBgkAu9opvQ
	(envelope-from <devicetree+bounces-286794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:31:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3B53E3453
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:31:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42C7C301177C
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 09:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4837830EF89;
	Sun, 12 Apr 2026 09:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="W71RaUil"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout1.routing.net (mxout1.routing.net [134.0.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0AF2AE8D;
	Sun, 12 Apr 2026 09:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775986307; cv=none; b=KqYOC7ObKhYBCDnu+4SkhH72nFTVd6FhziqcLuraA7udYWo+2T+cU6uhKvm1A/ATdm3uRSSkum98K3QhkhruVWUpAUaSRNmPwnfXWWzdo+gcpb4Xxj0eI6ki9xq14rb2Z+aRTnz0rkB47ZN/vzjGBtL7EF68KmolQP6nMASUUAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775986307; c=relaxed/simple;
	bh=ZCKGGvsavQAiGLksR5TRVzFYUrtozhdZZ7UJxs7Uhpc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZirjGE9FBjGmVNevkrifB1kCDRtx6nO7sHFRQyESfQcBNgdL4jgzWh6ev3/wR85HGKLWKPMFU8F0o+3ysIhZwfFBEPH2MRd8XJUnnA+FyoIMhNBY3i1lYlUv24XMQ18D7FvVRsEpQfu//Ymb9IGJWA+tsanOVwp3B84JVw+mzw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=W71RaUil; arc=none smtp.client-ip=134.0.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout1.routing.net (Postfix) with ESMTP id 43F953FD57;
	Sun, 12 Apr 2026 09:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1775985819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=b/1+h/woDJ+LRlAGuVlOPR5DC6XTRRSPJZgjVIzkrNo=;
	b=W71RaUil2TlB22R4Oj27Frd8eB/xlxBF5yLCx+8I2kbJNzBYYaJnGCO1BB1Y/1RpVkclTH
	AKEWqUUc6TI2LFVulCgtMpD4rmZYvIBOul+0pbFD4EbUQkOCWEBvh6f72aP+O5cX+kxfBx
	pDdSagnUCxWeAZY2IQnFJmVYYqiualU=
Received: from frank-u24.. (fttx-pool-80.245.78.225.bambit.de [80.245.78.225])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id 112E11226B6;
	Sun, 12 Apr 2026 09:23:39 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>,
	Andrew LaMarche <andrewjlamarche@gmail.com>
Subject: [PATCH v2 0/4] some BPI-R4Pro dts updates
Date: Sun, 12 Apr 2026 11:23:28 +0200
Message-ID: <20260412092333.6371-1-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[mailerdienst.de:s=routing];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[fw-web.de];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	FREEMAIL_CC(0.00)[public-files.de,vger.kernel.org,lists.infradead.org,makrotopia.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@fw-web.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailerdienst.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3D3B53E3453
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Frank Wunderlich <frank-w@public-files.de>

There are some parts of BPI-R4Pro DTS that need to be changed. Currently
there should be not much users of the mainline-dts and we noticed some
things while openwrt integration.

v2:
- added mgmt port renaming as this patch is still outstanding to keep
  all in one series
  https://patchwork.kernel.org/project/linux-mediatek/patch/20260303202006.37515-1-linux@fw-web.de/
- dropped default-state in gpio-leds patch as suggested by daniel

Frank Wunderlich (4):
  arm64: dts: mediatek: mt7988a-bpi-r4pro: rename mgmt port to lan5
  arm64: dts: mediatek: mt7988a-bpi-r4pro: drop duplicate fan properties
  arm64: dts: mediatek: mt7988a-bpi-r4pro: update gpio-leds
  arm64: dts: mediatek: mt7988a-bpi-r4pro: rework pcie gpio-hog handling

 arch/arm64/boot/dts/mediatek/Makefile         |  8 ++++++++
 .../mt7988a-bananapi-bpi-r4-pro-cn13.dtso     | 20 +++++++++++++++++++
 .../mt7988a-bananapi-bpi-r4-pro-cn14.dtso     | 20 +++++++++++++++++++
 .../mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi | 15 +++-----------
 4 files changed, 51 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-cn13.dtso
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-cn14.dtso

-- 
2.43.0


