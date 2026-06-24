Return-Path: <devicetree+bounces-315300-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NYBwN7n7O2rLhQgAu9opvQ
	(envelope-from <devicetree+bounces-315300-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:46:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7B56BFC15
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:46:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DysZVp32;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315300-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315300-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 336C63017249
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35B373D6497;
	Wed, 24 Jun 2026 15:45:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C602E8897;
	Wed, 24 Jun 2026 15:45:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782315957; cv=none; b=gIBQTQTfpZNQYX6GBbNyINq4NMzEcn1fxs9VX6Bt04EPSeWEeLfrmH3yQ/gnziOkzmY2K0/gSD0FwLKhbADn0LRNlhur9sc4p9XU51l6EeWFt7vkMPGX4B1vUl8ljbC1LQn5/nL8Q1SY4Q4lrf/9UVLfPIUyj25VpIpybD/QZr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782315957; c=relaxed/simple;
	bh=t/FdEOdKFRydzqNszOoE3W7Wm9xvewq16CLXGLDuIQs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lNLtutoCktRO7yDrQY+ralEAhm7dm0h0XdkIYkw3FL1vm1V25YnirloswFqKkKSsQMf1BUwezAep6oC6B+ud+pbqIH6DQJvbfuyTz1nxwutMAqnR5YafWHl+8iXYOP8qMJrCEqYflIX7UY8M+uXr5YGiYNJUs799HFwx4JvH63I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DysZVp32; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB01FC19425;
	Wed, 24 Jun 2026 15:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782315956;
	bh=t/FdEOdKFRydzqNszOoE3W7Wm9xvewq16CLXGLDuIQs=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=DysZVp3281/YZqPm3qbhtVLS0iQSL8VWqXWtTgWOlIgRkwOS2mRImHm+juEtxx56u
	 rvl8aU2Oe3W7dNKma6Ko8hUIzoi25ydnMZ4z9DPnHB6k2XdDaUnXYXxK0WhueRku7Q
	 TfjoBasCR7yWBVagsNnre23JGThhtoF9Qg+NR0ZgAkrmOcUcSu3eq1EdS9D4LKPlFH
	 vHvVFsIwElrwD6Ur2RmM74nsLlEN1suk4gVAwLtZ0nh3PhvGNPpccJX7G7d/UN6QV2
	 nNSL6Gl0stZ8aofljep4xnbEPq8346HHuCZISYfs5ce1xZFmi2EbrOUpZ5GMEu4mbh
	 cgg4gs0a1Cm+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C40CDB47F;
	Wed, 24 Jun 2026 15:45:56 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Subject: [PATCH v2 0/2] arm64: dts: mediatek: mt8395-radxa-nio-12l: Enable
 i2c3 on 40-pin header
Date: Wed, 24 Jun 2026 17:45:52 +0200
Message-Id: <20260624-nio-12l-add-i2c-40-pin-v2-0-cf3707a6aaf1@pardini.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNQQ6CMBBFr0Jm7ZjOWAm68h6GBbaDjDGlaZFoC
 HcX8AAuX/L++xNkSSoZzsUESUbN2ocFeFeA65pwF1S/MLDh0pRsMWiPxE9svEdlh9Zg1IB0EmM
 rbn11OMIyjklafW/ha/3j/Lo9xA1rbTU6zUOfPtvzSKv392QkJGxLRySeqbLuEpvkNeg+yAD1P
 M9fTGA7BNAAAAA=
X-Change-ID: 20260624-nio-12l-add-i2c-40-pin-19e0482fd835
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1961;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=t/FdEOdKFRydzqNszOoE3W7Wm9xvewq16CLXGLDuIQs=;
 b=owEBiQF2/pANAwAIATteP+Oex+3pAcsmYgBqO/uz3CqJQLwTCOCs/fZ33SftVnybXcbr3CU6A
 5BlUqWkJHiJAU8EAAEIADkWIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCajv7sxsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwwLDMACgkQO14/457H7ekz4wf+PJj0qBqgPJibSseohoa7sj+e3Zpn5dK
 5YhPtpDIOeXxiQoPKHpnVvThZYTVN2yTDtoNe1J527gaka+83sd0i8u+PT3bmd4GMUMMctc83wx
 93kecJEO/Lj5niqrhSFhvn2KnOll1n3kB+/d42GlyVCYSdINA7tavIszLcF+9enkHkQgFCdVJc0
 UOP9Z0mAMwwQ9qcYZLcnawhzSt8bXqeAqwU+1G9iNKYX49vY79QQupy5kLgGqL0sPyO7/4vfx9O
 lg1XgMiUaUrJe7ikYOwdKmsOX6EE0izDtM4DqfX3ocO7PF3HT0Zv5gZ6dB/xnZu/E5Hhvp6wn8R
 H7ILTMlFRNA==
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315300-lists,devicetree=lfdr.de,ricardo.pardini.net];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:ricardo@pardini.net,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[ricardo@pardini.net]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F7B56BFC15

The Radxa NIO 12L exposes i2c3 (SDA3/SCL3, GPIO14/GPIO15) on its 40-pin
GPIO header, on the blue-colored pins 27 (SCL3) and 28 (SDA3).

Enable the i2c3 controller, add the matching pinctrl configuration and run
the bus at 400 kHz, matching the other I2C buses already enabled on this
board.

While at it, drop a pre-existing redundant drive-strength from i2c2_pins
that was also about to be copied into i2c3: specifying both drive-strength
(mA) and drive-strength-microamp (uA) makes the generic pinconf parser log
"cannot have multiple drive strength properties" at boot, and the advanced
(uA) setting wins in hardware, leaving the mA value dead.

Tested using a SD1306 I2C OLED display.

---
Changes in v2:
- Add a drive-by patch dropping the redundant drive-strength in i2c2_pins
  (via Claude, reported by Sashiko).
- i2c3: use only drive-strength-microamp, as per Sashiko's review.
- Link to v1: https://patch.msgid.link/20260624-nio-12l-add-i2c-40-pin-v1-1-f6c11ed2184c@pardini.net

To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Ricardo Pardini <ricardo@pardini.net>

---
Ricardo Pardini (2):
      arm64: dts: mediatek: mt8395-radxa-nio-12l: Drop redundant i2c2 drive-strength
      arm64: dts: mediatek: mt8395-radxa-nio-12l: Enable i2c3 on 40-pin header

 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)
---
base-commit: 8cd9520d35a6c38db6567e97dd93b1f11f185dc6
change-id: 20260624-nio-12l-add-i2c-40-pin-19e0482fd835

Best regards,
--  
Ricardo Pardini <ricardo@pardini.net>



