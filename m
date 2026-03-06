Return-Path: <devicetree+bounces-272314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGcgBrQkq2n6aAEAu9opvQ
	(envelope-from <devicetree+bounces-272314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:02:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B111226E38
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 32C3F3045018
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFE7421F02;
	Fri,  6 Mar 2026 19:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iWxmrjDa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786AF36CE1E
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772823728; cv=none; b=G54oJaIX8TqHAcvi6DbFPDXBXVe5ItkT/V6rzIxVIT2+yjJCiFBggOEAaSqkDMMyH9OCsRIdVjNFgPktOBH7+1qVIUg9GkRpDkkUpUq+x1NOy+YHK6VNhpVB5gHv04orhPoaI5CjZ/Bv8zMHK8ucgPa9vGGrc6K+ID1AyyO5tnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772823728; c=relaxed/simple;
	bh=dJsPKac69l31PF5+fJXmRZLpJ38IAyXWcyoDfFKiieU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=dOXmAn+zfPQ07g2LnxjGxvU5rFKemfSj+zJXKYPjshSUvVnzYRAYoCvwifQMlFB+SBVa3acMtH8snDNJj/Dc4XPEUmUYZECynXREewSc0juyOKeWJcfm9lsqJALQICCIaanqykSStpGsHT3Af/MiNraXbJO02sRe1NcD7niyPfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iWxmrjDa; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439c5cce2c6so3404959f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772823724; x=1773428524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=plIji+KO7wHTen0JQlN+ty+3RJPt6U7sNbwGVctA7DI=;
        b=iWxmrjDaxPz4jtb9DpkMHOxrabgIJTSAR48zjK6C3BII5qSPUk5ECKN32xIZN5eSSy
         JrRb/Kr3ZlFpv3IFKscdDgfnMm4oFJvshQ8bX9LDnUQ7dVQGdE36KHjbFEvEP2EdhG89
         ak9BjATYk1N9bhg1+f3Wfp3Q8m0EAfxSBHiaEM0JEUz/WjCk60lo0L84zM9NLvA3rOae
         8Ks6OoXGSeFkGkGoE0gzYKpyta2wM5blzJBOTp0pj230eodR6Y9IwOJV2h2x1ffIcIQ5
         ovwDQihKk2WdTI+7Bis5fGYJHYPvZEQmFGHGW8zKPX6ld4G7gPEPflkXdw1Qq8ClagnG
         6Fug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772823724; x=1773428524;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=plIji+KO7wHTen0JQlN+ty+3RJPt6U7sNbwGVctA7DI=;
        b=TmYOvGlznXX82fon8cw6bTVUiWqfSwA9rxwTbgE1oinSkSisO+DQlGMtRuwqZiOxAA
         +n96JI8FdfBwlOj/WECBJ3qp+elqJiPNL6S5I7Ig3UaJywRAhE7KZ7hbKj/VNFfc3Pi4
         rlReODhojm7OvmkqsZG7rlBZZk4iPMZOoVADC19+urb42zhIXOmJLSXnEoTPyFxh5DcX
         3I8jT5ZTcS+OQG3J9sF+pvZ4OMRQndHpIuJUSrPhFtrWx3uAi4YZdTfVY1zHE088lChp
         AB4MJwbtrTEovQc4XsOjhJoQ531X6qhJL/VTlS6+RtayIwrKctKzXPcV4qp6NRln3ztK
         v2Jg==
X-Forwarded-Encrypted: i=1; AJvYcCW7xqOMmkxAheEmZryS1el76poRUHE8wEGIA3sgcAIFm5yCB67o3bpIyZEU+XKsFn9cPIpjaQe4ayQc@vger.kernel.org
X-Gm-Message-State: AOJu0YwPf9qoElfdi38UQvDNc/qqDG59P4jKwlHOzpID7Z2xtVMlhHRd
	653AYBVTMd14LlioNd+KxIZVu3kP2nl1KjnB6g+wFgqW/WxD67pcmGJK
X-Gm-Gg: ATEYQzynDO/MUJSPZpuXCnDzYYrMp0nuau3dAX5B3msKbcsshpbxH3X0xpyBjgr0eoO
	VjXYEfekIUrp5UieK5OHgHe12DaWpxQ97kEYhYaLYcUxaISPU+xVqCLqeclFMtWGaJcqpzhgp5z
	tj8Degcwi9RfqK2ZhldWv6EpNzBX1K13mAx3DLldDTQHHcMnvaOS0fmTrUvPyywSAKg3Ng4Fm5b
	7wCz9zUGuQZ3I54a8LXU6etV53D5kv/Ve3bGdol5ORzXq5H9XxZA4+sI6Pl2csmZKO9HP1wGRaU
	LeB+0s3QeC0PiKVQOznAKYFCRK0R0xLI9t4w/T54wiS/TduZvuLgwOiRhQEBQnMrl9X0UggSEM4
	v5T1IfSLF2nx1bhO2JABhGnqHb+y3EZL8hFzzFZ1Q5uaVKIO47+f3i7nzVe71qCH2LcLbNU/jPs
	oFJPOJDfjP+o7udCZmKchqpwuaZdcdqKdkx66h0obs6GlMkGv1/yf3kuw=
X-Received: by 2002:a05:6000:2404:b0:439:c43a:acb6 with SMTP id ffacd0b85a97d-439da654620mr5734587f8f.10.1772823723545;
        Fri, 06 Mar 2026 11:02:03 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-439dae2ba66sm4743436f8f.20.2026.03.06.11.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:02:03 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/4] airoha: an7581: USB support
