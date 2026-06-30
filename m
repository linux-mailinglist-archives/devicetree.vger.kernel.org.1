Return-Path: <devicetree+bounces-317551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W3wUGuWPQ2oIcAoAu9opvQ
	(envelope-from <devicetree+bounces-317551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:44:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3DE6E25D9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:44:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=TFdddBN7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317551-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317551-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11F77316E511
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 264BF3FF1A9;
	Tue, 30 Jun 2026 09:26:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF7D38B7B0
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:26:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811607; cv=none; b=svKpdXq8vEMW0TV7A5ABSXdr54isyGh9JYj/B5yWgKSbPJVVCVdKWOHSjPsYmulbahVHyeKgTkn6APWxnElUkhXNZxBm4sDe88GqkdFXtCi1unOPcGTo4ZDXEbkuZzKQa2RiWFkPy1Y3Xwz3Nql91EbjhxeudnmUYpdZdM8S5Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811607; c=relaxed/simple;
	bh=KaH9M7IaMUOpb0d3hPLjb8IIBCOwbNiO9tG63TmGWs0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=g+Gb9W2Yf6yUechcF09M9NO9H3CcJUGhC/I0KYCHJZv0hyOzck7YXQ7w3LFQvdyUnMPuJmtpVEvvBlNWa0kueWvckp1HGYbCM48REPwNFpWQzCyYVZRqYhOdTUFfP0YUkyc10LHdHp9tHVTg/k37eptlXHyAUSuuDYfJABEl6Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=TFdddBN7; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id C2136C5CD4C
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:26:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 43EAD60233;
	Tue, 30 Jun 2026 09:26:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E2AB0106F1D26;
	Tue, 30 Jun 2026 11:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782811602; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=2ba7FwK+sgJytBUpI3BG67Tjxcjxs4k/tnlNATWlYe8=;
	b=TFdddBN7LJEnldtYCkwA0G3MeBjCubX/5zy8jncW6V+gRbQvFY/qcQ/LobY/Wtdr0wozVy
	VPZaNNg8PfQYwnjy0FFKxlXcBZG8bjdFduVcnGrk0JhzuwlNs+7b70xk/Y+XzmVjw2Phbt
	X9ShTEyxqFnWyylQDP15DVf8lenikPWh7jCcxRnPp9jP06tPge4Owa69Eio5YALjHIz+5o
	pwuL/vtukaDmJdRJPQWTpzIJoBca9gfGmplOy0h3705sxE65H7GJDQaEOwYDwFAGOMNwMg
	q6x+WdsH5FrJZjw5SArNsJeq9XfQ3FkKO58ZuC8kcCTwnXtzuG93aDLiF1uK3g==
From: Romain Gantois <romain.gantois@bootlin.com>
Subject: [PATCH v3 0/2] iio: temperature: tmp117: Support the TMP119 sensor
Date: Tue, 30 Jun 2026 11:26:33 +0200
Message-Id: <20260630-tmp119-v3-0-cfdb50e2e99f@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2WN0QrCIBhGX2V4neGvU1tXvUd00dQ1o+lQk2Ls3
 ZsLoujywHfON6FogjUR7asJBZNttN4twDYVUv3ZXQy2emFECRVEEI7TMAI0WAiqKZhaM5BoGY/
 BdPaxho6nN8d7ezUqFbssehuTD8/1KUPZ/UUzYIJZ3XQ170BqoIfW+3Szbqv8gEo2029x9xFpE
 YlinEnNSSN/xXmeX8Nq++LpAAAA
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-317551-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,bootlin.com:from_mime,msgid.link:url,analog.com:email,baylibre.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE3DE6E25D9

Hello everyone,

This is version three of my series which adds support for the TMP119, which
has an identical programming model to the TMP117, but slightly different
specs and electrical characteristics.

Best Regards,

Romain

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
Changes in v3:
- Corrected indentation in device tree bindings
- Added an explicit inclusion of array_size.h
- Made sure the correct IIO device name was exposed to userspace
- Link to v2: https://patch.msgid.link/20260608-tmp119-v2-0-30c3537d5097@bootlin.com

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
 drivers/iio/temperature/tmp117.c                         | 13 +++++++++++++
 2 files changed, 24 insertions(+), 5 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260605-tmp119-662d21e4d317

Best regards,
--  
Romain Gantois <romain.gantois@bootlin.com>


