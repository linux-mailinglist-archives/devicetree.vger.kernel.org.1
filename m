Return-Path: <devicetree+bounces-270602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDLTF9z/pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:35:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 109AE1F2BF6
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:35:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B179B3063F8D
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AFA6494A15;
	Tue,  3 Mar 2026 15:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="Ua8GBkxl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99CDB494A0A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772551995; cv=none; b=l9nkLqkNtAvYs/qmKVc/Pf2OkG+is5bft2oecOhJTxO7skztgWfGuUYLY8+TnnLLZTG8IvLXG+MXMrqYqqm/uQ70oi5o5frCObvO9B1ebj8s9GPXcMpe975CC18ZQQu5UX7ZgjZa/UpherB3fqpbhpXpO7fsibp12dtqgyal4VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772551995; c=relaxed/simple;
	bh=rI3qlTJ6sVlqcAKmwgpX1F1kJ2fiqBBvb2/yVu30Rak=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sNhPRTyN4pHOAkZgUfoN349ZTrsI+gZ4W77jeNwKDZE3/hLKx+tzsLNnLnnsBcC2iGAkcZf2Ie+KCPWCKevpT9Z4WMxOdlOkUm0+sSzTywTNgY+nKyI7mBYZn+rKIhg/O0Lg4SfHsp2B+w3ctkPLW8L7rmhIO1Yh8/KpjIoNXQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=Ua8GBkxl; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439c4bde55cso253517f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772551993; x=1773156793; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UNXZcw1aJqSKR83mcQk2RSs9v+AW3Tva6N8ZbjfBrlI=;
        b=Ua8GBkxlESGiY2A5Y7GFL9vHLTj5ov1xkOeQZ6jjS/ISydLjTNt/uH2E2MPginOOsb
         VFn6z2gOUxQjQNhIWwfANKncXfphUr+fR9p0MUAWvMOzvMHBHOValrTpJYVI+iOk68pe
         G0kM4Oe2hggUGvPeB+d3UDk+i8uWVGgWNfF0rFdKRC/8+v7Ga0CtGhGrn3pZWfq1zibs
         aULhHgHqkSFEBFLM7RXzw0IVUyBv0IP0JRXKPAFHWWyqI5Ws9eN4ApJznEu5VLmy79S1
         87BIEe6AmbtsLHj0uVbZroaWuWnYpNgXev8xknyHqeFZCPZsjMFOoG67EdU3e/vpMz6q
         jPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772551993; x=1773156793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UNXZcw1aJqSKR83mcQk2RSs9v+AW3Tva6N8ZbjfBrlI=;
        b=A46jo139eoALcsqJWcLvKGEokVlHos0WF+DfaMXDRpQ6Iu6OmQ+1TRuQzkOV3uefzN
         9Y+6A7u/zRagZ6xWuOhat6FiVcaoLi7EtYDPXGy8tPjMJeH8ussy/XJX/tYr7DeiUp/u
         0NFZMjdLXgY4fXutusRQTo4Anzp0BNtjcP8sJ7zfpa3AYrgtK5S73rr1akr63Vwt7nLz
         FkD2QS26sEdmcLXd0E9Hyo+Pg6IJN1HaWQq+VOZqo32SaSmh9fRLBgqn2Nu920FjtHoJ
         V0z/iZMWyr4kcx3h7A1lr34eDTLpEagw8iROTuT/yHChbBhl0ZXNCQZgkCGc4mesOfem
         InYg==
X-Gm-Message-State: AOJu0YwXsAtpU3kx5Sn7k8xBoTBY+5kwfKd42trFqgB6XGsz2P6n5ZKS
	rtuzdM7ijUL99g896zYHFB2sXm/4ORQdaQwwAkl11Q/HGwkZXuXPrBArisZQakZEa1o=
