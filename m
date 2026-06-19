Return-Path: <devicetree+bounces-313666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5icaNNnLNGrmhAYAu9opvQ
	(envelope-from <devicetree+bounces-313666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 06:55:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC246A3E1A
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 06:55:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=CHDE80Ng;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313666-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313666-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5E0473038574
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 04:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 186E333F8A1;
	Fri, 19 Jun 2026 04:54:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3EF32B12D
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 04:54:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781844878; cv=none; b=WIEJZEX1qYnpp/BXvf3rBgpYqmiaSoMbxLyNDCEVvTcDOBLXYO7ZwPWntebo+Ky/y2afSJplYvFm9AEeidkr0F9oTQeYxi7LKp3dV7utKQr1ylkxEThInnu7JJpBv+1LsirztN7HI8QtvLuicM6XDSSuhrFTz1ZVbIWDhOqUei0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781844878; c=relaxed/simple;
	bh=1/J1QDc8wYS4aTyB2hGxeW2e18b7qy0uZ1pmyFz9DR4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Hpw/qIlHC2ia+uO/MZe6nRElzLQind73UiVkhSFHpOPhDYYRTylPDTT4p9b5q9o1c2oUJrdp6r1Sx2HKmcpbiecBDktbcJ+RoUkuxJVSQfxPT6kWIgB2hhQb8LoJlUVGfKLuUmCw6hV7+/5TD7wdZfbIcof2MvqKp8ZJhWAH1RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CHDE80Ng; arc=none smtp.client-ip=209.85.222.180
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-918559ee2a8so244979085a.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 21:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781844875; x=1782449675; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=des/YMvzXKFvsVSBqNlCoInqunzXPQ6/th3snijZ9DY=;
        b=CHDE80NgogKmp1+q6QSB4m/PafmrebiGTEUzVJkanCGtKL1JxNlhGY70qniY0jtBnx
         a2qs4nIqJluMVg3TQ+tGPW1tfbdCkWwlrca1epoQ7TmQFppa+vI8/0QxOZ0q9hjcJaWA
         hRmVeh1SRBDlpnah75Fbck/e3RxxwjbUwAsgQxKrrwIFYO5Ckw26J0Uq6Xeq5rNAbuk5
         DlNIHRl8wxVUv324QtMs5de4PxmcC2t2hIX0T7o2D4h/1HzIZT/JAM1MXF1TxW9zB0op
         vItDbCycM5UOzdE947XPHvT4Z62gsxfn1QqLaQdjptPoCDV/SCRhXYRSVxQps8Rw+Rgv
         Kuwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781844875; x=1782449675;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=des/YMvzXKFvsVSBqNlCoInqunzXPQ6/th3snijZ9DY=;
        b=KO5I/Tjc206ojkL/9GQKnTXJqAMBqUOlnjS+JKGKxVtf2B/aDx7vfaw1PoNb9F7L9y
         pnynURrBIj4QLLXhqN/nphbQZnJUIaw4yaHMHuF27VHH7haDXPbHJkvRy+cwl9zZG9WS
         852miukYQlF6/NpKJE0wqCODq1kMSYZu0o6Yw1TfZd+XpltrFw237IB/ttFFeKO7JgLI
         bxeN/msWKKNysbLz25TKsWSdB0QiYRXTplcJKhwaAMJxUPqO/X+3KULU0SMQPi645cPT
         zcSDOUzaFqCXjv3wmJPqlits2sR9xISQQsGZ5j9qmgTigsybNIQKlg0UAgQcDdVkEkBw
         TRqg==
X-Forwarded-Encrypted: i=1; AFNElJ9rm+6pASD0rsHR1FVu/7isx2hb3Vkhd97fXaAgkEgHBA6fEy1GkPoglpnu+1p5cCT09XimzvktPCLe@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ1FVLJ9pQ8AKX3u1XEMa8GIPaqwzgY4n1ZdkQn/I4wkU1TjC5
	8TSMxIcKIWzPf56AFimsH7wn5ow7UACflElHZKa8WzJ9KTuW4Rq59Rdf
X-Gm-Gg: AfdE7cnWrqHEFyST+iydlGZEvv+Idy/hVSouNQVWfci/4Av6s4RKvRG7kRQsYOL/dJW
	megf0PZjSNf96Wre6DagUGhqgLfgiEuY1SFovkrpFVK/A3JhVJyY31pgE3qEzefRgVlaWpifvoV
	L1w/uhLPQ4+3EaYTRCZTshFyqDZuJVBMXk6Ze1yMPXIktWXfAE+pAFti5mAmytLanO4ByLPtgT4
	RTbK+n6ifeicGNTFnIWagtZTvAdKZjB4QKJi7tAmEp6UEsW4hn7UqODFBZP1ntAJ+5ahTrFkFN+
	xjugKuIJjFEsU0AjCwt6gUgGyNtRW6eoMprrK8teIXmSovYTJuKmpTk17uwQ1SwyPotXiyEM4eD
	GwCZSThSA9vWjHHG6GxEk0tkDlD8bitiRfOWr7opKdWaasmTeiIanc45MhM9dsv/944CbBbG5id
	PrppaokKgihn4slw==
X-Received: by 2002:a05:620a:284c:b0:915:422b:fb49 with SMTP id af79cd13be357-92091397994mr303581385a.28.1781844875147;
        Thu, 18 Jun 2026 21:54:35 -0700 (PDT)
Received: from [172.17.0.2] ([138.28.231.64])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-920a425448asm134464485a.23.2026.06.18.21.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 21:54:34 -0700 (PDT)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Fri, 19 Jun 2026 04:53:34 +0000
Subject: [PATCH 5/5] dt-bindings: dma: sun50i-a64-dma: Update device tree
 bindings documentation for A733
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260619-sun60i-a733-dma-v1-5-da4b649fc72a@gmail.com>
References: <20260619-sun60i-a733-dma-v1-0-da4b649fc72a@gmail.com>
In-Reply-To: <20260619-sun60i-a733-dma-v1-0-da4b649fc72a@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@kernel.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>
Cc: dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313666-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:Frank.Li@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mripard@kernel.org,m:dmaengine@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:alex.caoys@gmail.com,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:alexcaoys@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDC246A3E1A

To complete the support for the A733 DMA controller, added
`allwinner,sun60i-a733-dma` to the list of compatible strings for
`allwinner,sun50i-a64-dma` dt-binding documentations..

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
index c3e14eb6cfff..1cc3304b7414 100644
--- a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
@@ -25,6 +25,7 @@ properties:
           - allwinner,sun50i-a64-dma
           - allwinner,sun50i-a100-dma
           - allwinner,sun50i-h6-dma
+          - allwinner,sun60i-a733-dma
       - items:
           - const: allwinner,sun8i-r40-dma
           - const: allwinner,sun50i-a64-dma
@@ -70,6 +71,7 @@ if:
           - allwinner,sun20i-d1-dma
           - allwinner,sun50i-a100-dma
           - allwinner,sun50i-h6-dma
+          - allwinner,sun60i-a733-dma
 
 then:
   properties:

-- 
2.54.0


