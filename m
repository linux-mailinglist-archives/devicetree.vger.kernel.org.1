Return-Path: <devicetree+bounces-255347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B26FD226F4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:31:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2CA42301D0FF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF141A9FBD;
	Thu, 15 Jan 2026 05:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ikBI7KaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A2D1391
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768455094; cv=none; b=fxaWWIbvYO/f9CoDSEhW3XWWNgccHuI23c3457KH9afe5a3/roncPY1gj+STCHXw++aWyhCOmm2yfPyF5qVfnsEl9wWhx3Bjc63XgHWyWcZYr/3t03bLU/HeNnU3w/lw6zmDKu7DijjPLrWR7a9E7GP4WSVKhKBTqE9TX5EQIow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768455094; c=relaxed/simple;
	bh=v8gyNfLT1phJrH78nmWLdeATAGcB53Cwk/pb3fQo+U0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MJV9h68X1SgP0F4DtUYsjPJEP9sKX6t8YtZsvJO7tj8wIIMIDV82eoGJj4K2kVZFbrYNHmHvA9XtD0zLuygpUbv8J9EHmE+ORsqEUtqHJb6GLzU0nGGAe1vCJ8I01Juy7SWrj1ySRMyGDEQzPLQmj8k+okGF1kReJPCy0/mKd5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ikBI7KaT; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-7926b269f03so4532007b3.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768455092; x=1769059892; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AzrY2zyUlFdBwp56KpRsHxbj2guX634diWbsvb3BOuw=;
        b=ikBI7KaTawMRU0ico69bfgTEvE412HzDl4TdSGTzQnosutkaG48QAm8yL2nTC9JsEp
         DF+NlytZfltLI8/68yaY7AjWzStOzv11Iw2fmayV0ONz/DszVJJNRO/sXw/dbujOaW8h
         9uTVQfalwyGDEWm6vpv4r3GquakSYKWAmQyFkEC97HWy1nqhcqTfgFpaF5gRfXbZ9XLB
         i3L63MO/n9fxYp7TyRcGhPZ3o8X43hfbQNi++HGldPosZWdf/h2hfL/P5QS19daeSHPJ
         d0vXK3BUbgzxA0vAjakhDZH+qLxxvGiM/bZOj0HEthIFDPvPqJNLhdv5jwrR0WQEzMel
         fl1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768455092; x=1769059892;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AzrY2zyUlFdBwp56KpRsHxbj2guX634diWbsvb3BOuw=;
        b=Cw87tIR/jX/Z9SEcK6qAedGIgJcosuEbAbquqI0YwXdw+nS+iqPz/PaCXnZJ8V6H3+
         iK0KLOrlEmWp57mPkW6W4Tum3Or9heBt+YapN9uLvheySNfLdRxMuKv+L+u2C4MWTdIH
         lgYQOgcipPnpxPWnZGbFJw0G8QiRYWemXGMqBixmVVogyc5AWUStHAY2cExhHzC2HroI
         wYUvywIitr0mZx5EwJZIN9Vm4W96tRbczt05FfjskrEy96a6U3OXgpbvFrAanfBYaZD+
         CDJvT/S6UesJljOUKWR7Fcqmp7YRF7TtK/Qe6r5JLYwzgEPoCkVSJjLQ0jqOKLAXAJiP
         Ws+g==
X-Forwarded-Encrypted: i=1; AJvYcCWL/E9T3wA7WVzk9kTVMXn/fal4VhLDhhIftAxqckH2raOORdu+PnpnIQ27HRx2tZVkfeXfRFAjcTD3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/7WNSBb3oDn1trh6+r3lsdDMYHWdH5KeWB5kQ6pr9UpDNJeaV
	upr1K9G2aGL7SdK7lq3zkPXQt6BjZFCJiL99ghWbKjaa+fp9phmDM4pc
X-Gm-Gg: AY/fxX6TwHfwizajR0X6pbb7yz9gIZmy86M+1g9zYB6ND9mmYn0toEA3zOWWHloXZXj
	A9NxDpQ4Lp15+Z+dDr7PLa3wQd4MlDmgKdLrX8xXCOxfLmQ7clsn1ED/MozrA++ZojbBXX2gHlB
	tDbCMeaxu2ETOlzsSqbV/S8OemjkBOz+1bs5CQiabo7CIwmHp8nHF/c2CXVQlDZ0OyYbKPZcb0H
	uZHOB2IeHO7WUqpAxMO0RylB8lvU39oRH/q67f9jM0kQlwLPMBpXCaSqYe1++4Dn0FXEBEGm9Rm
	LDOq8zuxDsOWxjpblygxMKsURbkZznTVG8ATmQFg9mUuqQ80S+LHllfFFmhgq99zQiM3wo4SEBN
	FaP4h66BDWVl9ncWgVYDxRC0UCu2HX4eAOI5jPLck+P6mUL4drnYJeGo78+8ptlXPa4SVzitWS6
	Z8lRlv
