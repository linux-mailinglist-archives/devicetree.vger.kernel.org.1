Return-Path: <devicetree+bounces-269092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eG23EqZEoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:15:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAAE1B3B4F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52D9B306A330
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D5036F41A;
	Fri, 27 Feb 2026 07:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wNOdNsHG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3AC332629
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772176515; cv=none; b=brRCK/UCTPtFs8worffwBHIvspFi60dF9WKDIz/zW4yI8TYNAwK6JytQsYmMirCakHVCN4b9VdsSwSWuJeGGx3KaCWM3awO4O7xQi4kyrjeETxGW6ARYehy+ELxwkhuZxGOsR08F3WQqLNrljjKm2XudZQ9Ggr3P6SN+IWxXUqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772176515; c=relaxed/simple;
	bh=SW0KsH0zfeD8rz2BxR1U12qdNdVFhIs86kUgS/R+a3w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HAGT519gH16bSc8jCRdow84M9SrshJjgLYpIYuQhK3kivaMe8WjHc/RgT8DDHIc91dT8junzJ+N8o+1LmtkEL7iPyXVtEIVY4fB8Ypp8Z2MLdGDO9wyofDnXZDcf2s8vn74/7Z3Af+F8vNAQFX3kkHvFRxbognv49+u99eL7axs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wNOdNsHG; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-65fac0b51baso3041196a12.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 23:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772176512; x=1772781312; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mSygevmpkuj28iNV7zrww7IIgn1pA3j+kvHDTNdICpE=;
        b=wNOdNsHG+JkebgsSzY5ZxPl2Q8eJNyeQUXPWY/HXkHYO0ygRjcuvtl/i/fNRe1/gsr
         58Q+fXHOdrRoHOuhwD8mXZLPPVQfO+oSOowHEq7VpAw7rHo9Y66KonYbGLBBE/cRMruQ
         A+mgH/I4WnR4vCGa0N/QKBotGvI1nLVKjKKx98UPpNmNgvmYLOXHfDGszZtZaAOiWmQJ
         c09cJTExkGD6C8hvfkk0yLRwalgb7in+vvvgLnL6ae/7jsSFsw9ggqew8pQJkkskP7+E
         FpIjRAD1q/2Gdcqpl+FSOT9t0+d3bTt6yZNrmQj8NGRVW7yALlTAKSzxAhQChfVoPbpx
         kimg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772176512; x=1772781312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mSygevmpkuj28iNV7zrww7IIgn1pA3j+kvHDTNdICpE=;
        b=lTQEdk+2yN8rYeB7lmWLDR76mcTIgP38DxL8fjcLbCjfPxHCdrdor7lhBpeSVv8G/D
         bnzfBT+TiaPEmG3oIpbpcTtBT7OzoZYUCfcFVChJYY5ofMu/0TVA5CNd+grAP9VeOUUq
         rXEpJ3v5u53jLEI9s71Kq+HLqVzEuCRZMXIupwmyMiwAKFixKggxCPcmEePH1SiF7ipN
         9Inm0E/qJOWSpCpSJXyb4KMO/72yuUgdbopUiBR0843QFM7IPbhfXvg+zY40w+tKnXo9
         eVoavtP8pQg8f7H8F0EMhCDesrGrsYii7WHuk3vpJUF6TeumjZc837M5v4+BCKd1SjDb
         vIHQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3xMqDIQBa5HFajGQvMHLApSfAmEpSpLs6HZobRGmsh3SDj9opruwstpw4u59zn7Qo6QEbak9XZxrU@vger.kernel.org
X-Gm-Message-State: AOJu0YzHCnLJYxZtR/KyUkf4rCfWd1FtrxRZzohW/w7MMQ4JoX/aMIcN
	FvgZ+Q+nh35SuxNgQaSL949vObrl/SewwIE7YPLqkUDrRBODPSMIFkJw/Gf4keb6qkw=
X-Gm-Gg: ATEYQzwV18karn2mBhYAhGOb/2byusz6sYwrIBlD1T+az3nDvhdR1VOk0e/iMYhyZ5G
	L4B9GGWGKA5tE4anox6dfohi/L5wxkmiE90jj4jUHiJumu6d7JdN7CMn9UmARTsmk6o36wnj1Sd
	8MU+wCd9eo5ohqVviZzojUqPlrv97DxsErQt0pdQK/m+diRx+jvjz3/jPW95CUO0Q92zIGj+UZ8
	W/M7P4VgRNGPA+wBJu/zTCuN6S0N27s6dHj+jRVjZ7cnrtsKAQ9027hHu8fT7DPdBKl/pje8Rtf
	18VJf8OzNbxRwAxdJ8whe2FxRMP3sGEDaXG4rqLWQ+W/DADFr4JAi5/TjbmqVOzDsoqPNfF8/f3
	q4zfJb5HZ5NbmbzznHqARcB1Mmwq3yH7aCY0i3QE73qGhFkg2AmKPfN6M522aRRqL58KNbJEeII
	oDpDimslBxcPef9vOeXhoQys6ghB55VlTPplYM861XbPnTJYcB/5F76dcFkKtXs2d4i3130I4e8
	0DjWHKpRwy7rYQtuw==
X-Received: by 2002:a17:907:97ce:b0:b93:56a4:d6d3 with SMTP id a640c23a62f3a-b9356ed6a7amr349717566b.1.1772176512050;
        Thu, 26 Feb 2026 23:15:12 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aeee867sm124205066b.66.2026.02.26.23.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 23:15:11 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Feb 2026 07:15:10 +0000
Subject: [PATCH v2 05/11] power: supply: max17042: use dev_err_probe()
 where appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260227-max77759-fg-v2-5-e50be5f191f0@linaro.org>
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269092-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DCAAE1B3B4F
X-Rspamd-Action: no action

dev_err_probe() exists to simplify code, harmonise error messages, and
set the deferred probe reason if relevant - there's no reason not to
use it here.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index 07759d4fdc37..b9277f81a25d 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -1053,16 +1053,14 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 	chip->dev = dev;
 	chip->chip_type = chip_type;
 	chip->regmap = devm_regmap_init_i2c(client, &max17042_regmap_config);
-	if (IS_ERR(chip->regmap)) {
-		dev_err(dev, "Failed to initialize regmap\n");
-		return -EINVAL;
-	}
+	if (IS_ERR(chip->regmap))
+		return dev_err_probe(dev, PTR_ERR(chip->regmap),
+				     "Failed to initialize regmap\n");
 
 	chip->pdata = max17042_get_pdata(chip);
-	if (!chip->pdata) {
-		dev_err(dev, "no platform data provided\n");
-		return -EINVAL;
-	}
+	if (!chip->pdata)
+		return dev_err_probe(dev, -EINVAL,
+				     "no platform data provided\n");
 
 	dev_set_drvdata(dev, chip);
 	psy_cfg.drv_data = chip;
@@ -1090,10 +1088,9 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 
 	chip->battery = devm_power_supply_register(dev, max17042_desc,
 						   &psy_cfg);
-	if (IS_ERR(chip->battery)) {
-		dev_err(dev, "failed: power supply register\n");
-		return PTR_ERR(chip->battery);
-	}
+	if (IS_ERR(chip->battery))
+		return dev_err_probe(dev, PTR_ERR(chip->battery),
+				     "failed: power supply register\n");
 
 	if (irq) {
 		unsigned int flags = IRQF_ONESHOT | IRQF_SHARED | IRQF_PROBE_SHARED;

-- 
2.53.0.473.g4a7958ca14-goog


