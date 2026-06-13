Return-Path: <devicetree+bounces-311216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xHr6Oa3oLGrFXQQAu9opvQ
	(envelope-from <devicetree+bounces-311216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 07:20:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C50BD67DBEF
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 07:20:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=iKXMCJsj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311216-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311216-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3C99D3014A91
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 05:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D9D03C2784;
	Sat, 13 Jun 2026 05:20:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABDF3C199B
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 05:20:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781328036; cv=none; b=P5vAwyOLIfVNQZ4dGrgxkvzFT+TDNpXe5klJahPsMbaXf4vXUiznb8+UsnZECkiidGRsNJbMbeo44gaE/fdfI7+3bs089rM/v29JcFIFVoRwNS+t+FDRUaqkhNVu/VyHwXy9/WNrbAS5wAoVdXlkiGSPsyAAVlu59hTkSlJ2Gxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781328036; c=relaxed/simple;
	bh=miTCy44j1JAsbaJrI3jZw0x5PRuDRN+dSbWd8toHM6M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qqMuTMvGj12ZUcEXrRgbHQdUwVFW3AlJwHCGEht0CFYn8K0n5yb+rRnB0RpzSfgYbHqyt2r0IrJdru42C5/yc35Qzvwgh1PYUOgcm6sIuOEVilU+sVHmAPf1gtl0zIn1XA7TdI5k0CFa1D2TWCGMkhKiR+6wuZ+bH3Yr8aP75lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iKXMCJsj; arc=none smtp.client-ip=209.85.221.176
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-59e2b96e3d3so1019602e0c.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 22:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781328033; x=1781932833; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oh7XZBRFNF3Q1qZUCiPu89RvrIopBJKwT1Tf5U0uHtM=;
        b=iKXMCJsjLHILUcNx/4bq4kEcAsZyJfsVl9Q+y/KTuevXdFFpADPZSrKj+GZVjAQoa7
         knOlOwFEUQKtbyMsGuLLXamVZlxN3vRN23HXhwfnZXhU2p+tFUP6310y+aoCBCIo8+4m
         0wvZycY4TQKD0HZnDmvI05xjb34nLIXHpipd112mzAcAMQx3xl+z+uF5I7i8yJEze8/F
         5SFP4d+TbRkZ345qTJssk+BEhJ9oVy0/sURdPy5afL3TMT4Y6BEdqKox/kAO23WndMxo
         PNK7G9c+Lt/bB51Jz7WJOOSKnPX7QeZne4Dxem/kbOzooHY9n2eeHX0QJqZyC1WNU8ok
         MypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781328033; x=1781932833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oh7XZBRFNF3Q1qZUCiPu89RvrIopBJKwT1Tf5U0uHtM=;
        b=LSJaKNo4eHtUzoFOYWpA93oSBNGi2evidibRus6RF//shSjyQ6wv//a+gQjHJcFqeD
         OYfxOZfYjAe4qDz5wCwtwXSiuySTdjHtg/ObmP8okyZARkSpL7O8Ek2kZaa7aEcYfncE
         O4vsNZZujhgV8P7y7+3A55QN/E0F+Z23GthSK+Fl3SD4m9l5x2y+fFKOdj2f6aTcixH2
         mposLe+Woo82SMNhRtWygnVIBM1V+/xxFlWSNjqZx9IHa0DT/42IO5wdV4ytRocuV7zr
         IX+DS2T1289gdj9IR1eljz0TZKpi3eu5yu5O92jf88ERvyIrJopoYMHmi5hjiDanXLgR
         m7lg==
X-Forwarded-Encrypted: i=1; AFNElJ/S+SbTqa7MATapZeoTOYe2/JXa5RnG/x2koXG8hafWf9OaRLriOgNtiuUfw5aidivC1L4boHkVMZ7X@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0n2gqPCiGsggDUPq3/whaNQxshZUm77XdKCxg1lCAIiFDrY3i
	j7UDIB2BljMxuX1aOkNkM8lB1fmos939YyKhb+EcQ8CyrG9ZF+Qyssj9
X-Gm-Gg: Acq92OFL952VChR0dHQ6zClKXzfsDO3JNLOribf85CGznjYgnOUgr//fN/K+jzkdNUV
	2voF9/h0UEwfn/8gzpg5vestKS2Z7GsL+FMznNYat1ah50PfaYwPxqpMd/g+Ce/7FRgloCH5DLa
	PCTo7HWsrrLONwFBy3/azyuayaZILxFlCmm2nEyMQskON4qMSBeJcMqWdSkTpLWlxdUI8TFZyep
	l17785YmnzdI89Okj9GaySHxURo9Xp66OipkpYoDPrWuHTMtW2PRDRuhKGdr/EAHeVXuyBKTFi/
	lDpzwCzrR4oYSqFbwpmKGL1zGhvqzKzenTVncA15GsO72aTHlES1LTvfJIAzjEkqoqJyAl5Cvin
	TC4hL8oCBITBf5T7GK6lTAZIQ8fpod6p9FcaJihKodkKKUDBdfpTYfVsRu38Ywr3qxJ5jb0QfDS
	kSFHcQwJrx/vK420HB6ZDVwGmSckF5iwSBeS7/0Wo=
X-Received: by 2002:a05:6122:c90:b0:56d:2ca7:fbc3 with SMTP id 71dfb90a1353d-5bb6c077aa7mr3940480e0c.5.1781328033130;
        Fri, 12 Jun 2026 22:20:33 -0700 (PDT)
Received: from [127.0.0.1] ([38.252.222.136])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bb69014308sm4848692e0c.7.2026.06.12.22.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 22:20:32 -0700 (PDT)
From: Denzeel Oliva <wachiturroxd150@gmail.com>
Date: Sat, 13 Jun 2026 00:19:51 -0500
Subject: [PATCH v2 1/2] dt-bindings: clock: exynos990: Add
 CLK_GOUT_PERIS_TMU_SUB_PCLK
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260613-exynos990-peris-fix-v2-v2-1-3dff7ade75b3@gmail.com>
References: <20260613-exynos990-peris-fix-v2-v2-0-3dff7ade75b3@gmail.com>
In-Reply-To: <20260613-exynos990-peris-fix-v2-v2-0-3dff7ade75b3@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781328021; l=704;
 i=wachiturroxd150@gmail.com; s=20250819; h=from:subject:message-id;
 bh=miTCy44j1JAsbaJrI3jZw0x5PRuDRN+dSbWd8toHM6M=;
 b=X/BI2YKdcMP3CkhiT3eTACS7wdsMXf/M0WGqng7um4bnMC6SnlomqHBfhN9Xl3HP24McjUzZ0
 YwRxI48IP6LCJz590QZQdK+bnFu9pnakOSW8Ptixa5+TeMbengQLGZ4
X-Developer-Key: i=wachiturroxd150@gmail.com; a=ed25519;
 pk=qNvcL0Ehm3chrW9jFA2JaPVgubN5mHH//uriMxR/DlI=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311216-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C50BD67DBEF

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


