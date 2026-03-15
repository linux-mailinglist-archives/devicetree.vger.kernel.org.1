Return-Path: <devicetree+bounces-275841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CuAClgat2lGMgEAu9opvQ
	(envelope-from <devicetree+bounces-275841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:45:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FBB2926C5
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F5CC30440A5
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 20:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8048637BE8B;
	Sun, 15 Mar 2026 20:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JlGt5QTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12274225403
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 20:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773607509; cv=none; b=qpHPkAaNSCZIKAuJ7qnqeF865uM5F0gdyufWxcdVTMeWyCavb4goytEKiJ4InwDTN4elKUFc6Gl15BXf/ERoFrys0XK4wzSJUegpSX9AONLcAH2yZik1WBzoHlcXG2j7GeRxzIC5fT+UPw3AX1ZvcyiUaGZp2u5IxMf/Aazz3qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773607509; c=relaxed/simple;
	bh=TL4YnckqfDAizb9G4bEiBhT/Q2gm3gBjFhf7dD9W5vI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jWWQ28EZ0K/aR46kudqJN/aWkhzddZ+UrsJAbtZ9fJEzCGe8SqM35m29NUR7vFTKDmDM/NOSy5w13PHzK71JpyeM6Zi0EUcZ3b4zPZHfhhap4DmePmIevjqwUQSUe8x3iKUip4wqxirxIgGGICIIm2bcSMUmyCHxa1w3PfMlprU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JlGt5QTS; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4853c1ca73aso31480785e9.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 13:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773607506; x=1774212306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iqIKekWl2Og8NkYhNx2Re8stLohnmIm/R0Ug/sDV85Q=;
        b=JlGt5QTSLUsU/BClmsd++eXvjktPwnZGpfRciezoVKKR9T7a2l/nL/8aT0A2eP1/9g
         x+JQ8OMaXPnpAab3h+siGpMHZN0HZNKdkX4kCHeZYc7edrWI7MjQQ8Sgy1U2FStzMedx
         mmzAoDYxqv3tTA68x28eqI1EcLkQCVQF4RhNM/6Cy7jsZkg+y/wyHj+q8qYtJstiUrGq
         LNarEg63qaBE3uPXlh+f+ZueNSQKD4rCMWwA6V+FvvwqN4hO4vVyjAy5x0MWaOHFbmgC
         D51UIBrA9QJm0Pmsn7kQZra0tEgn8ifWPLJY/GZHnzZmu71DuCug2ntJpM9QyNaikh5E
         v04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773607506; x=1774212306;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iqIKekWl2Og8NkYhNx2Re8stLohnmIm/R0Ug/sDV85Q=;
        b=iCt5tbOzpvKUFihDY1Crigjr4D1PeaaDcwzccrS17wJcY26Q3bCwqrjuEnaGMqHfx4
         tGDGBXcrtQBpiEXHRtm8GLxLEs58B+iHG45AzWVn9rBqO9JI2++i0AIwKCcUXuXbpuyE
         iqi7HnaDRiWK4/u/0BgObIEOOXn7iZMsCiDheLruRbjvW3qzTIgsrYD4Cv0Mb1/auiQR
         xcQoYvYc4+kXQzUHbeoK4Fm8LxzsEDdy5bwI+WfJzCruxz3btQoQv8oaXvGFmzNynNYR
         wSzm3IMzsGINd+MTWPl+fMBbBRBvC3OOey4KjSxdV2oSW8fohtmfQkTFyb1RfFFBWAFU
         zkcA==
X-Forwarded-Encrypted: i=1; AJvYcCXbjKulTMm3bYthxVDmFwSQAXJSsqjS7VgKH36jBXGs1DqopniUhaqSQyZDxhD4658HBT8OHcFxEOCE@vger.kernel.org
X-Gm-Message-State: AOJu0YxtF5LUk6gkHRDAifK7qrt8eEwgZr5OkY976n/X95SJu4+8yKZO
	uagBPuAs/8tF63l41zWh5D8p2nHLZ/lUB1aXiMUAJ75RwRy0YrZBFQsn
X-Gm-Gg: ATEYQzysyOg4WR3hKMSiXHe9bFFGso6443fqup0zeJZO8BeqwzhAib/PJGSxOBoEoHL
	kEqh6+Qqzq5b2o9TJm/AR592pstIAvWYFB5OmXQlwFUReLDDjp7wNWLbc7WKWPl2Fc9w5kP/Ewb
	byx1BDgjJoPbf1CnKycCZGKfnt4ktNEychppro68x57rNf0XyTkkWajWDx8LZtKbtMlgnOufoMl
	q/b+zYv6EVJtNCq2SKXEp6FOmL9KTwtUrsqJIbYi5/lvyhkkhWAfSch17m/k0CjGnkWj+iYjkPt
	OwGoMI4WJ6YF9kUPAQZVp1n3MS/jtDtqm49u6xMA772pZekNR8PgtqaQNsGif1iG+CKQXMXJvBP
	arRMiY6YH/6RqVh43o7xkiGpJwhQiZMjoYvL541+FvTGbpnx+hOigS6inYmZ2o16ChfngFQ1Uym
	uUxhffC2H7xfnqWfyljcxWg6jv6Hni4W67tg==
X-Received: by 2002:a05:600c:1d0e:b0:471:700:f281 with SMTP id 5b1f17b1804b1-4855671fac1mr196204405e9.25.1773607506202;
        Sun, 15 Mar 2026 13:45:06 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485563f8c23sm132043885e9.1.2026.03.15.13.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 13:45:05 -0700 (PDT)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org,
	maxime.chevallier@bootlin.com,
	pabeni@redhat.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH net-next v8 0/4] net: phy: realtek: pair order and polarity
Date: Sun, 15 Mar 2026 21:44:50 +0100
Message-ID: <20260315204454.124544-1-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275841-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 84FBB2926C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The RTL8224 PHY gives the manufacturer some flexbility with the pair
order and polarity to ease the wiring on the PCB. Then the correct pair
order and pair polarity must be provided to the PHY to function
properly. This series adds the support to configure the pair order and
the pair polarity to the Realtek PHY driver.

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
Changes in v8:
 - drivers/net/phy/realtek/realtek_main.c: introduce the common helper
   in patch 2/4 instead of 4/4.
Changes in v7:
 - drivers/net/phy/realtek/realtek_main.c: factor out a common helper
   for package bit modifications.


Damien Dejean (4):
  dt-bindings: net: ethernet-phy: add property enet-phy-pair-order
  net: phy: realtek: add RTL8224 pair order support
  dt-bindings: net: ethernet-phy: add property enet-phy-pair-polarity
  net: phy: realtek: add RTL8224 polarity support

 .../devicetree/bindings/net/ethernet-phy.yaml | 14 +++
 drivers/net/phy/realtek/Kconfig               |  1 +
 drivers/net/phy/realtek/realtek_main.c        | 96 +++++++++++++++++++
 3 files changed, 111 insertions(+)

-- 
2.47.3


