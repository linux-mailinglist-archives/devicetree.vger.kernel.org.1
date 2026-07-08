Return-Path: <devicetree+bounces-323166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ki3GMc++TmqHTQIAu9opvQ
	(envelope-from <devicetree+bounces-323166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:19:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E4072A78F
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:19:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QwW1+Src;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323166-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323166-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FE91303E4F5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 21:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A463C3448;
	Wed,  8 Jul 2026 21:18:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9DD3A6B65
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 21:18:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783545519; cv=none; b=B9E7rM61lvBHs3lsfz1UX9s7mRY3uhoejM81r+pFOHSIqj6V8dfMe/kqC1LJpcKnDGR2jVSUX92gWrbKA08/wo2FQ+PKyBOE5ZeYK1+pdlgo33pytdbN87S4pNGKYWJdFOrB+RWn3RMh3GaEIC0wr2HzmzodfAuCO48ARJLSAks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783545519; c=relaxed/simple;
	bh=EDQPvvbMQ9ScxH9hOlf6W01xdBRPeBBObtt/dSq3uEc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hUMUvw7hO7avA5dR9yE2iylEhPikFMriH0nnKOKwSClyLK19fSjdvJsjdWZEQEX1Gn/GPJO0/VisNTP6PutpUYWa3q5hmiaesAq7HEBW3TxH6drRib6WaWVFyMEJRPR/z+dELohI44LjkarKT+mlFcgbyb7tsNxfiAttXi7HDrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QwW1+Src; arc=none smtp.client-ip=209.85.128.41
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-493b786d6c0so6315705e9.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 14:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783545515; x=1784150315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=sRu2JDPnd+KPGNqW7sFeAghfeumOeGPFi0g23iNWPro=;
        b=QwW1+SrcBde0aiTP7eMIhTNql2wq2Pts+Xs7LgGyGiB1uLwXvk38NZPXAl49tCDpkF
         OhKhAWYIplSNi3keDiqJu3smR62eEuTdWACH+vq088D6myGXQWfTAfzs6PeWj0875/V5
         eZInmMFNf71x8inSLeOAJcEFP1qnV8Vsi8PGk3B+/6gM+he6+CCJBNwvZBLzsHYmwaDd
         M6DCtp2aXQq2BstCyxbmiH/peRjDgv5Wchu0wTIHpgCcOEGhbDzEIrTRMT0azuddNqiK
         6PamRwgdGvSe9pf+Wz9Zflxix5al1cKKLSCjq0/MVl65CNWrWZlBAajmu6n+7fhxG6Vc
         kVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783545515; x=1784150315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sRu2JDPnd+KPGNqW7sFeAghfeumOeGPFi0g23iNWPro=;
        b=hstkwd77HFW4j+HyRzbop5dFn+wdI3SM/Dfg0WuvrF4J9fxw1kjF7yXvbwo8eoRTDn
         A2tOM737YzdtJKhGAybXxHQXP/9rQ1pN2mu66EUbGCyXf4OMQRLvkNbuR5t+9pax9h2W
         9a98y9I6GFd+NHnBxVgn0pLJCtr1EpcFxYIxb/LWnbtH8iyzeb3Yi+QFS31z3XvJOSHr
         +VPxt9JhCKl09EayP9CmImxsLw/kltaB90rNgt8/Tv1m7Lg8dz+/o6ojV/Nhv4dqgJ37
         KxbohbXJQd7pg5eyE9yr4/0Y1b6n81wX0paL8IT1uzEuaVaWptBVlFKC+HLGmpMFtK/H
         k+KA==
X-Forwarded-Encrypted: i=1; AHgh+Rp80iTpMDZjf4JAN2jyvX0wX7ZyDOzcveT9MS3lxSQ8wtETNSF/UoCneC4P1gW7PGAcUA6U3aSsm9wI@vger.kernel.org
X-Gm-Message-State: AOJu0YwXcVas8RHfW9kqTyf/tgp5FRy9PnG77n0e2TIAp6X6q9+eoXmp
	aNsWeyvopR6jkS9LgfuM+n5UH1fWaXAcXJ6mpi1yhhxrhXAFZHyiFLF+
X-Gm-Gg: AfdE7cm2AbaYM4EyHMvBetuYSCCZCAHgagluexuj+l991mKHvm2ahQH8JhJS56kz6In
	vSHcg4MpO5HsUZGbPcOphB5PBogyOGy7xZewwB/n/5Jv7QC1EG/8Yxz9OJF7OVCm3SZja8LNdkt
	xWtiv9lwNcKOZ7KsELYtUD0HaGaea2c0NRYOKEh8wnCgpGeUyRWN8n8Y/xFhTSnS9o/CqDoswFr
	Q2NkpCorpTbp7qgyKWKVDRd6LMP0KoK08iDnw12lZyCGbI2CEA8tYUH4HlGEMvTpF7M3+f6Uef8
	Mc4ALgvu8058XTC06J+lSP4/XS4UV3AtPi4RJ9Zr0TKMP73JDTEmuTgnq2UXqy9Zz2Xm3VQXcEL
	qoRfWVNT6fk4RkoMt7l/beAPA5IBpofKv6Z2zYHRs4YIJPw+x2p6uHTVnkYnBZ2KOdZN87rCE1J
	o2UJ+mvcn6LIMMtShMXwuQOLlooHv4YdYWfJfBHvmkqR/3KRXt4z2bd1p+5YY2Tgl27XHSUiPWx
	KQzb9lCzj1R3BiBsIDaytpmBWg=
X-Received: by 2002:a05:600c:1d04:b0:493:df58:90a3 with SMTP id 5b1f17b1804b1-493e68926bfmr42265745e9.25.1783545515083;
        Wed, 08 Jul 2026 14:18:35 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.vodafonedsl.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e5a58853sm68494175e9.1.2026.07.08.14.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 14:18:34 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	matthias.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>
Subject: [PATCH v1 0/3] Add support for Variscite VAR-SOM-AM62 and Symphony board
Date: Wed,  8 Jul 2026 23:18:24 +0200
Message-ID: <cover.1783545241.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-323166-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:matthias.p@variscite.com,m:stefano.r@variscite.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,variscite.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68E4072A78F

The series includes:
- Device tree bindings documentation
- SOM device tree with common peripherals
- Symphony carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

Stefano Radaelli (3):
  dt-bindings: arm: ti: Add bindings for Variscite VAR-SOM-AM62
  arm64: dts: ti: Add support for Variscite VAR-SOM-AM62
  arm64: dts: ti: var-som-am62: Add support for Variscite Symphony Board

 .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 .../boot/dts/ti/k3-am625-var-som-symphony.dts | 545 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am625-var-som.dtsi  | 491 ++++++++++++++++
 4 files changed, 1043 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-var-som-symphony.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-var-som.dtsi


base-commit: 5c73cd9f0819c1c44e373e3dabb68318b1de1a12
-- 
2.47.3


