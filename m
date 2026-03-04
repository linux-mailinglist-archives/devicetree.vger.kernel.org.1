Return-Path: <devicetree+bounces-271185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGwrCslsqGn9uQAAu9opvQ
	(envelope-from <devicetree+bounces-271185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:32:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B17E020531F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:32:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3DE50309F47E
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B7C23B8D7C;
	Wed,  4 Mar 2026 17:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="WZG7LY3w"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2803B52ED;
	Wed,  4 Mar 2026 17:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772645231; cv=none; b=PBXaMRl7GUJGp2QDi9Nl00pPV3pTn+3XaLKykv4ewdcWw+EYwFVMcMGVN3fTNdr77nPA2iK+T/vdGumsZUE37JN1P2nMjjqNGS5rAJFSOMGL9N5h2r94DthkpUJeNupm10tgD5uFVL2KhwFrHkusAy0Y5axxMTLxFtvjnyNOotE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772645231; c=relaxed/simple;
	bh=JitPJO6qRhqiQ0FcIglKO+7Hb0B7tpTsAylIXoKIL80=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m52rZg6LUozh2ZpiIrcyfNeTCp7U0cIfboCN/jWToW1IgYTMgCILHncY0ETB6dLbeNhgatgG3yLk2wN7AEdydJ6UxZdflqAXW/HobZET+BMmtCi+iuggMUgMv+zLEVVOBKQX6OBzUkUavByEDvtjPHu3cSfkACiPxLzgK0AcuWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=WZG7LY3w; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 4E8B6268F8;
	Wed,  4 Mar 2026 18:27:05 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UBoQkjxIt4F3; Wed,  4 Mar 2026 18:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1772645224; bh=JitPJO6qRhqiQ0FcIglKO+7Hb0B7tpTsAylIXoKIL80=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=WZG7LY3w1Oy0hYtEFaNMLM+9tzS+PSZQeR44NgHfh9Cd07Qw+q2t+SCAZh+ZVU527
	 6keGUdPx49rH8LbU333AAZfJrZOkEADXfw7t6lrI4TeWNen5sTVDAqlJt8jaBdXrmz
	 +m3AdY+qAFFlUhCj1PDWeVV14YKaIUw8HkKWRbEp/pGBM21zaq6WesvMJInR74DIEI
	 JeQIRdvkUyJOkLo86KOWcIr6yJ1PK2NU1yUu9kyjtaLrMm5jEugxyA5r5lZ0FjF02B
	 eJXM+YqnzIIqB/0xPmWDe8n94IZeOWoPMxKhk5I6tjpgSXmapUdkWuFQ8AaGTzZ61C
	 UcHYjr8keQfxA==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Date: Wed, 04 Mar 2026 22:56:53 +0530
Subject: [PATCH 1/2] dt-bindings: arm: samsung: add compatible for
 samsung-j5y17lte
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-exynos7870-j5y17lte-v1-1-eb25902c84c8@disroot.org>
References: <20260304-exynos7870-j5y17lte-v1-0-eb25902c84c8@disroot.org>
In-Reply-To: <20260304-exynos7870-j5y17lte-v1-0-eb25902c84c8@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
 Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 Andras Sebok <sebokandris2009@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
X-Rspamd-Queue-Id: B17E020531F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271185-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,intel.com,igalia.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kauschluss@disroot.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[disroot.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:dkim,disroot.org:email,disroot.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Document board compatible for samsung-j5y17lte (exynos7870)

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
 Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index 3c18c15598ce1..753b3ba1b607d 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -217,6 +217,7 @@ properties:
         items:
           - enum:
               - samsung,a2corelte               # Samsung Galaxy A2 Core
+              - samsung,j5y17lte                # Samsung Galaxy J5 (2017)
               - samsung,j6lte                   # Samsung Galaxy J6
               - samsung,j7xelte                 # Samsung Galaxy J7 (2016)
               - samsung,on7xelte                # Samsung Galaxy J7 Prime

-- 
2.53.0


