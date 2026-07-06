Return-Path: <devicetree+bounces-321540-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KgrhHsQJTGrLfAEAu9opvQ
	(envelope-from <devicetree+bounces-321540-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:02:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C657153E3
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:02:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=aD5mxmbU;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321540-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321540-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47CF6305F3FC
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 20:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CB83DB994;
	Mon,  6 Jul 2026 19:59:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E203DA7DF
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 19:59:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783367984; cv=none; b=lDLyFNeG3XaXgTDTS7O50dYsekRWaTJbu84Nmsm1xlR+EmQKwHAxmwabzjoAdn59M3Uu+16wEaqf+O+XT6/OHV0s9yE9ZwpkAZDLTA2oWHZA8eJ3RovUJ2Kq3+tzeTwMjs0c8G0gZgJWz7ybCZxBh+Nw6dXqwtA4MjWQKWeOcv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783367984; c=relaxed/simple;
	bh=OVH51qzEIe3wtI9H12QfejWrtlsvqUxmDKvM531GD9U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CcD67CSalScMQrcujuxcupUzzirPHLy2nCyOnSbQT56vzeIC0qZK4VnMmOT4/ByCtMnwtLbeM/a6OomZ9Ie+qyw2im6Z/bw3WtaJ64G/mnUI1N3yL7mP6jwnEtj7c9v61gcip5Ow4VX2vOwirpGi4d7N+Ntajh80IgKFml53TCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aD5mxmbU; arc=none smtp.client-ip=209.85.210.48
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7ea9c6ea7deso2560953a34.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 12:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367978; x=1783972778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUPjVrLwJsJVzn4Q29xfovXMjcBST4SjV69WBu8CmHY=;
        b=aD5mxmbUYhYVJjyHxbEaaox5A3OJCb8HRv1eZhb46GBGIW24pVf59a2LEFvzG+WEmg
         SmnbfA2f/rXQbx3tLcRJ60ZbhJtq56d71QrkSJqnUSIj48cHaqjcyXqqOgKNmgtmh4+q
         dx8wd0lbNto5ZLrBH75SW8S4fvGTKmXPyK75s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367978; x=1783972778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uUPjVrLwJsJVzn4Q29xfovXMjcBST4SjV69WBu8CmHY=;
        b=pongnpHCc9YRL80kQGl7m63gr1BYIj35lfHeRrA4N6hrQdu/B28GmOFrKe0XAE8bfd
         nGnKsPfKHKXIsPnCNNmKtpQrlLuHThNKDeWZh3jhzezsu3/c46acf6Y/7KGbgMLTHMSC
         Ol4KOxxPbFQuf0Sbpf3ShU9UqExvfCcWc6/TnvLe0Uvdho1cZeVmUZ7Z5berqpnQO4Hf
         DfJ80SFlg+4Tuz2dVzqSUEuF3EU3DPLYl0UcKcWwtvwUi1K08yy73vIYSYYKvzu5T6gd
         TtMKphlfClLNwwKMN4IMnmpp4JCT4dSBzVDVdONtgR2tIFV7KXf76g4xF6O+ZjnzQ2jb
         P4/Q==
X-Forwarded-Encrypted: i=1; AFNElJ/sHzhUO+ksfC27icytmNGvV9deECHWaI4aUFJUXJrfA1y8B+z6Y9zb8cP474D/XyUizZJsMROGDG9S@vger.kernel.org
X-Gm-Message-State: AOJu0YwhE4Qqv45NbjpFjEQKDD2O5aEyxc2fV02TsqGJUhQaGJxlBVsa
	p2uHrsov6K1yjaBgmjhTPQFR/PYCuUwqGFrNIJUbjWIV2W5GE8sCEg0ZU0EAmnzqyw==
X-Gm-Gg: AfdE7ckSTV0jsGSM0uH0+k31c8olZwnA83GIjzpUi0CjVCmVuA18TvYA0OQP0qbhyUj
	6F2Q+cPt2ftoxyNf/wQt4G2tCNpjJWjdQfU9n/9tIDxXWLSW63SGEAIK27AMxzy00W+wuV/NKci
	OQ5ElWKfwpIn97JQCIXsXxCATxCxNhhW0jWfZjufvY7G+C/ybUbwa4Gw5FBnNcKYt1n4IbJlUsX
	c/0o2Mz1trdjHVyuns/BuYCPVxzthFmPIMSjj8rq6lA+lY3Kdnba8iDqAImaxxJmfGkelIBu42/
	aasEw3LoLBUK3TCcIQxB7oQqo2/9xpf9ap1Wgxxn6YhbSzs0FXxTRTtZOzPAvXRgLQ2bOkJEIWA
	2+8aWMHmLnoD5YDi5olu/GyU2zKFP89IFm4843ahi/6951RA7yfKqM54vH5wcAUvZUpJQ3aU8Ns
	LGFRlzyo8=
X-Received: by 2002:a05:6830:82e8:b0:7d7:58b0:7685 with SMTP id 46e09a7af769-7ebb22cee36mr1427105a34.13.1783367977773;
        Mon, 06 Jul 2026 12:59:37 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:37 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Rob Herring <robh@kernel.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/12] dt-bindings: arm: rockchip: Add Luckfox Pico Mini B
Date: Mon,  6 Jul 2026 13:58:07 -0600
Message-ID: <20260706195818.3906949-12-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
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
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sjg@chromium.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-321540-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:festevam@nabladev.com,m:linux-arm-kernel@lists.infradead.org,m:sjg@chromium.org,m:albert.u.boot@aribaud.net,m:amadeus@jmu.edu.cn,m:conor+dt@kernel.org,m:naoki@radxa.com,m:jeffy.chen@rock-chips.com,m:jonas@kwiboo.se,m:krzk+dt@kernel.org,m:michael.opdenacker@rootcommit.com,m:robh@kernel.org,m:hl@rock-chips.com,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,chromium.org:from_mime,chromium.org:email,chromium.org:mid,chromium.org:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 37C657153E3

Add the compatible for the Luckfox Pico Mini B, a small board using
the Rockchip RV1103 with 64MB of in-package DDR2 and a 128MB SPI NAND.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..711029ee78af 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,11 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Luckfox Pico Mini B
+        items:
+          - const: luckfox,pico-mini-b
+          - const: rockchip,rv1103
+
       - description: Onion Omega4 Evaluation board
         items:
           - const: onion,omega4-evb
-- 
2.43.0


