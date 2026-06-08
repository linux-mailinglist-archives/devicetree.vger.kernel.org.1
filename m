Return-Path: <devicetree+bounces-308359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5XYjCcrSJmqJlAIAu9opvQ
	(envelope-from <devicetree+bounces-308359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:33:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 738826573AD
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:33:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b="q/Dtoiny";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308359-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308359-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DD4E305A8A3
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97ED13D3001;
	Mon,  8 Jun 2026 14:22:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBC63D6CAB
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:22:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780928554; cv=none; b=pIMERf+Jbsr3Q8Ney0Chxe/OGQhmVPQipln01MUD9t9PTU4OQJ6dAZUHOOyAyDUZWbxSYGQ8BsBgFSnAQ9UIrpNfO/y9nc/3lQLzH3y/wAa7QzxXYs/Celyn9GWl7PhbXAEb1URoUKp7WiC1wt5twDo6E8+VZFpHNxESoxJMMHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780928554; c=relaxed/simple;
	bh=i8vxERIUKbwT7VhLVI5BvmAne1Y08dSoYEP9QfP44RA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kgAytCYNZNftemDWKYHfkrjOD5jrLXYKVLitVRC9x98rNdFsr1KS0paL2C6lP0IKXQhNiJQncFaPzynealOHAP0SsQRuaaSPlM+HJLynyAMH3FJ6tVTxkP24/qCdfg1HTk5Kr7N3zMzIhLSdg4XhPgmjR2BqnO4tSzPFcTC9wwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=q/Dtoiny; arc=none smtp.client-ip=209.85.218.51
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-bed19623d6eso545559066b.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780928552; x=1781533352; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8PatEQLdut9te2eHCPW8R4X5P453NImp5hCpKSvxqec=;
        b=q/DtoinyKVU7YFHawFi47ACGPmevRjIk/g+7qLVdureADNTdT/j/0B3qh65fLoi8jq
         UnqwfhvTvnt6oANtqbItHGH776/drJ4Xw1pCFEMhLbDmLMdKm5UNXrQjmyZyFLWv7Q/X
         Fg+1tTV642YyiZl9jZW9BVVtyK4pndSc09AvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780928552; x=1781533352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8PatEQLdut9te2eHCPW8R4X5P453NImp5hCpKSvxqec=;
        b=HVmz1FmlyxJtBcrlC7RItYfxvw7hB9nw7G9zEXNAlar2kRzaWGaf4LV9KW4x5Hlhkl
         PqGq+/JSzU9LKoje8gePsBkCDm0iT+kfAxYgDnB4/0hWZksawrv0Xp0X1kF+79LuOCjA
         n7slilRzxE9peh2/5fhW0zYQJ2BPYNRjF3w0mKIA+z0vSJJ0fCCIi/E5ES04LDyMXwSb
         LccXNTPUUQjno5KQFrrpWEN0455FX3v61jjJqOiUDkuzH0cPPfMtmW6TeLyabMZCYfCI
         tNJGstZcp5Q2oaNRe0CzueELuz5eEizl4fG9Z4XZFr7+rr9qR7l30q3L9pfV5G0DGayb
         2BzA==
X-Forwarded-Encrypted: i=1; AFNElJ9XmAWWp91gEFK2GwoW5JD1FvNUmxew9pTdJCMPclx/B75gukVwMp95wT56YWNVRKe/AnlAGL7JcSrP@vger.kernel.org
X-Gm-Message-State: AOJu0YxlXIhIAacfjUP6AUfLvlKXfW5GJpZfh+kZdqH8SAMK0tDOvv5V
	5eA6YBD1Vjmi0kbcSBd6Hj0/4aA7/Xl/kbOcTDAhAQQQaYGNerxMHLT3O5w5FA4bbvA=
X-Gm-Gg: Acq92OEtmmoSIQQzd+vd2tDiiEst9XTNpgdnmXV60Vf9gYJRpJcHpkezd6EO3qSiyeO
	JMZGJfuPIpKqgoC9AaWWQJOY7RhNd6i6P3m+zLgg7k0jabbKr5vcyZWCsOLDrUZtEP7wl1utppY
	l225C9LWyECwO653vghGGfcnO4HFJaFS/z+QWgW+5jgcQKFcY1cIIe8v38OuI3WQO7BufCfdynZ
	RETCut78Awnj+SB5VdbqgXOaPqbpEaDoUYKp2oHqtaXeaDGbZcpV6JkQ68Kj0dqH2Qr3iFOk7II
	u3ycAe9kQBM1AKgu4qnT2WzmHBMlUBAziDxDZDFSKC/9EgQMrbZMauY3Ms/9juxYyuET/bKKTCq
	wNxWYn7XaoKvx8L9R2oho0Qv3iIr08Bzqaou2xUrtmk1ZNuo3D3pF4ZIvTQd5rPmw6+IKG9yW6o
	GqXXTBVj+RlKd+dpTvwxzZ6zYGr+sWsE/n/a06zE2nFKTXb3H/45DopSRWchrnvkovZRze+JEyF
	BXWqE10WsSfajI2CXVVHHKwaM+ib5VSTJguflL8Iy/5HrTCFK3Oc5oVd5I=
X-Received: by 2002:a17:907:72d1:b0:bde:170:a0ef with SMTP id a640c23a62f3a-bf37234c5d9mr825860266b.27.1780928551592;
        Mon, 08 Jun 2026 07:22:31 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.42.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf055307a35sm881847066b.52.2026.06.08.07.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:22:31 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	domenico.acri@engicam.com,
	michael@amarulasolutions.com,
	francesco.utel@engicam.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v5 03/16] arm64: dts: st: add power-domains to sdmmc1 on stm32mp251
Date: Mon,  8 Jun 2026 16:20:20 +0200
Message-ID: <20260608142221.952245-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608142221.952245-1-dario.binacchi@amarulasolutions.com>
References: <20260608142221.952245-1-dario.binacchi@amarulasolutions.com>
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
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-308359-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:linux-amarula@amarulasolutions.com,m:domenico.acri@engicam.com,m:michael@amarulasolutions.com,m:francesco.utel@engicam.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 738826573AD

The sdmmc1 node was introduced early in the SoC bring-up before power
domains were systematically mapped. Add the missing power-domains
property to align it with the rest of the peripheral nodes.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v5:
- Added in version 5. Suggested by Sashiko.

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 673fbc5632e6..b3416c928c08 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1664,6 +1664,7 @@ sdmmc1: mmc@48220000 {
 				cap-mmc-highspeed;
 				max-frequency = <120000000>;
 				access-controllers = <&rifsc 76>;
+				power-domains = <&CLUSTER_PD>;
 				status = "disabled";
 			};
 
-- 
2.43.0


