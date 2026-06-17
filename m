Return-Path: <devicetree+bounces-312871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZHKdGC9vMmqezwUAu9opvQ
	(envelope-from <devicetree+bounces-312871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 11:55:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EFC69826C
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 11:55:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=uPYjGvca;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312871-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312871-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70AFA3245A94
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A5F3CF1F2;
	Wed, 17 Jun 2026 09:48:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73617397350;
	Wed, 17 Jun 2026 09:48:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781689726; cv=none; b=A1x+KtLoj0aiuPs7P/lTgV3+NvcOKTbFaOVYzPhZ+F0Sla9myv4QBtjlyzCHPXnHqXOFTL1lmrsyJUw0Z4JPpo+AycGMuv55ABh0rQodHiwBmlmlaoWBR9mbEEJRA5VagqZAVnNvfFrHO0l5XZqb/ONfiJPIAb5EL9jJcBAeaQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781689726; c=relaxed/simple;
	bh=91y/4NW3pjUnh65ElxLcQOaaQpGxFz1SMdgxGt9yKDU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Zb8Hc5q3XmlVbjN3IAj52se3ItzAeRWXQ1dmNaE4HBPBsxVHGwiQ3vhFyZ5SOxlcxPpGUyZ1eF4DHayivktjmGpC1XM4xUflFk04+BFSzkvnRKW3Z/+rgmy2G9S33Un/v/cm3/94ZFOwWFJ5gtVxKj8EhTD4JGVp+yLGliEHRtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPYjGvca; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C86DC2BCB0;
	Wed, 17 Jun 2026 09:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781689726;
	bh=91y/4NW3pjUnh65ElxLcQOaaQpGxFz1SMdgxGt9yKDU=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=uPYjGvca3FSZ/Zv8yRUB/I01FXlXSQaKdYprVHvoW+2oP8f4hcvO8N0Vj5PiRF5fA
	 IXNpWufxIXc5foRb+ESNEV84JZIYnYYaXiQSTaXjsLHzyxRQ3lW0+k2P9mkdtx9GFg
	 wyZKliQASG039LwNBBHBmsiev0pwYnl6ujz91TXn50f7Jglf0vRmHzYkZhlpMTkzTN
	 l4dPIcFm7tmO9S+Tsb3qHPdZaHr8ZdcAJ0ADo9aIdwAexynIteF7563NabFVFa53h5
	 lZbqRkJLmrEwFsQl/W151Bvy71AiyB2VYrjtPn9zojG7UWGdKh4ahF8fcqhVM+Cjd+
	 bbu9o78OyZaPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11304CD98F0;
	Wed, 17 Jun 2026 09:48:46 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Subject: [PATCH v2 0/4] nvmem: add support for the MediaTek mt6323 PMIC
Date: Wed, 17 Jun 2026 12:48:43 +0300
Message-Id: <20260617-mt6323-nvmem-v2-0-4f30e36aa0f4@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WNwQ7CIBAFf6XZsxig0qSe/A/TA8XFrhFoAImm6
 b9L69njJPPmLZAwEiY4NwtELJQo+Ary0ICZtL8jo1tlkFx2vBOCudy1smW+OHSMG3XS3Eqrewt
 1Mke09N5z1+HH6TU+0OStsRkTpRziZ/8rYvP+pItgnI0KxdgbVMLKyxxDDt5peh5NcDCs6/oFG
 mxoQL8AAAA=
X-Change-ID: 20260611-mt6323-nvmem-0c54a0f2fa9f
To: Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Roman Vivchar <rva333@protonmail.com>
Cc: Andy Shevchenko <andy@kernel.org>, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Ben Grisdale <bengris32@protonmail.ch>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781689724; l=2005;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=91y/4NW3pjUnh65ElxLcQOaaQpGxFz1SMdgxGt9yKDU=;
 b=bRKJeEGUlopiiIajXXmD4ejEcqu+vA8YYV6VigV74sP/9hlGeO6cF0gdKfsZeq6KKWyyB6o6d
 VToFsl3t5RcA9XXXxintfKjYde55tjh/K6OAFyE4PY2kOt3kQJM7aRc
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,collabora.com,protonmail.com];
	FORGED_RECIPIENTS(0.00)[m:sen.chu@mediatek.com,m:sean.wang@mediatek.com,m:macpaul.lin@mediatek.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:srini@kernel.org,m:rva333@protonmail.com,m:andy@kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rva333@protonmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-312871-lists,devicetree=lfdr.de,rva333.protonmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,protonmail.ch:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,protonmail.com:replyto,protonmail.com:email,protonmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1EFC69826C

This series adds support for the EFUSE found on the MediaTek mt6323 PMIC.

The previous version of the series for all AUXADC, EFUSE and thermal
drivers was split after Krzysztof's comment [1].
    
Tested on the MediaTek mt6572 and mt8163 SoCs (Ben), both paired with a
mt6323.

[1]: https://lore.kernel.org/linux-mediatek/20260504-mt6323-v1-0-799b58b355ff@protonmail.com/T/#med30fad67a090be35f549231336b2dec295233f6

Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Generation)
Signed-off-by: Roman Vivchar <rva333@protonmail.com>

---
Changes in v2:
- EFUSE driver: Sort variables in the mt6323_efuse_read (Andy)
- Link to v1: https://patch.msgid.link/20260611-mt6323-nvmem-v1-0-b5e1b9ce51f2@protonmail.com

Changes after split:
- EFUSE driver:
    - Remove 'linux/errno.h' header (Andy)
    - Remove explicit cast to u16 in the 'mt6323_efuse_read' (Andy)
    - Reword comment in the 'mt6323_efuse_read'
    - Capitalize MediaTek in the module description
- Link to a previous series: https://patch.msgid.link/20260512-mt6323-v2-0-3efcba579e88@protonmail.com

---
Roman Vivchar (4):
      dt-bindings: mfd: mediatek: mt6397: add mt6323 PMIC EFUSE
      nvmem: add mt6323 PMIC EFUSE driver
      mfd: mt6397-core: add mt6323 EFUSE support
      ARM: dts: mediatek: mt6323: add EFUSE support

 .../devicetree/bindings/mfd/mediatek,mt6397.yaml   | 21 ++++++
 MAINTAINERS                                        |  5 ++
 arch/arm/boot/dts/mediatek/mt6323.dtsi             |  4 +
 drivers/mfd/mt6397-core.c                          |  3 +
 drivers/nvmem/Kconfig                              | 11 +++
 drivers/nvmem/Makefile                             |  2 +
 drivers/nvmem/mt6323-efuse.c                       | 85 ++++++++++++++++++++++
 7 files changed, 131 insertions(+)
---
base-commit: 028ef9c96e96197026887c0f092424679298aae8
change-id: 20260611-mt6323-nvmem-0c54a0f2fa9f

Best regards,
--  
Roman Vivchar <rva333@protonmail.com>



