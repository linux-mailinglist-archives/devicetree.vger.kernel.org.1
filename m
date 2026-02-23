Return-Path: <devicetree+bounces-267383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCgzC2NAnGmxCQQAu9opvQ
	(envelope-from <devicetree+bounces-267383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:56:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8495C175C2C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E0DD30056FD
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EEB8364E93;
	Mon, 23 Feb 2026 11:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SqUpoqjw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424A4361DB1
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771847672; cv=none; b=B0+Av9iqebVTksFymRT6wuY/VbbLvMnCpBmQxuD24fkrKZ7zBghL95wDmBXJjtvuxjfYZqCM9YoWOQmnqrIB+/CjvTVm5/2QIk25ZNGz4b7+yfOAGpc5IgcqC/0/aGQOkGflDGYQTIjzeDKnCNtkqx2ylPHdlP3juza14LynIgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771847672; c=relaxed/simple;
	bh=PqsF+4zwG6Kx0+/858uFg72Vx3sisHkJfn9+kpGwq5k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kkBsCCBcKpn1K1RwVywJLRi6kP+TUlytMQdIod9NpvZlqsKSPIz8y/cSyM/WvBA+ive/GYeFgZCLuyD/SG2JdTSfJ8jSgfAniKefqGoxQlDu++biqaHIEG9St+S2mO1+AweyEZHTQLP9tJthiGlw2HH839Ut/Ruk4ajEmh3TUOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SqUpoqjw; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4362197d174so2682854f8f.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771847670; x=1772452470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kNxS1AmPeFHtSbNUYhLk4x54/3BVPXVEpv7vdMsG6kA=;
        b=SqUpoqjwJyrDLKuuxlJ5Sye3T7RTzuJZTd6Tw85Gd2lg2uw018tTU5vKrDYzliGsRu
         GVvC1+H2fkhlAwY8/yk4xPZKdEKdL/TWnuEIYeJyKx+j4SJnUrsqYO5GBmuecWOIZlnR
         t4d65d+vc5OLbmnBf5U1nwy//qLKsgjGbDcnK+Z6abSLi5LoBk3zDBvuK0S4kaG5JVWh
         kZJTClTHpJrfpT3pESict0HZBsfEX3jri5f+DE+v/I4IohwhJpGWOLQWqpNYi/jDtxvf
         KBxlFJzwgt0KijYe6Fzj8HL7YxnPvfVjPrpI/kjKpNSMdq9Jg8VsacFJfd+ay0oVvgyz
         vOfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771847670; x=1772452470;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNxS1AmPeFHtSbNUYhLk4x54/3BVPXVEpv7vdMsG6kA=;
        b=c/YfobofUClYrDMTb9MLNN27OhgxzaYEjxaIRLcLxni7144peZMQm+zngxQzoK4Uma
         g8h6MLK43nlgfJm9Jg+tD8LXUglDfguHGG+wV5a9KkASNn5yCfHaf8wD3pqS58iKP+Vv
         tvF07yDok/GSo13tIzN1/8pyWfUKzEm+Yl2TfoYjNGr5HmNgXpfqIwKzOyW5eufm9/mi
         FdII8lnjFA9jQmFK4K8nsiTACSWG4K9Aiw35S0gpZSgPA4sKXszPuRik95/THq/WZOOW
         WX3t7lXlEay3Os6P4YqXhD8wlaoBc1NDQmioE/GXR3kSMmMBacJPB5xlz+ojuy+CrUIS
         wkfw==
X-Forwarded-Encrypted: i=1; AJvYcCWdfSjLVuvDkqi+mbgZigS7fQPtO8MnZehT1rWLSNOAfPIO2OHTlD9wmTtC5MlpMu3bzqtYz0eZ6Fl6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6E2ZGMABoh01f9bjbaeOvj/YMQAsWz6n0D3++eGczC2KD9rod
	aQvVEt0WyNxVTFs1L/obEeL8oj41Tm8+Bh+yFvZdilyKLt9/XVz7yuqT
X-Gm-Gg: ATEYQzzkrlwcOhrb6JXllao051AJj9KIz0dC7h1Aw9gA5GhF+tpwOa8TGQ8RhNnCIiE
	Xkrae3m8coVmpnmnGq7ql3+2h+JIZniF84x58BrxsQbzI2rmlLR96pJ6OO2jcj1j0UEhaEmfqKc
	0SjQ1GjBoY7MWPsN+8ca7/Doy3nJCVYGSqbxQmewc57nPOQVWvTPky4WD2R28+Pe8LYX8w27oO7
	7olcwPuoMR5aR6O+VteOyU5STN5doqN1QvZIYchhDfG0HY5rPVaar2pNuTSa3QthPgsduC1Xq70
	3PdA3Ps7Ko/WRM4aLkoqqbQOl4OdFg8zcPqmBJkQtZwhfexYbQ7FfmxxRL3BuwBYy3MOt/w1aqJ
	WcfjZntebAcb43QwvQMTBIJ1PxbtiDGy5SnIE+D7ZiE1n4O0jaIiFPg00TVNLT7nwh1qxIy75zI
	fhC3m6UJ2MrGEzydP5vw7OQFT3OWoqpOTJos5qhCPqa0tDgkVS4I3xmYq6fQX/Ve3OQOQhtWstr
	EsRkchXORTtjEJNh6HUojxtaejEBWoqTveGCs/Y
X-Received: by 2002:a5d:5d84:0:b0:437:6b62:4540 with SMTP id ffacd0b85a97d-4396f15ac48mr16299942f8f.19.1771847669312;
        Mon, 23 Feb 2026 03:54:29 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970c00e8bsm15675668f8f.15.2026.02.23.03.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:54:28 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-bluetooth@vger.kernel.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <david@lechnology.com>
Subject: [PATCH v1 0/2] Bluetooth: hci_ll: Add DT control for enhanced SCO setup erratum
Date: Mon, 23 Feb 2026 12:52:54 +0100
Message-ID: <cover.1771847350.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267383-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[variscite.com,holtmann.org,gmail.com,kernel.org,lechnology.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8495C175C2C
X-Rspamd-Action: no action

While validating SCO audio on a platform using TI WL183x Bluetooth
modules with the hci_ll driver, we observed failures when the
HCI Enhanced Setup Synchronous Connection command was used.

Although the controller advertises support for the command, SCO setup
fails in certain configurations (e.g. BT_VOICE_TRANSPARENT/mSBC).
This matches the scenario described in commit 05abad857277
("Bluetooth: HCI: Add HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN quirk").

Initially, we considered setting the
HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN quirk unconditionally in
hci_ll. However, this would affect all TI controllers handled by the
driver, including configurations where the enhanced setup command
works correctly.

To avoid hardcoding the quirk globally, this series introduces an
optional DT property that describes the controller limitation and
allows enabling the quirk on affected boards only.

Patch 1 updates the TI Bluetooth DT binding.
Patch 2 adds support for the property in hci_ll and sets the quirk
during controller setup when requested.

Tested on VAR-SOM-MX6 using TI WL183x modules where SCO audio was
previously failing.

Comments welcome.

Stefano Radaelli (2):
  dt-bindings: net: bluetooth: ti: Add property for enhanced SCO setup
    erratum
  Bluetooth: hci_ll: Add DT property to disable enhanced SCO setup

 .../devicetree/bindings/net/bluetooth/ti,bluetooth.yaml  | 7 +++++++
 drivers/bluetooth/hci_ll.c                               | 9 +++++++++
 2 files changed, 16 insertions(+)


base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
-- 
2.47.3


