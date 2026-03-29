Return-Path: <devicetree+bounces-282079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sD4gMkoiyWljvAUAu9opvQ
	(envelope-from <devicetree+bounces-282079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 14:59:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F0C3520CF
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 14:59:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C9753019BB7
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 12:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6EAE36EA95;
	Sun, 29 Mar 2026 12:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mind.be header.i=@mind.be header.b="eicIIiaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7496036CDE9
	for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 12:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774789121; cv=none; b=D6aEPMRevpzsYi/D2ztBcYQPvTWwtZRDoahVBXfHtB9jA16aNf7Ny7WP7va7AcWQsABpVDsYCcXLIhjLp7tNSbLskx/KdBkMp3klpUAqq+o/aUdAbhT2s4rszMc60PIF0bhgGtkrlTWD+9n+I/X+kapCeucBUrUQgDk96eyAQ3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774789121; c=relaxed/simple;
	bh=kN4LXldOx96vW9vpO1vfeA7hR3dgCWRaoqTXW0AoqeA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cCUjPpvw3xeWyUxJjEIBMebCd9SvxgLJf7HpoHvrbBOkr/GRpbyk7SJrE1X+n2HWnlu37POZJs2Q4jCc2cxCydfroq3cxUv68FbvuJcwJpCZXfzCtBeDZeB1ZHLJ9lVvVjeAEdfcZN4xKBzVjrtSk4JfB2YOKD7a7pN5FwZPP3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mind.be; spf=pass smtp.mailfrom=essensium.com; dkim=pass (2048-bit key) header.d=mind.be header.i=@mind.be header.b=eicIIiaq; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mind.be
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=essensium.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso42027915e9.0
        for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 05:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google; t=1774789119; x=1775393919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fOCnQYUXjmZVJGvxLeFLJ7zJq2M1PJo5p4ZlaCZTYaY=;
        b=eicIIiaqlDIywt0XojgklmkGVEzw7wrytfqG0XdfnioGFmhAH7cLfJ7NDJwTw4HnQk
         UBpEgWK2SzjgsPUBSEFCcHAikTNQIcJ5hVL7Jwyrkegnoi6jLOqbSe38eKQXFVn0svYe
         aPjmAqCHrLcUCQUO3yNIziZnMkiEUHpjB2EUhgdeZ3OZ4VLNXXVeqtHIheiMd1p/j545
         +jIHQXCpHELbf6GWSmmkrRQu82Lu2DK7QZuUPZ1ryYFCLht/LdW2hwevE7PWLxEEAU9m
         byoAlJHRxfb63vS115FfOus836G0RtKi+x66HrzdiWzy88V19uu3Ta+eSqX83c6m4Zyg
         Eyyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774789119; x=1775393919;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fOCnQYUXjmZVJGvxLeFLJ7zJq2M1PJo5p4ZlaCZTYaY=;
        b=nV8zNhwtangKHQ9SggkDGkQ0IJSV3e2ZmuY0WWyFGO9f15Z+KHBWNZGeXnT6Dw6ojm
         ym2g6RnyupTv4dzHx79DFV7u58Wl+a4sWNcR2h/7yEzaBdZC1zDs3K3ngmD05S5dQ72R
         CzTTMCo6egfYInLWLLGjrV/Bid/n1K2Zmw4boT9kmU6cOuB/MIXJEk0qlHlfeR6h07x3
         49ilnpp79voC4n7NvA64kDAmd8sLI7szhQ62ZiNXBXG852ksL5q2RHvW1nIzFRejEv9a
         PGTmcas3N759sgO+qxpdpaMiL9avDhraFvvktbZvyVODUk6d5FRrxBlhL1JtAfw2Q4uT
         X+Gw==
X-Forwarded-Encrypted: i=1; AJvYcCX8h3Vyijg46mniRzExBsZJdeCiKTDst4gS4T8N3/yM/bm9EnP01wrZvuFkeoX/ZBasvhPCGoNNeuMj@vger.kernel.org
X-Gm-Message-State: AOJu0YxmZDETvs+nF3yTbqJ+g/WBnImnv7nzylHkjvCfjzYvIWDLggN7
	iXXJFRk+GyPpton4aptD0kfpNYWRxxwWwVTPOcxC2ifZ5EYkhbABIJtTB3m1mB3Lons=
X-Gm-Gg: ATEYQzzfOPB9OG81Tu9qv8QJVB3p8KJHABlSsnS+c6Fnbr4Gry7g3yQkM0hug/5Mnq5
	8H3e4Y8Xv9xKU9U5eJ1rB3SqsR2YWoi2IpnRReo2k5jA/ypd3ZYKAaA4gSIhw3cdkzxkJMTqSIX
	+PyQ5FZdJMXwtMHAVbTFohAbqd8Ia2YCqB91k5SjqCBheuxo4B0tZ5kRejBosvy5d2EkkBRsPfp
	p+vfAQLYYzXub6+GJK03gNq73MCKza3P00bZHAeIXIq+CLICuMpsC/VLII6WRdnwuYsoqtkezbL
	AUqTTWjCVQeqLiigrvVweOk4ULhfgrh1as62VhGMrWPwiGEMkHItO1QLq52G7DaENOCnjZHlrWH
	4qv5ewNQvD+hqLueJQYjocvfI35LD818DMOR6vXsr/ZuGiK6qh6HS4/Vr7FGUDBx3VfRaw4mZDy
	nVo/n7hNkuv0dXzxAA7y4IRVdNguFh1ofHgqUtrtRGMQ4=
X-Received: by 2002:a05:600c:4e15:b0:485:2ce2:4c8a with SMTP id 5b1f17b1804b1-48727d67a21mr143506915e9.1.1774789118488;
        Sun, 29 Mar 2026 05:58:38 -0700 (PDT)
Received: from Jimmy.fritz.box ([2a02:578:85c6:1101:1ab9:445:1169:11e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48725d2abb8sm62371455e9.0.2026.03.29.05.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 05:58:38 -0700 (PDT)
From: charles-antoine.couret@mind.be
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Charles-Antoine Couret <charles-antoine.couret@mind.be>
Subject: [PATCH 2/2 v2] devicetree: spi: add spi-mosi-idle-low property support
Date: Sun, 29 Mar 2026 14:58:32 +0200
Message-ID: <20260329125832.2985115-1-charles-antoine.couret@mind.be>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mind.be,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[mind.be:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charles-antoine.couret@mind.be,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282079-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[mind.be:+];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mind.be:dkim,mind.be:email,mind.be:mid]
X-Rspamd-Queue-Id: 20F0C3520CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Charles-Antoine Couret <charles-antoine.couret@mind.be>

This flag means that device requires the MOSI line to be low
when it's in idle state.

Signed-off-by: Charles-Antoine Couret <charles-antoine.couret@mind.be>
---
 Documentation/devicetree/bindings/spi/spi-controller.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index 3b8e990e30c4..5f5b143cb27b 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -132,6 +132,11 @@ patternProperties:
         description:
           The device requires inverse clock polarity (CPOL) mode.
 
+      spi-mosi-idle-low:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          The device requires the MOSI line to be low when it's in idle state.
+
     required:
       - compatible
       - reg
-- 
2.53.0


