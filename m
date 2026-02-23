Return-Path: <devicetree+bounces-267506-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8F9FEOV1nGmwHwQAu9opvQ
	(envelope-from <devicetree+bounces-267506-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:44:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 937B5178F49
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:44:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28F923167045
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91FF92FE591;
	Mon, 23 Feb 2026 15:40:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56A02EFDAF;
	Mon, 23 Feb 2026 15:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771861250; cv=none; b=TG3EkUctgORjSHFpHbFBS5p6u7OGdXuN4N/srY68sa315p4M1+e4Borp8E+GG9pz21Ue/LXeySIXDnukUtW/E4jrdumE5IX5MKeKGqRIJTyRAFFT2gzFOSzahu+BufLKme0e+yvIg8RoJ9D7uO5ofJmnJHaN/d0je4Vsq9kOvDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771861250; c=relaxed/simple;
	bh=oERAn/f7FE/Y4BZUdYVrLUwwtTaAz3aZ3OFnsEZHQe8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=blYefHmy94uod+F3Vex8o1JSk+1PyUSjaPc+mpqlZrt3rELlUlVONYIcPPl7s7zfBndv1/S0Vpf1q15KFVRG6QiGFpk2vDirxtlJglh4IHtBrtKRqPCeMlnWcKCtxpWTLrEb0EL64lnhM2WZTpkPdRxzUrW06C7+1xR0BbNgR9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timmermann.space; spf=pass smtp.mailfrom=timmermann.space; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timmermann.space
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timmermann.space
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fKQ6b2p6Bz9v9f;
	Mon, 23 Feb 2026 16:40:39 +0100 (CET)
From: Lukas Timmermann <linux@timmermann.space>
Date: Mon, 23 Feb 2026 16:40:26 +0100
Subject: [PATCH RESEND v4 1/3] dt-bindings: ARM: samsung: Add Google Manta
 (Nexus 10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-lat3st-staging-v4-1-219638defb01@timmermann.space>
References: <20260223-lat3st-staging-v4-0-219638defb01@timmermann.space>
In-Reply-To: <20260223-lat3st-staging-v4-0-219638defb01@timmermann.space>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Lukas Timmermann <linux@timmermann.space>, 
 Alexandre Marquet <tb@a-marquet.fr>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267506-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[timmermann.space];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@timmermann.space,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.968];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 937B5178F49
X-Rspamd-Action: no action

From: Alexandre Marquet <tb@a-marquet.fr>

Add the Google Nexus 10 board to documentation.

Signed-off-by: Alexandre Marquet <tb@a-marquet.fr>
Signed-off-by: Lukas Timmermann <linux@timmermann.space>
---
 Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index f8e20e602c20..13d97257f070 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -117,6 +117,7 @@ properties:
       - description: Exynos5250 based boards
         items:
           - enum:
+              - google,manta                    # Google Manta (Nexus 10)
               - google,snow-rev5                # Google Snow Rev 5+
               - google,spring                   # Google Spring
               - insignal,arndale                # Insignal Arndale

-- 
2.53.0


