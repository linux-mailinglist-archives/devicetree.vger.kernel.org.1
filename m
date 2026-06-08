Return-Path: <devicetree+bounces-308366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /cu4AADWJmrClQIAu9opvQ
	(envelope-from <devicetree+bounces-308366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:47:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4836F6577B4
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:47:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=WCVtvQ1q;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308366-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308366-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D6C3631B4891
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5F1B3DD51D;
	Mon,  8 Jun 2026 14:22:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681133DCD98
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:22:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780928567; cv=none; b=r2DPPXOZvR0SEob1UBCDPyOCx4N9ET+znMAXGv2qt90tIL4LNfLHLVuEtRybuuzYAXcQblej18kIwkHNTrALWaNSgLBCnYXOhc8szX3xHfC4l/oZNmcw6Xp+99XzzqpZ1+QrRZ6DdjWzH3+LW3ewQxp2qDH9S6pBru/UWu6S3PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780928567; c=relaxed/simple;
	bh=r/kQB8sryRY+hQAergbcUOGcrEeQF5gaq/+Enmzt9ng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pIaRzdUkamLzmO8KB/fiBXvqgpuFAZQGFJ8EC+oGz4dqCouVsZfOlSP0l+d+Nh6WTgwFxKuMZ/Qj3PF4haxvKx1oDVsn/Owuan40b8hnL2zY65ZGjERKNSjz5sKNYwRe044Vxkq7A2DlxTsmqpPZbP8h3JXPcviM8ZIfKchh4hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=WCVtvQ1q; arc=none smtp.client-ip=209.85.218.49
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-bf0170c80f7so719730466b.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780928565; x=1781533365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T9Lo43FKv0UzNv+DqheKNJ0v2vJAyWuHFwECjygzQOw=;
        b=WCVtvQ1qX5glrqgcP018iik4TApPi6yp9WxcI02mleqzyndqJHEtwEuxEJnKIAmawg
         Sgu8pPyXHP37moHp2SEnPc2gckHXJNeGSS8WMjuJJdEMdQH6N0Tig6K00Jxv7SRpjdXc
         VZOU/hq+FF6bbGC54yLShRx0k2XE7Ibzw4vqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780928565; x=1781533365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T9Lo43FKv0UzNv+DqheKNJ0v2vJAyWuHFwECjygzQOw=;
        b=k2CzdzV0KHNCe+2P2UlQjfFtBD2I0kIoxK3SOaHtc3aygtE+MEZPj1X7iDRUcI9TB4
         nNGTOEIdW+esBFCjztzZJ8PdbfLwaQ0HlhVhOiit6xlu9/0XxKENs011bg5B8I3wbWSF
         lgUoo1sb0qkJzAvZkdvTcW6SRJEpN8lgCqSHkpedjYxVa7Kc8ha6zNXjMzhsZvV0uqEz
         36GmRl0DUW9/1ofv3UOc+D9Kz2QNfMQlwKG+vLtsjTe713VivX5NYbKrDRJYZ/cx6BEI
         H6Y4sxhpy0JJaIJpdg+nF0lua2xE374oPVSJsIVIRmum6SHSzxtVpn5/HzFJiixa4Ztw
         56mg==
X-Forwarded-Encrypted: i=1; AFNElJ/HWpV7vOKF1abI4p3y1C0hu7gsDiW/2Q6MCQlbKWusSkdWVjWxxd5idxfvhPovoBIbQM2MgKH39BbA@vger.kernel.org
X-Gm-Message-State: AOJu0YzUQezzP6oBpu6cH3D+t/lsKUXNdzvj3WefyQc4PQCPJEeK/noC
	EyR3ieXuEatR5XavP8Glu6+jOhwKD1b8F9LkTqzPO17R9XGAhVeAhIF7IHjBWEUpE7g=
X-Gm-Gg: Acq92OEs3RKd1ypotPrvi97114m186PEmgsOcPWfw3odTG334Al54ByDi75UiDw9iyA
	T3WwghostRr4lsaIdibacJKZy5Ia8O4FtMUIRBZLaQMtG8iTeRdF15aWRvw2fv3vd3hLSgxGjvg
	C7jpYirt/8+58ex1aN+JT8yxQDvUJ2Oc6c8CRMzRM7Xdb8JCfWKgg+BKn9pCixHZcGFcGOW8juj
	04leFuI72BFelmoM2hiIYJ/fLXutNLmVmfze/9ITnCAjGexo5KhFAIH1c5No9xAsIXBsyIxuNd2
	WTt3cuyxUBvwx08pEbEh7uf1qvTffN3leITKqs+I7/tpawW14/xJYXph/AUhWP5y7S+v+Leuov9
	gv/9pv9mqJDr2/++bukGIFBvn7QuRo7uIDlhPxbqr5OORzdZE80mrPTuoUjpH7eg4LXzE8+S6pj
	u9ixbS31rh9LWuF1ds2rXrhFSBvZmR9icVmptmi09vDVKh944b0JIhNBUaiJ+VsweS+5S+NbH+R
	lZfmFxEAgL+bIXuOVKWbVCHxGnZACpXW+51dyiDKwtgXr6c70gChYoeZYg=
X-Received: by 2002:a17:907:3fa8:b0:beb:3783:ac7f with SMTP id a640c23a62f3a-bf373fece0dmr837923166b.46.1780928564745;
        Mon, 08 Jun 2026 07:22:44 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.42.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf055307a35sm881847066b.52.2026.06.08.07.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:22:44 -0700 (PDT)
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
Subject: [PATCH v5 10/16] arm64: dts: st: add sai1 pins for stm32mp25
Date: Mon,  8 Jun 2026 16:20:27 +0200
Message-ID: <20260608142221.952245-11-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-308366-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4836F6577B4

Add the sai1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 695c9d771853..002fbc724b9d 100644
--- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
@@ -520,6 +520,51 @@ pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	sai1a_pins_a: sai1a-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('D', 9, AF3)>, /* SAI1_SD_A */
+				 <STM32_PINMUX('D', 8, AF3)>, /* SAI1_FS_A */
+				 <STM32_PINMUX('D', 10, AF3)>; /* SAI1_SCK_A */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 11, AF3)>; /* SAI1_MCLK_A */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+	};
+
+	/omit-if-no-ref/
+	sai1a_sleep_pins_a: sai1a-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 9, ANALOG)>, /* SAI1_SD_A */
+				 <STM32_PINMUX('D', 8, ANALOG)>, /* SAI1_FS_A */
+				 <STM32_PINMUX('D', 10, ANALOG)>, /* SAI1_SCK_A */
+				 <STM32_PINMUX('D', 11, ANALOG)>; /* SAI1_MCLK_A */
+		};
+	};
+
+	/omit-if-no-ref/
+	sai1b_pins_a: sai1b-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 4, AF4)>; /* SAI1_SD_B */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	/omit-if-no-ref/
+	sai1b_sleep_pins_a: sai1b-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 4, ANALOG)>; /* SAI1_SD_B */
+		};
+	};
+
 	/omit-if-no-ref/
 	sdmmc1_b4_pins_a: sdmmc1-b4-0 {
 		pins1 {
-- 
2.43.0


