Return-Path: <devicetree+bounces-257402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPpHMiYtcGniWwAAu9opvQ
	(envelope-from <devicetree+bounces-257402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:34:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD994F25B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7F5BD80C65E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ACEA43634F;
	Tue, 20 Jan 2026 12:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KfjNRXIe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E8E42EEB6
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913562; cv=none; b=pIa00nDZsb3GdstcxrqM70MKyZiyVFkufYDHrEDVjgQuGbe0mCTiOs2qQBowbZyGLBF9igL2GDlAqmrpC2E/ZzXyclx4+J/Op5eZnwJp91FqOTssTGeQFpEsovq4C/5xt8SNt1NBzJigF34tFoYa14jz+BMq40A3isbd6Wg/YTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913562; c=relaxed/simple;
	bh=EQgwPx4CoI62AfbaaKeHd9Knq7LJDxSoljXeEUvMeTA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pFS1uIDnb4SfJKG1Q42n41zg89vW969JkE9SkQDCQgudXDCek/gz4lWGtsftQLXnAPLNjKZtPIYsqf6HWo7ZoHcnsnAv2QeyQPfiVBfIx/tz5UOMsVT71ptJ/no0i0HuJSur/4tbKtbvw+U0XH6/2YsE/ERdj2ZY/4FBO5gFLI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KfjNRXIe; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-655af782859so8244719a12.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913557; x=1769518357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LPgxyg9G76/sx4czSUJY3/AVEyCMG06p1zf4yLzzaHk=;
        b=KfjNRXIeepSKFXNPp7VbUpsYdYLTX1RL9j7rWQDYUevR0ux6pZ+2XePvFTtIjtCWyO
         tsz5IJWfaTPd9W78xjO/znFhEPWzcGMc+rI71dhTTyl1ESKkZ12YBjwbD8/DvGLlyupp
         bhmJ+R35elE+wnHQOlj6Fztid8QHTCHNGCxQ7BFWHga+hvzcSX6EnQdqvLrJ8aSbedj7
         ZtFVVSkXD4soQQQKSPqxYMMUD3e9vhKO+4Bchw/km0S0h8R2WxM9F8OGibkwsZLLa3cT
         3Fthop3XCK4hbWlmRp5UZzBIJPbdohSxywoKUTTPy93bis/8xzwrMD/3j4TssMZpBpR6
         8vhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913557; x=1769518357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LPgxyg9G76/sx4czSUJY3/AVEyCMG06p1zf4yLzzaHk=;
        b=duEsJaEfNHt6TJDZoIp+VhbyYAxK9bvq5uk783lGAOXfUJhh2S4GmHXSzVn16GbI/J
         EByYm3TCHw0YfJNziARGV3Hh9TwgipuyBSudVg3jHLdjuEL8STXbyqTeyrJY4/VNjoaz
         duElp0yfrkaDqhnRAWKUwFdmFpQ3Ek3WR7b8DVse69mLx+yKw1T4OoS0hH1M6o6+4hL9
         hgDkz5eLA2S2oX2GDUgseQnpT51j/TixK5h1ru9KYbWRDKas57nv1H+TV/ef3KoycTAF
         EFX7hdHmf867eGgJq2vqjRDqJzNjKbL5Ke6uapUXn3YU/OCBVeUanR28qOgGJpvO7RUz
         Hf1w==
X-Forwarded-Encrypted: i=1; AJvYcCWG/doIUniy3wuK2baaVEEoBu6jXPCs4nO48g4f2IVrjcCPZS0y6WM7w2umCvAERwisZOnqPx6ZXKRQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/A7/ewcgM+kpHWistO1sm6p0uRFjDO/uQxFBBtbalNpY2W6+v
	rK2p2aensuoXgcs+/US3aclK3l/nu1qc2ZJeOpzqUv9GGIrUgIzGWQ4a
X-Gm-Gg: AZuq6aKnWoid64cgh/cppZdJHWeQ/uXhNpD3jYBwhzVw7KYZm/1GlbpQygV0RYlsnpQ
	Bg7Z58vuaJCtTIPPMjdn3CejsWrZ9e2EtH58qQK9yheo7psVtpjR3qqu7eW7Yfg1EZyqXkPvLTo
	AYV0YdTCgGKl8L1XZ33SPbMdjJdBwIJKyh7L49mb0ZrsJ4A0fvY54+ypb/QlHIOcx+nMqBe3zO3
	47k2g/w8yQMHQyLmI2NWpg7pf9CzhIkhbvI5XgYJlg/pda5nlgsu0o7cpeAXM7zil5s0sZUJRen
	yxk4JHifm5PJ25d4vCWBT2ZzZg9Cz1JON3RoJmvpU5hcfz5uIrkMBPFItvhU6OF9XVyyIcQ32LB
	9L4o+xg7HYX2JnGOBmWPTH8jR3v9LCQzQQ3O4CcUBga0Fh4k2U1iO4R8KHf+0vUTZ+ZtkuZmJUN
	dhVYNiiy+OGZPrcDdwNDFAdCc8jOSTNb3cW1w=
X-Received: by 2002:a17:907:80c:b0:b80:3447:e0c0 with SMTP id a640c23a62f3a-b87932b8d3amr1153946566b.62.1768913557168;
        Tue, 20 Jan 2026 04:52:37 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:c8c7:2ef6:8ac5:5556])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959ca32esm1420626066b.41.2026.01.20.04.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:52:36 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 03/12] dt-bindings: soc: renesas: Document Renesas RZ/G3L SoC variants
Date: Tue, 20 Jan 2026 12:52:14 +0000
Message-ID: <20260120125232.349708-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
References: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-257402-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 4AD994F25B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Document Renesas RZ/G3L (R9A08G046) SoC variants.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../devicetree/bindings/soc/renesas/renesas.yaml         | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index f4947ac65460..be61a71c7305 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -548,6 +548,15 @@ properties:
           - const: renesas,r9a08g045s33 # PCIe support
           - const: renesas,r9a08g045
 
+      - description: RZ/G3L (R9A08G046)
+        items:
+          - enum:
+              - renesas,r9a08g046l26 # Dual Cortex-A55 + Cortex-M33 (14mm LFBGA)
+              - renesas,r9a08g046l28 # Dual Cortex-A55 + Cortex-M33 (17mm LFBGA)
+              - renesas,r9a08g046l46 # Quad Cortex-A55 + Cortex-M33 (14mm LFBGA)
+              - renesas,r9a08g046l48 # Quad Cortex-A55 + Cortex-M33 + GE3D/VCP (17mm LFBGA)
+          - const: renesas,r9a08g046
+
       - description: RZ/V2M (R9A09G011)
         items:
           - enum:
-- 
2.43.0