Date: Fri,  6 Mar 2026 20:01:49 +0100
Message-ID: <20260306190156.22297-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8B111226E38
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272314-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.985];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This is a major rework of the old v2 series.

The SoC always support USB 2.0 but for USB 3.0 it needs additional
configuration for the Serdes port. Such port can be either configured
for USB usage or for PCIe lines or HSGMII and these are configured
in the SCU space.

The previous implementation of a dedicated SSR driver was too
complex and fragile for the simple task of configuring a register
hence it was dropped and the handling is entirely in the PHY driver.

Everything was reducted to the dt-bindings to describe the Serdes line.

Also the property for the PHY are renamed to a more suitable name and
everything is now mandatory to simplify the implementation.
(the PHY are always present and active on the SoC)

Also other unrelated patch are dropped from this series.

Changes v6:
- Fix kernel test robot (sparse warning)

Changes v5:
- Add Ack and Review tag from Connor
- Implement Ethernet support in the USB driver
  (testing support for this Serdes on a special reference board)
- Use an7581 prefix for USB PHY driver
  Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/

Changes v4:
- Rename PCIe and USB PHY to AN7581
- Drop airoha,scu (handled directly in driver)
- Drop dt-bindings for monitor clock in favor of raw values
- Better describe the usage of airoha,usb3-serdes
- Simplify values of dt-bindings SSR SERDES
  Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/

Changes v3:
- Drop clk changes
- Drop SSR driver
- Rename property in Documentation
- Simplify PHY handling
- Move SSR handling inside the PHY driver
  Link: https://lore.kernel.org/all/20251029173713.7670-1-ansuelsmth@gmail.com/

Changes v2:
- Drop changes for simple-mfd
- Rework PHY node structure to single node
- Drop port-id property in favor of serdes-port and
  usb2-monitor-clock-sel
- Make the SSR driver probe from the clock driver

Christian Marangi (4):
  dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
  dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
  phy: move and rename Airoha PCIe PHY driver to dedicated directory
  phy: airoha: Add support for Airoha AN7581 USB PHY

 .../bindings/phy/airoha,an7581-usb-phy.yaml   |   71 +
 MAINTAINERS                                   |   11 +-
 drivers/phy/Kconfig                           |   11 +-
 drivers/phy/Makefile                          |    4 +-
 drivers/phy/airoha/Kconfig                    |   23 +
 drivers/phy/airoha/Makefile                   |    4 +
 drivers/phy/airoha/phy-an7581-pcie-regs.h     |  494 +++++++
 drivers/phy/airoha/phy-an7581-pcie.c          | 1290 +++++++++++++++++
 drivers/phy/airoha/phy-an7581-usb.c           |  640 ++++++++
 include/dt-bindings/soc/airoha,scu-ssr.h      |   11 +
 10 files changed, 2545 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7581-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-an7581-pcie.c
 create mode 100644 drivers/phy/airoha/phy-an7581-usb.c
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

-- 
2.51.0


