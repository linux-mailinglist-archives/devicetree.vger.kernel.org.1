Return-Path: <devicetree+bounces-264649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iK9tKG86jGlZjgAAu9opvQ
	(envelope-from <devicetree+bounces-264649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:14:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C68D31221FA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:14:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A8CD23015B9A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE5A7350D60;
	Wed, 11 Feb 2026 08:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HmC4tRNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C9D350A2C
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 08:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770797658; cv=none; b=tACcninO3SncjEM1d9Rogf6brf7c1/GxfueITyJedHKwPlnZootFkw6wHtkY50hEEB/otwe4WMBT9+pPRmRHK6hYrJefbMU3zdddqpIDCFLVyH+IdPVvPicNJC6JeEQbTe0bNPgox7AWYxx9/SeM2GRbawbMSAFfEcreaY9B1lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770797658; c=relaxed/simple;
	bh=tqXXY5duIcwljLAHXHGNBSSfoC8NsDselCm3mncAnsk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aKJPjO+PBmXXh03UAXrQSNJ9mQCZ7itqqcBqUw7Sd6h27Z2kpKu5tV2/UoeBeS8aT6ptESq81f+xrOUuFPc76otyxRbpTG0e6FZFhiOK4l3+j/77nIVg3GgelvYyRjkw9PMHElB94n47fudaNxfJlTwVPMuexitXodLCtMa+rBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HmC4tRNy; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-45f015a3259so1849221b6e.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770797656; x=1771402456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pguu8MUXddF1NDD8QGGi3BFiPLSK8t0wKet5P/7CmbE=;
        b=HmC4tRNyQy5GQjXKdLipBqaddW1zNLnO7aqqrVt+qwtUlTvNQPrbK+6Sla4a4U3nMi
         6ZMlF5XElj1F5+alc9Ma0lH1mpMZSoOy+RSJ7XN7smUHVlyuRnmAHFzpc2MmbcM4NTmL
         qi6YdBkoOrnd8etaJLur1Onj5ChbsLaF/TwjcOTO80Lq8iTYWxxDkX1jaOO12MdPgRx1
         gGKy0T5FnHwkD1PRGlxbNc/dE90brSDr/mVMc/Zz3ps5wy0hQGjrwFacZ9Jv3wC0Cy1M
         7MZ9MxV+d0PBBCoBT/dt9xKvIsXJlFKoCrcXkdSXCBFwAfHMUQB5QLsgc5J6bWPeFc7E
         /Jyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770797656; x=1771402456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pguu8MUXddF1NDD8QGGi3BFiPLSK8t0wKet5P/7CmbE=;
        b=ak9xpQsd+5eiTC7n0R5VWlnHZZhbAFTX2K39Gyju5pocUDYYTCbp+FKsjbQ4jAZMkE
         NMRnKMUMGUxbyH8Ih5KnrC19vj5vbaHIobUqVgzgK4Zjk04GsALfUoWgQCeT4j4xP0wi
         oh3w/eKG9SuNmiHmZCDlC0KkHTIlhZflcwMQjcVJ4+bId9ML/kI2Jsmu2I98OGprZcgH
         lwIrh1eqwqFu3biy19jfHi6fRGDCFkhrnQjmW3vpkT/JjfIV97BLL4SexBFxK4DvtpUh
         eUP9S86csqpRMfJABzRYgKR6ZKcgx2pM1e56ICrXICryXNi0TSfZ18WonA+WHSDblq3H
         jzdA==
X-Forwarded-Encrypted: i=1; AJvYcCXS6cAtkRnXK8qYXNdSol1K+EtbtY2efeJGYyuv0kbqQh46494taonTg0iBIntsBYrRXvSr5KGHlbqU@vger.kernel.org
X-Gm-Message-State: AOJu0YzKTlfGWgyWLNkesHFcGWY0JIE1cidc8vZG4hbJcizqeKRzyJcL
	n9sXQgcUpF1D2Yj8K8Rk0CVUVbOa7t5bNKsESAv4+tcyJGzu3ymaoRB9
X-Gm-Gg: AZuq6aI0QLlbnWP32ugpO1yTxG1i+ZwbYhVWr9NqjAngIeS/5ntrZj7sML6n8HESrrg
	iBrf9OgWXrAtdnFOMtAoMIQUkpkkj5jfc0xVpWZnmM6EUhJaj1CjG9wV13hixjuaUxkg3vJQIU+
	lj996ypO4vgjaFKRLoFDbqELZNmsxPuPFE7o42q4TcIR7iQ960pFib7+oyOtArtdFASO9prJN2X
	AtUInqjnlQYHotntLFucCr5qzSA/k/EKxOjmhDilV0ew268y1AFV5vAfOBv1RrTHeJCpwXYrE2M
	deuQr7ubaPL/C3QYRh9BUc6yJG3RUqUshfPzFzTI/DR5KLutMrh6Pj/GaIOWNjMCLoyLkkl5zJ+
	jItAocou81c0CSQZCFu48cnTsBiI2JlZHGyyWxI3yfnxy59E4z6ArNMSTUJYHum8bHMoFrO6+fh
	7nBrIJi9vwzcRmwbWXQevZD48YhLZe7wZZxWVxPG8eNqRkoDCgOoD1iQ5/5B3TG5E0olMFgi0H8
	YOMKOvPf3htOIDv3YatdPVxZPWCv2ko8qSWL+3bVbzcGisiq33Eb1+kQJp/emDUpfTPfscIAA==
X-Received: by 2002:a05:6808:150f:b0:44d:a817:2d72 with SMTP id 5614622812f47-46366633c0cmr910471b6e.60.1770797656445;
        Wed, 11 Feb 2026 00:14:16 -0800 (PST)
Received: from james-x399.localdomain (71-218-105-26.hlrn.qwest.net. [71.218.105.26])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4636b093ee1sm624852b6e.14.2026.02.11.00.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 00:14:15 -0800 (PST)
From: James Hilliard <james.hilliard1@gmail.com>
To: linux-gpio@vger.kernel.org
Cc: James Hilliard <james.hilliard1@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <linux@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] gpio: aggregator: add gpio-aggregator DT compatible
Date: Wed, 11 Feb 2026 01:13:50 -0700
Message-ID: <20260211081355.3028947-2-james.hilliard1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260211081355.3028947-1-james.hilliard1@gmail.com>
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264649-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,kernel.org,ew.tq-group.com,vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C68D31221FA
X-Rspamd-Action: no action

