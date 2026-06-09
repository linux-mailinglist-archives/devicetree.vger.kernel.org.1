Return-Path: <devicetree+bounces-308819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +HkAAavOJ2p02gIAu9opvQ
	(envelope-from <devicetree+bounces-308819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:28:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4BD65DC6E
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:28:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=fCWAgMYA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308819-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308819-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5DE4030BA98E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 08:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709273EEACB;
	Tue,  9 Jun 2026 08:18:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105603EE1DB
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 08:18:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780993137; cv=none; b=amiz3SDF49ztz9xtPKv2cnVV69t8EAbVqkHu0mSgVfLm/YWbJHnutTos3X36DxZKxa6lyaQQ51mumphG0LqKVbB9uzaTHiYb9JlnGITe0I/9Y0/zRe0tWaOc0+M7E2kB1iy7Qn/YYlAkqoSmClLFplZjo16ZcesGc1xO4sVW2ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780993137; c=relaxed/simple;
	bh=4/7xqhlg7fsTO36c9sQAAogQIKyQWEKJcViI8s2wyAU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bZYx/i+uudQKCXKL/PqZo7Ft0y9LGBM7jok7kKa4Qkf00UtUzK1bpgpviCcMB6WeHfOCOjYcahpTw9XqC29+eaDstA/vBVCw4XVIcXHGmtpKlEVN5oQ0I1eLtk/xzBi1RjFNkHQZbIaUvU7ot2zZdunDasfjWaIvUdHx4Zsi7ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fCWAgMYA; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-490b211ee6aso40465655e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 01:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780993134; x=1781597934; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kFTsAOv1hKm4xZTbT6xMW++1uFPeFFAKMUDBgYxH4Gw=;
        b=fCWAgMYAHN34l9Rl+XsZ/nkXSUllqS4gZv72NoebKTQvjWqSZfo1n1qMdlOdR4ihdu
         r0iJmuhP0wvhweAvLWgeZYLf8iUZLhrguyIyX7FSrLSR6jyzyA+QMNJ/AsWde2KyUsHL
         B4A8HEHTooo7hm7byJIymUkcztukBc+V95hiyfeikxces6i6vAKXP8agnXPdB1a7hhVB
         6hGKHA7RDBK2l9sN1rxPxOrikaXMi/l+t4Oj9TIjSbu9s/KoHPLN7wcsh3bbKT972sEr
         nJAm+yfCpoTfxAxtBveTK7/3UMYAUc/VmzW6wjRy2SQ0eUq55aeF9UkwGDiMX+7tZ/ti
         Rt9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780993134; x=1781597934;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFTsAOv1hKm4xZTbT6xMW++1uFPeFFAKMUDBgYxH4Gw=;
        b=sHMSkT2O1tdua/Q61bQDTgpnE5bBoPpl10xd/nAu3aD4mAWyj+TbJr3S0oukwLaANQ
         DEcBfmJDO9X2YZK8B6k+QefQR8e2+mFFKlJQ/UOaxYTkdqqesTwcDx3ZswTBhVLC2J93
         jfACOUnD/Hc4Q/V6OF89h7nTA63d9E1TAGWLUmncp37rTKMi5V545pJAFSkWfYGguoZE
         8dtr/KQxWNXq/P/PeEydfAlwTSVdyPqZZK9bmSrv5oDMEsAs8sGZ5hYAs427bkXEeigd
         eLdMjH7nt6UoYzSQ8RXSl/9SXfQ+d+2O3iD33HK+JhAXyAzXOgOB8VyjNCYMwz8ihkfp
         7nZQ==
X-Forwarded-Encrypted: i=1; AFNElJ8WwsToX9WvHJHZYdXM2OHGQp7/0r0KltaDP5UTa2OO8gKps37VeSyLya+BRUthWdmsq1tLcCAe7Nd2@vger.kernel.org
X-Gm-Message-State: AOJu0YzHPaTwpXhYLptd5t3tO6NRglzaFgOQUez8ss0bX5bgXvcFFORR
	dTCyUVvtHqnsrPGV24pqQKz2CsWUgqHd3ZSzKzEPKGKTmXJFJNXj8wj3
X-Gm-Gg: Acq92OEmD1nPpMCRmattVjIJHQy/S04hqjrKdbfRq8NAxVAAijDm9dTgXRW/o60zAFR
	pljOYW9lcKSbJQUF1MaIzf5jYT35cz4TXMFFbyAAuPI3Vx7Cj4Zs7rPI/vimsKkb+VPFxFVxMmF
	8QPb20icNMSsh0dXS9xx9sUywJFE/JbaG+W4k5R1N2mNcWp/YCbslC4izsZTpi/fpOM1juLisAD
	lDuv8afZXFUMTC85+dZBD4NdCE660NTab4ttKAVJeDPyZcXfi629Unb7BSCLx9ELUMVK90sdXFz
	cAQMAs53CH1JQcuLaGn9ZC8t1pdF58OKPtjq9MnBYyyH5zn+kpvzuZ2CGrEoa4uB0UGnZ30BMYV
	/frncsFzoqK7l8DgUJaieo2SFiojrUg9e7GjQ+C4Cp3bCZS8iFVFxslv7JIbh24Dd8d6u6TZpYV
	JkvJdUOyGbcOupuEiOlG9+mDnRLXTUUia2J9v0G6v2Os82ofBOUZuf1vX96U/F9IkMCpxurtyhi
	BBpnV5aguLnhEZTfF2bFYWSJYWU
X-Received: by 2002:a05:600c:34cb:b0:48e:6db3:ff3a with SMTP id 5b1f17b1804b1-490c25b09a2mr318781815e9.16.1780993134354;
        Tue, 09 Jun 2026 01:18:54 -0700 (PDT)
Received: from thinkpad-l14-ju.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490c2d60a7csm43053615e9.2.2026.06.09.01.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 01:18:53 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
	Quentin Schulz <quentin.schulz@cherry.de>
Cc: stable@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: fix emmc reset polarity on px30-cobra
Date: Tue,  9 Jun 2026 10:17:25 +0200
Message-ID: <20260609081728.30616-2-jakobunt@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308819-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:jakob.unterwurzacher@cherry.de,m:quentin.schulz@cherry.de,m:stable@vger.kernel.org,m:heiko.stuebner@cherry.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jakobunt@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakobunt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E4BD65DC6E

From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>

Technically, the reset signal is active low - it's called RST_n after all.

But it is ignored completely unless RST_n_FUNCTION=1 (byte 162 in extcsd)
is set in the emmc. It is 0 per default.

For emmcs that have RST_n_FUNCTION=1 we failed like this:

	[    3.074480] mmc1: Failed to initialize a non-removable card

With this change they work normally.

Cc: stable@vger.kernel.org
Fixes: bb510ddc9d3e ("arm64: dts: rockchip: add px30-cobra base dtsi and board variants")
Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
---
v2: Add correct "From: " line

 arch/arm64/boot/dts/rockchip/px30-cobra.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi b/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
index b7e669d8ba4d..90751b04f95c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
@@ -35,7 +35,7 @@ emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		pinctrl-0 = <&emmc_reset>;
 		pinctrl-names = "default";
-		reset-gpios = <&gpio1 RK_PB3 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio1 RK_PB3 GPIO_ACTIVE_LOW>;
 	};
 
 	gpio-leds {
-- 
2.47.3


