Return-Path: <devicetree+bounces-295148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLtSLzK2AGplLwEAu9opvQ
	(envelope-from <devicetree+bounces-295148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 18:45:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CB85052B9
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 18:45:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C773C3001CCD
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 16:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD9E3ACA42;
	Sun, 10 May 2026 16:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv5qOPHV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7796F39183B;
	Sun, 10 May 2026 16:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778431532; cv=none; b=HhPEtvEC76fpt9oseuCr6GpICnC/VZ5PVv/GX+his5OecO4+DP8kd7KlMCQoma9xpjyqHyIEwjQJcj4JvSDxAtboU8j24h+nn89LwWQIQ/M4fhiHBTTu08gZpIJA76tEEznkOtPkjvQtN57MFmPyMwUwRpTB3W6iFdTq9ZSv0tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778431532; c=relaxed/simple;
	bh=/WuZUeZCMZrnceyX7+bS1/qqA7M8L6zQXpaUctGOv1U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=l12udJqQ3eDJdksjjGA90Sctuq3AadLrorwRwga8slGAv1sO9rpNVAkd50d+JYh7UotxLW4/1LupIjMnSnq9ZZIEjGHZov3ZcMORlvIL4TS9L89Mxd2fY1Fvgn1s/vRfzE1rUr6NqMhRgzfhe0t+1gs49o5BbFDumbozQOCRcKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv5qOPHV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16E9EC2BCB8;
	Sun, 10 May 2026 16:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778431532;
	bh=/WuZUeZCMZrnceyX7+bS1/qqA7M8L6zQXpaUctGOv1U=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=Zv5qOPHVsAdULu/LE2wQOaUK4NGNMvtO3ywB7+ofMolpLCRZkbqiSzHWt3duXJ0kS
	 Rg9h/rupEMK+we0w7VZqLdXmriVwi7jEtz2jDNAqyBqhHrTJoHLFO+Dm4HOpWvIN1p
	 tFkMqZDLHGMxcuMAy9bwFLMwvxnJdVz+Isw6av/WC9Qb3/rXILpQyZ5tw3yY180ied
	 78O6j9dKd1N7OmEG1kedDLnW/Mjke8aqU48avdm6ntikQAq50bMccTUB7x3JubtWXr
	 CUvRuoUN0EChTML+zlUaD4+tz6MqkkkM6qrmrZ9+RBK+knia4pfNKqbY4JXKsLjzWE
	 VeyETgnNduaeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03E51CD37B9;
	Sun, 10 May 2026 16:45:31 +0000 (UTC)
From: Alexandre Hamamdjian via B4 Relay <devnull+azkali.limited.gmail.com@kernel.org>
Subject: [PATCH 0/2] regulator: add support for SGMicro SGM3804
Date: Sun, 10 May 2026 23:45:25 +0700
Message-Id: <20260510-sgm3804-v1-0-e5e8799e0aa0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDU0MD3eL0XGMLAxPdZGPzRIPEVLMU8zRjJaDqgqLUtMwKsEnRsRB+cWl
 SVmpyCUi7Um0tAJ9MDt9rAAAA
X-Change-ID: 20260510-sgm3804-c37a0ae6d7f3
To: Philippe Simons <simons.philippe@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Alexandre Hamamdjian <azkali.limited@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778431530; l=1363;
 i=azkali.limited@gmail.com; s=20260510; h=from:subject:message-id;
 bh=/WuZUeZCMZrnceyX7+bS1/qqA7M8L6zQXpaUctGOv1U=;
 b=GHTf8dI7l6dDpUncMLK2xLs1wfa08vt/n8RslM9p+yYSOk2hB/5tFRvrxlu9Q8Eer0wm1HF3W
 af0qFx78JSrBpVK/3QrNebK13uYSZctpCgyPJZGb8bfM77Qthz1YDnE
X-Developer-Key: i=azkali.limited@gmail.com; a=ed25519;
 pk=I0Z0IdCdQJqNGX+FQUnXhrHg950u3cM6Xzz3YT6JOyQ=
X-Endpoint-Received: by B4 Relay for azkali.limited@gmail.com/20260510 with
 auth_id=774
X-Original-From: Alexandre Hamamdjian <azkali.limited@gmail.com>
Reply-To: azkali.limited@gmail.com
X-Rspamd-Queue-Id: B9CB85052B9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-295148-lists,devicetree=lfdr.de,azkali.limited.gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[azkali.limited@gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

This series adds support for the SGMicro SGM3804, an I2C-controlled
positive/negative output charge-pump regulator. The chip is used to
generate the AVDD/AVEE rails for display panels and is present on the
Ayaneo Pocket DS handheld, where it powers the panel and is required
before any panel driver can light up the display.

The Ayaneo Pocket DS device tree, posted as a separate series, depends
on the binding introduced here to describe its panel power supply, so
this series is a prerequisite for that work and for any subsequent
panel-related patches targeting the same board.

Signed-off-by: Alexandre Hamamdjian <azkali.limited@gmail.com>
---
Alexandre Hamamdjian (2):
      dt-bindings: regulator: add SGMicro SGM3804
      regulator: sgm3804: add SGMicro SGM3804 charge-pump regulator driver

 .../bindings/regulator/sgmicro,sgm3804.yaml        |  60 ++++++++
 MAINTAINERS                                        |   7 +
 drivers/regulator/Kconfig                          |  11 ++
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/sgm3804-regulator.c              | 164 +++++++++++++++++++++
 5 files changed, 243 insertions(+)
---
base-commit: e98d21c170b01ddef366f023bbfcf6b31509fa83
change-id: 20260510-sgm3804-c37a0ae6d7f3

Best regards,
--  
Alexandre Hamamdjian <azkali.limited@gmail.com>



