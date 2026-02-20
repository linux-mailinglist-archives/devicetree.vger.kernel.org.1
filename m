Return-Path: <devicetree+bounces-267060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPu7C/G5mGktLgMAu9opvQ
	(envelope-from <devicetree+bounces-267060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 20:45:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 786C516A6F5
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 20:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3761306B9E3
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82325366DAD;
	Fri, 20 Feb 2026 19:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="UBaCZjYh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46414366055
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 19:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771616668; cv=none; b=kkDv5mmNe+fogRPB7VqifKCqpuCXvpA3dG/mYKqmHFF9BMiCe/fondO5r0SZPeqqFGSnDDpKzohB04VR2txvqqYguYESi8UhPNdGvuPCjXGMSFpJFer6dIUCdNNcvH22vHwwIc/HqlwnO0OWEplGUg2n8RugYVBQjdYcSIECnSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771616668; c=relaxed/simple;
	bh=nrMUARYe9zH+uvnh42t3b56MRQzTw17fCoVToF8PpdA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bImutyIZV/2wZWVnlHH3FJ3vD2Q+ivUF05JM6Wg3OZy7vRLQ3xqHp7MLF5YdIaKj+BNPCHjhdBi2yAuQcWHRawyqE6nb4H+B1HOkjvD82zdPAl4wiJ+lpwLd4wTnCsYHwDl7jTOuVhWOaPe3f/u1DyJRmDp7JvXrZoVBZ1fbqog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=UBaCZjYh; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so25324025e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771616666; x=1772221466; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OSXZDM/gkx0IUG06PIqgzfA52LpX4T1tWcsEGgTSFcQ=;
        b=UBaCZjYhebmtmx0HoYd6wDRF5PwLufabAk6jpt/f1SMeFeroWgrq836F69UmJ42NE1
         oGBM1nBbCJa/V0l8fhdl+xwdxwETyovUGIxFGYmIFAzF0Qyg8mHv03d3wiIJNxiBTtoS
         VnvcCeHAsBT873xO398d7MGfIGQvNhYiofkno2oqqIDuWFHFw0UHht3ci5gefmxTckzs
         dM+khfcxgOOsxRUpHEJdhK/XI8EVQUcdR1mAjAuCFFDaUlFsSn+E/qF3V2ehfmUG2x+W
         r9+u86+REoEFTbJs97NeFXTlw0c9b28hwVb1q1BMSad+jYjEWjIIOm6nYQzObYCjifYm
         Tc0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771616666; x=1772221466;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OSXZDM/gkx0IUG06PIqgzfA52LpX4T1tWcsEGgTSFcQ=;
        b=fLA0OkvN2GGr85ayuov2aNjQcw9jAHJSDZbFwrInw8KgT1kA2rF3nTcoIKR0qfBoEq
         pHrEeX6YHWT8Uv6+T7cJaDm5IeqiXX4OmVyPh6eR2s4uBR8Jlq7I/bQx2VHSsH8HMzm7
         +vwK+lS+hO5/Wg0ye8YAH8vxLhsJnvlPDnHrKdiK2O7u6f+q4xH99xA3mm287pxgZmAb
         szp+1/3KdxyJOdRAOsOHa8W4Pac034zFnQ9wXEA2shOdr+ntS3ztd8zNjrL3kC9qxDYt
         +nyUl7aam3bkO/mmYdYQ9bqzZ6sNtk9egHpCxX+yUM7mUyzXYhoiD7L/CdvQ2hQi3JTE
         lgiA==
X-Forwarded-Encrypted: i=1; AJvYcCUcOvrTjNor4eJAjBpNeJd0EwYhYLhrp+kegl1K4sCmQYr6PfdGyBMUqXcevym/VEQEWo8MtcepbhK5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6MMCBj9cjodzJ1NGsqi/PuE7U90X1yzUOhk1ItUVViJ07A1Pj
	/1gAIS8aGq7JvRPuXp8fUsF4r+3N1V/3osIeqmeK+Oi38PJRxCx0NBWzk7OUM6czasY=
X-Gm-Gg: AZuq6aKiqNFEhexGp7ZAVfrY1bGMDEEr6XIFRfjrKhWLBLtAaW/04D0aA5xMOeoeLZu
	eRteRvebqsZEAwqQvAHUlAGcvmCs+H+KEPo+vAtxUy01cUUICkgSONj2wMOdukn5qdlKWymSS8I
	cUluwb/i9zpFSmk680k10/ToRF0/QsFnQ8/z23avHzgSMPlyZ+MAN25gHDNCvqyO8TYMl+lc+cS
	pWbnJog3KxHaQv0EbUHIawVOHIrj/9f/Iafja2ACxq+w6oXhnBlnwCD7CD0SXBxpzFO3OXDmaTK
	KUAq37hRlwJFIUOzrBDxDTO6T9DUNerXYx0lIwaM62+ACtGGEyw0KOm35pOmQ9KTxRIaisFP199
	uvhxmXihW6aJx8xGw+0xhGe7GbTgt79vgh1BGiOjVY+q3SMbQMvPtcZhy46/HUdHz01XmKf7t64
	O/4kHnzSLfFxmLb0dQTS64
X-Received: by 2002:a05:600c:8b01:b0:46e:35a0:3587 with SMTP id 5b1f17b1804b1-483a95ef65bmr11363275e9.27.1771616665702;
        Fri, 20 Feb 2026 11:44:25 -0800 (PST)
Received: from [127.0.1.1] ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a3e1b7ccsm24460755e9.11.2026.02.20.11.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 11:44:25 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Date: Sat, 21 Feb 2026 03:43:56 +0800
Subject: [PATCH 4/5] dt-bindings: dma: sifive,fu540-c000-pdma: add fu740
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260221-pdma-v1-4-838d929c2326@sifive.com>
References: <20260221-pdma-v1-0-838d929c2326@sifive.com>
In-Reply-To: <20260221-pdma-v1-0-838d929c2326@sifive.com>
To: Paul Walmsley <pjw@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Green Wan <green.wan@sifive.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Palmer Debbelt <palmer@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, dmaengine@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
 devicetree@vger.kernel.org, Max Hsu <max.hsu@sifive.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=851; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=nrMUARYe9zH+uvnh42t3b56MRQzTw17fCoVToF8PpdA=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBpmLl7uWjyst9NuRS1aIz/Ib7QZ9t93JOlcL7S7
 URhvyuXkJWJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCaZi5ewAKCRDSA/2dB3lA
 vZprC/9j2CNAQy0NxThk9kPI7oO063U7arL4shBXYBczeIv0PMoVAI2GBj/GvX3wI6rvS7wIize
 4ndD+xGwE9kRfYGLB8sGc08VRJ9TAq9YSrKeIa8wgDMsMJxer8QcjaFREvZaOn0lQVEcBnzFW80
 k9IDfcsrJccHz9d8lJaI5NmY5K/Kioop6KgoTaNt3eHn2pUS+zPYXFU096YJn5k9ZhGbXXBR6GB
 IbHHX+bZPNFlE9KJ5jXIEx/nVHoSFqEA1Ex9oPomfsB5zkLtuVqtj5SVVcVgB85krcUgWlXdd47
 SLyq1qdlSPiSUJPQgv+AN9W+4qDP5j7eWabhtfep2QlH9bsyOzfS7WRTjWkDdvhQgO/ozOoYAi9
 3KJFuPb3/YXT1FrASEVh0+rYr6SHVLAu8pNYoj4aPrVgKKpctDXZQ7S5nHVTc7nISiKW9ekQTLi
 d9b3l4ojrAKyNfa7emcMJGOZNYAMN4+7gBED5IdzNMxfcbGJO1/eCnAeV/4c0YrZrsYoI=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267060-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.hsu@sifive.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sifive.com:mid,sifive.com:dkim,sifive.com:email]
X-Rspamd-Queue-Id: 786C516A6F5
X-Rspamd-Action: no action

Add "sifive,fu740-c000-pdma" compatible string.

Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
index 609e38901434..b6c49060bc6f 100644
--- a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
+++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
@@ -36,6 +36,7 @@ properties:
           - enum:
               - microchip,mpfs-pdma
               - sifive,fu540-c000-pdma
+              - sifive,fu740-c000-pdma
           - const: sifive,pdma0
     description:
       Should be "sifive,<chip>-pdma" and "sifive,pdma<version>".

-- 
2.43.0


