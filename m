Return-Path: <devicetree+bounces-282167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NVWIS+RyWmUzQUAu9opvQ
	(envelope-from <devicetree+bounces-282167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 22:53:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5698354172
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 22:53:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82C47301AF62
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 20:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDF5C38838D;
	Sun, 29 Mar 2026 20:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ALVEAWZU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9B73876A9
	for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 20:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774817551; cv=none; b=NIJWikAp74spRc0mVRHcJSqZ/6IB3zYuQ+v6yPQZg4v6+3nmKZ/fmS/o4BTBQ7cwCzpmck71SpBAt7TgXadVm02eoyy1Y8dPRGE4evE1MOrZBlFPJuJVLfFZkBD0P6wEEix/3fyj/PSltRZZKwjtWioRB4SWP/EQ3U2NjlZ2AF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774817551; c=relaxed/simple;
	bh=7cmGYQcvmEc1xWQ0Rcmt3muQAX4wWu1F7S2wsgbG2e0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MM+hKuHO7/bETuy8v+TmBbF4lY5npXf1Yp3TMHvWA4IlkJ9X0ULIAalbM46x/A2vAQATFQP0sAmVIZIknAV987WFDejfCTLT5DIH1dE0NpWaCfbsK+iLDbo4F7QFFoq/94HlJYi/7DrmZ07lg7m2h0fHLXKvtskhwj25CXvAEEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ALVEAWZU; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-35c124d2613so2482194a91.2
        for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 13:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774817550; x=1775422350; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jRcoZ1iR+Zft8TDDmCol/NQjdrUX/469MdzYJEtnt0k=;
        b=ALVEAWZUvg0qWt3d5MEDWdXCwREiPg7e8wbpycvWkPxwCasTORSncd2nop35UDu/Nt
         rYbm8QXl15ssmaiBMHRBYLVLH1AFTuhvqdR9rvZroVBakICIEnvqtm/cM20s7zMF9fTm
         3SeAph1WeFj7dcrAzkrfElCDNdOnTmJBA6u3geyxM/7D3FYiBM4FmeDOKLAWK+FvuJ0f
         WSV5XkMSw6tDyxeXdVf8GQFc6ksZymTRR7zVvH6FDx34OjNMFexJC+wvJInIj4rlKYux
         jghToxK1qcDOvSR9yztFpk3MnwIBkHUnjfy6Nusw5OduMq2AukXqzcJCWBtx6Eg16Doe
         rzFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774817550; x=1775422350;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jRcoZ1iR+Zft8TDDmCol/NQjdrUX/469MdzYJEtnt0k=;
        b=aS7UW5n2BRU46yX3+08e0N2FkI8JKUzMhWml9gEMA7nNI7+9f6Iv/zaemzR/MwT+NZ
         iMcEdJWkgbEfqwwZtrnIlxX/fyOgKdgev3fd7ZhPH6tiHk4rB1q6J8EChnBrl9pP3xvy
         TW2KvlTolEIULyxr5ecY1A83eaSQOMveCgI7+oMD3LPpkCblOKkTANbSBoKEfCi90aWe
         SztGFmUuh97brr0dwOT2VeW4LDnhLNyl8pFkOUzvRUB/0BAJfA/JU+qijLFaI5DU11Zm
         bv4ZaJmIFoictJWZSwjZhjmscr5BbyVINWqs7L9FG/vvW1X0XqycZ2BOKFpDZ5PhDPun
         rsyA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ3xwmxHqkWNTkEPEHzeC+bOwwo3psjBb09bxhxJvp+/NcnLZrrTL2Lqsz6WWhtXQCvPv1KjJft5Rx@vger.kernel.org
X-Gm-Message-State: AOJu0YxxjHMeP+MWYvSd4np3zVbRHgas/shLikPC2liY05bxspVv04Rt
	JRKAQYP2MIfWDGYQfoWm4z1slLnH0WPErj9cLQlt5W1p58E3/osNloDV
X-Gm-Gg: ATEYQzxOatS6xZ8J1tTQAac/0Xyo9aDo5mi5bb7o3fvuiEOzt2XOYVTKFMkWVfS3zCL
	CcmvC6Z1q/xDiFrD96IrOYyaI1pkDGx63t9pc+gSi9UA6s62dwEhM1syzQdFYbniKc5+PTx7FaV
	nS0k/BIYmgk21+WPOf0Yt6A31NJiykO5fwykImr+2pC9AWD99n0H1KvZs7Z7dW6YHPq4Wdxu8/t
	bNEr46D6q4VJGDc5anCl/8QDvcllNYNchk4eBePyb5H4OM4ikYEnD7PCiYzUJyZxF9S11nLvP+2
	0Q9V15Q6odzFy7OOzk0iah5iu4htHdX2SqJDeNYL0NuA91w4AcN82AnYF33mq6n7NX6KDkbJ7V9
	rAYtGt2OCmMifkUvIkGZDaZ4bhj9+WOuI7InBS/bzVlbpYGvROSqhHLiQl4Oswj2uZssTWB9siM
	VOKwf0Ti7Xy8gGXQoV9iR9+ojXO1gW
X-Received: by 2002:a17:90a:158f:b0:35c:30a8:327 with SMTP id 98e67ed59e1d1-35c30a809demr6408184a91.0.1774817549987;
        Sun, 29 Mar 2026 13:52:29 -0700 (PDT)
Received: from snowman ([2401:4900:646d:9af6:7748:701:6c70:4173])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35c22d8c500sm10423412a91.10.2026.03.29.13.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 13:52:29 -0700 (PDT)
From: Khushal Chitturi <khushalchitturi@gmail.com>
To: sre@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulli.kroll@googlemail.com,
	linusw@kernel.org
Cc: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	d-gole@ti.com,
	m-chawdhry@ti.com,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Khushal Chitturi <khushalchitturi@gmail.com>
Subject: [PATCH v2 2/2] ARM: dts: gemini: Rename power controller node to gemini-poweroff
Date: Mon, 30 Mar 2026 02:21:51 +0530
Message-ID: <20260329205151.15161-3-khushalchitturi@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260329205151.15161-1-khushalchitturi@gmail.com>
References: <20260329205151.15161-1-khushalchitturi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282167-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[nxp.com,ti.com,vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[kernel.org,googlemail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khushalchitturi@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.220.108.0:email,4b000000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E5698354172
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Update the node name for the Cortina Gemini power controller from
power-controller to gemini-poweroff since node "power controller" is
reserved for power domain controller.

Signed-off-by: Khushal Chitturi <khushalchitturi@gmail.com>
---
 arch/arm/boot/dts/gemini/gemini.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/gemini/gemini.dtsi b/arch/arm/boot/dts/gemini/gemini.dtsi
index befe322bd7de..c524adadcf81 100644
--- a/arch/arm/boot/dts/gemini/gemini.dtsi
+++ b/arch/arm/boot/dts/gemini/gemini.dtsi
@@ -228,7 +228,7 @@ intcon: interrupt-controller@48000000 {
 			#interrupt-cells = <2>;
 		};
 
-		power-controller@4b000000 {
+		gemini-poweroff@4b000000 {
 			compatible = "cortina,gemini-power-controller";
 			reg = <0x4b000000 0x100>;
 			interrupts = <26 IRQ_TYPE_EDGE_RISING>;
-- 
2.53.0


