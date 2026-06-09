Return-Path: <devicetree+bounces-309287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /AhKNtVjKGq5DAMAu9opvQ
	(envelope-from <devicetree+bounces-309287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:04:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6635E663819
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:04:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=mGBr7DRt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309287-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309287-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 894C630DC54E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 18:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 156564D8DAE;
	Tue,  9 Jun 2026 18:58:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD554C957B
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 18:57:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781031482; cv=none; b=LEgSP334knznbEvk85nN9lZiiNoqMmmTkhcWfqTkbHWvDbHP7Zha+mnUemCFxPPJypCCI2IgVlC8rh/c2397ivT7rBYIaRMv2Q3NIItlt5O7JSK8moytV5QWgNSOOPQCj8qHL4RvtjLyhnma9J7i9PG5nYq+Vf3Dsz31APJIDBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781031482; c=relaxed/simple;
	bh=Va2zbEz9TKLMhjd4+lKIbcWm/Y3rt8hiIFx5KPgP0CI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PncnqGPMCkqNlxUUhKxyZkg3CW7rZj8Moae4YeqbJVLw7c4JhM5r8smkz4psrP+ArG6PboLjDaHxgYP/lJBHUAwwXo0x7wT6RmxdDddOFqsYoApKmAIj+km3BDLXYMN0mHgpsxJ+IyBZEUP0yU+fLeX4qN+ZCyrEt94JThmuzjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=mGBr7DRt; arc=none smtp.client-ip=209.85.128.47
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-490cf3000f0so31513145e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 11:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781031474; x=1781636274; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PIGyw55gr+o/mTTrd5VtOCBTeJy77S+WAVT74ILfpWo=;
        b=mGBr7DRtI4nH8VaHM4S5z6RlDbTAiJc/xJJVSGzQzPiD2zE+vtI+S8XfdJvSV9A8gP
         hfwt6nxYsgZNw1s43J/7nQbHhM1LSmj9dVSdQx5Dm6ux7SrXrEJo93bW47xYeTswJgFu
         i9JENnSdknOIaTVWH1VvV6UU9QNXLhNLuzYOfFO5ssG4lxqrmXIJGFDHC7jU4VDa8vki
         0voxZQnqBc/A/hh0XZvXb3G3LE2wdGk4qiVF/ZsN5mtcicEwUKNcp2dDfDp9agKV6ukW
         CyAP8J32wDvxgSCVyoe6HkRtuHm5wea8u1pqwWihQTZNTt0P4Go2tUt+ImLanDTGLhzx
         ZL8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781031474; x=1781636274;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PIGyw55gr+o/mTTrd5VtOCBTeJy77S+WAVT74ILfpWo=;
        b=MoQWwvwIr7yW030HhmgPo1WQ71oXhIwqzKiNtPgVHbTMM+YODXytdo9jqbY6t6Zmc9
         tkarxOzffJqgBUafk6jZw4PYLYloVkhKqyPr7Q9jKc/pnUP2IwHIvA70/BhX7K1m83ip
         Al7/yMfMnK7TXm2cOB2c4+NAO3UOUhy0taxkf7m0YkcvVn2EsMP/U/N0zuC5kBNiwLUm
         FLHdh95lLFgzN3e2BQ9uAR51NWAwCVrhXnyx9CypwCCltil0Iw/WPpZ8ZWTmLN9n2dtv
         pObwfR9PIWJSRDt5XiutcsJ+dKaW4dnthUo8WioHznddNTPMqYb0kc/10/hDjLydUIm8
         5iRg==
X-Forwarded-Encrypted: i=1; AFNElJ8nCsRxymkdOrLoC3BGipEySZ4suhT34cbFWl9dyb0nCsqFMCwOfZ/2R+CC4QlNV5qZz+I5k4BPLWSl@vger.kernel.org
X-Gm-Message-State: AOJu0YwfzUbUzY0geqyWJNvY8ra59y2akENcNXPJJJkPdk1SUrvIu1gc
	3ojdg5iySPSG4O7wH6RdGoIzZNwPr3HuHY5fqlKkQoikQnefeEIghfcBNe3mErb0QDA=
X-Gm-Gg: Acq92OGSO+GFIsEixiTyXXX4o5jClccBW4BexLrpXloN54AEXnjmZpWpH5u+61tmEbo
	c/aq/LE9A23yB78nvjI5A1NKlZ80lkDvj6RDN9ifGJzjZZEKC0VsV+QUEd3Epr9PWyDHeTX6JLN
	wBeAuqWJ/OYJflqGDdqgaOeO11qWIBnAf0sEO0U2GVXdyXslKz8S6nx4Tjqda5o6IT+4xRx8AD6
	SUrJXwioS6c3h+rfX2XVNxoYYXfkotjIxfsbOOj65KAjt2nLNUWd0nylfvfy+t2Wj7RqtfBX1wY
	dl2CqaNeqiEfabd8/kZ8zvP5JPwwX5QYLjbM/xgmUUEYDxS4va1W0ksmOx/9R9IayPiSSmVPSM2
	50CTImCQsHPlcpGIpOMZKGBTwUinmDJg0vb01Ykth46qvXIkq5V14OQOHG4hbmbT7aR5924v0z4
	wLDLRl8H+FjOdGJyLeL9jdaHU80LoNvXA=
X-Received: by 2002:a05:600c:1c1e:b0:490:bccf:2bd6 with SMTP id 5b1f17b1804b1-490c25f1143mr382617355e9.15.1781031474062;
        Tue, 09 Jun 2026 11:57:54 -0700 (PDT)
Received: from localhost ([2001:4091:a245:857c:bd97:47c2:83e4:8d45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f351d69sm115761801f8f.29.2026.06.09.11.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 11:57:53 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Tue, 09 Jun 2026 20:56:18 +0200
Subject: [PATCH v6 06/11] arm64: dts: ti: var-som-am62p: Fix wkup R5F
 memory region size
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260609-topic-am62a-ioddr-dt-v6-19-v6-6-16afba97fbe0@baylibre.com>
References: <20260609-topic-am62a-ioddr-dt-v6-19-v6-0-16afba97fbe0@baylibre.com>
In-Reply-To: <20260609-topic-am62a-ioddr-dt-v6-19-v6-0-16afba97fbe0@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
 Judith Mendez <jm@ti.com>, Daniel Schultz <d.schultz@phytec.de>, 
 Andrew Davis <afd@ti.com>, Siddharth Vadapalli <s-vadapalli@ti.com>, 
 Paresh Bhagat <p-bhagat@ti.com>, Bryan Brattlof <bb@ti.com>, 
 Jai Luthra <jai.luthra@ideasonboard.com>, Devarsh Thakkar <devarsht@ti.com>, 
 Beleswar Padhi <b-padhi@ti.com>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 llvm@lists.linux.dev, Hari Nagalla <hnagalla@ti.com>, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1531; i=msp@baylibre.com;
 h=from:subject:message-id; bh=Va2zbEz9TKLMhjd4+lKIbcWm/Y3rt8hiIFx5KPgP0CI=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhiyNxD+T9tTsEbg7Y6urV7CpdvWjU3Pe8W2e9Xyx5+tiu
 YyW4+WFHaUsDGJcDLJiiiydiaFp/+V3HktetGwzzBxWJpAhDFycAjCRR+sZ/jsz9Z2pSSv/6Sex
 r7n7vfbaMO9nf/UPb2Zue7Zr7s1n3ssYGTb5l14W/Pf0r/JL7s5DAe8USk0tbrjtVVVXCb99u7x
 hOwsA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:jm@ti.com,m:d.schultz@phytec.de,m:afd@ti.com,m:s-vadapalli@ti.com,m:p-bhagat@ti.com,m:bb@ti.com,m:jai.luthra@ideasonboard.com,m:devarsht@ti.com,m:b-padhi@ti.com,m:francesco.dolcini@toradex.com,m:stefano.radaelli21@gmail.com,m:vishalm@ti.com,m:khilman@baylibre.com,m:sebin.francis@ti.com,m:k-willis@ti.com,m:a-kaur@ti.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:llvm@lists.linux.dev,m:hnagalla@ti.com,m:msp@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,m:nickdesaulniers@gmail.com,m:stefanoradaelli21@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[ti.com,kernel.org,gmail.com,google.com,phytec.de,ideasonboard.com,toradex.com];
	FORGED_SENDER(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[32];
	TAGGED_FROM(0.00)[bounces-309287-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,lkml];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:email,baylibre.com:mid,baylibre.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6635E663819

The wkup_r5fss0_core0_memory_region was reserved with only
0x0f00000 but the MCU SDK linker for the wkup R5F firmware on
AM62P defines the DM code/data DDR footprint differently:

    /* DDR for DM R5F code/data [ size 27 MiB + 396 KB ] */
    DDR                         : ORIGIN = 0x9CAA5000 LENGTH = 0x1B63000

which results in an end at 0x9e608000. For this memory region which
starts at 0x9c900000 this means a length of:

    0x9e608000 - 0x9c900000 = 0x1d08000

Link: https://github.com/TexasInstruments/mcupsdk-core-k3/blob/k3_main/examples/drivers/ipc/ipc_rpmsg_echo_linux/am62px-sk/wkup-r5fss0-0_freertos/ti-arm-clang/linker.cmd
Fixes: 571562e76458 ("arm64: dts: ti: Add support for Variscite VAR-SOM-AM62P")
Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
index fc5a3942cde001ce33fa295f68a3850b622cac7d..1408c970f1942e8a720c9cf071b2f49eafa9db5e 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
@@ -71,7 +71,7 @@ wkup_r5fss0_core0_dma_memory_region: r5f-dma-memory@9c800000 {
 
 		wkup_r5fss0_core0_memory_region: r5f-memory@9c900000 {
 			compatible = "shared-dma-pool";
-			reg = <0x00 0x9c900000 0x00 0x01e00000>;
+			reg = <0x00 0x9c900000 0x00 0x01d08000>;
 			no-map;
 		};
 

-- 
2.53.0


