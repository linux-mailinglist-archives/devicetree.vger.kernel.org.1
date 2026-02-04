Return-Path: <devicetree+bounces-262653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJzMI4BKg2m0kwMAu9opvQ
	(envelope-from <devicetree+bounces-262653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:32:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E958AE673C
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 231A63082F52
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FBF232395;
	Wed,  4 Feb 2026 13:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RQ9nV2+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331253A0E94
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211628; cv=none; b=YNUZjZ+wIkwcd240DeGQPz1epD42jAqhr1ovxpnNLQMwI0cz9XtOQh6hvNP9tupkZIyBXL8qtPhgE0vBqKQ4yWvUNRSxexmdVM8F0RURuWLzD7AObdHgW6zbNdAVPtJ14DRA5/GO/84EbxUFrW0s3DxckZgsEE5ZSspQ6jR6TBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211628; c=relaxed/simple;
	bh=6o7D69fHkZRKC+HldjRaTkwMuCRu21B01hUHGcUHFMQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FSx7EWVnTdgbhtHu/HVbCrasyprpFnw15xwiV93xwzfwYrsFatQlTdhXbQCRD0MQbA5P1hxJpN5Wow4ggop3dB1HRRdYxrhOojVIPXNcM+/j/ocLK47DNAklg3vQqXXRJvHI410okEJUCKiONaQdSCHEPllo4CNg8XN3k6j4HCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RQ9nV2+T; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c47ee987401so455775a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211627; x=1770816427; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wB0VLDAPToQ8yD4B2A1a5exUgv0J2v5YL3Ju3cLJeTI=;
        b=RQ9nV2+TpDbQ/Sgv4wa0eECqsfhlpEZAoG4dqfRYW/NRhui1xV0LEZeygjGEjB4AFv
         Pb51mw6IdsmGEGKLGcIwIUjMathCPOqzJYjJ0GMqLVNIcgs7hlRUE68HqmH+3Vvl+MVa
         PNNeShK6kk9crqbpezipyEJ7gVxpksn2AHB1+DcEdicQZ8nlwgnvH8rsQanFwLzxUuVI
         1cTC2NMNJzfDy93DLdqJx/WxVAKi4FGEdts8Af+PFVyRPeggbuBz2FVrN7XxIVh3GMgY
         tGWmREwFUuBzWtEpfV+2zWDISN7TD0/2FCkXe6t/YyhhKuDzDYaeBOZwztEcHaLoboX7
         2YGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211627; x=1770816427;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wB0VLDAPToQ8yD4B2A1a5exUgv0J2v5YL3Ju3cLJeTI=;
        b=Zr54oA6bAH0oPDfxgNojNi+6k+ZyyYy2tJIGYHcPpVym8jLdR6qx0T2l08NGJPDcfZ
         AVQJYWai/LelIrpQqPh5tjKIuB2sQjX7JCWvKpynrroLEjdhPTC4KVADEfMKcozeaRth
         TIWwoLIg6ZtWCSV/yhu90HdJ+zeO7i4KhHAf1CamoMzILTf5rr4vcNxLis58eAj+7O5A
         lJVCq7XqsoUGjQG5VvNg7AtYRVUtU1a3/CKU795SUJ/C2xmFMPrv7ySvgILW5Ppi11iM
         XcKNcR4zf3D8jON0zwxq6psRG+UtpfC9Fyz87rjUJFdPmiHHFPwlzONfNgv7hpWYl1Z7
         ulYw==
X-Gm-Message-State: AOJu0YwwZrG/IONUGt8UjQCdTzm3pJ8VQGOKQJivbYnB1VYb9Uo3e8pW
	ytN5K8vw5fVAk3Sb+Er0uHWLWJEYs1EXzgs2mUQ+FaJcTaTawDw3bn8IfqhYqyqY
X-Gm-Gg: AZuq6aJ1nRrzXPZczrKkhzMs1Z4gIj5n2qjNVs5gUocnK1gnSVaJZsHQbpt1r8YdkPw
	dPQqkXerIjFDvUehV1BZiMxTARTzcJ+BtM1yUC72X74bxOkcgr3xA4E8cYH/1xcUIgeqj4zm/cA
	piw3qYflIIRoytE/eqIHLqG+FFMsz8yUQYARaLx3eZPnWfJj/x/GnpOK8OoychklPzUVXgDkPW5
	2YImLKIg6EXcRdZ8OEWnjco2PousGcrw52ANc2s6w1Xh+lTOyFT1+ha6m6Iod+yptt3mkoPwevl
	mjGkc8kUJ/iJh9D6tVuiOND/tP/clKxEJuzM0OmNPmxZWN8fx6qft2vM57yeBQvHaKBcvJOokaW
	fB1uDcJCS5icI9ey8YHuoJXMIKT9sccA0UmHrEMWza/4B5eE2bjcrGI8O7CuleU5kdvk1GGWxv0
	XLUPzw3/ys
X-Received: by 2002:a17:90a:d64d:b0:352:d0cf:9d18 with SMTP id 98e67ed59e1d1-354776e0a54mr6454276a91.5.1770211627186;
        Wed, 04 Feb 2026 05:27:07 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487726e6bsm875763a91.6.2026.02.04.05.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:27:06 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 0/3] board: rockchip: add OneThing Edge Cube series
Date: Wed,  4 Feb 2026 21:26:53 +0800
Message-ID: <20260204132700.329894-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262653-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E958AE673C
X-Rspamd-Action: no action

This series adds support for the OneThing Edge Cube series, Rockchip 
RK3566-based PCDN (P2P Content Delivery Network) devices originally 
marketed by OneThing Tech.

The V4 patch includes minor improvements.

The V3 patch merges the separate dts files for OEC and OEC-turbo,
following Dragan Simic's suggestion.

The V2 patch adds a new device, the OneThing OEC. Together with the 
V1 patch OneThing OEC-turbo, these two devices share identical hardware 
specifications except for the RAM capacity, enabling convenient support
implementation.

The V1 patch was submitted quite some time ago and is now in an archived
state[1]. it has not been processed due to scheduling conflicts –
apologies for this.

Changes in v4:
- Use a unified compatible name for OEC and OEC-turbo.
- Drop the "series" string from the board dtb name.
- Use a self-descriptive model name for the dtb.
- Link to v3: https://lore.kernel.org/all/20260202150437.270567-1-jerrysteve1101@gmail.com/

Changes in v3:
- Use a single device tree for both OEC and OEC-turbo.
- Align the compatible strings in dt-bindings and device tree.
- Link to v2: https://lore.kernel.org/all/20260131153106.31723-1-jerrysteve1101@gmail.com/

Changes in v2:
- Fix typo in vendor-prefixes.
- Simplify company and device names.
- Add the new device OEC as part of the OneThing Edge Cube series for support.
- Set display-subsystem node to "disabled" instead of using "delete-node".
- Using generic node names for leds.
- Follow DTS codeing style in vcc5v0_usb_host_en pinctrl node.
- Modify the phy_mode of GMAC from rgmii to rgmii-id.
- Adjust device tree node ordering to follow code style.
- Link to v1: https://lore.kernel.org/all/20250713163255.163669-1-jerrysteve1101@gmail.com/

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20250713163255.163669-1-jerrysteve1101@gmail.com/

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co.,
    Ltd.
  dt-bindings: arm: rockchip: Add OneThing Edge Cube series
  arm64: dts: rockchip: Add OneThing Edge Cube series

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3566-onething-edge-cube.dts    | 312 ++++++++++++++++++
 4 files changed, 320 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts

-- 
2.52.0


