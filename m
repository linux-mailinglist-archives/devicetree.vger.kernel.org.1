Return-Path: <devicetree+bounces-277343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKRGOUzFumk8bwIAu9opvQ
	(envelope-from <devicetree+bounces-277343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:31:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 843712BE42F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:31:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC8973035A56
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EBA3307AF0;
	Wed, 18 Mar 2026 15:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WD6ya1xL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D072C11CF
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847694; cv=none; b=ai5doGpgQSm6nKDXqlFBd30/FsbP5knd/0eywbvqvrBDqKcUKRcobg5r83YK/0JiK+eYpQB8OQrPrpnl6htmCEio1iqOlMgKA02Q6thDuo8bgFt2UMh48I10WYWzg0hozCV7zIHWlbWcnNhKX7PhF3jI3do/7QlEoT66Ui59F6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847694; c=relaxed/simple;
	bh=dXXJ0JFFiPJa5gsAbYfOBbLVCxicEcA6VOArO5t8sE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uzx08BI9POV7rIBdLrgPPJJkoLKlHLmlgAb5ZPtViu4F/Q5ME40Zyby4kCfBqNkYnLVN+5bTJKAcKBUsRtiiy82UMEFgOeVyS4e4uB8kzbyqL0nkIYZz3vkddZsI/yiz8qx5ycckeUuBHEOP/bIBDKVaLzJ3Y4MPJ4DGgVaiC8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WD6ya1xL; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6611f41eebcso16673a12.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773847684; x=1774452484; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S/+6mBPKyRHzZfHv/9qeLvEgXfBPcpvJNmyt49iF8ds=;
        b=WD6ya1xLD383pZlucf2L3neA7ONlx121PyGIFiqvDepTDXNXhmUb5/148GM+vkace5
         9CA0GldKmkbjRPpFhGxtIflp4fRcfR+5yzialryEnX1+Hfo/XIZU/idUOZlLnDxXd4xk
         gbhFak9+eaShDwOuC3XyvoiBHzhGonhBSQeJXvVt4H0joE0O9lZUWTer0xcA+iFtGPu6
         zLcicoSHIqgOODPefEcQEOb5xcQ/jB5qOYZGCurQxo3zYVAbMXufLbIpAvpkDBLocjA7
         7SzOxB4EK65Y4YqqjjjxpNqRKD8R7f7zFUbd9z3WlY0UTva0qhCNpcT3ncMxo2WkZoOi
         IfXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847684; x=1774452484;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S/+6mBPKyRHzZfHv/9qeLvEgXfBPcpvJNmyt49iF8ds=;
        b=dyNLfd3IaOOQhhkGP6dJ4RAG3Eu2di6fI5Jk2EGfQpvfgEZ7sSzOhtNbzGWubyGJQP
         mnUk2paRhpo/T+0tg2bMB1XNzONG7ZWlNYnSGi3Jm+DAlgVKQFYPH8ID/YcnPF8F/6N3
         +fMZYfYKRlh0SLKTzkJi3MAFb60ojifTJd8Li4/77+LXuUnXkqMK3tWBSHZm4RDSFGe3
         mgCoNu/qVaZmHzvDxHaDBCWx/OPVZ0+LJKIVWZSIuyA5sVOmZap/Tw5NisbcOt5W2WWO
         LNYy4S9SIGMm0b41KxSRJbuLvv7GaPS5zX5v8VFOKRRpI2gQqpXwpi+v9lzaeiT4a1RS
         KpWQ==
X-Forwarded-Encrypted: i=1; AJvYcCU46TdIxKEixpg03jkVuHjH5wRtvzjSHF7y6RUIh7NgXDJ8yJ3216OE5KBfWwcV8l50S/6ouI4dfnem@vger.kernel.org
X-Gm-Message-State: AOJu0YxtGbELJFzPh9qtzYZ60eoVE/8mCUHqObzzY8xdEvQfHXf/xyV1
	rxQ7wG4J0Dwzppn+aD3YswE/p/qgZl73fn2u9FLqARte5GeJBXdFRS8BZXQdfeRJXY0=
X-Gm-Gg: ATEYQzxYugJgSK3NWwZWV3sXhstLyYAXSNfZtihNwz3gF1SrRlf7vjLYizH1/xsRl2l
	FLO5HYO7AJLu+qTDrbseH58fWSggK4Pu1VWlBjcum7W9P2vaxe65kUaSZq2bFqWKE1KWagdhNH2
	C2imY38MWLtX6uBEIgJfenV3P4adXcbTZOpg9xc08pkE6jFh2Rqt/hfr1hldO1SNE9imqmm5GIc
	KRTW76DCOcy+eVJd4rz5Iu7u4yR/WMQ7uZBSBsp3RfpxGat6eC7kcfa205gsUWEnOQ0SncEqdkk
	rHCvqeSKytRv6+65VwRrZDXq/vZlF24oYBkYwT/EEXpDgA7o/ycjuD9oewpHTVe9RFHkiJQmJUE
	QqHF7rvss5B6Kveyjxms5+mKSQEec8ZuEtq5EyJIJ3WxOX8hkZtYm5WS5Bi+2kAK8/rzVwvhl4b
	lDWSwiVCDz8xj2F/1+8ZwFMq/FxhFPkQbqfGRtkZAdShQOlmzWkvA7mlmYVH8+C6YtbtEFv8SHr
	ZKROeGRw7VP2gY=
X-Received: by 2002:a17:906:2092:b0:b96:f0a0:c791 with SMTP id a640c23a62f3a-b97f479705cmr157898466b.9.1773847684124;
        Wed, 18 Mar 2026 08:28:04 -0700 (PDT)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3e3sm226989566b.61.2026.03.18.08.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:28:03 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 18 Mar 2026 15:27:53 +0000
Subject: [PATCH v8 08/10] pmdomain: samsung: use dev_err() instead of
 pr_err()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-gs101-pd-v8-8-241523460b10@linaro.org>
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
In-Reply-To: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277343-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 843712BE42F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

dev_err() gives us more consistent error messages, which include the
device. Switch to using dev_err().

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index f8c0d11e9b33..6b0a0f395509 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -30,6 +30,7 @@ struct exynos_pm_domain_config {
  */
 struct exynos_pm_domain {
 	struct regmap *regmap;
+	struct device *dev;
 	struct generic_pm_domain pd;
 	u32 local_pwr_cfg;
 	u32 configuration_reg;
@@ -47,8 +48,9 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 	pwr = power_on ? pd->local_pwr_cfg : 0;
 	err = regmap_write(pd->regmap, pd->configuration_reg, pwr);
 	if (err) {
-		pr_err("Regmap write for power domain %s %sable failed: %d\n",
-		       domain->name, power_on ? "en" : "dis", err);
+		dev_err(pd->dev,
+			"Regmap write for power domain %s %sable failed: %d\n",
+			domain->name, power_on ? "en" : "dis", err);
 		return err;
 	}
 
@@ -71,8 +73,8 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 		/* Only return timeout if no other error also occurred. */
 		err = -ETIMEDOUT;
 	if (err)
-		pr_err("Power domain %s %sable failed: %d\n", domain->name,
-		       power_on ? "en" : "dis", err);
+		dev_err(pd->dev, "Power domain %s %sable failed: %d\n",
+			domain->name, power_on ? "en" : "dis", err);
 
 	return err;
 }
@@ -140,6 +142,8 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	if (!pd)
 		return -ENOMEM;
 
+	pd->dev = dev;
+
 	pd->pd.name = exynos_get_domain_name(dev, np);
 	if (!pd->pd.name)
 		return -ENOMEM;

-- 
2.53.0.851.ga537e3e6e9-goog


