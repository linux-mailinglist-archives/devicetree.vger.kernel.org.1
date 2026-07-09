Return-Path: <devicetree+bounces-323655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n1udIPyDT2o8igIAu9opvQ
	(envelope-from <devicetree+bounces-323655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:20:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B3C73032F
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:20:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sartura.hr header.s=sartura header.b=rkcZ22wQ;
	dmarc=pass (policy=reject) header.from=sartura.hr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323655-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323655-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 034973007B88
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0189541168F;
	Thu,  9 Jul 2026 11:20:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D73E409631
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:20:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783596020; cv=none; b=lT6L+az0ubKVx+DNgkn6cfry5i3vL3V7ieS+YttRzjHNnBDLS+4K1Q+EFreSxbSCOSLPS+0z1gkMO78W8kbpHAbGbBwkq+8w3rvx3ATN52CtmBoXSCFuiOm4aPNa0xg0R5qVKgbniJKXMakIFg6dogCLjy7oDMSdljchxSL2fUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783596020; c=relaxed/simple;
	bh=6TLG2b1FY7EQoUsyXn/NWLI3stddETx5AFH37jY1Fnc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WLmN3qEG9/lWPsLAfGJFGjmPp9lmLtixk/Nl8c030PLNk1yQNWG7hXpYTyuEmmbYZS1fRlCUvhiBG4gjBYzS9FGP/68Mhsdw3pu2OvDijadE8K4tTx5aa84ucv0ecmgCbxleiWhF7ZKrAE7J8ip/1Ix8BhhsEG4nSDGJQ8uYrfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=rkcZ22wQ; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-493c7902f47so13621905e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 04:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1783596018; x=1784200818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jtEKXt5Jfmcl2mAH5O82uFyic1vAKOctoaDaAIxBYA8=;
        b=rkcZ22wQyTZyVicG5/UJXYkA0Mkiq/ctcTsqE6rEuI4kbuBwq+kVIgbCaUfR4yUpQl
         ggOFvApJ0qzW/wB22BgNgMPFHiUwkNkbeMGuDShhRB647W9yC9ZU7JtuVP5yDJiGPdY/
         gMX4XQnVxEvurNpoj9YfLnt9Kq1l7jMc+fnNk/WA1oMAfHyUe8KhW/WEgl/ocEClPtxx
         HkXN6yJk5AR1q6Yt2SWr8s9yjVgazARWjt1fmVgVoTql7Vqnq7dqyUP3bjsSh+rGTYp8
         a15giGeRMLjH7xFmeGnUYyXi/ezAxZaowThm3N/3TvHveqWZug5I8dYuY9/uMpzDwbMK
         m45g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783596018; x=1784200818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jtEKXt5Jfmcl2mAH5O82uFyic1vAKOctoaDaAIxBYA8=;
        b=qY5VpLCA8AoVVKYyLyiMA0sYfUpsPRLwJqmsBKM0RiofhfcP815AD/QhVAD3I09tL5
         i/7yYIWn9gL8OEMqdLTnikwOaRfp5uqqqgqabeXL++ralAiDzN/osdmNcUUAs/m09xhW
         HwUgzJoHvkZ5o71PZcES98zuxkPYpNHPFdv0Zz1yPGJeKDU6/sWgrVlEzptbQlSiJ6QB
         XImSDy3Lt+S5NCqe8g5dL6Hv/NIEjeW6NbVMU0xyTrDp+LSNcH+Buaps1ibGJ9H9sO1V
         Y/Z5FRch0uQXaTNbRxb/AkTrlso51L0C10zG31/CMIRLP8DIZMnnVIbEQJ0mih64Hixc
         xEDw==
X-Forwarded-Encrypted: i=1; AHgh+Rr4pbzncZVShLMzc4weF+ejoTLVcGaNCGkbzSquD3aEehAKajL8tkhyMOJezoMqv7c2zeTR6K3QHpoO@vger.kernel.org
X-Gm-Message-State: AOJu0YzjX15QForkWni/bpRKTTpFiqwrRMk2i4hOfQHPjRSlkE4JtkM/
	MUQeIR6VBAqXUu3ErKBGAxADsvscfjCXPzl2xksMvX77lAGCnNDOG3Qp4kbfsi+1bno=
X-Gm-Gg: AfdE7cm7CdSP0kEEkDfJXt23WF4K2Ud2z8eNDNz++VfYzL6e4JJZ+X7O/oo+HBXJhUQ
	4qQRpQ5VhcL3F+VejSCGSIKz5cL7ULEjOHaA1TtONH/QjrvuY4G5xd7v2btV3Dk3X8y/sPNevbZ
	HRPi43blpA3J8ghDmjxpuMUncFoB+ZbFTH7N9MGaCiwjnbnOOp2yX34qjQIG+1JBSo3JWimSAC4
	YVpRlIJImKluMZXQy2cVs318SmTe4702umltL318n3Hpzs7WSb4T0pOrGT0JmepQjPWb9t6oLat
	I9fWuO7Uel//TxtZ8jBOE8vpJeLWIh638UVRqxry/Vy0U6YWSow//2am5I1M32GfZb162vQYJCK
	TVaFjjFWHdsdQtGFsl7sPUB6zG1h5JmLTIGvtc0Tou/NNYow8I1EjKLhrMo9XgrwHPp8IytyUSS
	wIpEYTRqzIQaBKzMR+GFaOceHOGi2D/Y0u0oqbL+zCCdpfwNouRZQ1kKu/Zh2k5XUhJEejM8Eei
	l5+W+aUAdAilJkqte5ko3FvPrw38aZerorlQf+Efdk=
X-Received: by 2002:a05:600c:3b26:b0:493:e3e9:85fb with SMTP id 5b1f17b1804b1-493e685f1f6mr67303175e9.20.1783596017884;
        Thu, 09 Jul 2026 04:20:17 -0700 (PDT)
Received: from threadripper-fedora-workstation (dh207-15-57.xnet.hr. [88.207.15.57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3c42sm53910475e9.1.2026.07.09.04.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 04:20:17 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	tudor.ambarus@linaro.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 1/5] dt-bindings: spi: Document LAN969x QSPI
Date: Thu,  9 Jul 2026 13:19:07 +0200
Message-ID: <20260709112006.390742-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260709112006.390742-1-robert.marko@sartura.hr>
References: <20260709112006.390742-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-323655-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:tudor.ambarus@linaro.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:robert.marko@sartura.hr,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sartura.hr:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sartura.hr:from_mime,sartura.hr:email,sartura.hr:mid,sartura.hr:dkim,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 64B3C73032F

LAN969x has 2 QSPI instances, so document their compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 Documentation/devicetree/bindings/spi/atmel,quadspi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml b/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml
index 30ab42c95c08..36c698ced99b 100644
--- a/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml
+++ b/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml
@@ -22,6 +22,7 @@ properties:
       - microchip,sama7d65-ospi
       - microchip,sama7g5-qspi
       - microchip,sama7g5-ospi
+      - microchip,lan9691-qspi
 
   reg:
     items:
-- 
2.55.0


