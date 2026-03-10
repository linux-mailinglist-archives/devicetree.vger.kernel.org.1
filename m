Return-Path: <devicetree+bounces-273752-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMgvOg2OsGkukgIAu9opvQ
	(envelope-from <devicetree+bounces-273752-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:33:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA1D25853B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D82C31BF95E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 592723EC2F3;
	Tue, 10 Mar 2026 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="msKtcptS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCBE3ED12C
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 21:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773178192; cv=none; b=BzSPYV3LCV6PM+V1gVNvlxJdpEbQUl9RK16BDCgC8zUh9lbLcfcfYky3qwls24xv+aRsGjBRjc3AaRymAx+ElK3c5UzmPxkjCM9NSDWLQZwuBP3PkjKF4rRH+VzzEArdzYkSBToanMzv1h3YIZ7dzxzrUmrG9jAvHiljjap8HE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773178192; c=relaxed/simple;
	bh=DzpIfCbwM6vKhLFzRzo9xoVVQJBktFpsxzl4DK7l6eg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HvY6zXu9tEk8BLpJJsg6YHmMvpKHg1s2udESMUBUNAsGra8E/fv+2UZdGei25cdDBvXsFYGNrUzdEbngCj52Zi02QZTPNRsKGKRafetEAs1tmhKyDsst/jvN3pYiYYyiDdC4rZm3GO5DHd8S7R9TgtIK7gHq8ggObUr+wwy4f90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=msKtcptS; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4327790c4e9so10483780f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773178187; x=1773782987; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5NgqHv/g3elLCqPvt60P5KwNeI0nXk/rRJivDr29tuA=;
        b=msKtcptSHt1rIa/eEITehzKqQO14GY9wxdtchpLiJ1CFcD9IXA87rRIu8ZG9OXr3kp
         2UQgyU3V+0HNYsP10xkQSHpJ+6RIKGtxzcIZ2iv9K3U6QDZu45KwdYlL6bE7XBiGIdm6
         geHFiyweAIW/1M3V1fTbo5MVP+AIEYIdc6KYQY1Jb7xNjXwz/o/AnrRPYspgUhzTtMW7
         kxtD8oxk0EXX7SeM00WXekPK3/mEx0PEzMFWupwEF8ANbK28CAvzI01Gam2O0tIo2MCc
         eQQ54/Ia6weS37KsZINmLTIN5mczWYp7HFi5FKW5M7eg9Zk7JbbfV8sDn69eLryrBLc/
         otzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773178187; x=1773782987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5NgqHv/g3elLCqPvt60P5KwNeI0nXk/rRJivDr29tuA=;
        b=IlfoMKhBaALbtq+/CxKD42tJwTbvyTLhN/Afoersz663a3KksMwUcphTN1p9IIiXaP
         s14Kcuwzdi2DPdsvPuCgX9Voha/al6io3oJx0Ayf5Us1aRt2/lfPasz6KUtklEgC1eO6
         gy7dAyffts0LgJ9jN3XndpQZ2ssr84VPkoyXsMFmuP98jHXgo4edAbwrXpvgleZB+bl6
         TRHTYyXrLwmpn00sZ+WSD5OeVBpl4UGrpkfNWelYWNWjDqs3KcRQI4mMtFUUauH8RGz1
         jCwGteccEVWhQ84hF7PKqBj9UXgXY8lVhzZWRPC7g7vzneIGvOzU8rpldwS9H0X1Rke6
         N7MQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+hoFc65f8+wTsq1YJTiBQ6G5yPd5aQsvBiKxvphz4dKmGbGXsrPJSCkZZelHEYhFopemk/B4VZr0e@vger.kernel.org
X-Gm-Message-State: AOJu0YxaWO+kdgQKJvt38+atLOkSjkzR6yhnVEqJCaQyo0A7guDd/G1b
	1RmjjIxaZlfcVNwQswQHByxggSLWf3NTK8Lnn1KKyvo/lSMvdZ/5HXft
X-Gm-Gg: ATEYQzzh0jIwY9+g0hcpFPiDtabO6rwLHbrytNt1reFIBa1+K9PEIi/qoJPpwCC7E0E
	MVDHMri4kFYq2kPDU0K86B/KfLdQ4CHC2wiQua6N6NE4Jrgbavp9gjrFtOKltNF7OepwH+s1ltx
	m2SSkUgSF1/N2xcJA3b2WRfqGoC8YQ59lCCMpqeW60wRPNOl/Ny0+MjtFCwjTuZWezQ20BXCEj2
	hdwoxRb9PAOUn3oJLs5744FeHGOZOe8JclWlpoCGw9mGBIDLqpsbXHJYkNrUZIGenuZLF63xJ+Y
	GUarqxLFJpc0hXqbgHDAMfdPt1lSD9lqQ+WHgbJNm4rdXNkzgvDKZuMjmiFEVK6pE5oKRkh+vtN
	bOaPkrHo8ZM5K/HKq9uMl4TXSeMV48wL+8/1KGAwocGrA7izprlA9JBRVz9RVtpuxoDr+fR4zxI
	wYCEZjtHvuxJNz4GBCqjEk2qJxhFBtnDDPtN8rNioYYWNCo2hsxNY4Xpc1JRngm5U3NbOEAqNwa
	rybpO1JWFMs35E0M8s8cK8Odnd3g0e9YYwPoA==
X-Received: by 2002:a05:6000:2c04:b0:439:8bee:b986 with SMTP id ffacd0b85a97d-439f8222ea7mr743968f8f.32.1773178187469;
        Tue, 10 Mar 2026 14:29:47 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:82df:eef6:d0c5:70a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f818d37fsm1247104f8f.6.2026.03.10.14.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 14:29:47 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/3] memory: renesas-rpc-if: Fix duplicate device name on multi-instance platforms
Date: Tue, 10 Mar 2026 21:29:26 +0000
Message-ID: <20260310212927.3372410-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310212927.3372410-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260310212927.3372410-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8DA1D25853B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273752-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com,bp.renesas.com,sang-engineering.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,renesas.com,bp.renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email]
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

On platforms with multiple xSPI instances, the driver fails to probe
additional instances due to duplicate sysfs entries:

  [   86.878242] sysfs: cannot create duplicate filename '/bus/platform/devices/rpc-if-spi'

This occurs because platform_device_alloc() uses pdev->id for the device
ID, which may be PLATFORM_DEVID_NONE (-1) for multiple instances, causing
all instances to attempt registration with the same name.

Fix this by using PLATFORM_DEVID_AUTO instead, which automatically assigns
unique IDs to each device instance, allowing multiple xSPI controllers to
coexist without naming conflicts.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/memory/renesas-rpc-if.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/memory/renesas-rpc-if.c b/drivers/memory/renesas-rpc-if.c
index 0fb568456164..3755956ae906 100644
--- a/drivers/memory/renesas-rpc-if.c
+++ b/drivers/memory/renesas-rpc-if.c
@@ -1034,7 +1034,7 @@ static int rpcif_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(rpc->spi_clk),
 				     "cannot get enabled spi clk\n");
 
-	vdev = platform_device_alloc(name, pdev->id);
+	vdev = platform_device_alloc(name, PLATFORM_DEVID_AUTO);
 	if (!vdev)
 		return -ENOMEM;
 	vdev->dev.parent = dev;
-- 
2.53.0


