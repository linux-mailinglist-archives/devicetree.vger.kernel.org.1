Return-Path: <devicetree+bounces-281986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBLPOQISyGnDggUAu9opvQ
	(envelope-from <devicetree+bounces-281986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 18:38:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 818B834F6B3
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 18:38:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B752300BE82
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 17:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A02633A5E99;
	Sat, 28 Mar 2026 17:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gSWFByiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497593A5458
	for <devicetree@vger.kernel.org>; Sat, 28 Mar 2026 17:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774719470; cv=none; b=L+32mzPQIqnpFqXUNXb8ePiJWWMTujfDCyfHvOBTonuNeA48p8Aj1DRKqi3fgMA+Hl2FEJHLJamuqGWo5YZlvgO6A6o90CbC6VTHKYMoTa82j5NR635oDDos3l3MRhza8CE5/5leaj7bLI54G4mAkLv8CGrRT55I5mU0QlaZecQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774719470; c=relaxed/simple;
	bh=/iKoxf3LOftVvnFst+ry8upkECO2m/4sz8OzKStj6vY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K9wCyHgqlkJWcula0W6WlV96ZfqttWaW2d8JgJBZGhNT9xif3rTzAMjby6tc5xaO4Y+vt4yBYMjAgNfc7BKflbcgbhqMMiGDNzLjvAEWua5RctjVS2pnHh6Wk2bsy2/3Mk9x0ttPrJGX+KKDpqUndLysJsQ8nAPjR+hyPemiKSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gSWFByiO; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-506aa68065eso28268721cf.1
        for <devicetree@vger.kernel.org>; Sat, 28 Mar 2026 10:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774719468; x=1775324268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UFgcVH5XOq5/mrXaXDYrCpNPEGJCtaK+pfMk8iob1+k=;
        b=gSWFByiOyCtxSevSDLS3cGe+6ATKncHTvzkTwdXJMVo7KSku+XM++fOxy/bmMkLxdK
         qjY3Wos00cP9F1Xm5N+EBXE07QcSMId6uYUZGY7BZOEoucdN9E+2SlL0SkqzgATdpP5g
         T3YPqprTzKruSiyjjAY5ioUU6c4iG5eY9d6OtWda9czDrkohdxexkrBeLEM4HveNGJp5
         mH0ezyWE70Gba8eAnvnyeKKnA6Q1KpLIFy9+q38eDor5jw1cjK7xLtHPtrg9bjXlWkeC
         aSSIUkgiNuwloWmllMEbCMN0aW4e8vE/lFN/z4diurdrjVWP1AGnSQjfgRsHWDeLG2Ng
         OJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774719468; x=1775324268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UFgcVH5XOq5/mrXaXDYrCpNPEGJCtaK+pfMk8iob1+k=;
        b=Cg2gBQfYhsxxNYnlJ3GxWPLYOHWRMYNHrzZgPot3JLV1EAo9FNXPqFgBuNqd3yW6B6
         N23nqtHBoB3uJ969ez1a9t6zVsbDGBWoy9yW7eeI3r3ePDBm/Nrvju8/xGq92HCrDiLp
         fCpah4PdjE+JLbSG897GDMQeui61m68NXpxsiWL+1L2eFEqd09qc0WKxy+X52anTrXSA
         FVT3OAclAQlZ7THmixy3FFVJLauRlIdlLRsupSrZUxFAWwN6zytWI7fGE1n6K3RWaOkx
         axXiJXn5tPzD+DWPsc8SDKq/8elUj80kNTgaR/rmGzwqk078JFxOmYFc8EX8aHcAUCIj
         PzXw==
X-Forwarded-Encrypted: i=1; AJvYcCUVimFc8ovJsCLLkANvW8R0RUvlTf42z1IWdzbwFQXaS71a0sygF3xMONxiF3dzy9Rfw5qItcHMCuDc@vger.kernel.org
X-Gm-Message-State: AOJu0YxN4GQBwVvYM3MX3kAGnFgV4sadDj6ByulrV8sGP15AhGW/cpst
	T9cfcfBWABWdxPS+OZrgV5XiG1hRiKhcv61o98bnTBGrYYcquDL9KV/o
X-Gm-Gg: ATEYQzzJRgDAqphmKXTt5r8qnY6lj8TrchaoDsso8YBwoXcrc/Xn71FkGtZe7sAunT0
	rzLbw6KfK/UXrboLtoC2cYZxw4CdjOxLXfdv3oYEzhvAtNJ4mje23w7lt+8T2srRpVXGt+Xae+k
	IgYkuDbaGF6bA9FaSNcyDEgieXwK80dLPNdCQsgPQmC6tLKl6Lnh3Ux6bnCtye2L6DWm7HmkoMD
	nHjoBmXzhRb0HsIWH/H3dwX+eNgcL1oM7Nbeev8xAPXm7vLMiLcB9dIL2F7O1keq8ETYjcHzKtv
	qbhOQpD3ukQ8v04e42dWOffPQ2fsf/N9h/bN0ARw7aAmR/8/8lfQp0uIqPn54gbzwVFcmzHWXNN
	mEFSafCFgYUIBp4/7/d2/w5nCNSBGGefrbzpGfOhzanBc8mJq2IB9pvwNOdTS59JcwSUUfVP40T
	PtK/YgQAYvf30biXoqxKzRm58EJNVEFmqK1lq9EEknpWxBRF4r9fq+IVf/
X-Received: by 2002:ac8:7f0d:0:b0:50b:3be7:afd with SMTP id d75a77b69052e-50ba39fffe4mr97544421cf.65.1774719468311;
        Sat, 28 Mar 2026 10:37:48 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50bb2c9c93asm26629641cf.7.2026.03.28.10.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2026 10:37:48 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: tglx@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	samuel.holland@sifive.com,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	daniel.lezcano@linaro.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	liujingqi@lanxincomputing.com,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	dlan@kernel.org,
	chao.wei@sophgo.com,
	anup@brainfault.org
Cc: josh.milas@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	hanguidong02@gmail.com,
	michael.opdenacker@rootcommit.com
Subject: [PATCH v4 1/5] dt-bindings: soc: sophgo: add Milk-V Duo S board compatibles
Date: Sat, 28 Mar 2026 13:34:46 -0400
Message-ID: <20260328173450.219664-2-josh.milas@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260328173450.219664-1-josh.milas@gmail.com>
References: <20260328173450.219664-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,rootcommit.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281986-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,sifive.com,outlook.com,gmail.com,linaro.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lanxincomputing.com,sophgo.com,brainfault.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshmilas@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 818B834F6B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the compatible strings for the Milk-V Duo S board [1]
which uses the SOPHGO SG2000 SoC.

Link: https://milkv.io/duo-s [1]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
index 1c502618de51f..0b6fbab48b743 100644
--- a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
+++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
@@ -31,6 +31,10 @@ properties:
               - milkv,duo-module-01-evb
           - const: milkv,duo-module-01
           - const: sophgo,sg2000
+      - items:
+          - enum:
+              - milkv,duo-s
+          - const: sophgo,sg2000
       - items:
           - enum:
               - sipeed,licheerv-nano-b
-- 
2.53.0


