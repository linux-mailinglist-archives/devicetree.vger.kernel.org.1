Return-Path: <devicetree+bounces-261691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAhDCVNigGlR7gIAu9opvQ
	(envelope-from <devicetree+bounces-261691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:37:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9694C9BA6
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:37:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1A11A30065ED
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 08:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EEF43542E4;
	Mon,  2 Feb 2026 08:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TNszzXLV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C8D2BDC3E
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 08:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770021453; cv=none; b=ilazklzFEqdxvC/jqaa1GP9PL4DIE5QkUZIqAfPFALBxLqUKK3L9mwiiFjLjEBYGc4sb1QVPyTPdtozsoHqJLbtd+sbi6YA8hfMQITyrF1+CqXmdBr1/UWPg5uba0pDlc9og9XZA5bBmCrSz2xUK1F50v8wlmvIePiKfJuBhPFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770021453; c=relaxed/simple;
	bh=m43fD9DxUHEeNJaw/Ju56CmZEw+prtCN038EDrI0Mlk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KqjR+5Tvc1V6pDj6uomecEP3OY3tWpjYHZ+JW8EhqufJRtkQDnBgpdIVqdJRIw9D/zoIFc4k7pomY2fOQtWOf85hz+kG9iYrPVhyNDFRBWR7XJXjiN2W1Sscs2W3PM/p84EG73Pgcg7q5D3aTjqe4CmX3iCr+HkvdUGitvLxZKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TNszzXLV; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-4801bc32725so30580645e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 00:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770021451; x=1770626251; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tUt9924HsCW+kyUNL12xZ+wX+8YIZNo80+Bbnu4QVf4=;
        b=TNszzXLVgFE65nGdgg7Xg0Okcn+htATkpIEvH8InGH4Yj7CtwnBMfPh2O9gJmgb8ES
         VpAdv6QEqhJgNxInB/YnosjWlZytk0cdLrpvFZXtUfobcB4fBUJIyrVmCJIDGcejrw5R
         bxvw0rvIGcvyRxS39qy4uap6+S9Qv4vPhEvihB04VhQ17d2ejNvqcH0W5v/XBu1oV8i0
         QcLs+isoU4ssocnvV9uaE5otl4XVnn/VvGNjua7SP3w4wnrEC8FAps7COtqUAtbDndfs
         +ywWLsz+LMoKKreCU4TlpCngRMOXEkhuoJGJ2YkAOxN4BUxzgqR6jW3o5DiJmEKs7K2s
         cEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770021451; x=1770626251;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tUt9924HsCW+kyUNL12xZ+wX+8YIZNo80+Bbnu4QVf4=;
        b=gWcWg4KjA/7DrzkObEWVT1UFnEjnX0zSoJwSsF1Q4Vd37iwpTdbQ7mi15hwb4fha+O
         I42NdXU13t3TU9OUOSuiqfj+4AsATmXJRNP0oDM0o45d93aDHNZ5k1WbM2zgoqwYUE/8
         kqZHs2wp5lUcgT+R6SJE+quqUOYYOc3LHdbBkFNu5wLuCJnhSttQOm1gtxvxLnTrc8SD
         J0/CjCiuFrQq5dGL+wlAuYN3jGmSW7RiLjMcqWshJwGMbjegTZCcNIuPzrNtT7XBLave
         7rDJf5Sju17t+lxmSrbWYFqq953BmpuxekuqTia0QPnnvGujiQtNZ4k2m2SCqWK4kTDB
         T1VA==
X-Forwarded-Encrypted: i=1; AJvYcCU/Sv0ZShMnmVgA858X3Si4bSIlozdhBNQ6GXvmyfDgoE8y6+Daj0JuT+Y6sX6pjsvWPldrYFc+VVT0@vger.kernel.org
X-Gm-Message-State: AOJu0YwVprP5OLHKEovjl6lm5on3VIKjVXi5q8aSefocjmrf56QHYC/C
	bhDMy/ghd7S8dY7X8X8Gxr/QnKMbB+eM8598rFiw9NNi3a3e0rSuu8gx
X-Gm-Gg: AZuq6aKCQK5MtCw1sroAQoqSiJPXHq/exkE10v8ysKgYrQHpSDKu/hO8EHn1JliPOs6
	iqDx0HrsYghXbdddR3kWF227U3UWuF27IB0r9rdpwV3ERhINvslvKrvY519Qg/txRb3IifdOYBr
	mmKXVsxh0Qi8LtIjDdW3lWF+SaFYQZrUbKTac72a54eDM/TDK+t7kzlBU1O5Q3B2SJgYbfIduoY
	u1RA3Ze+MkcOe9XbD9cIQEgxTaSe+EOxugHw1XM4/uNQyNCRVSYWH2iv9HTfcbX/ecoja+zeG4k
	hDz3byX1hp1LuJ0bffUm0AHCrm4wLUJqmiOuYQYg2BTRx+Rj79BxhATX2WVmg+7COmuberTX5+7
	vT1xSvAk8zE9vP7rQnyZn57MUJZvG4P6hUK5Isn1SgNSUc3TDGyt8CA15e6xIww65e29/hFRy+p
	6SmVVyzdbIEQT11E+bokVJCitUfsat0l8af8uTzYlrB8WMU/5Uvpl8vjUd9fFdCXpDLhvjFqM27
	Lb+OdQW8DRJ+KiNTdtj+y0dkf0rU2v+a/Ybc6RVzmx6zpu91zfljqvA/rGDLsBukyEUt+RP5l5u
	Pm1BwA7X
X-Received: by 2002:a05:600c:a00d:b0:47a:814c:ee95 with SMTP id 5b1f17b1804b1-482db465540mr141701315e9.12.1770021450631;
        Mon, 02 Feb 2026 00:37:30 -0800 (PST)
Received: from franzs-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806ce564f9sm399535415e9.14.2026.02.02.00.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 00:37:29 -0800 (PST)
From: Franz Schnyder <fra.schnyder@gmail.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Franz Schnyder <franz.schnyder@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: ti: k3-am69-aquila-clover: Fix DP regulator enable GPIO
Date: Mon,  2 Feb 2026 09:36:01 +0100
Message-ID: <20260202083604.325060-3-fra.schnyder@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260202083604.325060-1-fra.schnyder@gmail.com>
References: <20260202083604.325060-1-fra.schnyder@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261691-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fraschnyder@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A9694C9BA6
X-Rspamd-Action: no action

From: Franz Schnyder <franz.schnyder@toradex.com>

Correct the DP regulator enable GPIO to index 21.
The 3.3V DP regulator was not being enabled by the assigned GPIO, as it
is routed to GPIO index 21 and not 37, which was causing instability
with displays connected over DP or via an active DP-to-HDMI adapter.

Fixes: 9f748a6177e1 ("arm64: dts: ti: am69-aquila: Add Clover")
Cc: stable@vger.kernel.org
Signed-off-by: Franz Schnyder <franz.schnyder@toradex.com>
---
 arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts b/arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts
index ec8ff4587715..dc0d3cf2f985 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts
@@ -26,7 +26,7 @@ reg_3v3_dp: regulator-3v3-dp {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_21_dp>;
 		/* Aquila GPIO_21_DP (AQUILA B57) */
-		gpio = <&main_gpio0 37 GPIO_ACTIVE_HIGH>;
+		gpio = <&main_gpio0 21 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-max-microvolt = <3300000>;
 		regulator-min-microvolt = <3300000>;
-- 
2.43.0


