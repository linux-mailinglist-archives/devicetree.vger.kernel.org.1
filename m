Return-Path: <devicetree+bounces-281393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIdLD+CaxWnP/wQAu9opvQ
	(envelope-from <devicetree+bounces-281393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 21:45:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE55133B853
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 21:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DDD9D304E194
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 20:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73AE23A6F16;
	Thu, 26 Mar 2026 20:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tinyisr.com header.i=@tinyisr.com header.b="QeCzl0nY";
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="de0NzruM"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1443A6EE2
	for <devicetree@vger.kernel.org>; Thu, 26 Mar 2026 20:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774557896; cv=none; b=eJrjs5i/4OkyIdAF9svaS2M1/eQ2+lqp3A+yGYFadhCFnqVLISey8k+QNXfnP1JRkGRCnTvuqvFLZn7UFXGQCrvsBWgig4mW9/V5eWgcr7c3PLmi9B8tFIGcHRzk5VPf+diHT8vCOweO9FBRl+BA089hxvpZe5WeIG+Sg97vS4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774557896; c=relaxed/simple;
	bh=A8Vv186XBmHJRcoqnKM+XynUbHzUn+KZwWgmTBD1Uos=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=lGpgXuG9C7S4+LEPEntJwB38xTD1NlFPtltc68NgLeeVVuR9GiGbNQUCdFR2akX3+GdERFcg1/o+rheBQiRuhptDdo5yLFcGlYpVzM+Hj27Ofe4M3ZRKeLI0WcnMPcqKTGWMfB/LB6brJKE2U0/zqM0EBCPACJ/L3GVQ0OpBEdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=tinyisr.com; spf=pass smtp.mailfrom=tinyisr.com; dkim=pass (2048-bit key) header.d=tinyisr.com header.i=@tinyisr.com header.b=QeCzl0nY; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=de0NzruM; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=tinyisr.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tinyisr.com
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=QeCzl0nYFGIfZpruiqDsEjRyFT9amF5gvn4iTTBr4U7lLFHwvIpDAGH+mJ1ucF3GQMlBwlfzO9Tp+mr+qyuWvXcbwVvsr9/0qaZd3oqp+HtCuj9s6Witf9svUSDBsc1uon8inYJKwLAB/avGqwtNkg9QIjQWUz76zD3d/f6M6QeYH1JLuerGTWvqOvrqJ0bY8/zSRKs7Fex3qK7oTtbBdcz/8wDtTj60ANYl9/uG5vZqpRWwGdj4UXxZmeO2XsmsURML7/aJy4t8IKQDj7Owjp0b0KzT+dxtgjS+Wylng29tFTpVS6yVoWLTMLfwUFAKJwJ9aUtBjS9kEpKFWmeZwQ==; s=purelymail1; d=tinyisr.com; v=1; bh=A8Vv186XBmHJRcoqnKM+XynUbHzUn+KZwWgmTBD1Uos=; h=Received:From:To:Subject:Date;
DKIM-Signature: a=rsa-sha256; b=de0NzruMuOOniEcXGL1lDoVvSMRcpnxFZY8/pejwSxTjcCSGI1tjoG+ibTf0UNIBfhBAU40BLKydafPoakrpK55trJOzdNCjYfsYfjQ1oU/5qcbGOJB6aVeAppplYh6LvRqSDWNwYJiZVMG4xenDKvK6dD6G9MsIckUEz1OMi023xFgjlutXt1CjMHadJLhz7wxD+pO3Vag3iURPZC7ee8omBAKdg2awVfI5CiO7crPirx6BvxA08thFsqeD3krDVfrxUU4sUu8i0sgS21lTYeIt3mINu/gSDk29dEmAnP6FOeqa1w6qISQo7MarbTqn4MJl03r5stkXvHdu5WCqug==; s=purelymail1; d=purelymail.com; v=1; bh=A8Vv186XBmHJRcoqnKM+XynUbHzUn+KZwWgmTBD1Uos=; h=Feedback-ID:Received:From:To:Subject:Date;
Feedback-ID: 99681:12517:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 1206586277;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Thu, 26 Mar 2026 20:44:29 +0000 (UTC)
From: Joris Vaisvila <joey@tinyisr.com>
To: netdev@vger.kernel.org
Cc: horms@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	olteanv@gmail.com,
	Andrew Lunn <andrew@lunn.ch>,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joris Vaisvila <joey@tinyisr.com>
Subject: [PATCH net-next 0/4] net: dsa: mt7628 embedded switch initial support
Date: Thu, 26 Mar 2026 22:44:09 +0200
Message-ID: <20260326204413.3317584-1-joey@tinyisr.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Content-Type: text/plain; charset=UTF-8
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tinyisr.com,reject];
	R_DKIM_ALLOW(-0.20)[tinyisr.com:s=purelymail1,purelymail.com:s=purelymail1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281393-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,redhat.com,google.com,davemloft.net,gmail.com,lunn.ch,vger.kernel.org,tinyisr.com];
	DKIM_TRACE(0.00)[tinyisr.com:+,purelymail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joey@tinyisr.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,purelymail.com:dkim]
X-Rspamd-Queue-Id: CE55133B853
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

This patch series adds initial support for the MediaTek MT7628 Embedded
Switch.

The driver implements the basic functionality required to operate the
switch using DSA. The hardware provides five internal Fast Ethernet user
ports and one Gigabit port connected internally to the CPU MAC.

Bridge offloading is not yet supported.

Tested on an MT7628NN-based board.

Changes since RFC v3:
=09- remove labels from DT binding
=09- set ds->user_mii_bus if mdio node does not exist
Link: https://lore.kernel.org/netdev/20260321194340.2140783-1-joey@tinyisr.=
com

Thanks,
Joris


Joris Vaisvila (4):
  dt-bindings: net: dsa: add MT7628 ESW
  net: phy: mediatek: add phy driver for MT7628 built-in Fast Ethernet
    PHYs
  net: dsa: initial MT7628 tagging driver
  net: dsa: initial support for MT7628 embedded switch

 .../bindings/net/dsa/mediatek,mt7628-esw.yaml | 101 +++
 drivers/net/dsa/Kconfig                       |   7 +
 drivers/net/dsa/Makefile                      |   1 +
 drivers/net/dsa/mt7628.c                      | 637 ++++++++++++++++++
 drivers/net/phy/mediatek/Kconfig              |  10 +-
 drivers/net/phy/mediatek/Makefile             |   1 +
 drivers/net/phy/mediatek/mtk-fe-soc.c         |  50 ++
 include/net/dsa.h                             |   2 +
 net/dsa/Kconfig                               |   6 +
 net/dsa/Makefile                              |   1 +
 net/dsa/tag_mt7628.c                          |  92 +++
 11 files changed, 907 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/net/dsa/mediatek,mt76=
28-esw.yaml
 create mode 100644 drivers/net/dsa/mt7628.c
 create mode 100644 drivers/net/phy/mediatek/mtk-fe-soc.c
 create mode 100644 net/dsa/tag_mt7628.c

--=20
2.53.0


