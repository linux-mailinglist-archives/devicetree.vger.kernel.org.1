Return-Path: <devicetree+bounces-326425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bM7vB7KLVmos8wAAu9opvQ
	(envelope-from <devicetree+bounces-326425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:19:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 190E07582E3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:19:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=KRoErBwc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326425-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326425-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3CFC33012C4D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:19:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A73A92931EF;
	Tue, 14 Jul 2026 19:19:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED4E2931CD
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 19:19:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784056747; cv=none; b=A2N2WB1WasQt4wbgolZHU4Xe1R5hdD12PId3Mvff+7caWVM+2rKofbAlSUH5HV3h3KiKeVuFdkfDmPLSEPa1ba0VFWrLn9UZG7WbMn5ZJRFArC6nl+d+scPQwaydVSrRSjjIfg+9SavQmrO74i9UYNae+XXt9tz0x87i49g+Eds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784056747; c=relaxed/simple;
	bh=70u/znyU6+RUT15QWc5L3FICBKcIxuK1REPO4Ad/cqQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hjxm16/qAugnwF6JfcCjg1HPyu3UHQcX9LBWoyJ1QI+ZjkDCu6CjFs8daDMrT2vmw3K3fhRby1vcij1zqJXEqYoiuDEaBTh2v2VlvsvoMBe0QSst103KinFuCHIZOmr/XtIN+x/0/QOVncHcuj+eVZbw3hrkopv2amwByt22I3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KRoErBwc; arc=none smtp.client-ip=209.85.210.52
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7e9ecb1e13bso1841874a34.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 12:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784056745; x=1784661545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BTBeOTYIOKIk3GZzx/H2GNcllpLfatvGrcCCGYprRVY=;
        b=KRoErBwcxq28AVBr4eoyADMMJR8noChD3I7AL2rvG5eveyxGt0Xb7lLR6l2I6n7FHm
         epopK+fBhVbLbaeTRIsGJLtng9mm+JWTj020WKzmbKMWwvKP9z3YJWvjigvvY/5u61G8
         wUMBAkDWz1D96FoqeudVaIk8qspxN2dw+DNQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056745; x=1784661545;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BTBeOTYIOKIk3GZzx/H2GNcllpLfatvGrcCCGYprRVY=;
        b=jySbB0tCF86oHrzgtfdSiOEFWi5XyGqcaxnfJ1AZWnEIfgXa8bOVzKcioiSJQu5OEb
         sqoH6TtmR0kfBm7SSdkno7LgjE0xs+/EvWNcx+Pz1fC402EN+M6McyLRgQ6eEd+WpW9j
         nQCpvfb5QdRHEuh1lkkqro/yRgT0rv6mHlnJrhNX+noK/W0BvcS81Q69sTqdYzNhbgSf
         Ess3RAqPJYRh+swFQ7uKy9UVJVz2qHQ5+riYP+caEnRvas3hSKuoPuoGZItksE56jDjr
         lyfIvRHtmoMIEvbalj8rSUALLIo1W6L8zzc2bvvzXqD7hmgAJjqoud2gOK29QLu6MGdY
         NRmg==
X-Forwarded-Encrypted: i=1; AFNElJ8hbvUjXCz8nVSGbF6QWdw5fbGOnqYwvRiwslcppo4TyNqk0k7xnPW41g6bWw/6nxndrJRXooONHCxW@vger.kernel.org
X-Gm-Message-State: AOJu0YyjIpNj8rVjPyw1xstbkHE2zQkpzkCqkFhk0SQuWg9TLu229vv6
	ocRtljJhOacqn0YRObAvNfUPlPEaViHXrGFNzVTunU0/8nKA1l7+RM10+c9KNKVKwQ==
X-Gm-Gg: AfdE7clgyVTagR8bRyiOk3EGief3FoQI3+du8dDUZSIPV6Jv4rO+BYsiFZnmCwh6x1D
	b71Kbvx5Xzbo0bP3FFVwyi0rhFSep98UONlxMmFxG1pSpaxMvC6zMDeYIaqNcN5uciDi9olevkW
	R2qfY5Q5CIffBBwLjA8m4EUj/wqKXKyp7GYKazATb8gqwAkxjzrbDwblP0+vjlllZCnhKI1xCm4
	Ldey9jpYjknQMqIFZfw60kJsdXNOzxKEh3vaaTBJwx41S5u3GyTg+4l8mcWw5vQCgsdkoG4qctV
	2SYF/yZCQUJkXijEr3N65hxOXRwXfysJ3T0jRQtZbz1M2st5i8Xx067OyKExb2E0elnLqUgApHy
	d2po3ZPKSa4sQbac177VHGX3hke9tFyDYDa2odw+wdWFDFZ2k6REvby3qQfdXExEXzDmn1k4nTl
	2652kWCMYlcxRGBh5IiA==
X-Received: by 2002:a05:6830:6a91:b0:7e6:e349:539a with SMTP id 46e09a7af769-7ec097aab48mr9268737a34.21.1784056745121;
        Tue, 14 Jul 2026 12:19:05 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb3f2b86sm15713103a34.26.2026.07.14.12.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:19:04 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>
Cc: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-watchdog@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Simon Glass <sjg@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Jamie Iles <jamie@jamieiles.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: watchdog: snps,dw-wdt: Add RV1106 compatible
Date: Tue, 14 Jul 2026 13:18:57 -0600
Message-ID: <20260714131856.v2.1.b5339e64b3fe4338b3924ebd9dc0096904699744@changeid>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[sjg@chromium.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-326425-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-watchdog@vger.kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:heiko@sntech.de,m:sjg@chromium.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:jamie@jamieiles.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sjg@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,changeid:mid,chromium.org:from_mime,chromium.org:email,chromium.org:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 190E07582E3

Add the compatible for the watchdog of the Rockchip RV1106, which is
compatible with the Synopsys DesignWare watchdog.

Signed-off-by: Simon Glass <sjg@chromium.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 9d25f5e497e2..2b16b7c2787b 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -35,6 +35,7 @@ properties:
               - rockchip,rk3576-wdt
               - rockchip,rk3588-wdt
               - rockchip,rv1103b-wdt
+              - rockchip,rv1106-wdt
               - rockchip,rv1108-wdt
               - rockchip,rv1126-wdt
           - const: snps,dw-wdt
---
base-commit: 3b029c035b34bbc693405ddf759f0e9b920c27f1
branch: rv1106d2

-- 
2.43.0


