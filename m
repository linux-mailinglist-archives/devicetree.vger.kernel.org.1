Return-Path: <devicetree+bounces-311320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RrwPJfJOLWogewQAu9opvQ
	(envelope-from <devicetree+bounces-311320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 14:37:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 057AA67E8C7
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 14:37:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=qEgLlTSD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311320-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311320-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F3ED3036721
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 12:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A163B3E559B;
	Sat, 13 Jun 2026 12:36:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5FB3E558F
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 12:36:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781354204; cv=none; b=QmvskgARj+1/Duydrqxet7ZulunnjCynnGQZE3TPzj9x0p0Ruxr53j1RrGM7L3lrfFmlzS3IePXCd+jIthFKL4nf+yk3/gS86zq8x/qSHZ0LsDExnU7sstbRZZZ2aUoa3EkPKJFC0tF4fgUYHDnQU785DsoQ2qMuwVtoEMz54ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781354204; c=relaxed/simple;
	bh=miTCy44j1JAsbaJrI3jZw0x5PRuDRN+dSbWd8toHM6M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TiSnMc6H2suEhatlIuM+6WX4ZeBSCFDTYJwR51DemivDopbWimlGmPrHI2EQaaeLejZhsJbNAL9F/ewmiC4JIbXUD7sJW8V/zWqUcRGmVPFPt3Dpzoltub8s0rI4QPBRgOr00+V2VIbXI5xZbasmSdI1Pk3GSeJ19gC8XnxIAN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qEgLlTSD; arc=none smtp.client-ip=74.125.82.176
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-30759632453so1193976eec.1
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 05:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781354202; x=1781959002; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oh7XZBRFNF3Q1qZUCiPu89RvrIopBJKwT1Tf5U0uHtM=;
        b=qEgLlTSDGotFWB9EojU+6rrGw5dsg5znJIDFRE0PQLaAL4AlVY7Jv1dskQ0yM1o6lg
         1CRNW6EnlwHkX/Q0qvpfuTVi650LcbekNt41lbtEnvluW5WIe/UmK9BQj+agXPnQnDEK
         1wjfup4tU35ncPV46EpuSdam1O7x8IOUQ6JTs4/HZMRtpsP/IKBFyMP0vdGeVY10b0Dy
         94HVposUzyh9YoxR+o4pPWgyZNzAGrhOLijjYYyXnAt0WmqwYlYR09IAw4iPZC/g0JVn
         ia/kBDTHQ0b5IvgkwgcugCO5KT2hD5p0XDeiEtOdWWD5496c2Tu1dSA3uszHfSAkJm1J
         N89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781354202; x=1781959002;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oh7XZBRFNF3Q1qZUCiPu89RvrIopBJKwT1Tf5U0uHtM=;
        b=Q+eatiE252kQhdw2ZnHTLV1ruAlbEszbQ120/VQ9x+nMNeX/RZazG5Y6n8SMyn2HlE
         o3Bg70YVRotexLaF/V98yzQvpf+GqyCuwOc8qaOEaH+tCh3GH7keomfcMcCRWyqsBWvP
         6ovLkbLKroPmtyoEUbtTQlhaCuHhB4Gumuod3U3zFre1UXn1KgbZ2Wnnij6X+5iUMTpN
         mxIpLvvd9cDNXzVBDwO9pgAGvWoHlTEkH1yocYpRQwQxYC2BrA0fVflPis2Yw1f0Cqi1
         i9KxqPvKN4/x0wqld3iCFzORNKiHsL8AJvbzEki6tkkMEFg32AqGQp0LTJ/VddlmLGuQ
         8Z5A==
X-Forwarded-Encrypted: i=1; AFNElJ9H5Jyn59QT+E7jXGbbVGLB0LozLRJUebMUSehNUy/sFsp+RjlSTB240+FNtXdumdBS0p49I8dpkXze@vger.kernel.org
X-Gm-Message-State: AOJu0YwjqmqbsSryCRgf6mq4VNRyIdDkaYeMfsc1wzPjPpAzGoflajji
	wRTi6+IQ7au6JGdTK9STgHdCHBkWpXJ1WrUucDmGiSqe8oF8GAPuZ1wY
X-Gm-Gg: Acq92OE49SMTszWfZYA5Ieb1Tc9UeS23788SER8TVzbXdpLIviL71tdi35m2zO0IoZE
	ClLB5fJcNh0SLDFPw0YRhc0X7vpO0dwUgfNVLTA0H6kAawtxon9vILi5ZqNTdenAIzgp8zI9kn1
	ky+PaVpSQeNXCZm/YPmroWLIAjChq57BxunWg0nxk+OocDdA2WuT94IS6SeicmJh+rG8buSwJcG
	hTpwz9lyEkgiP260dC2h7tILuqr1K7gGzbedAIW3KbtNxCR9rZSOASB2Rn1StOKMfa1xEc1uFER
	7mG4HtW0ZC5mcjhwtj6/dRd7ZoBVH6e/AoENEVST7+RhJBtYrp1wpHi8hr09EHsU0yVPZgMNy/v
	EXcaJLAZiODtkbIATX/S3cpwg+0xrAkBxDvIoNWIAsWWC55/yP1xrGLrjIgjXqJ8FyfMA00qTDN
	8WjDzfm7STgkignkrP+Ea316gM5Sz/GZg3Z166n2o=
X-Received: by 2002:a05:693c:2b01:b0:304:8366:9fb6 with SMTP id 5a478bee46e88-3081ff64a9amr3890172eec.2.1781354202552;
        Sat, 13 Jun 2026 05:36:42 -0700 (PDT)
Received: from [127.0.0.1] ([38.252.222.142])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081eb95450sm9176630eec.28.2026.06.13.05.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 05:36:42 -0700 (PDT)
From: Denzeel Oliva <wachiturroxd150@gmail.com>
Date: Sat, 13 Jun 2026 07:36:16 -0500
Subject: [PATCH v3 1/3] dt-bindings: clock: exynos990: Add
 CLK_GOUT_PERIS_TMU_SUB_PCLK
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260613-exynos990-peris-fix-v3-v3-1-2b230db78ae4@gmail.com>
References: <20260613-exynos990-peris-fix-v3-v3-0-2b230db78ae4@gmail.com>
In-Reply-To: <20260613-exynos990-peris-fix-v3-v3-0-2b230db78ae4@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Denzeel Oliva <wachiturroxd150@gmail.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781354194; l=704;
 i=wachiturroxd150@gmail.com; s=20250819; h=from:subject:message-id;
 bh=miTCy44j1JAsbaJrI3jZw0x5PRuDRN+dSbWd8toHM6M=;
 b=cGHudpsuDr4dmEXiqgk4rHAdC5Scnr9s5I+xmQapgQwg9WM2IKjiyONnen2h6xyEJzoB3fPXI
 P//x7ItggwFA7Zu3/Ft7OBNLTnVlO9mc14jJ56iS3njjJLozCLp5HjY
X-Developer-Key: i=wachiturroxd150@gmail.com; a=ed25519;
 pk=qNvcL0Ehm3chrW9jFA2JaPVgubN5mHH//uriMxR/DlI=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311320-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[wachiturroxd150@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:s.nawrocki@samsung.com,m:cw00.choi@samsung.com,m:peter.griffin@linaro.org,m:alim.akhtar@samsung.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:wachiturroxd150@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wachiturroxd150@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 057AA67E8C7

Add the missing TMU_SUB_PCLK clock ID for the Exynos990 PERIS CMU.

Signed-off-by: Denzeel Oliva <wachiturroxd150@gmail.com>
---
 include/dt-bindings/clock/samsung,exynos990.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/samsung,exynos990.h b/include/dt-bindings/clock/samsung,exynos990.h
index 47540307cb52..c06f591d9d90 100644
--- a/include/dt-bindings/clock/samsung,exynos990.h
+++ b/include/dt-bindings/clock/samsung,exynos990.h
@@ -434,5 +434,6 @@
 #define CLK_GOUT_PERIS_TMU_TOP_PCLK		17
 #define CLK_GOUT_PERIS_OTP_CON_BIRA_OSCCLK	18
 #define CLK_GOUT_PERIS_OTP_CON_TOP_OSCCLK	19
+#define CLK_GOUT_PERIS_TMU_SUB_PCLK		20
 
 #endif

-- 
2.54.0


