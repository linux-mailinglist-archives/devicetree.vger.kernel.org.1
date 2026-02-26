Return-Path: <devicetree+bounces-268824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDPcKRZHoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:13:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6801A6306
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5D926300647B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CE2932D0E6;
	Thu, 26 Feb 2026 13:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QKN/acmA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C1B31B82C
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111505; cv=none; b=gzUBupkuBoenvdrCAOuWGExTF2UdUSE/qQg3HM5OKUWoBmDwzZg07dh7tcmaBSUzfCMIDu7P1V/hfQMXjfrSGomgg9sMWjXFrQqfImah4oROebkDgXT8opVIz6bz2w+ZMyS6YvaJaRWAYmw0kvOYuUWni+16y0CviMDpzjCfFfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111505; c=relaxed/simple;
	bh=eh1OY1ieLLdHnT7gZwSOwUnROhsTRrF71czKCjiixts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MwLlkWSnO5Bm2tza1JWVp8UPENuSnNmUGyxpp2SCSsduMgUWHKDXwiXgpB/INedOZ1SWcjciQWFk89qzsxRDf5yRnw1i9SWqbCyNFKh2AN31ldWCRJeVTexfnB0VIHRzEpZa4WGFs9v4JblI9y/kwRCqy7WzBfUVvt7IFwn6Wmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QKN/acmA; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b934fdced05so99046666b.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111501; x=1772716301; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6Q/YbctU2cng/xKxSbyuYnqAnOaNtvn3Ivyo/NwaTY=;
        b=QKN/acmARLYDJhLlKJil0cPrQHhlvzBrhslXhmBvlYhJqJAO6Bg4W5/h6fTGF6UOJl
         4qZaP3vjEvR4adtEMzoBQP9wiIMDEloFcAbgHRSlLIi+f1r9pxX8NAA3lUyqQa4eQewL
         VE0M6XPB4Nplz54ojR7cAA5cbQim+GL0u9D21F0m3+UyT+sn3MlWT1rC+jSELLpI42B4
         i1cewpQvjcxqWCCA1r0KfXyWho3ht5dyO7upeZ6dWixSyAaSoAmGG0A17qasYHsSDrx2
         5xQJ0ggPlrdtQ9cdZwzLaPYiJhMFro6c0EV5WCLNt+dvKGBkUd6YSHuBiHDrWQIE80h1
         wCrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111501; x=1772716301;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c6Q/YbctU2cng/xKxSbyuYnqAnOaNtvn3Ivyo/NwaTY=;
        b=YE4SbWyvnCwkKvs6qNcQc0F5OBAuf4N+jL1JCt3QXZrphQD5EQbWA3X3Ddi4yzsTbd
         YAiu8Ewpwtw0M1IfnRsUuOzL1j4/cw5353bniwJAzPL33MHeuLYI4Zr2IZZaQGnCCXND
         F7RRD+owp20Fmi/1v7QkGbtTcBz6CemA2gjghF2vmborK9KhHJLEkq2LZAQazTiYEWx+
         v+ey7th8n0XEfFnRFf/gszROaT+491UK5eatvpWBZisMCdVrSWdyKqwtPYttLKBPvsYZ
         4G50TvMx1rEUaQNcFlXBM93ukphjpRtM+/tPRb5l/BWM8AaHA/AXtR2GOlkJXG/V6fEJ
         AiJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaOZlayo9Fnh9dG3zc+3SeAKgV+nTSdU40uyKpgOVfGdETmeI6QaFqCMuLQE6aEiK5mRMgIgHex+wI@vger.kernel.org
X-Gm-Message-State: AOJu0YxYO1nBNk/+O2Bsz53Q69BatsewWCGYbTlZoz7y5L5ZziTYL4hb
	HVtabe9O5XfTnYbv8qal84aBVF0oxsP3otkFLa3/zsDXHqnsS/WKrhgpCEGL4DTc21k=
X-Gm-Gg: ATEYQzzRwO4DYfH7+Vn0c1+XUy4MQ1FqEU+aEeTTOsp426cEW7isc5B2X2d+Wi1igYN
	MvskQd+ON6gI6ifT0JwlIMARgDa3QzkVO2QjRrcsgKN7mawj8trBfrrW7h3/xXppHrQKCVfPifo
	zIWvXespva0wKg4s39EY+e52QcdmzARv/aUeRBH2GYu5ENURkv8ZjaPxCAu4xsCZUlb6/vEbtn3
	Bt5aKCtNOVUO7n/t88XbJU+TmwbgGZbjeTXyqAgYMe0YNNFIcahsfTm0jtmz1Exld3Tdl0ZSbFr
	3TSual2lzcDZadcdnY3RP1A3P+u/3tEuQMXB+O0xR8mvgfczaF/1JU2y3qy5zBl/tJCvUyUX78C
	PWPrind5ksZRjt3kWc4CMgYcXEMIC151pb+WGgmAd7/hJvsyfG8gnfPY/SnyEWLZyj1YjtB+dr6
	olcn4chQmRXtpA1ii9hYdxXuwCQc0BZhC+2JZoRMPCISC+0zSUr+ChWzdLvSzgHWt/bjHsZ6hue
	zwQ2cfusDh4QZCDZD2VYc09ws3B
X-Received: by 2002:a17:907:78c:b0:b90:ba11:1694 with SMTP id a640c23a62f3a-b935b936384mr131201466b.50.1772111500895;
        Thu, 26 Feb 2026 05:11:40 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:40 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:40 +0000
Subject: [PATCH 06/11] power: supply: max17042: avoid overflow when
 determining health
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-6-ff0a08a70a9f@linaro.org>
References: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
In-Reply-To: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268824-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8A6801A6306
X-Rspamd-Action: no action

If vmax has the default value of INT_MAX (e.g. because not specified in
DT), battery health is reported as over-voltage. This is because adding
any value to vmax (the vmax tolerance in this case) causes it to wrap
around, making it negative and smaller than the measured battery
voltage.

Avoid that by using size_add().

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index b9277f81a25d..8808c0d2ad10 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -201,7 +201,11 @@ static int max17042_get_battery_health(struct max17042_chip *chip, int *health)
 		goto out;
 	}
 
-	if (vbatt > chip->pdata->vmax + MAX17042_VMAX_TOLERANCE) {
+	/* avoid
+	 * /sys/class/power_supply/max170xx_battery/health:Over voltage
+	 * due to overflow
+	 */
+	if (vbatt > size_add(chip->pdata->vmax, MAX17042_VMAX_TOLERANCE)) {
 		*health = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
 		goto out;
 	}

-- 
2.53.0.414.gf7e9f6c205-goog


