Return-Path: <devicetree+bounces-315001-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DHvqLLTxOmr4MQgAu9opvQ
	(envelope-from <devicetree+bounces-315001-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:51:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 332D16BA222
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:51:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Z+wHy1vw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315001-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315001-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F85E30F2684
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486FF3AD50F;
	Tue, 23 Jun 2026 20:48:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C9E3AD510
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:48:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782247728; cv=none; b=scKd1udXOWXk454qiJaP8c0tTWeQ2c8a0OPe0uMSK6IKqyv/z+TjCxoqceJtnkPQHcjukEq/ntbRjCzaKiYqqCJmPpR1RQtvxczo5t8LraCnUinbID0kioAF2PdeALCpE7Jq6eG6BnESkEkWC6BqMmHb0tYDq7DVyximAsHsJcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782247728; c=relaxed/simple;
	bh=c/ZEvKrH8NyUFFYM1KdAFACpOhsENfDRqpjWjQ8d+Q0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l0zx+AmbxIYSv4cpKZXnSt/yA0NqovEEISRL434A3TQcV4e3rTVYzRpCfcUjYKAgQ+r4hC9VS7OKZxo+9q8ix+zcm9iVOrXxZSthr0wfVM2hYzYd7U3+iwLbv6dS6AF/p07cQaoShffIYl566N4k60Iwb8U0mM0pzrh8TREb81E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z+wHy1vw; arc=none smtp.client-ip=209.85.221.49
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-4629051c946so204022f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782247722; x=1782852522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wchiVNh3rpBI2XZC92te0JGKBDBHe7YjoYm2rNU3USE=;
        b=Z+wHy1vwPxEkHwF4dpklQG5j50PtvQkDa8t6G9fC9qyTPPVvFvLSAfTlvU7En2Ci9I
         eIFic7f6XXerGiILiDp2bBTu1+5R1W+w4muIsABGXitA40g9eR5VPFiZMR0DTUn99qmx
         xGzSGLp4aqycRPyLNWtB5WhKxhDSGwhPKjqiis5hpxr8G1LvuHo/ocSh8C3juoOD4CgL
         RoIWoyH1ZVx1PGyv2G/xwZBrjl1GFCjiXvOZ59vZTTqqGdpAI9VtAqrnEnpRFzIZnrSG
         PcldnJiQUX1krOapKlBKExIFc6OV9c+2Kg2iWIvucA6z5GFqHnJOpJnyYO+/tdiT62/7
         VzqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782247722; x=1782852522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wchiVNh3rpBI2XZC92te0JGKBDBHe7YjoYm2rNU3USE=;
        b=pOMp4KK6eWx+z4pLwaEKB23zTQXrWy7N/6zwOq274HKGMk8FKXiBSQOFMAhfCq5XWB
         aDiqFFLTNLSeaEehzIUxVWBUwZYWTCEWKpsyC1NLb4YcuZsee7SVNbKWEwGQ/Py73owR
         CsRv24C8uFaYkDm69GtHd0qJFNvM3Fjyp/9RCuo0YyYW6A8z/CXx4P9yT2JIXarHUYkR
         RrD/Gzq0O1+B70gztrWTEqt5iEu/O+Rlo6pKPkRTvAoW++TCO85IK452azpQ5lWI/nKH
         o6vO7fLbPWyHNPR0iwS8vU5LswulN7COO2P5kKpP299E638BHlh2CaE+W0Z6RuUYY64J
         zBSQ==
X-Forwarded-Encrypted: i=1; AHgh+RonXd7LJA5CWWph1gmbedOUMe9CmaitMjS6yCRLtJ/Q/0tWQ770FVdcrPjHQjvjP5eiX0G8+V/YRMX5@vger.kernel.org
X-Gm-Message-State: AOJu0YywDbB+9p18weS380f3qPAfBskjQB5DtFe1e4ZJiU694DGcBvfD
	MfnyVuvLYAsYO8mht9fLcuy7OFlc07UyB48co4V9LByThofWSEMrs5iw
X-Gm-Gg: AfdE7cnWfXZSxjWvsJPVSi95B2W9UxLk4u8fWByYKqfKKma4jj9yDi7uTZB1bTvrEiO
	M44yhAAgbjoT65R3lqE2rL4hLNjxG5ZDR4CBr6H0fvDPpK6Lw4h/qNQhb3Ona0SgYtzqTcFLjk5
	//4ObKa6RkiOp3mEkPCUCI5l+Ix4UG9zPgrTpyWffnLxUJ2dNiNq5eYZLV+/t6z+bPPKWsHJFvG
	1Mr0fxESSq7BwuvqI2/7XsqMgFihk3aWAX+yM/N3cmd7AS2tm8YIq5/FeGnE6VKO8y+rKC62gfP
	PWhOnUW4XJ7BhbkP96Q7LlCUFYpHj4duN5kyhd40mJ8HlGVurS0chVMVpxP3XKgVGMVZCt/hslk
	dJGNdm3IEQ7sdeng0tatPC5/E/0hfN+qHQsgdNohXkCk1easMRDQeFNjUm362hPPmAhitWvOf8H
	wRuBHt8rjNqGFEH7RsHIU9ShgayX4+SCWyxB6p4dwEZw==
X-Received: by 2002:a05:6000:4284:b0:464:fff6:489a with SMTP id ffacd0b85a97d-46a7e9f3eacmr9075904f8f.6.1782247721730;
        Tue, 23 Jun 2026 13:48:41 -0700 (PDT)
Received: from localhost.localdomain ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c1e840f80sm351996f8f.6.2026.06.23.13.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 13:48:40 -0700 (PDT)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hans de Goede <hansg@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Jun Yan <jerrysteve1101@gmail.com>,
	Lukas Schmid <lukas.schmid@netcube.li>,
	=?UTF-8?q?J=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
	Eric Biggers <ebiggers@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Luca Weiss <luca@lucaweiss.eu>,
	Sven Peter <sven@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v5 4/6] dt-bindings: input: sun4i-lradc-keys: Add A100/A133 compatible
Date: Tue, 23 Jun 2026 22:48:16 +0200
Message-ID: <20260623204824.691832-5-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260623204824.691832-1-alexander.sverdlin@gmail.com>
References: <20260623204824.691832-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-315001-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:alexander.sverdlin@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:alexandersverdlin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sholland.org,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 332D16BA222

The Allwinner A100/A133 SoCs have an LRADC which is compatible with the
versions in existing SoCs. Add a compatible string for A100, with the R329
fallback.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v5:
- no changes
v4:
- new patch

 .../bindings/input/allwinner,sun4i-a10-lradc-keys.yaml           | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml b/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
index 6bdb8040be65..524c8b51f53f 100644
--- a/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
+++ b/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
@@ -23,6 +23,7 @@ properties:
       - const: allwinner,sun50i-r329-lradc
       - items:
           - enum:
+              - allwinner,sun50i-a100-lradc
               - allwinner,sun50i-h616-lradc
               - allwinner,sun20i-d1-lradc
           - const: allwinner,sun50i-r329-lradc
-- 
2.54.0


