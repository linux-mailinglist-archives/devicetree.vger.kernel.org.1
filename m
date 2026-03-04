Return-Path: <devicetree+bounces-270819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zE3dGt+Dp2mZiAAAu9opvQ
	(envelope-from <devicetree+bounces-270819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:59:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAEE1F906A
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08B123061E00
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 00:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68AC5291864;
	Wed,  4 Mar 2026 00:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AhwahGbw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D875D223336
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 00:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772585948; cv=none; b=LJ1C7Q0uB1tgTuTFt4wS5bcyFdbEuMwAMtdoKs8+EVKIJdOiCoilA3qaOoNIgayfJq2VjjJCgdU/kleZ3snr2/Xbs/1kcDnjjPcM4TGSo9/aKFXyWwSP2lbodPRGgzL6cQqG6FTYwIQyYXkGqpYi4PgI35gzBKTTs6kJzmW5Rh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772585948; c=relaxed/simple;
	bh=Qe3nWY0lSbvjCIK4+kctylSw9SzyLCRUsYkdKSTPEv8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=a3qZCq+z7O2gQIkMkkRYWIXsembPsywu7538hQIfAPXhyrxyiHk9TDhfBavq/Rid3wJwPlJt544S/LwH4HEeJtMauRcZ76nZY6mwqvsS+42M0Vaj0IRusENqUOfZKq8stmmdPsGGGLRaLUz9XQIhkVaOQ6DqBgN4UxPEsNzLIwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AhwahGbw; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso55475615e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 16:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772585945; x=1773190745; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=5ogMkUraTjety9MOgCpxzZj4mdAQTkI2/0DG477NiJI=;
        b=AhwahGbwMYsaD8xHnabj7AY9TaDbzZrbWyiIBOlpwHWkr9gJuk/J9ZOQlgRu4Wo5u3
         VkkC+ZAwp4Xtal24csM4n09+kF1IGP89qtCVeQGSDYs/CzX4LU+yPIn/uhHGQcLdN3j7
         UiUKxA6zbNi5XVniWuQGzyIdWjl9GWQaae/4Lx6E2WoDcAYXeytTERxbmgnZXnZsUbS5
         Y/y07tDHDqZ4yQFwuFcnXTUSLAQdelybDWZWPUwH3m0caXQOQTI/VAhxcEnV2fR99E5O
         0kyjVXjUEg18wh/znV9hmfiYpVELswJzSZJc8wh2DtF/AjfpNsE3E2GZOyoubOcvYZjy
         lMfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772585945; x=1773190745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ogMkUraTjety9MOgCpxzZj4mdAQTkI2/0DG477NiJI=;
        b=I61nYCU1SnX5LrAvYM/ANI4ABV4yBYp1W8IigCioRRvuqy3QYzQZJUqOIf9cets+8m
         iMUpVG7GOe8jw5VtC5gMB2z6mkRVoYsahDkooYU8eaDU0sBhNEuXtLezO80pDkUkhAkt
         81G49e3CcAYqkt8k3aIu0KSz4HmLbn5LXOkkO0yt2qqTX5py7QfvuQUsD/xXL8RUjWCO
         rJdymTV3Fj1CMgCZC8lQj8wpW9TS5RPcvzhhOSTt9Na/wUyZ9AZwhNmP07wWDuFje157
         uo6dzZMyY/mkpK2AQO1hUIVzNm4JE1FfRqfbantAgBNYUhWZMwzfqZbDYSW2p2pxdw8x
         D8Fg==
X-Forwarded-Encrypted: i=1; AJvYcCVy7W1p6bLVRfxzZn7kCltBmky4ZNtMXcNkWwA2eA/x047FwqV2fgRX4jgTfpwbH33if++A38wpqnDn@vger.kernel.org
X-Gm-Message-State: AOJu0YyNbOqL8sLZPayXNJAHqJGsNRadL8cMxt00qLhULmnegKe1fg6t
	rwKu9IY+kOyX1FBdKixYIYZMUmxjtLUIv9MWI1+wYMxv0rcuJY6C0oXQ
X-Gm-Gg: ATEYQzytm024Af0J+SRG0RPEitwcNF+TmBVSe7J7NQwtEoiUxwYCbzPnhruq+uCUQob
	iyJBbZxXn40FfBk/PmtNdShgbQVwrw/J3s4o77lEJnXjRQOdwUQwxJoBw/MWcrTt39i4vB6wVZG
	svOppn43tiWiQOCfk2WPuSNQkXA9Y/iKOfjwtG78YTIm+sXyUXl8VuQ+VNXZb0Ix8KOapMrkxcQ
	jh6IVbA/8NvwW495Azs/Lv4kLVjGRUvky5yqq0zGNW51h374fM9yl09+7BwZwO0YeyKd+fECqUA
	lNmIOqQgzF2mD9LK6Ol/qJruXFwEfX+fyWHdNAj8ft+48ixf2tM5zO708SHyiGapczv2KFCuQ2f
	84DRrv3exizH3z5dlnyHlka477bINGRpDzMHsf3TS0AjBWytMNoYrgt2J+DtJwQThLLD5jcKu2j
	7Sn3tn8hVivaR0jc1Go33JOm/VcXj0oFJR4AsKDwuzBzgivEaqqn9HtPA=
X-Received: by 2002:a05:600c:a08c:b0:483:885:f0b0 with SMTP id 5b1f17b1804b1-485198bac26mr3235315e9.35.1772585945092;
        Tue, 03 Mar 2026 16:59:05 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851880724esm26927575e9.9.2026.03.03.16.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 16:59:03 -0800 (PST)
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
Subject: [PATCH v5 0/4] airoha: an7581: USB support
Date: Wed,  4 Mar 2026 01:58:32 +0100
Message-ID: <20260304005843.2680-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: AAAEE1F906A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270819-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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

Changes v5:
- Add Ack and Review tag from Connor
- Implement Ethernet support in the USB driver
  (testing support for this Serdes on a special reference board)
- Use an7581 prefix for USB PHY driver

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


