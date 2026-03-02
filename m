Return-Path: <devicetree+bounces-270041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gH6UK1GYpWnXEgYAu9opvQ
	(envelope-from <devicetree+bounces-270041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:01:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E60391DA47B
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:01:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A2AD1303A25B
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 869F63FB04A;
	Mon,  2 Mar 2026 13:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="CYP98OVL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B773ED11C
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772459831; cv=none; b=oSytK5EuyFbdnIaBvJf5S9O1EmV4fCCXxcyqSKX1n/KjToNwXRJbgvqQIO6iMQmvtcSX34wDb4/fQ7woFn7OOgBtIBCKLPye67soDCQVWX5wDSBeSlVorPgj3W2IFzjx8h/hVVDRSOchPRQ2BDaWBIgO9UVK5SJMyWWkzV33++o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772459831; c=relaxed/simple;
	bh=lEvdwJ+CQGGibJGfq/7IQEzrKZqm5RUSu5rpuUx4oAY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mFs8UoECziNIZZoe8r+djDopHjeQ2pEyvAwA8/kKveOcErNYHkTLraV7RUfFMBu7ZTmNtC3atWEWxOlWR+QDrGOFAKd9uZv0gOIrhiJy0IZKRvuWWYjl/seKMVkc/lzZ3KB39dm7kTUk2fh9c8L/2b1XnU0uYi4rGL1SPjKOvKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=CYP98OVL; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-436e87589e8so4341940f8f.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772459828; x=1773064628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3KEA74Fj3pMLuFpC+9hfiR3S8SjTOgau41zhCYgt1Xo=;
        b=CYP98OVLHsI6CN+Og2ukksJbVRqkuq5XqlYCRL7mxgtBDLrESuUkaMgHjrnVmVjEox
         VmKhfo3JyxFMgfkwQp9myKfLLayEn8oF8z0sWPisefDUaH41/pUUpK5phZwJ9SJefxEh
         mNay6OzYyjvk0f8OsuODh+E8hPLUA0/BVgLRe2gi5L52UfgigQAkHMJSUDPpq+kqlFx3
         lH3tLwLPVW25nMPY7iWiegZkTQWaz4DIsFVVzT8eFh+lCu0fHwkm2OX3Fx/N9nObTuz0
         ruHCD3OjuXDmRzehQY57Zd5YLzrGopk2KoJnwyGJkFrLYb4zzTs7XXonwgFfSjUDKHGC
         f0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772459828; x=1773064628;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3KEA74Fj3pMLuFpC+9hfiR3S8SjTOgau41zhCYgt1Xo=;
        b=UGrbL2pWxaC/XynDIzkd3wt/uEfvTKPg5gW5zin7ZQ4Wd5KUNvGx/ygeU6ce2MbVwk
         LxAH5ctsE3tf0ZkB79U/wCCKiHjHDbp6AE02oh/WQvujP4Ce8wFz+TrZh6eB9R8JWF+J
         m+rGR8F6g2d15GU1q/6ARc6P53NiqACvDbwKr+7yBqfylHhSa6hGbKlQK8IwZ3K1oWKo
         W/2S7R6javICMVUxpJq7Sj7Cdju5OVMGxXnITj7pzYwhVRLcqv9g837pZgGX01Iw9lAX
         T/pPNSndIbT32qSQV+SEULgKDT5ZDBXtKhfRpgZfD59w25b/LZ3qi0hKB8tXfEhg6k9D
         qX3g==
X-Forwarded-Encrypted: i=1; AJvYcCWA9OxkRDzRg8HTVTaEe584WGTEwDrGkfgZ90RbLos5hIDZKnlbC1Bvs1P1MqlzxOofpuI/hNAGU2fW@vger.kernel.org
X-Gm-Message-State: AOJu0YyV/26xGMqGw5Q3OH73F73smnVYgZ96bFactvyutQ09eUXhazZ/
	x2kpYcsouBKuuHT79LemSbP5nWKnWiDihwwKHR+r0piIXAyY3d8g84MUtvKwafzas+s=
X-Gm-Gg: ATEYQzz+rw2oDvzrONJi5Y3V6z/skFqkUdFoXToAE6NuL9eT/zzhBo3H2WaEYEpNjU7
	Olte4wMF4GyGU+qn+CaQckz1hipjbBlVG6uwdi+GI9cAXl3APhbcEo7L3kNg/TuOjkVFt6q09qZ
	ORvwGdDJlAV8P8MjnaGmrqyoKbMMyZChN7w48g0BjlLn0B86MGvKD/dCHfz/sMVy67ssGu8IZlD
	eVJ9rmS2JSCZMTid6cdWhSchCuoEMyfC2jigdBd8WJOsVuco0Gwc4gNVzo3sUio4P7hLM0Kb9U3
	BMGGO4SJRmyptvXySyYOWzz5q2cL2U52eOv6utK4xiPxv+dzbBF50P/rbqKYSBR4juAY0VcYMeN
	8MbZ0/duTQOJTN35DPkzL3C/z9pwTt/e36cFHiq5VlE0dAiGhUhHqJQk52QyE54QwOZvf9nHD+A
	7zIwPDKLMVFzK/QUFhTMAGCFuIDPYVNlPu9wSBHhYKAX9DvZvbkMsO634=
X-Received: by 2002:a05:6000:220c:b0:439:ac8f:5db2 with SMTP id ffacd0b85a97d-439ac8f618cmr13123694f8f.22.1772459827690;
        Mon, 02 Mar 2026 05:57:07 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([213.233.104.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ba2a58dasm5031094f8f.27.2026.03.02.05.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:57:07 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH] arm64: dts: renesas: rzg3s-smarc-som: Set bypass for Versa3 PLL2
Date: Mon,  2 Mar 2026 15:57:03 +0200
Message-ID: <20260302135703.162601-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-270041-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RSPAMD_URIBL_FAIL(0.00)[tuxon.dev:query timed out,renesas.com:query timed out];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org,bp.renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[clock-generator.0.0.0.68:query timed out];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.68:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: E60391DA47B
X-Rspamd-Action: no action

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The default settings for the Versa3 device on the Renesas RZ/G3S SMARC
SoM board have PLL2 disabled. PLL2 was later enabled together with audio
support, as it is required to support both 44.1 kHz and 48 kHz audio.

With PLL2 enabled, it was observed that Linux occasionally either hangs
during boot (the last log message being related to the I2C probe) or
randomly crashes. This was mainly reproducible on cold boots. During
debugging, it was also noticed that the Unicode replacement character (�)
sometimes appears on the serial console. Further investigation traced this
to the configuration applied through the Versa3 register at offset 0x1c,
which controls PLL enablement.

The appearance of the Unicode replacement character suggested an issue
with the SoC reference clock. The RZ/G3S reference clock is provided by
the Versa3 clock generator (REF output).

After checking with the Renesas Versa3 hardware team, it was found that
this is related to the PLL2 lock bit being set through the
renesas,settings DT property.

The PLL lock bit must be set to avoid unstable clock output from the PLL.
However, due to the Versa3 hardware design, when a PLL lock bit is set,
all outputs (including the REF clock) are temporarily disabled until the
configured PLLs become stable.

As an alternative, the bypass bit can be used. This does not interrupt the
PLL2 output or any other Versa3 outputs, but it may result in temporary
instability on PLL2 output while the configuration is applied. Since PLL2
feeds only the audio path and audio is not used during early boot, this is
acceptable and does not affect system boot.

Drop the PLL2 lock bit and set the bypass bit instead.

This has been tested with more than 1000 cold boots.

Fixes: a94253232b04 ("arm64: dts: renesas: rzg3s-smarc-som: Add versa3 clock generator node")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 982f17aafbc5..b45acfe6288a 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -162,7 +162,7 @@ versa3: clock-generator@68 {
 				       <100000000>;
 		renesas,settings = [
 		  80 00 11 19 4c 42 dc 2f 06 7d 20 1a 5f 1e f2 27
-		  00 40 00 00 00 00 00 00 06 0c 19 02 3f f0 90 86
+		  00 40 00 00 00 00 00 00 06 0c 19 02 3b f0 90 86
 		  a0 80 30 30 9c
 		];
 	};
-- 
2.43.0