X-Gm-Gg: ATEYQzzePzueT2TgXSohUcq0auhwa1NfiWYVq4mCigcw6ohX9f/VlxG0zSRY76LNZDj
	9G9ujnteGSmbWIvKXGxoK+GvX06na4cpxWr6vRMJ3hCeTa+Vn5CgSVebrIX6JKyeADlDzkrogbA
	ZwkZ4tbm3hFFmDZuvS9EntAlOo4qTsMSCTCTs/uzVidIwX34oJRJRt3n37kaTv4l/7wmU4qJFvq
	pNkZ4i1aUqzFOKGNRsOElDYGvdq9TJ1cq3RgwUhw6fVBXJnCvHbM+HqMV5dti4EIB9Gi79/u+zl
	bYXPkjBFxyGqFB0A9bquiZXeBejV25K0Ac9Bn9WcoDOeL2NXyOEH8CfF6vzZq+Zdy8Xjo8fNnk6
	GkD0opLPm2v+nNn8SZLq3rQgNw6hSvs9wgU/U9YsIGM121gnhh+u77KCmzTaGXDlRFfCClTbCo6
	SKuQXBbEfdYWOiDbioz+EsQ+h8RgKbbm5KvYm/t5RZx6xf6qoTDF/HnQaHNMKHZ+dEnTYXoKx7S
	bs=
X-Received: by 2002:a05:6000:4381:b0:439:be3b:ddb6 with SMTP id ffacd0b85a97d-439be3bde4dmr8169353f8f.59.1772551992921;
        Tue, 03 Mar 2026 07:33:12 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b55d15besm19799447f8f.30.2026.03.03.07.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:33:12 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 03 Mar 2026 19:32:51 +0400
Subject: [PATCH 06/11] power: supply: bq257xx: Make the default current
 limit a per-chip attribute
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-bq25792-v1-6-e6e5e0033458@flipper.net>
References: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
In-Reply-To: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1615; i=alchark@flipper.net;
 h=from:subject:message-id; bh=rI3qlTJ6sVlqcAKmwgpX1F1kJ2fiqBBvb2/yVu30Rak=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQu+6+WcPX2hgVn/H6Eb4rPSA5m3rp10a3PHEyc34Qk2
 KN/2WXVdExkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVr+sZ/orNDFWJSCvQnrvsaVt2ZFLVmkrxNfdzS+7wrllpFyigMovhr9StvqJ
 sec69CT26W/edfTaljSX7icS0XbvmterobH3jywIA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 109AE1F2BF6
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
	TAGGED_FROM(0.00)[bounces-270602-lists,devicetree=lfdr.de];
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

Add a field for the default current limit to the bq257xx_info structure and
use it instead of the hardcoded value in the probe function.

This prepares the driver for allowing different electrical constraints for
different chip variants.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/power/supply/bq257xx_charger.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
index 7ca4ae610902..e14dd16f9d08 100644
--- a/drivers/power/supply/bq257xx_charger.c
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -26,6 +26,7 @@ struct bq257xx_chg;
  * @bq257xx_set_iindpm: set maximum input current (in uA)
  */
 struct bq257xx_chip_info {
+	int default_iindpm_uA;
 	int (*bq257xx_hw_init)(struct bq257xx_chg *pdata);
 	void (*bq257xx_hw_shutdown)(struct bq257xx_chg *pdata);
 	int (*bq257xx_get_state)(struct bq257xx_chg *pdata);
@@ -627,6 +628,7 @@ static const struct power_supply_desc bq257xx_power_supply_desc = {
 };
 
 static const struct bq257xx_chip_info bq25703_chip_info = {
+		.default_iindpm_uA = BQ25703_IINDPM_DEFAULT_UA,
 		.bq257xx_hw_init = &bq25703_hw_init,
 		.bq257xx_hw_shutdown = &bq25703_hw_shutdown,
 		.bq257xx_get_state = &bq25703_get_state,
@@ -675,7 +677,7 @@ static int bq257xx_parse_dt(struct bq257xx_chg *pdata,
 				       "input-current-limit-microamp",
 				       &pdata->iindpm_max);
 	if (ret)
-		pdata->iindpm_max = BQ25703_IINDPM_DEFAULT_UA;
+		pdata->iindpm_max = pdata->chip->default_iindpm_uA;
 
 	return 0;
 }

-- 
2.52.0


