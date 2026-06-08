Return-Path: <devicetree+bounces-308416-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BCJHJzjwJmqInwIAu9opvQ
	(envelope-from <devicetree+bounces-308416-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:39:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F80B658CC2
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:39:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b="rtXrL/9z";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308416-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308416-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E41073036DC6
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 16:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BA732FA14;
	Mon,  8 Jun 2026 16:00:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063FB3101A5
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 16:00:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780934436; cv=none; b=pNd29X2tJJC9KE17ov9YT+i2J1dET9pk/w8NakHEgksg3Lav6Bs5xsJXE6q1Rm9bTTJLKe3cG4mYFOfa70O1KrYxrdrZ3fr091LRUvER96x9Qm+7BU4IrAFBau2J/uXxuP7pK4uziMIA9jV/cZWGZPDWEtunWHAmzkV9AwpgqV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780934436; c=relaxed/simple;
	bh=pGU8EB5ADjrlLOQFLQI9C7usqPVt4L1wtHKJmfejY2o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VgZ6OfmtELWhsVeCt0HcSIoQ7w0JOSqG+BNWGZczQp28HuwO8fO3v4Bsy9iF6IUdAdLvJ8yUKDFm2FnwHU5C+tQMJ+sa9dQoRMfXe+IvF0oMR455LyMVip9wLkPyjtB0Rp5L3G5+GP9kIxGQyOvyWOBjuWgG0kijS0Xx1tapWCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=rtXrL/9z; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 999AD1A37D6;
	Mon,  8 Jun 2026 16:00:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5D88D5FFB7;
	Mon,  8 Jun 2026 16:00:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 969A0106A19A4;
	Mon,  8 Jun 2026 18:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780934432; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=ZHuO2xQq4j7QDhpW+P+JxUWJLGa7dIksU1T5inWVaGg=;
	b=rtXrL/9zy08Nzpn7ONIzwhDZTcc2wj9uL4cmNhpqlk1yw0yXWny0UvkzAkBWqg5i3X+zJI
	ELx1arnxnQ8mEukXwzw8J+s6jRiwAppN3o8ZYgkRSyvztYc9iDLRP1bzKUeHMAgdbqWWNX
	rqxZT7tBGyCMGV1Lnj1iC6HajUdY73udy5eske5/qg0LMxlUg2QRkQTuGN8uQ0SzqcSU9y
	n3N4MnvQGvp437JNe2WdZDkGpTVKBWMrj1N47CiOQt/4JQKCW7l9l01f9aecsPkqzot9Pk
	tKj37ORGzAk8IvDbcf9kh3/2yS2rKz2+pzxDdCdONeKa8h0W5h2ObyCkojQ7Kg==
From: Romain Gantois <romain.gantois@bootlin.com>
Subject: [PATCH v2 0/2] iio: temperature: tmp117: Support the TMP119 sensor
Date: Mon, 08 Jun 2026 18:00:23 +0200
Message-Id: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2WNQQ6CMBBFr0JmbU2nlBJccQ/DQuggY4SSthIN4
 e4WXLp8yfvvrxDIMwW4ZCt4WjiwmxKoUwbdcJvuJNgmBiWVkUYWIo4zYiWMUVYhaZtjCUmePfX
 8PkLX5sfh1T6oi/t6NwYO0fnP8bTg7v1FFxRS5LrqddFjaVHVrXPxydO5cyM027Z9AbkFQMewA
 AAA
X-Change-ID: 20260605-tmp119-662d21e4d317
To: Puranjay Mohan <puranjay@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308416-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F80B658CC2

Hello everyone,

This is version two of my series which adds support for the TMP119, which has
an identical programming model to the TMP117, but slightly different specs and
electrical characteristics.

Best Regards,

Romain

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
Changes in v2:
- Used ti,tmp117 as a fallback compatible
- Made sure the correct IIO device name was exposed to userspace
- Link to v1: https://patch.msgid.link/20260605-tmp119-v1-0-349f45f17d12@bootlin.com

To: Puranjay Mohan <puranjay@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
To: Nuno Sá <nuno.sa@analog.com>
To: Andy Shevchenko <andy@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: linux-iio@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Romain Gantois (1):
      dt-bindings: iio: ti,tmp117: add binding for the TMP119

Wil Stark (1):
      iio: temperature: tmp117: add TI TMP119 support

 .../devicetree/bindings/iio/temperature/ti,tmp117.yaml   | 16 +++++++++++-----
 drivers/iio/temperature/tmp117.c                         | 10 ++++++++++
 2 files changed, 21 insertions(+), 5 deletions(-)
---
base-commit: ddd664bbff63e09e7a7f9acae9c43605d4cf185f
change-id: 20260605-tmp119-662d21e4d317

Best regards,
--  
Romain Gantois <romain.gantois@bootlin.com>


