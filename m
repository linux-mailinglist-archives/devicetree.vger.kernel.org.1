Return-Path: <devicetree+bounces-307205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PugMH6huImqTXAEAu9opvQ
	(envelope-from <devicetree+bounces-307205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:37:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA9D6458F2
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:37:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=bwisa5g6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307205-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307205-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53A4D30AAB2D
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 06:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6BFC409125;
	Fri,  5 Jun 2026 06:29:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476CD409115
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 06:29:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780640964; cv=none; b=uJltQ3VmOVXjfX5/3gPWyIv2HSRhTNbOyQY+ItThXnshCiGVi7gD4iC3aGMngbkjSHqG2N5yGcZClKWnFy7wTuCEBeDfJRd1A6uHG4CzB2ffzx3vEBRysp3r0CqFgwy7AxdmW7FTSu9318XX+MXmS4jgDzQ5M5tTuF69Ws+sqZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780640964; c=relaxed/simple;
	bh=smK0LMyu8EXiOot7ocNTu7szAih1Fd4nfquSIb6ZAtE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XBN/7JKaslHvWLQPXfNzhQhxaDgvp8NmYFygw6tqOS3KnixlDQpaekt6nUvgTxU227Ni29PxxlDxQGj85utIDrMBonzLqPyKuT9MIC0hWXMyShYCeqBEihACZMNcvR1EFKLNSbzGvGbZdMK7fPtpd4eHB2fzwfcYAvV48o887TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=bwisa5g6; arc=none smtp.client-ip=209.85.221.44
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-45eeba68948so991797f8f.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 23:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780640962; x=1781245762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DRVbzjeKV1ymytOpSDZJEn1esg8I6P0sJ/LROeeCjqc=;
        b=bwisa5g660dw/PtapXv5CUWSueQOJkNiSGY8NIxH6cQGUktSEqERbtV247gXWh5k2M
         CHYCXEWgejSsx3ugPNETw7a5ewDD1OS0Orp2g0Kuyt8d2nT7rNALky3ks2RTdGvngwPU
         fSDrTfuZlRcCn+0nWcE4C4fSJefop3ylLN+mc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780640962; x=1781245762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DRVbzjeKV1ymytOpSDZJEn1esg8I6P0sJ/LROeeCjqc=;
        b=X76NPtTgrFolEk1VPM21tb34GXD8xDm2hdre6+Abu1JXfACsGrNaLAPjbigBY51Rd6
         CQBkAsNMABVTjjQZ1Z+8ty3SiiAZ/LP+V4q1LdonwF32/b9tuV68JYMEmpF4+TjuoAdH
         uMkNGcJ5ioLxCn7Pbhv7VDhZjInbEAsXwxgH37N5uCQlaslxaeVasCN0P7uf8PnEM+c5
         Qh3ZJerV1fU3xAvlrFN+NY/J5vKL6WsGnV5mLr3tLigjYiEvgrNaoBf+01Egh3SAcIT8
         DPl9YKxDRPPuXeq7mCXeNN8gaWU7aYtuvmJtsNC3joBHKP1fC2Ype1fLGcRGpn966HDP
         uuMw==
X-Forwarded-Encrypted: i=1; AFNElJ8FpEBYyuqViFxeXglefiIt858XbRMNGAb2gHsi4F8HxtI/xu4DsudSklGA3QALD1Loz/uvwWGPXpM+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpbv4GQfKm96e0vaE95KWT4HHRVgWXtIjk3rbEiJJEwuHLQSoY
	mcEf1pSdF1lITPkQ4uipBRWWhw7G9FRpVHFsyqPGYmkburN1Pd4U32kTETECZDObQ6M=
X-Gm-Gg: Acq92OGvHSoeHBdDPIdW+ji/eIFCK/IPHIFljHwF9s9FaAG+k74HnblkgkATiZb/LjK
	o1gY7I2pWkVCMUzEtCbO8ijcCw6CPqCzeT+NSM2CQG5fT5ST8rxN9HKcE7RkNracjOLp+l3zdmL
	cDcWn/JoUSyCQa5tjWbGQ3PbuAofI13da80aA3N5mj//lQHOnXuBI8MoDXpdY8NUUYzjETJvI/l
	KlovGPrIm5hEM9J7oSg+qzTExR+mfL0XKg1MP6QbBUx0rJ3r+zwgZX4w+SrXAXo7XHt7ueXkOif
	bMe/Y6R6RHzEGlpDhq4nWSy01CIglox5s8eU7BDBh8sZZs1axLTbDrY10um8NzoqVnk0vz0KCXA
	RWOv/ItTWFlw1gr7CpTNFxN5EDfSVUtzeToKYZHNNzzVhLXuWXNlpaF/Vd5dMcyC/iD7uMHb1Nt
	v3IHiCqq5KbwfKaxJM/hkjCFdl+sROf+uC1D3aMu/h74oAFWL9YKs9ERyq40MB3CQbjkXBQMOgG
	l8jalEMjkTFyvJPNrsSwwXSq+PdhOMz/fyxmUzJ2e3nDooU59JgnRyIZLdMij57OqRWHnbGKNse
	QD4ajMAkFvutbGt3+FTbX+duGJ75r3O+FOsXgKTzjA2xEg==
X-Received: by 2002:adf:fa89:0:b0:453:e3a1:6580 with SMTP id ffacd0b85a97d-46030501f74mr2325451f8f.25.1780640961700;
        Thu, 04 Jun 2026 23:29:21 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f344148sm23022648f8f.19.2026.06.04.23.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 23:29:21 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: domenico.acri@engicam.com,
	francesco.utel@engicam.com,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 08/14] arm64: dts: st: add sai1 pins for stm32mp25
Date: Fri,  5 Jun 2026 08:27:36 +0200
Message-ID: <20260605062900.368376-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605062900.368376-1-dario.binacchi@amarulasolutions.com>
References: <20260605062900.368376-1-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[engicam.com,amarulasolutions.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-307205-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:domenico.acri@engicam.com,m:francesco.utel@engicam.com,m:michael@amarulasolutions.com,m:linux-amarula@amarulasolutions.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:from_mime,amarulasolutions.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CFA9D6458F2

Add the sai1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index eab8ebe71660..ab1e62cf2bfc 100644
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