Add an OF match entry for "gpio-aggregator" to support plain GPIO
forwarding from devicetree without delay semantics.

This allows exposing selected lines as a logical GPIO controller with
stable aggregated offsets, so consumers can reference forwarded lines
instead of physical controller offsets. It also allows creating bundled
groups of named lines that can be exposed to userspace as a convenient
virtual gpiochip interface. Using "gpio-delay" for this case is not
suitable because it enables delay features and requires 3-cell GPIO
specifiers.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
Changes v1 -> v2:
  - Split DT schema into a separate patch
    (suggested by Krzysztof Kozlowski)
  - Expand commit message rationale and use-case explanation
    (suggested by Krzysztof Kozlowski)
  - Clarify userspace use case with bundled named line groups
---
 drivers/gpio/gpio-aggregator.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpio/gpio-aggregator.c b/drivers/gpio/gpio-aggregator.c
index 416f265d09d0..a09752fc5fe2 100644
--- a/drivers/gpio/gpio-aggregator.c
+++ b/drivers/gpio/gpio-aggregator.c
@@ -1635,6 +1635,9 @@ static int gpio_aggregator_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id gpio_aggregator_dt_ids[] = {
+	{
+		.compatible = "gpio-aggregator",
+	},
 	{
 		.compatible = "gpio-delay",
 		.data = (void *)FWD_FEATURE_DELAY,
-- 
2.43.0


