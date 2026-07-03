Return-Path: <devicetree+bounces-320073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3tcYGzmlR2pocwAAu9opvQ
	(envelope-from <devicetree+bounces-320073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:04:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C38470229C
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:04:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=B41Lxoci;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320073-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320073-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD0343052B64
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 11:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCCB3CB8F0;
	Fri,  3 Jul 2026 11:56:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A612C3CE083
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 11:56:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783079791; cv=none; b=XdbNIUYmzt+6ZOwdj3Cq2XMjqgDx8rc4ARdPfW/4s+FMi+Ih7pfXViGMx9kY8XgoeOnwluA6OOaN9VwEGQDOSOlk8MQCiFeoJ8cqj7keh7XMIXXvh90XVVUxrhpELZzdUJQD/w3rZxpbExBeakKPZZESPsSPZ/rBpHHljjtzGMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783079791; c=relaxed/simple;
	bh=hOFZgLaEu0fgbaHLQ2K0UZhu3A++ABratulLxCJEZq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j/b8etJg22YdNRoPMMWR9g2pXB3P2H5Ve4AquAGuXz6Fjo/jU5HMkbH/FrLiMu2qGWElrNl45ffcsUJEF24gZ50atB9kK2yqrsMa7LnBw9VL/92OQwP09fXfjhImphXHzEA4c3aLja9HJCahUH5FisdMwq7Q7uQ447lgFJL/R4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=B41Lxoci; arc=none smtp.client-ip=209.85.215.179
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c88a4d79ba5so314898a12.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 04:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783079788; x=1783684588; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gzs61HZr2e08vLjlcHcnU81Qx3P3Xyhgqf6PYo21bZc=;
        b=B41LxocigSMqSi2e71qckO4dG9zNUkMV3sd3FznDwmrLjgj6726PhT2j7KA64EbiUH
         JwCIZu6gf/G8eO2FALDLKhF3r5VZGC0+e+isR0AN0nFGLkfx4hBCZZQl2Wec5C1qI2Oj
         NBvmtI4Y88G++6y3EGo4+N6WVzJ31qFCsma7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783079788; x=1783684588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gzs61HZr2e08vLjlcHcnU81Qx3P3Xyhgqf6PYo21bZc=;
        b=H5L7KDOKRXDNIqBErF9ZFJK87iGj3z17R1zOSXCv37wLdGxUkdBAjEqzP4/FiWO3zO
         KEz5xi7KPCIkPQXqlSEc5F6VdhAisfTlo3cLgKiJ5WwSxpKgTsrVaEXFDQQ4+iQORtiv
         SEvs9bCXgjVFFajdvFPa0tMPEfutfqv9OdXXsUfolxpKpflezOYdEr6ig4geUEvDrM3w
         rN6MJP/PqZGwjg8/Q142LSsCKf3rGzZY7/Tj1YOgLelgn+9xD6w/pdM0ygaI/mzOEqDo
         /Ktb0pB85AxPekUdkVDPo8mw8QOXDg1VyHPg6oiyppkeKUMleESxES2IHs9Ty5n9yhh1
         olkA==
X-Forwarded-Encrypted: i=1; AFNElJ+2yHHaOYso2Kn/B9Nah4/AFZgKLjnCJbqneDRDXMzaGKjZgc9dk5riPTeml92Y59KZNDxfWWoyuLsV@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7K+iFd3W+FuqxeNEMLTizLGSfUdbe4TTZUEX5TgIw3r5SaSk2
	pjzwPwraTYRbX6TrcKuhU9VUURuYGpoqw2juMaY+o5aLsH3vdh5obSJ51ich4rq/DA==
X-Gm-Gg: AfdE7cmfr7C7WqgTxj+hQh4nSUqXwN/Vxmlos3EfdSkZAaQ0qCP1ZCvDroTpt5IAg4J
	AwLRvr12fcdA8LnZ2BUVt0tL5Lk24CF4b1ZGnQDde7+yGbEnFpcaWleuG1++z0Bqv6YSW9K/aVj
	1j+oKIRDapic3vkx4Aq8I9NRPPmxzW4QN83YhdrYOEwYads4OU8+S1rsbGGekAipwIB5WfsxXJd
	S7SQHrxJByzmcDK4dJnMQleGbD62Vc4oHmmhQ+1G3uW904Izn69sEEhQMLEvhtUHZuCo21C07gt
	F75mCnQMENjyaJmYLkBxIlb7vZN1qzg7/nVSSdCaG/KXNSNj0F/9hRdf0uy/Gm/293euF4NCYCB
	IgcmdcSrcosUrMPlVCWg5IS+rIpiOhgwx1LWEeYPLiG7ZLoP6ragGbhiPD+6mfAwnJn9BFdzE6W
	GBIX8hZ4rmS6/zdpFE+wSvMYFHYClQ8cE6DqcqbJgtevdkCiNz9yh4eNwPLhNvh6un4XzHJg==
X-Received: by 2002:a05:6a21:1f84:b0:3bf:77d7:667d with SMTP id adf61e73a8af0-3bfed47019dmr11801134637.28.1783079787514;
        Fri, 03 Jul 2026 04:56:27 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:7bc5:6c83:76cd:cbd6])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c9e8bd30ca5sm2569540a12.0.2026.07.03.04.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 04:56:27 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Jiri Kosina <jikos@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/7] platform/chrome: of_hw_prober: Add delay for hana trackpads
