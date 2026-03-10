Return-Path: <devicetree+bounces-273753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAz/JhqOsGkukgIAu9opvQ
	(envelope-from <devicetree+bounces-273753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:33:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C244258542
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9930630F7148
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C083CF045;
	Tue, 10 Mar 2026 21:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DZ5szW7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6613A3EDAA0
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 21:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773178194; cv=none; b=MnDzNMwCvjHQuYYsWH3Zj7JDtAVNCvZpybUMhdihh+TYedMqqsUb6oJHq+QGdKLcIDo+SkjcAWnMjuJG9w5UT49eQ81ixG9LWBP+kSuyM37zombIyLdxVB2krVVE449y0o7a8gc8THzelU8xI6g3w7n55VTM4sgOVZHjlPTRgPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773178194; c=relaxed/simple;
	bh=ogXyPVzKzbJQ53vkSS2qbngNk39fkQyG1JxarA4s1mE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hpfR9jZgtP9LAYkp0XjH++HJ7n53lhqzn1WpdY3gcTTKxZJSeObWs1dFup+18gff/nfYSPC6SlOexT85mlfGldIt28of3dCxJlS2J9//bxOFAbm7lc2BNTj7T56kbs5KJ6lCMQ3jXbsfXkzeRT2WlI5j5tccAsOE8LtDkNE5tog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DZ5szW7o; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4853510b4f3so44685395e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773178188; x=1773782988; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=txwgTwUpWJVP1W5FlgZT0bJMXVPZO5xS2ZVTbzY6hVg=;
        b=DZ5szW7oEauAO7ms8SG/B6UeIj8FQmP+4C47LgSZCbgnNfqtt2A8ke7pqX2hKM8Qwj
         hjXOXnNBqhAQUhHDILCQHMxgn/7uzA3ucafuT4Y6tkQ7FlKl5aYlVzY5qSb1P+XflLHy
         WljqsCgYWC4M6SUFiV/pFGv10bms7jCbbsowhHIyQS2sTWpVqbVucmOglJDCjhjk/cQk
         iGw34vLMEz4Fk5bO8b8ldq50Ro/9X3jzI8yD5tOp4fnikp1e4aPr54WnLJ8WVUca70Uw
         b37FVKUIeF/6fBIrNcRlYUZuEsr4cg9EsYYp+U+ksILtVoY6JFR7aqyHmXuyv0NKeQys
         05qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773178188; x=1773782988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=txwgTwUpWJVP1W5FlgZT0bJMXVPZO5xS2ZVTbzY6hVg=;
        b=WiDyDhOsutV6bOkVD75vjSCU4LwV7ixI0QUmmUNUh4vYCuYGZkVLutCPN/aNoyvyBi
         R1Mo2sb0gnND4gPXcQKg7OprRE+/UXpLyfEGf05EhCxS+d/u5kXb/A+nhcT3K0lCusJy
         yyaowQ4mUVjyyql7i7G1Tj1+15XQLEUdR/7XlvxDwQxhrpE8G4Huk9u4ts87dGCQYzWf
         x24RtVUICMpfvVoUy4MlWQtHmo9ZfFCgJTvh22EDf6SHm85IOCX4i0uiQti3kReGG4bf
         oQWWuBWqUKiyoRAiXxqKQ/KrPyhSddcMjpdsAp/UhlgRrbo6W1+wp01oeT69dhpp+wv+
         bqjg==
X-Forwarded-Encrypted: i=1; AJvYcCXNFx9Hr8hRZTevZV39v+Rd2JhwwYLFOZsntvJ+s+3nqQu/jJlGUHAbMGZsJKyViqQ1TKfK0LJcTF2U@vger.kernel.org
X-Gm-Message-State: AOJu0YzclTyOMvoEFVapD3fi2jJ9VTuHAQQnNdkXCQqotetuznkgZbo/
	RBIjQ2CO4eVq4P3DuWpKvIp3KQwK3yRm1wHdXHHgFMt6Dfxp7MKMhJgw
X-Gm-Gg: ATEYQzyKk8N5+bfZs0nWLnWcMi+I6BR4kfpMYjW6DdDDDrJ12TFiru4lq4JzcTiqjcC
	fR0pU5HDfRzwvCzl5KFubq6O6iCvafrpnJrbeVYTilFHtYgpGBjktu2GU48w7ZfMXnNtiIg8/+s
	Ei3m5TzMd+jXEFESq18FSwvWIdcTP57hsadtMxOoBNpujkzcfyKe51QB5B/Hnjt+LB/1wzFtbcr
	gN4stXco0sa8+tyiKZNLwd3dtWEdC3DMspdQGPYuhLw/EehYxSnc2IGkDXmqsPDLjgQFLdfQ6of
	0nMod785x7KiEz9eKOWE0eUCYvoEfeNLXaGAdMdRuAC/s1+k1Ge0OYrRlxTZaC0XNwpy+v/cKM3
	ZaXU8flSF8Qj1dZjeOLJhja1G+lf56frbRHfSbO/WmldhX9INM/6uRERevOZdXDbPo8ZWslqs8E
	lhd63rLPXjYvYbx0oi9YtfH2DFv+Rh3h9Z3+kKIEK7/cQmNqNR45Pesgl0oqdaD0p6sedsKl336
	2TrsajPFKT5mEOkacsELehe754E1ZseEl9zdiJ1t9ip8SFR
X-Received: by 2002:a05:600c:4591:b0:480:4a90:1afe with SMTP id 5b1f17b1804b1-4854b123a76mr4529995e9.34.1773178188460;
        Tue, 10 Mar 2026 14:29:48 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:82df:eef6:d0c5:70a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f818d37fsm1247104f8f.6.2026.03.10.14.29.47
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
Subject: [PATCH 3/3] memory: renesas-rpc-if: Add support for RZ/T2H SoC
Date: Tue, 10 Mar 2026 21:29:27 +0000
Message-ID: <20260310212927.3372410-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
X-Rspamd-Queue-Id: 0C244258542
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273753-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com,bp.renesas.com,sang-engineering.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,renesas.com,bp.renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add xSPI (Extended SPI) support for the RZ/T2H SoC. The xSPI IP on RZ/T2H
is closely related to the RZ/G3E variant with some register bit differences
in the configuration registers.

Add a new compatible string "renesas,r9a09g077-xspi" for RZ/T2H while
reusing the existing xspi_info_r9a09g047 OF data. This allows the driver
to bind correctly on RZ/T2H while the register differences can be handled
in future updates as the affected configuration registers are not currently
accessed by the driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/memory/renesas-rpc-if.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/memory/renesas-rpc-if.c b/drivers/memory/renesas-rpc-if.c
index 3755956ae906..028bd3b4b9e3 100644
--- a/drivers/memory/renesas-rpc-if.c
+++ b/drivers/memory/renesas-rpc-if.c
@@ -1145,6 +1145,7 @@ static const struct rpcif_info xspi_info_r9a09g047 = {
 static const struct of_device_id rpcif_of_match[] = {
 	{ .compatible = "renesas,r8a7796-rpc-if", .data = &rpcif_info_r8a7796 },
 	{ .compatible = "renesas,r9a09g047-xspi", .data = &xspi_info_r9a09g047 },
+	{ .compatible = "renesas,r9a09g077-xspi", .data = &xspi_info_r9a09g047 },
 	{ .compatible = "renesas,rcar-gen3-rpc-if", .data = &rpcif_info_gen3 },
 	{ .compatible = "renesas,rcar-gen4-rpc-if", .data = &rpcif_info_gen4 },
 	{ .compatible = "renesas,rzg2l-rpc-if", .data = &rpcif_info_rz_g2l },
-- 
2.53.0


