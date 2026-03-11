Return-Path: <devicetree+bounces-274226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGWGNHGWsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:21:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB3D2673B8
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BEEA4301CC9C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B243DDDC0;
	Wed, 11 Mar 2026 16:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="h6qaccGb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B30D3C945E
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773246060; cv=none; b=J0P8yZMGJt+J5eKha4t+yK8vSUR1c8ptP/Fg4XtXsQ6RqQhT6v1/3gfe3UqGMVkEcRmDFIpKPv/JrauEUh/4KsOhcMhSG3WXARLS2ScJSUEkB9F/fSezWp+BVkeJLCLXcjDM1NPMJQ3R7jfqUSxzxVLz/am94zLyfV3ZNkiszrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773246060; c=relaxed/simple;
	bh=VHojyZCXSGWyb/puDT/r6I88U1uPu/dDZCryYQLDqvo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VC9skhJy7uk296Xbl/NTr4vvp+l52jfuOm2QF12okIQgggXx7L6poeZmAFrnPr7DPxdfQsBu8cCxUpa7Cfdi1BPnDy7QhSxP+3sQ2jxOD7D7pK0MMRxLFOwMm9P7nHv5BiTUhByuLfItUaZoiEhwe57IjuTPCoMg+OKJxuMQHc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=h6qaccGb; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso161345e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773246054; x=1773850854; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nX2VLMMxzsqHC8tfGhodSpGERlVf9p+B3j0GpKk5w2Q=;
        b=h6qaccGb7Ue0zP9HOjo9LiAspfdK0o5fHaa+5mfTq81NSQI5TBpGBhRm8HDt9ykoDj
         WbTTierc21NdQB0vWJKxZ+BbSw1roKU4ZKGNJYOhoWRIFAIY+nrbRdFY8kZSINc8WzOS
         BspjDsmvv7yo2y1MX4bGt4vCfrIbCSYV8F9P6OQ/lGHJMeJRKUb4NEdYAwxnuKrwT/IB
         w+6kkfQBV/xG2sYXGR3JqSVLZNDmmsRoC/YEJB00Mc0kLx9yORA+89+HaoZ6vWkpA1iq
         HkK7wRMfjmtz11/j5ByPCjkRVwbw2YkbpEZrtsoMvdoPuACyF2AJCYK+oL5jW2WBYXt2
         K3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246054; x=1773850854;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nX2VLMMxzsqHC8tfGhodSpGERlVf9p+B3j0GpKk5w2Q=;
        b=MVYd4YlzzPxcW40jBP3jXq0bJGH/ZLa0Xlby/3mmZK0R395U4pHqBMCr+smM+9mA3B
         YenluC7m/xV6BDIwaujwoLHV6H+eA38+4Kp9rtwgz8rpmkacoad4wMfvKlpH5sLHQcKZ
         nL72Aqe+FBkIHiy1uPwTbzpE7bHr976JhHQvtVu2aVsLthDBY54Qt/2r+EpDherBTJvt
         7d7ppztLqX+NSI1ImcH/Zs51GlKx7k7fq4VOQ/xtEnAA8sCTj6t5VGMAqBL8BzFrXMSc
         E4EMIQMULG9QwenjyFrOr8XPIOFTchqketgAF54LFIqDmFZcZkYMqNpeZAOQrX6smSBn
         V7+w==
X-Forwarded-Encrypted: i=1; AJvYcCV6ATRkvVyS05JREpVUygeBRsqhIQbX8YtjAA7fFfM2Roc7W2QsczP9usTzwoEwAzvM8zgo1KE+fUnx@vger.kernel.org
X-Gm-Message-State: AOJu0YzFpq6MTYvjRY8QhIg3iiLOFcYTh9cLhC1wl7+GwMRn7PFhx41O
	0WTE707uzE2zqGXpxQ6hYKxuuvZqXkgF8EDX77yRZxFX6qK5GtfEQd90mH9RfYwz7RU=
