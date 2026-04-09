Return-Path: <devicetree+bounces-286161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IX43C6OZ12kUQQgAu9opvQ
	(envelope-from <devicetree+bounces-286161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 14:20:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6813CA511
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 14:20:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5391730068CD
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 12:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452273AF65D;
	Thu,  9 Apr 2026 12:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=philpem.me.uk header.i=@philpem.me.uk header.b="kokY5asX"
X-Original-To: devicetree@vger.kernel.org
Received: from nick.sneptech.io (nick.sneptech.io [178.62.38.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9283326A1AF;
	Thu,  9 Apr 2026 12:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.62.38.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775737246; cv=none; b=GWA1EAip8iyySNuy1D3mCQ+MQNurn8rZswvbe6MGuoUTOYpecWMfoGH3Wfbx5ihzM+/KgIrhGEjFCCrYQPyq2MA3xwJMP2Q5YZnj0bzWuiaT6SBVSpBy4+QqgmEtup3wc2h9QK3ME2ejCe9aH33sUKheAeP9w/oZv7YB58ht/Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775737246; c=relaxed/simple;
	bh=z090BuNnDEqCmwT14am4p8Jf70Rz43e9XQ+NMVqTpIg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ckh71hbvbApp+aevp/PmoJSDD+WFZLbCu1P30kXIzohQfMqqBvw3iwljzR6vtppSXxIyjY5YfIuFkjE27KBTtuZ+OlXbxDD7qgbTCQ+MQf3DjB/arHLSlrMLk6O8QQ7ykuO2jjPXq3K44XPyC5IcoWDRM6wJHXlAnsrSDjXzLTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=philpem.me.uk; spf=pass smtp.mailfrom=philpem.me.uk; dkim=pass (1024-bit key) header.d=philpem.me.uk header.i=@philpem.me.uk header.b=kokY5asX; arc=none smtp.client-ip=178.62.38.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=philpem.me.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=philpem.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=philpem.me.uk;
	s=mail; t=1775737237;
	bh=z090BuNnDEqCmwT14am4p8Jf70Rz43e9XQ+NMVqTpIg=;
	h=From:To:Cc:Subject:Date:From;
	b=kokY5asXyazVOZleaUAV7+1IpM1BmC47F5XbuleHT4iAa4q4AGWF08zManugKJx/z
	 iKFK9Tj+LJY0V2a7D0XPf4OIjF9x4eq71mbyoMu/ekVn8qJCY2UeKeFzvENf7bl/O+
	 tejskIJomoFzGy4g6xnL5JC1fK6NpXV33FLMWk0s=
Received: from wolf.philpem.me.uk (81-187-163-148.ip4.reverse-dns.uk [81.187.163.148])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mailrelay_wolf@philpem.me.uk)
	by nick.sneptech.io (Postfix) with ESMTPSA id 3679BBE5E2;
	Thu,  9 Apr 2026 12:20:37 +0000 (UTC)
Received: from cheetah.homenet.philpem.me.uk (cheetah.homenet.philpem.me.uk [10.0.0.32])
	by wolf.philpem.me.uk (Postfix) with ESMTPSA id BED7E5FC3D;
	Thu,  9 Apr 2026 13:20:36 +0100 (BST)
From: Phil Pemberton <philpem@philpem.me.uk>
To: Moritz Fischer <mdf@kernel.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tom Rix <trix@redhat.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	linux-fpga@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Phil Pemberton <philpem@philpem.me.uk>
Subject: [PATCH v3 0/2] Add device tree binding for ts73xx-fpga
Date: Thu,  9 Apr 2026 13:20:14 +0100
Message-ID: <20260409122016.3940462-1-philpem@philpem.me.uk>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[philpem.me.uk,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[philpem.me.uk:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,gmail.com,vger.kernel.org,philpem.me.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286161-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[philpem@philpem.me.uk,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[philpem.me.uk:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,philpem.me.uk:dkim,philpem.me.uk:mid]
X-Rspamd-Queue-Id: 5C6813CA511
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The driver for the Technologic Systems (EmbeddedTS) TS-7300 board's
onboard FPGA didn't have an OF match table. This prevented it from being
instantiated from a device tree. This is undesirable given EP93xx is
moving to device tree, and effectively prevents it from being used.
This patch series adds the OF match table and a device tree binding.

Changes since v2:
  - Fix subject line on patch 1 (Krzysztof)
  - Carry forward Reviewed-by tags

Changes since v1:
  - Use specific compatible "technologic,ts7300-fpga" instead of
    wildcard "technologic,ts73xx-fpga" (Krzysztof)
  - Fix subject line for dt-bindings patch (Krzysztof)
  - Simplify example in binding doc (Krzysztof)

Phil Pemberton (2):
  dt-bindings: fpga: Add Technologic Systems TS-7300 FPGA Manager
  fpga: ts73xx-fpga: add OF match table for device tree probing

 .../fpga/technologic,ts7300-fpga.yaml         | 36 +++++++++++++++++++
 drivers/fpga/ts73xx-fpga.c                    |  9 +++++
 2 files changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fpga/technologic,ts7300-fpga.yaml

-- 
2.43.0


