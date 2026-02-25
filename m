Return-Path: <devicetree+bounces-268203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IoPJ4a5nmnwWwQAu9opvQ
	(envelope-from <devicetree+bounces-268203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:57:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 213CB1947CC
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:57:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BEFD2300879E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98037329E43;
	Wed, 25 Feb 2026 08:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="k9bHtrI0"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15292571DD;
	Wed, 25 Feb 2026 08:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772009759; cv=none; b=JU4Nh2iUJesdp3p/AYMd2T/DjrgSLbEEnkatKhVno5cdtvltMZBTCq1piHbeT7eyIon3bazTRDOSqYpzjtdfihFld/NVcW92KESHCEPd+oavfbIyYUU8dB6jAbC34e+8+UOyqkhy/iTcRckFFZCkKjGzGTOPr07l0KFkHdBc/qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772009759; c=relaxed/simple;
	bh=i46Qb3s6eVAXm1sSFvp5MLg6SJ5Diz0ziosLJaMA1uQ=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jn1HCC2FZSYULgKMVQ+5XW668lS8muWCI9G/MOeB24KiMEpbkXKtTiom3p6pbUFPKVbFK1bVxJZk6aNdLrfJhAWodDCYGS/ASU77DHLgiThiy51stvUF2ZzocNxAKnVioyMLKdme++LYgoX+AiCMiG8uOiPdYrS7T62Nk4CyAbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=k9bHtrI0; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1772009753; x=1803545753;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=i46Qb3s6eVAXm1sSFvp5MLg6SJ5Diz0ziosLJaMA1uQ=;
  b=k9bHtrI06DBMc2w2x8xST/c0ZGYXSzqzP7t/NedX1PgfpK2Tb/6wU60C
   +MrRuqb7I/XFwuRDRjYqGAoVPc55K0UPOiBiE5VT1MBKIWZwAXXfrnlf4
   z5Iv7VCXHzOBWXUB8pBYh1cq6U7HvFZzUqE9o1xnJYZfEJAekUafVgePL
   +RVYsWh5UqDYaJmtq16/p28Q3wPKxgVVHuVmf1zG+pq7VHV7F0hMsLY5Z
   qBSUGFS/Oqr3HyoaXRggeMtWMhJxVHeBg1y7ajbaE+Exd5dTYuNsW0kQ3
   zzXggFKSD8o1JcXOPBFJf1FqM5ATlk+Q1VLDrNScg2dm0nQeewdDrFaiU
   g==;
X-CSE-ConnectionGUID: neVyK9f3SAikpi5vvw2F3w==
X-CSE-MsgGUID: ua4dCAt0RTCj+aj0j49NbQ==
X-IronPort-AV: E=Sophos;i="6.21,310,1763449200"; 
   d="scan'208";a="53830037"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 01:55:51 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Wed, 25 Feb 2026 01:55:39 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 25 Feb 2026 01:55:30 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>,
	<rfoss@kernel.org>, <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<linux@armlinux.org.uk>, <ebiggers@google.com>, <martin.petersen@oracle.com>,
	<ardb@kernel.org>, <tytso@mit.edu>, <dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
CC: Manikandan Muralidharan <manikandan.m@microchip.com>
Subject: [PATCH 0/6] Add LCD and LVDS controller for sama7d65 SoC
Date: Wed, 25 Feb 2026 14:24:24 +0530
Message-ID: <20260225085430.480052-1-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[bounces-268203-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,microchip.com,bootlin.com,tuxon.dev,armlinux.org.uk,google.com,oracle.com,mit.edu,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manikandan.m@microchip.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[microchip.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 213CB1947CC
X-Rspamd-Action: no action

This patch series adds support for image subsystem nodes
like LCD and LVDS controller in sama7d65 SoC with binidngs.
Also takes care of enabling the required configs.

Aubin Constans (1):
  ARM: configs: at91: sama7: enable LVDS serializer support

Manikandan Muralidharan (1):
  dt-bindings: display: bridge: microchip,sam9x75-lvds: document
    SAMA7D65 binding

Romain Sioen (1):
  ARM: configs: at91: sama7: enable config for atmel maxtouch

Ryan Wanner (3):
  ARM: dts: microchip: sama7d65: add LCD controller
  ARM: dts: microchip: sama7d65: add LVDS controller
  ARM: configs: at91: sama7: enable DRM hlcdc support

 .../bridge/microchip,sam9x75-lvds.yaml        |  6 +++-
 arch/arm/boot/dts/microchip/sama7d65.dtsi     | 35 +++++++++++++++++++
 arch/arm/configs/sama7_defconfig              | 10 ++++++
 3 files changed, 50 insertions(+), 1 deletion(-)


base-commit: 7dff99b354601dd01829e1511711846e04340a69
-- 
2.25.1