X-Received: by 2002:a05:690c:6a06:b0:789:3f0f:ac6a with SMTP id 00721157ae682-793a19ba6e5mr95950467b3.16.1768455092178;
        Wed, 14 Jan 2026 21:31:32 -0800 (PST)
Received: from [192.168.2.165] ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 00721157ae682-790aa553172sm99259437b3.11.2026.01.14.21.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 21:31:31 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Subject: [PATCH v2 0/2] Add device tree for Asus Kommando IPMI Card
Date: Wed, 14 Jan 2026 23:31:06 -0600
Message-Id: <20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJp7aGkC/5XOQQqDMBCF4atI1h1J0iK2q95DXExNNANNIhMVi
 3j3RndddvnDm4/ZRLJMNolHsQm2CyWKIYe+FKJzGAYLZHILLXUllVKAaU5Aoyew64jh2EOHbOC
 FxiBeq7uujcjnI9ue1pNu2tw9Rw+TY4s/oJZK3mSpKl3XErIfiGfjElOg5Tl4pHfZRX+IjtIU+
 XP+uqjD/Vtp933/AraGxV30AAAA
X-Change-ID: 20260111-asus-ipmi-expansion-card-baddaa36928d
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, Anirudh Srinivasan <anirudhsriniv@gmail.com>
X-Mailer: b4 0.14.2

Adds support for Asus Kommando IPMI Card [1] [2], which is a PCIe card
with an AST2600 on it that provides BMC functionality to any host
without an onboard BMC as long as it has a PCIe slot. The model name
Kommando is based off the model description in the vendor fw.

Currently supported functionality includes UART, booting from SPI,
KVM functionality(usb gadget for host, reading VGA framebuffer from
host) and LED/Power Control via GPIOs. NIC support is not included,
requiring additional patches which will be sent later on [3]. The
entire BMC functionality has been tested on an OpenBMC build 
available here [4] (which uses a modified u-boot device tree [5]).

The card supports some additional functionality in it's vendor firmware
like fan headers with fan speed control, host bios flashing via SPI, PSU
monitoring via an SMBUS connector, a custom ASUS SMBUS connector to talk
to select ASUS motherboards that support it and exposing a IPMI device
via PCIe to the host. These are unsupported at the moment.

[1] https://www.asus.com/ie/business/resources/news/asus-ipmi-expansion-card-gaming-pc-to-workstation/
[2] https://www.asus.com/supportonly/ipmi%20expansion%20card/helpdesk_manual/
[3] https://github.com/openbmc/linux/compare/dev-6.18...Genius1237:linux:asus-ipmi-card-6.18
[4] https://github.com/openbmc/openbmc/compare/master...Genius1237:openbmc:asus-ipmi-card
[5] https://github.com/Genius1237/u-boot/commit/1b1b7daa85f6c998e5f404296b3da43077a2758e

---
Changes in v2:
- Changed board name/compatible/dtb to be consistent with product name
- Added ast2600 to the compatible string to bindings
- Removed ethernet mac and phy, and extra blank lines from DT
- Reordered phandle references in alpabetic order in DT
- Added a label for LED nodes in DT
- Link to v1: https://lore.kernel.org/r/20260111201040.162880-1-anirudhsriniv@gmail.com

---
Anirudh Srinivasan (2):
      dt-bindings: arm: aspeed: Add Asus Kommando IPMI card
      ARM: dts: aspeed: Add Asus Kommando IPMI card

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |   1 +
 arch/arm/boot/dts/aspeed/Makefile                  |   1 +
 .../aspeed/aspeed-bmc-asus-kommando-ipmi-card.dts  | 117 +++++++++++++++++++++
 3 files changed, 119 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260111-asus-ipmi-expansion-card-baddaa36928d

Best regards,
-- 
Anirudh Srinivasan <anirudhsriniv@gmail.com>


