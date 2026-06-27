Return-Path: <devicetree+bounces-316264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hi9mGjuaP2rLUwkAu9opvQ
	(envelope-from <devicetree+bounces-316264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 11:39:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0136D1A9C
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 11:39:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Q2dLHNKc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316264-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316264-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA9E8301F5F3
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 09:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3290E3955DB;
	Sat, 27 Jun 2026 09:38:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B61338F255
	for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 09:38:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782553132; cv=none; b=IKUza4fIS3x/r7x5ERSRtkP0P5N7QORZhhGmnGVPAVFbpfGOvXYTI+FWI42L3q+wvXa51q+zoh7UZVshDzIffwMm33CDRnuqng4N2INuzsybKDK3BGpEh24R0HyIU9DigquJWlzKEAqdSV6jR/RGlF0iRNB7c9sG6ld8fHAYx/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782553132; c=relaxed/simple;
	bh=PjeAyVzdrmEPvru5WSS2hywp+olcq5EiYjAbVoPzIDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HvpYzwYVjcr2WYdkjuBewfsqZQFqxH6BHBVLBkrOCgI4sG8Cfy6mFYSK64QJlmQgqYh1t2qSODQO+F/LHrJGDodr62+WlSHptj4o0T/Ni4S+z/nZeOgwmQBLoPosQoLP+eS7sZU9eoWV9pkNSpwbwhkL4qCXz2NUEkVNidYA0Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q2dLHNKc; arc=none smtp.client-ip=74.125.82.174
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-30e18c3e0b8so192209eec.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 02:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782553130; x=1783157930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=Q2dLHNKc5TLW8CMsOF8dArjo2j1KU/3hShv5GUqap9IbTTuk+QqRwb0fCVebmegzqT
         WE/cbMigEfnKp2gC88RJ16ZQkAMZ0Onm2y1UjwGVNoffLRlOAEsTrF32sQny2ykqaNoF
         fG6fUmw+qhXAOpQVEgfCfu2g0sUskw/hMjRoXYqKBkPHcLobmNZD+2MSr0+zSYwTl59b
         8OFUx++1jqLZLgkso6B+dfAiZpUlROixQjhp8P6rDEOW+/FFbIZ+U65GJY04ktlJE4lE
         woD42s2gwLnrKVFbewup+gqQwkBEpmSmld+6G9wGQpfL69BHW/g+q89NPp6AruGFfJXz
         haxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782553130; x=1783157930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=YC/F0S5bXEURqCn1HSPgghcdLtF7Nk2wxQ1oPj1P3SrY2WdgcnUNiyAarWdz8kiTKw
         3lo8BL5bZwC21kFiKqE3CzpmjHUDwEz9qpcW+WMVu5ohyVkRHoRspRk+kVDsqZcMrZrt
         qLx55cRdCwWE+HnlPItYQKJrgGX23jrSXG2uXw3GeTW1mBKKmpCqt6Y9zz429l7Vmi5J
         hExkrqKx8TUU3GSI5XrhsXvSDrp110ZZjA9PtqwgoD8ubW1Y8EeJu+Nc45uNdFRAge9O
         jDd5GI8P3kVHEp5Nm5XnR3zBQqsoaGa9VKJniUrZk7VUq0cqrZ3WQZ2w7cWz0UQ7fp2C
         eItQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp6FMeOKHjR20q+LLwXeLNutlnu0kibRozc6uQ0FZb4BJYwV2sjv9ByaNC4nYjFh0X+AT8LKNDoretB@vger.kernel.org
X-Gm-Message-State: AOJu0YxFeJoT5ezKe9/viKpskJ04zcqFy0H1TD7PLdi3z6l/Tbg0E3Qn
	P0IxZxmhzS7IExe03tcGxe8zeehCEqhVOEMLGPGhNWAeDrwMa+AGIPbH4YHxG9wg
X-Gm-Gg: AfdE7cnzjxlMOv22xgQIO2ju+Sfj3pIsZKb707FPSz+CxsViKoSDskiEgYbyRCsulem
	3yIXzAuM3ynwTlPmD5LuIMqU4suTA5pVluFAjE9Ewj6nzmaig4JrZJU5VoL5KoEoh7AJdZH7rac
	sXjC8gq2udJc8eRtTal8DsLjVglA+LASh3sQh9ZER/SLdFE0aIHAOvI65L0J5o2fLFGOYwwsrQX
	QkUfR/F3T4cjNud+k+u80jq3KbG96tYipuayRFrD/JT7G7h5qNhNJXzXbJJXy8lR3zCnMeCJNge
	5a+DG05FmPool3b+6QfOJySZ1mJLvpOy9wY2jeC8UxatiGZJVakKk4oIazcKmxXxNfn1B36Mjbj
	moWdHGV+2kiNek0Z03H8TTnjJBgLmP0zmvk+q3vcYGIu/gVxcMywU4CRJQ2/uirptbE3TTgbOpH
	D/Whje3KFUYQKgux4dvT4=
X-Received: by 2002:a05:7300:640f:b0:30c:6a50:3805 with SMTP id 5a478bee46e88-30c85009a5amr10727758eec.28.1782553130073;
        Sat, 27 Jun 2026 02:38:50 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30cf86deed5sm4902948eec.1.2026.06.27.02.38.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 02:38:49 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Sat, 27 Jun 2026 15:08:29 +0530
Message-ID: <20260627093831.80495-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627093831.80495-1-hrushirajg23@gmail.com>
References: <20260627093831.80495-1-hrushirajg23@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,linaro.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316264-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:heiko@sntech.de,m:robh+dt@kernel.org,m:krzysztof.kozlowski+dt@linaro.org,m:conor+dt@kernel.org,m:hrushirajg23@gmail.com,m:robh@kernel.org,m:krzysztof.kozlowski@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B0136D1A9C

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


