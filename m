Return-Path: <devicetree+bounces-261866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAV1LsW/gGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:16:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3975ECE0BF
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 00BC6305C8B8
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8F8737647E;
	Mon,  2 Feb 2026 15:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XBDexSL5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95E336C596
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770044687; cv=none; b=UEErb56GreaTFnMckNOYQ0cn/E4KXbLLBkJGmce/jXnkp5lJ8XzJTKM+kPHdexiqH8oF3EUXdo1fCjV2gAF/mmvdkrxG/dbHCLYjEsI83csz+VDXk82DpRolnkGOdfZOPX2jGlD/mDWNqqluqCKKubyAVnz3eRf3iWoN/Ok01C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770044687; c=relaxed/simple;
	bh=tYwsp731Ij6NcO5lML6xUrhiA1Zb534WfyOSVDotL94=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZY7YneIOPIzKLaAu170G5beDoD0Sl5bzVKJPwfEzJf8iDnApuomxmdCsjdbLqCZMCd6QCOPBqDrFYciiVPUPgI8NhqNmUBWlvQ9PYr1IRXMKtR68rYQbVMrxjDDFZrvozMT8LUocivTKS4/FGFk1ABZl7SHNmu/WXBGftd3GyYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XBDexSL5; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-81e93c5961cso3771365b3a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770044686; x=1770649486; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TN24W9Be/pGggjAF58I51ue9vTrGNZtAUpOZWnn4qXs=;
        b=XBDexSL58V6QUjtnRp1+6tj+eKkmTHoH8Nx38TSLaUoKPJazJ2AP/nvHMiDMZf8rVI
         bNZsTGFMWTujIqa7Mz/ZKPZ5Qhto66o5IEmbVhPwCalZn5leJp3YI2GAgtYTAH17nxhV
         SKeFKkpf3YBTOPKFAaWkMQDdnBgSG3vunL5/F1HjcDQr/KG3H6P9f2eA4oyOQ+LUkdte
         tFcnQsoCLAq3ivHtaSqiCideS/vDmsz8qYFtrHdC5gRCEQhr9YJioU2tJ5v4kfxRJxq/
         HY9hFyq/W6GLwOALDlZHeg8ThDiJcV5q+gCpOovOLtB2kH4C6Xd5aPN7gS0i9i6+0tii
         iSMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044686; x=1770649486;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TN24W9Be/pGggjAF58I51ue9vTrGNZtAUpOZWnn4qXs=;
        b=BMfOAZ8q7hoo9n55Fk91tgznVcaKB0x/TYVYq+HZhBeeglVNng+6hXnGXvoDBJ295N
         xioZjyeksTv4s3F1vGqPwki95dRcEeMJYDqxKeoNfzcpEjO1GrWhTqvRjZ4luB3PLauf
         0xb0owoQdRl+Dw4T3HikQkLIn4LQmR7XcM606i38e+S+fFxDh9BMW/2ceOPkvZTVwgEY
         LWe6LQXroQkXE3iByPAFeEDDwWkHGFM3NzIZ5S1oDuYl0ACYP3/oAxwz1ArA4KyZHCLp
         rOIosAnaYZLn97BkVG8txfBVv+Dkxn5pj8sH5GHX02eb0qHWgnBiPj3FKmE1xrlYSBZy
         vrRA==
X-Gm-Message-State: AOJu0Yx86swLrPooVAHnsEaDt/Il07ZH2iDPu8qd3rJbEuSaAgZ3pOr9
	JubBDQ1qpARn3WDhEb3FneFUMlFSdKWfmEz4ciUVFBFTxppSgPReK5rLB9FtodsV
X-Gm-Gg: AZuq6aI1yuW9e7Jz962+GQ/w/RNaI4yvyGjQ4DoclaRApc3h108cLEoYjHNPfvwZhZB
	/2pDxm8opfK5vF5N5v14GegxDNBjLkgWVpOi+5FuCOG8BrZYoSOMfaJUrWvBBIm4b7sz7oYfBG4
	+eL7xsZJ6n12UCe4AKx/5n8nrlgD5GxB//4eZWm9eaTab7hs4yyLiO/N2gpnEXmYh/TSfHp/axM
	yiGBXV96L4foVzpndNxOHzax67BrSC6es2MjjRNGi9E/IfUkptMTtqyzc8Y2Vk6e2d7stw+pz3c
	uO7NajwOa2+02f13bm5+RO122aoWeG7zwz3f3pDB+Vc9S6XdTa2+cFfeC4uNPp7KSPFlsjzGygS
	a6F6bGhzf3bxD+Yx1GL8OxAYnl0fzxteVe1lOrJaHFDmixrAUG7/UUjq7CdHEZU2/f3qVVgKAc6
	Csvx0+7VcH
X-Received: by 2002:a05:6a20:3d0a:b0:38e:95fb:3cc with SMTP id adf61e73a8af0-392e014e095mr10527227637.56.1770044685577;
        Mon, 02 Feb 2026 07:04:45 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c21112sm15948480b3a.54.2026.02.02.07.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:04:45 -0800 (PST)
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
Subject: [PATCH v3 0/3] board: rockchip: add OneThing Edge Cube series
Date: Mon,  2 Feb 2026 23:04:00 +0800
Message-ID: <20260202150437.270567-1-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261866-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3975ECE0BF
X-Rspamd-Action: no action

This series adds support for the OneThing Edge Cube series, Rockchip 
RK3566-based PCDN (P2P Content Delivery Network) devices originally 
marketed by OneThing Tech.

The V3 patch merges the separate dts files for OEC and OEC-turbo,
following Dragan Simic's suggestion.

The V2 patch adds a new device, the OneThing OEC. Together with the 
V1 patch OneThing OEC-turbo, these two devices share identical hardware 
specifications except for the RAM capacity, enabling convenient support
implementation.

The V1 patch was submitted quite some time ago and is now in an archived
state[1]. it has not been processed due to scheduling conflicts –
apologies for this.

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

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++++++++
 4 files changed, 321 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts

-- 
2.52.0


