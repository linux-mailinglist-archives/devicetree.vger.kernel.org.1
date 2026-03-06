Return-Path: <devicetree+bounces-272168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGsCEOflqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:34:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 212EB222BE2
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 13F85303EDAF
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBB03A961F;
	Fri,  6 Mar 2026 14:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="tP7DBUGj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1650E34CFBA
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807609; cv=none; b=seBILUa4eoHfK6qSbIYAC7iNuOYrqCSsRcll6YkRu8P2mVK0AW8SnsSD9tiEj8NjgTTK82nWLOaIATtnBfhgAiS8N5lVYDVtPfI8v/qq3Rty3Rm1EFEWMOYZEDMS2vvDaTm7X5Ngi809sZyd4zyNGD9cm4mcseHj4CMCRbtMyI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807609; c=relaxed/simple;
	bh=boG9G+5QbeBW6aT+kko42e7K1ue9tm4B0o/XFrV9C0g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UNK9q2hK4HFCn+LL9MHyT0uPO2h2s+sYyIdY9vxC+KFN2KAeLbBmOLCZh4pN4ZKAAyzQ/5cKEk4SRj/hSWX331heOgTlDuLf20aFOLhfBtyV1CDG2bD2aQyzRyQgUAjzPT9x8cQa5BpYqmPIBa9xQ6Nkf9x30CVzBDVWZ1Jipps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=tP7DBUGj; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439d8df7620so599881f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772807606; x=1773412406; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ewnwkW8aeBnRH/Jc82nMn2tCnapdMhZRN1gE49Tbo+w=;
        b=tP7DBUGjUjSLZtlWgSnezs2sHSRbOnDBVNo8Kf4jM+JP2EkAXOKzNLCkiDy8kfpCoC
         uDaUGp/qaoIv44oKs+GhvORYaxwxAF9mSDVwkpxPR+TRVcSyvlzHkMWulkJfz8BJc5Q7
         QLwboHpwujLNaoJYpCZrnE/higmCfbIBc2wULUnJ9h4ZfRgqLrCcvHC1pBTq8e5KP3Ed
         SKPMzzusuCWiKDOOv4kypbfDp1ux0aqw22jxGC7L6LqeAPz9TdkZi1U+9pDfcTkS7mab
         Zimqr1MaFxPW06vLQ7gd//OxsLcfxwWyhSrTWUTbpAj97G9OjtBaICalGtTXi1w5P19G
         VwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772807606; x=1773412406;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ewnwkW8aeBnRH/Jc82nMn2tCnapdMhZRN1gE49Tbo+w=;
        b=T2fUHTBsRvwO7l1Et4uYvLbeKok+gb180QuW6PSuUBu5IbQ6d6wr+VNzNh+2UQsWNe
         wNZ9ss8Am0M4Owsed8PHsiEXQ1dPT8OONu0R/r+QFOm4OLIqb9DlHeAd2CqbDnE2yrhZ
         f9EBRgVbsvBEEqy8/j43pdqXT6I2UWzizerFGqahRpyvDwfMmCh2+ntjC0TNoiFOuivj
         6VVXxQRjplcXfGWJ2VSe8GQ0SVN3p7DXq0g0bfgHmYQQGp7leikdYMk79o5J+zW2NlZG
         ONPSgiNUzfkjm2D+GgkVB5aAgfZnexUFsvffZuxlzSUL1e8U6lDyHrq/qFc25pyU3fRz
         tlLg==
X-Gm-Message-State: AOJu0YwlWYvFFc9PugKlHY5yieO5fy3S9OU4BjKu1zcF2ilgRtxl2xix
	KkL6rDou5/pu38tfsAjSKMaIvnf2qrMkS+oWUPBqr+vkzjtoRNKhzSic/N4JpmkdD0o=
X-Gm-Gg: ATEYQzwZi5IhgATfMG7zWW8XX7R0LGMyL2qJwbZI2befjoWvYx1BOGvXsGH/R/dQ12+
	dWGrEjL8VDR5ga6L8lvMzp9U7OOzSgnZOMpgrzt2b73/rPzFhdWkToWlcTrIeaIDgdmoJArvpGR
	t1+c64pIAm6B7jcN4w4UjCLBX5lIPEWFUWDttkzkycaW0IObZsZEsjM3gXWP5rxQZbQjQe/XKvd
	dRIKrKaiO4E0djmd7x6Iy8ic8Fh9o19Iwji83Y84qx4GoHbHNB7PbARq02iBUQK/yzE2ln7Umef
	TK2KA0WL5h2GeSt0OMfqy1YskvFzJj46Eb/BzXdkKR2Snz2kUwUOz/aFE3C4LMvkcYbOOk8jYD6
	zwuLtcZrkvUnpshq9FD7RQ5WTuxK81bxK82ulYqWvVkA4P7Iz0CG8NBEdzFy++1NB+xgFXgjPSQ
	9tczd3RlcFwdcP17H4BAlaWpbNh/hetdwmToF7qyFSPuNkAFXF4DqhvX0awqQPUvjyJJtfPntBJ
	hlwBg==
X-Received: by 2002:a05:6000:250e:b0:439:bcc2:bf0a with SMTP id ffacd0b85a97d-439da65d52dmr4139837f8f.23.1772807601226;
        Fri, 06 Mar 2026 06:33:21 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4635281f8f.2.2026.03.06.06.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:33:21 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 06 Mar 2026 18:33:04 +0400
Subject: [PATCH v2 04/11] regulator: bq257xx: Make OTG enable GPIO really
 optional
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-bq25792-v2-4-6595249d6e6f@flipper.net>
References: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
In-Reply-To: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1089; i=alchark@flipper.net;
 h=from:subject:message-id; bh=boG9G+5QbeBW6aT+kko42e7K1ue9tm4B0o/XFrV9C0g=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuerqk/mJMZptu1TL5jRs3fw/c58CRevt1WfZn6+7bM
 jwMy2xfdExkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDV72Yy/C+NNJ6xk/93f+QD99C2sOJFtxI7tV29/FuWS1odXLn5RybDP73JDGW
 BO23s9R5Fmb3dezk74ouARcYqC9UIC/PLqdlNDAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 212EB222BE2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272168-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Action: no action

The bindings describe the OTG enable GPIO as optional, but the driver
gets upset if it's not provided in the device tree.

Make the driver accept the absence of the GPIO, and just use register
writes to handle OTG mode in that case, skipping the error message for
-ENOENT.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/regulator/bq257xx-regulator.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/regulator/bq257xx-regulator.c b/drivers/regulator/bq257xx-regulator.c
index 674dae6109e9..0bb58ab4b8d4 100644
--- a/drivers/regulator/bq257xx-regulator.c
+++ b/drivers/regulator/bq257xx-regulator.c
@@ -126,6 +126,12 @@ static void bq257xx_reg_dt_parse_gpio(struct platform_device *pdev)
 	of_node_put(subchild);
 
 	if (IS_ERR(pdata->otg_en_gpio)) {
+		if (PTR_ERR(pdata->otg_en_gpio) == -ENOENT) {
+			/* No GPIO, will only use register writes for OTG */
+			pdata->otg_en_gpio = NULL;
+			return;
+		}
+
 		dev_err(&pdev->dev, "Error getting enable gpio: %ld\n",
 			PTR_ERR(pdata->otg_en_gpio));
 		return;

-- 
2.52.0


