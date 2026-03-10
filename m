Return-Path: <devicetree+bounces-273670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJf2IttXsGkJiQIAu9opvQ
	(envelope-from <devicetree+bounces-273670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:41:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E24BF255C6D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:41:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDC09316763B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D1363D524D;
	Tue, 10 Mar 2026 17:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VQ6s53ZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301183D47C5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164334; cv=none; b=GDZ5NhSbZudoJoEyrWpHFEdjm6FTDYKgBQ/JBO9LjC7Hc3QBXk8pny0uJzKrjXwf9WWhq8cecUi0nj8OZzihR83HHYdjStTguRC+HV/5QX4HohfCU2UfKNmcDjHi1KECMlA74HxkavA0L+pN2Fk1G6OuRTDSIdSGg961Fx0ms2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164334; c=relaxed/simple;
	bh=gMpNvbA/trS3NU+BTse6Rix5R6BzD4pVqoDkvYr4Ioc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XKeaEiNli6IC6wjlc/cGHjR2WaZVWk4bkhuWR/DP9udaeIcNuVlxazkQgeVkEj99pQ7opBQ3A9TkZdnMhM1On5wWFCDNvvjJiD2G8XkzaNfEERHoKSvSyZbthtThL2HlDhExSIRO1waq/CTTD3KonfQSj0/1p/rgaaJjapNiya8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VQ6s53ZL; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4853aec185aso22824505e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164331; x=1773769131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ieE8e1+SXTVLenv18290igX/i+pY0PQ8nKAIjWBC1pc=;
        b=VQ6s53ZLCuxOyiGHglt/4gRg1rgUoK9chyLUsTBERb0SgsEU+71hHRaMoVKJcdNV0u
         /w+6DgWdEewHHui+M5LhfvT3hC9W3/TTYMaR+ZbUS+BSpnOGGup8C53anVPuEmKv6sjt
         rBYHCfVAKSqz3LrjLbPpOgkYVU/cDrxtfY0Nkyb5ygOXyQ6VR/Yp7m2jjGUPXnVtYOi5
         9XABZ+mecyToMCecYsuamTd7klC38cjZRAiU1JUb4ANqhdsA9ttTTgQyF4KtRAn9fyIP
         NJHMNUyhwGSHQtchzX/lfd8IwLPRJzGgfE+kvkDppb02l5U0ED8lTpnj3pVgVPMBghts
         mNZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164331; x=1773769131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ieE8e1+SXTVLenv18290igX/i+pY0PQ8nKAIjWBC1pc=;
        b=viF2M9Cy30XqeudfTSQSipzgRB5A65/nlCwLUoWF16ZyG9LisDmY68/r+JBqvcgz3X
         ocep1feRNsvquYrxaKhJCSsAVn/XsMAxSKa141H/Jgd5wDzwwMVFj4bk+ghu7PoVqToB
         kr1961hZrv+q6+SxnsFFn6bm8anoaylDT5qbD5ZipCMVEB8O6yGcLA5r3iVGfRYASyqn
         7sDdh21kTbphNf0mV7xkCuyFPfvjD+UAELocSFf37sX0F+RhGOTWvbM1CLICJp+CmNKI
         MjwuQX7lLaECwoTvmjY2XLnjCml0+ilitLfxTbvgJeycfqCWxu+b+jumCZhoXjLJ5avL
         8y+A==
X-Forwarded-Encrypted: i=1; AJvYcCVDVnWv2Kfw4uN06edJ3BxxX1D15JFw14PBIYib0qilI/+WZY9ZBFMcNm61l/3qlFhjd4SNZgcaNVT3@vger.kernel.org
X-Gm-Message-State: AOJu0YxwuU665FlmZ4pPmmfJAxVe9GuE3NSuLq4byw8MxByFEP/srRfT
	tIV2Aw86yFJLTVC2OduwKmPdYhgZdRlq80sVTDzZBIcRvd6zhSws9unX
X-Gm-Gg: ATEYQzyFDLkqTOeMKRQx3VuzEo60tnzgaJ+WD5mwtMBlWtU3l6rDqlgL70cDS6YnTjb
	8Cgel99PMg56Ty5sOrTqfAVK+lcM6WW/A5XORwlDoWDgPQjRyarqeHJtfKmku5slzISCRmPFjhv
	0ZX5NatCZB9tEVynaM8hMvTSkH11Q1CHNyX7MEsht4ujg3X9DcgG+etC20Es6iZ+GojqQsptEv1
	enz/FJCE32dooF4SemSgNGE5N7IsLmnrLm78B471sDKxySmhfjAWTOyhZTW8gfF7CTFJULSs59i
	0BN+n58LCkRGVU5NRDNtggrCVgN8IPEzyQZIKUb3z9tAaJOMokzJcl6ikrNzEab2TgI1rJfMQjx
	CQoHLwRv0l1/RElzKeXfTHusMPYpqsli2++k9U/tKwdFABFZJb2ZqLx2jbfejWNSIoUgBPtdU0x
	RqO+wimcazpGG5ap8nPDiqSiM=
X-Received: by 2002:a05:600c:4fcc:b0:480:2521:4d92 with SMTP id 5b1f17b1804b1-48526964a1fmr257839325e9.24.1773164331326;
        Tue, 10 Mar 2026 10:38:51 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541a900easm103239295e9.9.2026.03.10.10.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:38:50 -0700 (PDT)
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
Subject: [PATCH net-next v7 0/4] net: phy: realtek: pair order and polarity
Date: Tue, 10 Mar 2026 18:38:42 +0100
Message-ID: <20260310173846.230923-1-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E24BF255C6D
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-273670-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The RTL8224 PHY gives the manufacturer some flexbility with the pair
order and polarity to ease the wiring on the PCB. Then the correct pair
order and pair polarity must be provided to the PHY to function
properly. This series adds the support to configure the pair order and
the pair polarity to the Realtek PHY driver.

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
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


