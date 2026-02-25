Return-Path: <devicetree+bounces-268278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEQIK87RnmnwXQQAu9opvQ
	(envelope-from <devicetree+bounces-268278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:41:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 45969195E54
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC1EE30241BE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76890392C5F;
	Wed, 25 Feb 2026 10:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T1UUpv0G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371323939A0
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772016072; cv=none; b=YxqqJSUQJhx31hU1vuf9fo30f9RmqNqyMlc/BCrxXVh9k5aC2HClj6oeTZya0JuiJM15vpQaMhzGy4VVTnbbrp6O5SMAvjcCGenM47ijFLIlDlbH9TSc9bOGIW7CoFF/R/neeCUBVEqT1hx+1yQT81zAME7BGN1QmzXSvJqcBNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772016072; c=relaxed/simple;
	bh=yxOj5sToPmLzSh77Wy6Gl4G8jBqGXLhwxbTtGlE3Q7U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hRwgz+oucc/qLvrlJAEZSqXi1X6snU6ytW+R8Iz5C95veO2VUQEZ5zo8i49K034/GUEKG4lEMVR1vY+6wENYnO4OTqJv52YPaPg/ukKk++867arXPL+kMC8uHXuntWlXgMZyFpo310AUw0gt3WHH4YZUyk01oI8JHRIaqoHNHyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T1UUpv0G; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2ad9f2ee29aso12320695ad.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 02:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772016070; x=1772620870; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y5JusZ8CeTeNO4qDCoYo5++ntNew4s+UIqyoBHnZ8bM=;
        b=T1UUpv0GVZG1y5kPEbyxXdtfieB5PPFb5Ea4+OwObAEmboQGVjE05AHh6JgO2X+ar/
         czFeGlUKylvKG4R8amd9xOojJ3BqeIrsi7G4mgia/jhUUbIqtq6mmw30naZZYVtYprIG
         +88cg6BxKOFrtHTdsFFlzVlFm5QuvlVyfX2jHOfwpZ4QPKQNg2hWd2uE43eDxO7j6ijz
         egTxGjvGNmSddpB7gsmUc7HXVs/Fb8VX4C4inN9EetpYlBB4MLMAZbTyCpjWtT8PKrMb
         UUwgMpN5p22gptIftr6EH1PnpvgTyG7CJubo8rSRV4zvtx/e6wDCJMkGrbT5a4kkIcQH
         t25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772016070; x=1772620870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y5JusZ8CeTeNO4qDCoYo5++ntNew4s+UIqyoBHnZ8bM=;
        b=IfzA/uKEc9V3OH/rUmWBKmkImrKgx+Pivkwfhht271DQ2CzCBrTUdJefKTDPAP7dQL
         5TKtJNCmuLbtGLEC4dHX10yueQg5TSReZBFGS/vGvFtY6ef9QG0P4gC2T7WGGu4vZaEz
         l9ylruKl+A+FxWT5UJEPnFZNfAMNC2abuxRKi32mla+qvKmg3nWaYwI1uJBkfhObynCK
         BRGDT14OLhhbUzwNnU394b0rrgPUCikDlcn71pVDSe4u/ABonBg04a9uYASJqdkQIP0G
         Yy5jBF96gz8RHlRxpDoWT3NZf2nEyu6+H3VcQPC+9HaugteryMycnKxHCo3gTUOBim0z
         Vljg==
X-Forwarded-Encrypted: i=1; AJvYcCXQakGDB8IhOl0qkPB4Y8nQ0ABDqbCMr68Bn/mR8YKbiktsd2Tggd0AX+dEWxOioyLrVJr9ORW9zC5s@vger.kernel.org
X-Gm-Message-State: AOJu0YzrIGqN7BZJU9U4Glm7cdaPcRzKQII9KVPraYGqX60vC7o+tMxc
	LX6s7nzBhJD2KfoAxDwDEm3+TDvO6hVWl5qYEDbgoF4dngbNVbRiL6Qw
X-Gm-Gg: ATEYQzxfuFQgr0nZzP+p16nDe8EjdQxVeOQjwRLjT/lDC/ihpAu4hMP0k/475qJDqJa
	/bEJpeklS85bL1zNPwEsGnjIQWvtLCcoF+HCZFB2S8UHfNt6qqNSii7/yKv7rz+03I9PfJjg/gF
	CZBalzFYngiYhl8sPNgZAXBKbkBUvEf4ugLme46aTMsgn6ySKHbDwaQFLGWZ418ZPvc/b2LcqKP
	MTOr7tMw5ZKcwb7DKFN/xxKedTr8gZXx70KLcTeksrdJ+4+4QGoav2yZAIiWHQzL3Pe67ocR0fL
	c5seO42RR+No3aLwkKYmbzWMT7p9GfIC9ZnPBFrCfBu+2bYRR/FijQJbThEWZQvfbpD8SM8uVDO
	UcBg/f9ufZfdi+rIfj0tACpGcOW971rmXPoqpYVp9SARL1JXkAwEcb9W8eymZ8YcwdohU8ZtcLD
	DAseLajl4YCqHliUiUm98bkjU82ez1nO5I
X-Received: by 2002:a17:902:e787:b0:29e:9407:a8cb with SMTP id d9443c01a7336-2ad74548a87mr147819225ad.40.1772016070549;
        Wed, 25 Feb 2026 02:41:10 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adb1bd6b05sm41625085ad.79.2026.02.25.02.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 02:41:10 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Frank Li <Frank.Li@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Yixun Lan <dlan@kernel.org>,
	Ze Huang <huangze@whut.edu.cn>,
	"Anton D. Stavinskii" <stavinsky@gmail.com>
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/3] dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B compatible
Date: Wed, 25 Feb 2026 18:40:39 +0800
Message-ID: <20260225104042.1138901-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225104042.1138901-1-inochiama@gmail.com>
References: <20260225104042.1138901-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268278-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_TO(0.00)[synopsys.com,kernel.org,outlook.com,gmail.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,whut.edu.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 45969195E54
X-Rspamd-Action: no action

The DMA controller on CV1800B needs to use the DMA phandle args
as the channel number instead of hardware handshake number, so
add a new compatible for the DMA controller on CV1800B.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
index 216cda21c538..96b0233d9b1b 100644
--- a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
@@ -21,6 +21,7 @@ properties:
       - enum:
           - snps,axi-dma-1.01a
           - intel,kmb-axi-dma
+          - sophgo,cv1800b-axi-dma
           - starfive,jh7110-axi-dma
           - starfive,jh8100-axi-dma
       - items:
-- 
2.53.0