Date: Fri,  3 Jul 2026 19:55:58 +0800
Message-ID: <20260703115601.1323491-6-wenst@chromium.org>
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
In-Reply-To: <20260703115601.1323491-1-wenst@chromium.org>
References: <20260703115601.1323491-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-320073-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,chromium.org,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:bleung@chromium.org,m:tzungbi@kernel.org,m:dmitry.torokhov@gmail.com,m:jikos@kernel.org,m:andi.shyti@kernel.org,m:wenst@chromium.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:chrome-platform@lists.linux.dev,m:linux-input@vger.kernel.org,m:linux-i2c@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:matthiasbgg@gmail.com,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:from_mime,chromium.org:email,chromium.org:mid,chromium.org:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5C38470229C

Up until now, the MT8173 elm/hana device tree has set the dedicated
regulator supplying the trackpad as always-on, simply because the Elan
driver was missing proper delays. As a result the delay for the
Synaptics trackpad was also omitted, as it was not strictly required
under such a model and delayed the availability of the trackpad to the
user.

The Elan driver recently gained proper delays after power-up, with
adaptive skipping of the delay if the regulator was originally
on. The I2C HID driver and I2C OF component prober library gained
similar adaptive delay skipping. The device tree will be fixed to have
the regulator not be always on, and proper post-power-on delay time
added to the I2C HID device.

Also add the post-power-on delay to the ChromeOS OF component prober,
so that if the regulator is off at the time of probing, the prober knows
to wait for the hardware to initialize.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/platform/chrome/chromeos_of_hw_prober.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/platform/chrome/chromeos_of_hw_prober.c b/drivers/platform/chrome/chromeos_of_hw_prober.c
index 8562a0e89dc6..54d8941617e2 100644
--- a/drivers/platform/chrome/chromeos_of_hw_prober.c
+++ b/drivers/platform/chrome/chromeos_of_hw_prober.c
@@ -70,10 +70,8 @@ static const struct chromeos_i2c_probe_data chromeos_i2c_probe_hana_trackpad = {
 		/*
 		 * ELAN trackpad needs 2 ms for H/W init and 100 ms for F/W init.
 		 * Synaptics trackpad needs 100 ms.
-		 * However, the regulator is set to "always-on", presumably to
-		 * avoid this delay. The ELAN driver is also missing delays.
 		 */
-		.post_power_on_delay_ms = 0,
+		.post_power_on_delay_ms = 110,
 	},
 };
 
-- 
2.55.0.rc0.799.gd6f94ed593-goog


