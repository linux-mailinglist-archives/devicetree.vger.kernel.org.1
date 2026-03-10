Return-Path: <devicetree+bounces-273400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFOyK9rkr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:31:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AF24D24872E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6DFEE30308B1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D914043E9DF;
	Tue, 10 Mar 2026 09:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="vR7fJ8ln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E5243E4BE
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134961; cv=none; b=imlTBbSmtC4PrWcZDPIcoJvOpo3dsFjAYp20bDc0pqWT1ejaNRx04n+BKD283NXmSE0JOwljUjUGNEs5kRaxykN2uxjo8jw6wpXulyM7Ont2abwK3TmnlnCE07qjyqyBUvdWT7kQIoKh/1ZoLApDuVf3wr/yJvA40nO08zvWUx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134961; c=relaxed/simple;
	bh=Vj+thyx6im8c/60dw5piAk8vyroKtJcY1a74UdrGYxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wd+YaRL37KQS9oeUYPVsCjyDlUfNRvVrPQOHGZ4cZW5KQ1Pw38Ahj228LmkjhVFRHFuRIDPZxrZpEfRc33L9U0nZ57eNUjXT1Dh0dsgupv4uzaYtIwHHP4HxOzMC15UoUyZLe+SQb2h/U6DEUvDxQoW+TJXHp34/Sn3544dRSTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=vR7fJ8ln; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4853fd7b59aso9889995e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773134958; x=1773739758; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8wsphdPWc7OLP974m9ulR0tmXF0Yx3Br+A797hF6by8=;
        b=vR7fJ8lnUobnMwfdgMtMN6lweHudauGYOvWcj3bxhgtdswNS0CAndKhXSBU14u0MD/
         0VZc5BbokXb4UJLrohStmhS/Nuna9T/5S+k2d4Ir87QFLW4d8RJ8IUc4sS8DQRXlOBZ4
         BlSJ0mT/z3gQVoZ2qP41rLwru5kWfgIIrpILItaM0gb54gqAsfskZMAbpC/sGjgy6ztk
         DPUTGI/0mHoQvOTdwe+Xy78Xft+Txkk+OrSEe9XjK8PIBRhZZQ+kd1/1YIKl8eI6BN2l
         iKiEizPpdsdLJ+dCa3djbl4n7zuKiB7u3k2VOC8mM2UtqIBmHXZN+ZV7w477VmyOHogS
         gprw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134958; x=1773739758;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8wsphdPWc7OLP974m9ulR0tmXF0Yx3Br+A797hF6by8=;
        b=danwBuPHTldSlpkns3q3mabG6WvJfRzGy4+WmRodMAgyntNmWpy92cJnmpggfojYno
         io0UiGvuUimBhQxkp0ly+KgVku2WT7bS2KY7NiuApBExTgJzKZNHPGku2ZBz6HyL8a/m
         0HouWHn53RVx6Oi4PC3onDDdsPM4eSIZ6NZijsCd6KLhszMIQQEyQm2hLegFMo16M9k9
         qj6SpN+w9aPB0ThM13dXM07pFplIH0eZO5qNAeoE+E3ZA//r91+aWmel5GI/pen1xqDY
         wZXQwpyLcdGYAah0783qj/BfBRl8bcgc0wkPtFdfPquaX8ry5EhReOW/SpXGic4kdB21
         kMqg==
X-Gm-Message-State: AOJu0YzBVB589LkwNtMpiO+NQZCMdKMRZ79VKB70SKVC2+K8r9GBD1Jt
	8SbXR8vw8UAa9wakmgBRwpRCn+9D8xdwDWgsWGzhnuTt4uoJwCmL8dKye6lKpjZrMqw=
X-Gm-Gg: ATEYQzx4Lt6ng1ybsG5FVirIZmpMR/ppY4+ytrxfqqNGPm91cWOE5M/p2SpxLpzDS/H
	wrCwRW0vr3CxvO4gXgGfSUa3MWPp0bIujHpKcjGEqQJ4I2OHIZ2kOzHgLDaXmUaDNa+BgLeKuhi
	9LJOMyrgV6IvZfaFx93oN1uVL0FubVTl0m2QqWHbAhQQJGHW2MvLLzC8MJpa2y6Hf1LAPcJ17Ai
	aNDJEtV+zsWojEw0mZ3Ch2TlgwVJNQwfu1g7IootdbBAzifRMWP/gYM5z+CofQNYrzSz6NaRKly
	metul2YYy7rdwzPrAH/bipyTK8rBM6c9P6lxXETZSGKCq7/uR5k01xnh91QXYG3rhS7UHZnhXmY
	tYaeYy5Eut88dA821QqHMM8bpPc/4VNylCCkwgLsnVO/tdysvbejiJjYg64ag0yHw9jl/slxbDo
	8zYIuH6cJrNYphC7rbzn2q6oYUf/Q50PafExlD+lppyJ/59y+GD3CxfnCLtDezWqtJerwGFBpm8
	H12dxkXFv6kPD1x
X-Received: by 2002:a05:600d:7:b0:485:2fc5:3a5 with SMTP id 5b1f17b1804b1-4852fc506bdmr118922715e9.26.1773134957899;
        Tue, 10 Mar 2026 02:29:17 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f019a4sm104214285e9.12.2026.03.10.02.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:29:17 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 10 Mar 2026 13:28:28 +0400
Subject: [PATCH v3 04/11] regulator: bq257xx: Make OTG enable GPIO really
 optional
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-bq25792-v3-4-02f8e232d63b@flipper.net>
References: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
In-Reply-To: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1183; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Vj+thyx6im8c/60dw5piAk8vyroKtJcY1a74UdrGYxA=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuf5JoU+x76OjFhHLLOX9P3Lg3of3H6qUqPezc73Rtu
 1R69vUxdkxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVsVaMDD235J9tWn+CydLCcj27VWC+m6v0r/Vq0wq+L2jaGcjytZKRYeraoq3
 d6dq9fiei1CetcmzY/a/aSOacq4sed92fpS4iHAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: AF24D24872E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273400-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

The bindings describe the OTG enable GPIO as optional, but the driver
gets upset if it's not provided in the device tree.

Make the driver accept the absence of the GPIO, and just use register
writes to handle OTG mode in that case, skipping the error message for
-ENOENT.

Acked-by: Mark Brown <broonie@kernel.org>
Tested-by: Chris Morgan <macromorgan@hotmail.com>
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


