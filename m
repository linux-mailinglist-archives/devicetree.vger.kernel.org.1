Return-Path: <devicetree+bounces-295011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHPYKIno/2mUAAEAu9opvQ
	(envelope-from <devicetree+bounces-295011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 04:08:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EE250231C
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 04:08:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8FC66300F1A6
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 02:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36A5623BD05;
	Sun, 10 May 2026 02:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CG8mOmiB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D0523F417
	for <devicetree@vger.kernel.org>; Sun, 10 May 2026 02:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778378884; cv=none; b=ehGUYcDp8ITee1qln0hHLPWVb/H5UH8o9nHaF0UJ5CJO2BLHPgaGauXQIgMO7NhT0N9vV/Uia2C/3wBz+fj3QuLjSAypC5w9vEKvdr6BxdcPsDsQ3skyTzjpgKjqSWF/7TB+5NUj6T7yBe/Ypd0+rGpYW3AAU2vz5NtcD+L4BKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778378884; c=relaxed/simple;
	bh=zCpbwlmIqmZGB0+kqwmM62oyayDZtPdhR0F6QnZnqk4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eaUu6NIO4VM+76Y1kO/hOVxInUMz5FTNsQmd3u6BWSx2lkVC1rLuD/QfnIvupnM4zZhGoI+8gGz1WMOCa8d6ZCPXJz4aNc86YWLgbCBcxpxNWebGAWt8gXYzMTZnCrSTTYkki7oHpAg7GO+ZKXvj70Yesv9nsePpQUyVAsgUzkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CG8mOmiB; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-4303eb92930so2341652fac.3
        for <devicetree@vger.kernel.org>; Sat, 09 May 2026 19:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778378880; x=1778983680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ybuLlNYqvgak/WTNJ8Ov6Y8CyS5RSZI/sMvj/2jKFHQ=;
        b=CG8mOmiBAwqvj7UX+YkJ+Gsv08vU/63z+hkXRlI6fL+fqt1iZsPxwMYo0g5r3Xcv8d
         2AtPJaX9AecTdrbFAoSGhqQcGnbCtQyKSfg1n5n0AzK/bmHzH3AT1yHHluchkrdgci8c
         sqhYpNgZxb3lDsdZiqNDpQ4Nvgnr7E22+OmFh/cEV7SAFhpoaucUyz3X2MuaAZRz1LcI
         AluN7jt9bIb4v8LlvlIq3cju/6sM82IYURIyaiWNrUyOjLONTxvNJn3b7z4PosXjhML/
         HMvhyShEW74/aGW0WE6RhPnn1g2QWcAWjlwooG8eUC2zDUp47PVYRm8Rbs30aCXC7uRS
         9B0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778378880; x=1778983680;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybuLlNYqvgak/WTNJ8Ov6Y8CyS5RSZI/sMvj/2jKFHQ=;
        b=gE303EDMZaXi+CyzkwgSGnGHoEDitpTwn3U2L/yONyLmRvdx3tvw/pYdBKLBqZf+Er
         VB7Bip7G10PbOJGtwzsrMPVGwFoIU7dSwJVDXMghWhBpz3A49C7M1K0PbXGI2PHGunsv
         F09MSWccW6l2xzP4RGEU5POOYvLR/NVUugBnP7A6KvFZu/9H20jDcdTYorfBG0LJdp8m
         k/eoslS+VaKCn9yIhO/C9E1txMcxwzcwhp8rCMWvqmFbFQ/vRzZ+1sU1hEwmoHUJJP6U
         Z7+0IDgesniwy6lIQui2bD7MXBR959+CppJMWyHVsquDLi1Uf14VqkF2ul8hnJW3qY1E
         b7FA==
X-Forwarded-Encrypted: i=1; AFNElJ9tpqNZMbn1KHTSECpYyMmz1AhX+n+zNfs9+RrnLt2jtfbAt6utwH6Qt7xFxek2kKV+yGs5yqylAd88@vger.kernel.org
X-Gm-Message-State: AOJu0YxI8tztXUV2LW9ho7dfOIzrf8pMz0yxP1ZbPTSnDyZCNqVYR+87
	IJUcBeweBWVC+I6/aZxUcECygIGSf6KjmHT+edax90+hOGkCSruCsm7i
X-Gm-Gg: Acq92OFMbtdfL+CQSWZv5jOib2UgMf+Mw1asHs31XFskPqRTKfyTsBQuBnbGMdD0G3p
	U4mKnPo8AGuFTiGgGib+BrU5/x702FYNh4dXG1pIFAuwHxTNqEu35/SW/Eb0CbyZ1cI7oYepdK1
	hbfGb9JxtFsrVhUB1PysuG+lBTDD/7Bcje0nuxuqmFPfojy2JMgZpZo5H5+maaaFod63rD4d/ht
	gIE21B1a5nRwv5Ujo0js2S1YqgKg/XRtUUM2TVzM3iO92ayyFuesILYY7gdOO6bPMcb/1c4GS5+
	RM6vwKI7GpHbjpfaylHOyTFcoeimv7ZZlqK77oLlmAb+jZ+9h3QUeg1yl5k3eXobpWFrbj+PiUf
	RSMWg4GKFzEBp4ujx/rSVQVFQq4EYtMtPLIbwTTsP1BGd1VqY6OVHMU8V5YpaRLmdiYjKwKOluk
	9RdyC5xuIBEKPINkZZgfeTrkKu571WFSjxShEsTd8TXBU/cIzYDB/uD79Y8Q==
X-Received: by 2002:a05:6870:170b:b0:409:54ac:12ae with SMTP id 586e51a60fabf-43556b2852dmr5533227fac.8.1778378880346;
        Sat, 09 May 2026 19:08:00 -0700 (PDT)
Received: from linuxescape.lan (23-88-128-2.fttp.usinternet.com. [23.88.128.2])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4355744b05dsm6208648fac.18.2026.05.09.19.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 May 2026 19:08:00 -0700 (PDT)
From: Maxwell Doose <m32285159@gmail.com>
To: tomasz.duszynski@octakon.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	linux-iio@vger.kernel.org (open list:IIO SUBSYSTEM AND DRIVERS),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] dt-bindings: iio: chemical: sensiron,scd30: Update maintainers field
Date: Sat,  9 May 2026 21:07:58 -0500
Message-ID: <20260510020758.233721-1-m32285159@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 16EE250231C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295011-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,octakon.com:email]
X-Rspamd-Action: no action

Tomasz Duszynski is no longer the maintainer of the SCD30 driver.
Replace his entry with mine.

Link: https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/commit/?h=togreg
Signed-off-by: Maxwell Doose <m32285159@gmail.com>
---
 .../devicetree/bindings/iio/chemical/sensirion,scd30.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/chemical/sensirion,scd30.yaml b/Documentation/devicetree/bindings/iio/chemical/sensirion,scd30.yaml
index 40d87346ff4c..a5b0debe85b1 100644
--- a/Documentation/devicetree/bindings/iio/chemical/sensirion,scd30.yaml
+++ b/Documentation/devicetree/bindings/iio/chemical/sensirion,scd30.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Sensirion SCD30 carbon dioxide sensor
 
 maintainers:
-  - Tomasz Duszynski <tomasz.duszynski@octakon.com>
+  - Maxwell Doose <m32285159@gmail.com>
 
 description: |
   Air quality sensor capable of measuring co2 concentration, temperature
-- 
2.54.0