X-Gm-Gg: ATEYQzwo5fIcDCRFxV4IZInb1JmqfDvSB1cQx2whv9rYDqdHuuW54arcoOmoXczSyaX
	mbt0bc2ka03ezYR28JgIdOvBZTFo73RLWzVgcLZibG4RrvZj3W9vv+V7LGRMNkp3BG1FoRdxIXp
	Xg3lcJNP+oFEr829mu9b3iiym6vakTPEQMMgVWfMcu/EJP8i9Yqy3A7hPhNZ3iULl0uetw5F1fF
	kbY8Tr4L8LJeFpBKn1bKU2aLuBWS+pQkrlBHue888vo4ERmErDWZr/crhSDIPq9rV16q69DzqHr
	ZPhRSEaqssRo2MWUWSkE/Y9LW1X1aIh69tnIr6N8c7lHOGuakqi1Hl3yh/PxcBOq7hHJEcDPhfP
	hLVj1fAZ0Xd8wMFKJgr4zhIenWI7xLjvDLL6Ewx3N9rs4tABaT1Nud186S7tOHaAw9NYMm9jbVN
	j8dZwxDK2JnqbR/egll39OMx2rbomh3cq7MN4SzI8E/bWtQaTnvJDJl/BUH43dBKyLT2xd4J6X7
	Fa7SA==
X-Received: by 2002:a05:600c:3551:b0:485:2f6a:6ed with SMTP id 5b1f17b1804b1-4854b10cf6amr56781205e9.28.1773246054111;
        Wed, 11 Mar 2026 09:20:54 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm283952f8f.23.2026.03.11.09.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:20:53 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 0/4] Add HUSB311 Type-C controller
Date: Wed, 11 Mar 2026 20:20:43 +0400
Message-Id: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFuWsWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0NT3YzS4iRjQ0NdI0vDpKQkw0Rzc3MzJaDqgqLUtMwKsEnRsbW1ABz
 u0vpZAAAA
X-Change-ID: 20260115-husb311-291bbb1a7776
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1542; i=alchark@flipper.net;
 h=from:subject:message-id; bh=VHojyZCXSGWyb/puDT/r6I88U1uPu/dDZCryYQLDqvo=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRunJZ8/M+GRJaJPHfUTkjMT1jK9rauZZfKXK2Pb3kcl
 z5YZe1zsWMiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTUMdYxYuDiFICpLtrK8L/arcH8bLSs+Jd756oyCoO0lm+sYTfO/sziz2gqHBi4/xcjw4wjfx6
 s3bJ0c3POs4bEH3eZFFQfHNkbMNVsMW/93sx5zjwA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274226-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[flipper.net:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3CB3D2673B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

HUSB311 is a drop-in replacement for RT1711H, used in Rockchip RK3576 EVB1
board and some other boards closely following the reference schematic.

The existing RT1711H driver seems to work fine with HUSB311, and there is
no public documentation available for HUSB311 to identify any meaningful
differences, so this series wires up the existing driver to treat
HUSB311 in the same way it treats RT1711H.

This also enables a bare-bones DT node for HUSB311 on RK3576 EVB1, but
currently misses the connections graph for the USB SS and SBU lines, as
those might require the USBDP PHY ports schema to be updated first for
proper DP AltMode support as indicated by Sebastian.

Signed-off-by: Alexey Charkov <alchark@flipper.net>

---
Alexey Charkov (4):
      dt-bindings: vendor-prefixes: Add Hynetek Semiconductor Co., Ltd.
      dt-bindings: usb: richtek,rt1711h: Add Hynetek HUSB311
      usb: typec: tcpci_rt1711h: Add support for Hynetek HUSB311
      arm64: dts: rockchip: Add HUSB311 Type-C controller on RK3576 EVB1

 .../devicetree/bindings/usb/richtek,rt1711h.yaml    |  2 ++
 .../devicetree/bindings/vendor-prefixes.yaml        |  2 ++
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts    | 20 ++++++++++++++++++++
 drivers/usb/typec/tcpm/tcpci_rt1711h.c              | 21 +++++++++++++++++++--
 4 files changed, 43 insertions(+), 2 deletions(-)
---
base-commit: 7109a2155340cc7b21f27e832ece6df03592f2e8
change-id: 20260115-husb311-291bbb1a7776

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


