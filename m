Return-Path: <devicetree+bounces-128093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0769E76E3
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 18:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65F73167A8B
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D3A1F4E21;
	Fri,  6 Dec 2024 17:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="P09x5WrM"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98A414A4F0
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 17:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733505537; cv=none; b=XryIVMMC4Qr+BB52cxpEo4U/9TLmMmnPwlqh9C4jIXiLJYEydKtkX32WW8duxRB4WpUc9Ef+Jq8JpQGEfJr91V94mdt9t/e9JXcLI5uG73UUT3MQWmghKGxENwQnhhO0xpLQ3sS7eAC+5GgOkfLG8eWPuPbydXzH+cS341xxpyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733505537; c=relaxed/simple;
	bh=G1zaeOpLnYHPGCo2Fc34GGU4kV+KKJjS+YmbxU0bd1c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HjR9huHg9uujQIo9HXeAgB7GWa28JctTaO9l0H9yBanV1aAmBL+YW4mL5TBMUM+2qJkNn4NiplRfIIt4lLJ7ZOokJoaAcPjvK9CuP9bkhKTe6xY0edckw3KVuuZhqCo4YnaUaKv7QWOhoApKdXT484kJ3Ye4MO4+tCNxy+YYVxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=P09x5WrM; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20241206170839f3369038ae7ffdd3e5
        for <devicetree@vger.kernel.org>;
        Fri, 06 Dec 2024 18:08:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=B5HjcpprEx98dJUDojMaPd2m0E7QHD4EvFWFVtuTv6s=;
 b=P09x5WrMj2xriIbXq8qjVn5I7aEDhPz6lksS1y0lav9QU4U/rlBJA/02KXGO9EJECKExzq
 oW3y5baS913wZqAtfRSPAU1Y/Cx+88flJsngrOH1fqLea6POT6oPnt1hvy45BRqeipIVd6pF
 BMiE6l/dBq62RKOWz8hi9YAPNrbxT8F5D5+rtDvHAfbSsINGULym49x3T6tprPgRtnPEx/fE
 LVgI83aqhkX1Qu7ig+nBk81V3D+hBi+oAZ9avqsXW9Oh0FDHQEvuk26adK16c4BKlqC9MW1F
 0Tf9qHzc8lamhYYR3UVdOHA5ib45TOpeZUO+m3JrxfipBdBj3d4zCFJQ==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: Dan Murphy <dmurphy@ti.com>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	dri-devel@lists.freedesktop.org,
	Lee Jones <lee@kernel.org>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Davis <afd@ti.com>
Subject: [PATCH 0/2] leds: TI LP8864/LP8866 support
Date: Fri,  6 Dec 2024 18:07:11 +0100
Message-ID: <20241206170717.1090206-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Add new DT compatible ti,lp8864 to support all four software-compatible
devices:
- LP8864
- LP8864S
- LP8866
- LP8866S
This is a new family with a functionality similar to LP8860 -- hence the
same (re-used) DT bindings. They had to be converted to YAML along the way.

Add the new driver for the above four chips. Despite similar functionality,
the I2C interface is completely different to LP8860 -- hence the separate
driver.

Alexander Sverdlin (2):
  dt-bindings: backlight: Convert LP8860 into YAML format adding LP886x
  leds: lp8864: New driver

 .../bindings/leds/backlight/ti,lp8860.yaml    |  86 +++++
 .../devicetree/bindings/leds/leds-lp8860.txt  |  50 ---
 MAINTAINERS                                   |   7 +
 drivers/leds/Kconfig                          |  12 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-lp8864.c                    | 320 ++++++++++++++++++
 6 files changed, 426 insertions(+), 50 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/ti,lp8860.yaml
 delete mode 100644 Documentation/devicetree/bindings/leds/leds-lp8860.txt
 create mode 100644 drivers/leds/leds-lp8864.c

-- 
2.47.1


