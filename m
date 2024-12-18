Return-Path: <devicetree+bounces-132407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FEB9F6F43
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 22:08:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEB36188CC63
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 21:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A69D01FC7D0;
	Wed, 18 Dec 2024 21:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="nd4T+smf"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951401FC7C3
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 21:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734556122; cv=none; b=k+lL/yvhEdIqsguC8Q30tZ+9X45uUpkNeomvDSyfdE64xD7G62sB2w/fDhWlGWuTjvzdteiHSI6v+UbLhokm/kCfXA4HeOBQnUabW44Ssm7AHwWo6ZCCdebDeI3MjHaTKe4rkEuHlVvWhRvUwi4+jPh8YmrPChqYyl1Tl+UAwjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734556122; c=relaxed/simple;
	bh=mpkF+KliBxkXe4shpr+AtFSOJ/VGLkhExDly5Dww5cc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LB5mAOV2wvkk+bAz2teq3N6oUa9eRnnq0PTAYxNoBn7WcMaWwhDplrDfkDcciFckeBj1Mt66LYMlgfZoXn5xwPigMUjHKlnNhRwDoi6nGURtmjm72VhV1nULniHPBoJbb9eWmL/hMwgoCMbxhAWhesF+DXzGauvr8GavpR5Tp/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=nd4T+smf; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 202412182108326de4c399ee08c35753
        for <devicetree@vger.kernel.org>;
        Wed, 18 Dec 2024 22:08:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=xps1rrCB3ezPJ4SU0woL1vnK1r7e4vQ0fCMaUaYxnw8=;
 b=nd4T+smfD0sdQa3oBs5N9xd4x7JVFIPhtIW8YVecNkzNJCP9ocrJ1scFeFSBf9veDUrqtG
 GrGX/+lPplSOpZSyuNn/mHJy1kyIF09mnf6PiymaYOjURmmnkFx45VMCckW/sADvr0Cp3XUx
 wvHRo/YucSOoTtI8a28YmEdY5uTsLfjQZIsVsoIHajXU0bcuRVeSlvBNnASRNU+/ZPK/6FFI
 V6VFi5qArIYL+cbnw0eeufukL0JD/4oEKnvP/OCWMFUJmcFs9uXlia+wltCeqIieMidgAk3X
 3r8NljmCwtu/07CR1CZBSGlHZAqXYd6Ck9xyqTY2PCl0p/hKxe6LLbrA==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: linux-leds@vger.kernel.org,
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
Subject: [PATCH v5 0/2] leds: TI LP8864/LP8866 support
Date: Wed, 18 Dec 2024 22:08:25 +0100
Message-ID: <20241218210829.73191-1-alexander.sverdlin@siemens.com>
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

The series adds support for a family of Texas Instruments' automotive
high-efficiency LED drivers with boost controller. The four or six
high-precision current sinks support phase shifting that is automatically
adjusted based on the number of channels in use. LED brightness can be
controlled globally through the I2C interface or PWM input.

Add new DT bindings for ti,lp8864 to support all four software-compatible
devices:
- LP8864
- LP8864S
- LP8866
- LP8866S

Add leds class driver for these devices.

Alexander Sverdlin (2):
  dt-bindings: backlight: add TI LP8864/LP8866 LED-backlight drivers
  leds: lp8864: New driver

 .../bindings/leds/backlight/ti,lp8864.yaml    |  80 +++++
 MAINTAINERS                                   |   7 +
 drivers/leds/Kconfig                          |  12 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-lp8864.c                    | 296 ++++++++++++++++++
 5 files changed, 396 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/ti,lp8864.yaml
 create mode 100644 drivers/leds/leds-lp8864.c

-- 
2.47.1


