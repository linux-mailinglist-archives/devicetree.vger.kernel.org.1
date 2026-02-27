Return-Path: <devicetree+bounces-269093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YB44JtFEoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:16:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF151B3BB0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5240E3113411
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 332F53806B3;
	Fri, 27 Feb 2026 07:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F7emd6YT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B50346FC8
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772176516; cv=none; b=XycazipyllHATfsBsLQ0tUrmSBCzriv3+5RlcXRFlii3eHhbd2FbB5rmd3jmsMr+9KQJRLG+hsSLfB19JWjfNpVNq/IkH/d9S0J1q3p6DBp8m2Hy6T/m/my4xKTjYYjzhzKwS8F8fhZKSxyOUnzmbCV0tTu5V8QjvhwIFKff8I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772176516; c=relaxed/simple;
	bh=Yt0sNw9b+pj9fmaA7tM3vgRmJfOjPqWF3O7G+LpIrnI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NSiIFoudW+8KQt9kNZtFRcRMfY4ki1SoPsl/JukgaHjYEUKGYuHCbgDhOQp0INvhlOMx6BafqzoUuWBFZVReZM7Vwte6fF/sSyJo11q7RGr8RgH92H0lel01TW/DnsNLhv32h7qSfMq/x6jHBLigWr6c6p/UoQrHolbzajFazXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F7emd6YT; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b8fb6ad3243so255790566b.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 23:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772176512; x=1772781312; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WClHPYuZJqN8n1xZlLHGmGajkWi1sdB8zHmMALTl0VI=;
        b=F7emd6YTNBdSollPGgpVYasDjaN53eX0ZmmTptU73hIfQBa/OAKY2uWc/0+CMkfvll
         LH3A1grt6Uod99fIiJA8VJ8ARR8ONCLhgQKt7rKkICGyrJ6qAQSx9jQ/6pMN+SuQkbDq
         yC3axNC9QIsUDvFzc6hqNPHxWJJh8ib1s4ADZ4Jod+bBmEX1nGUjd3YblRKsp2ms7aXr
         6lOo55oCPHPKzSyT0ThMMfmBPsXCDtpHkTn/Gu1sMxaEqggJulP53qEVW4sLEcQHnPX8
         6s/sWG3xJIuXjC4hLpYRpYMZ3HSuIYFLw8SRW+3ygM4po146jmXiBbDn1ZR73aQ44ylJ
         AIbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772176512; x=1772781312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WClHPYuZJqN8n1xZlLHGmGajkWi1sdB8zHmMALTl0VI=;
        b=TMdlslVYDMfTIErjxpuu/EXLPi3FkXG8jltKzz7ZTTiPJ4Ij8R31HBnJspIYdDRSrc
         Qx6RbiULO8WIy+/gWhvf5FLLTw9XKpFq6qgyaz/e1i+l+pj0Rh1nETtQfJPtrR8bJseG
         xT7xi6n3mb1/fH6Ffbv6M9fU4gCgcU76mHScVCjU414iCL9aorYSF0ZBj/7KWy9cC4y+
         LMfRmoEbuNl/BLLKGYuZxx0hfxBoiD4L9zAi3hWL3w4juHOucir/WY4Tm4mX+Dap2AcH
         NxkDegPdPeFHOrVjpqSaCmuW4wh+8ij4YYfVLlb4eoIrJLn4VyQ1gygWe6Z52nVVfb3j
         MaxA==
X-Forwarded-Encrypted: i=1; AJvYcCUU2wdkED6+ijEGnWnNa68DgC/0p2JqZg05YkAsZRg/aVSCLhSqFblaGFrP6rdXAHgHEcON/WVOJaOg@vger.kernel.org
X-Gm-Message-State: AOJu0YwI+edVkXm1HckoFLfpWH6cHAKxuveSaKx/TKZBSfFltdoEnHGD
	oJE1LZRhX/SsXm1x6BreJQIfOGOLzWQOECl2qF9u2MntyjJAm8s0Dc0GPpKeCoTD+7k=
X-Gm-Gg: ATEYQzyWcZgriNE46zrqJTcLYPyGB5ozwawzYCyQ7Yqm0U2lwhklR5D2SCDZk5D6bgI
	qzSgCQDmY4b7jTEGPgDnEOPo0SCl8Pf0zd0OiHsRZEITGtePRKo/cmxTCuwIWuSkOknYvG7DZCC
	tHc+Ih6Cjp/MGIwTVU7QlWiIIl8KmK6Zq/1T39fhLSoupGvBy02N0sqBaJER6z6dcrspwRlh53J
	4GLlCeOpqS8qp6jw+1mlwdxCt5rqMvy/rSekc7piMzCB13P90nDI8Lxzre8CNDPil9B29A2icVw
	nIQBWCv5Rbio7sxHltEUZLLbfSnSNT4VPgLsC+ESvHyPYSFzF2hlVcpEWf6wHvCHf6BitNBRjFK
	4EeXjjh27WXyHjgceOnLpwJfd2JOSdNsSWvjfbZCcdLEceP+XUKx+vdAsUTaqZ9cc6oJt6ubl2C
	s7cZtRJBxjgLKr5eMnU5bhHw95rz/9JQSHoNpvDeL1MXRmRl3EjLWdz35IettiDWxBaZG7n/Ypj
	8yvqDC0BE1X3hKMAQ==
X-Received: by 2002:a17:907:3e91:b0:b93:5521:b57a with SMTP id a640c23a62f3a-b93764b5f90mr102410666b.31.1772176512558;
        Thu, 26 Feb 2026 23:15:12 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aeee867sm124205066b.66.2026.02.26.23.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 23:15:12 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Feb 2026 07:15:11 +0000
Subject: [PATCH v2 06/11] power: supply: max17042: avoid overflow when
 determining health
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260227-max77759-fg-v2-6-e50be5f191f0@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269093-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EFF151B3BB0
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
2.53.0.473.g4a7958ca14-goog


