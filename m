Return-Path: <devicetree+bounces-307199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GVwABGNuImqBXAEAu9opvQ
	(envelope-from <devicetree+bounces-307199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:36:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C0D6458D5
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:36:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b="qWBV/Zhz";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307199-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307199-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A2B03048DF4
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 06:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5781E40626C;
	Fri,  5 Jun 2026 06:29:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6185640627A
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 06:29:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780640954; cv=none; b=EkMcqGHBpLZHcw0vpbQOYGIk8VWa60e5ycatBwvNsgoFR6ezZP/D398VZO+AiOMPug8uH5srTew3AevyKyIhZK1Q/BYawP5utiMLZqbVK3DBZp1Abzp3upzao3njpd+qhbdigTr7xxir4zXGQLplvzaUdTBfsSJZQGqs64waRDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780640954; c=relaxed/simple;
	bh=X6X7GDkbdPb9cKybgi5GUhpWne2IbVOETyqqR0x2W7k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c9T0q2Q0Y3/73BL8DaAKVj15Zfx9OVTWPrPUuHQI4Z9WruHRpB5mOqbNRCOO9mRFGmTaYaZLsVJNkxIZPqU8ulsGmT9qYPehoXF0esjF1nSrAmZmo1ZrTJu2ZbjK9CqllsJ3rRvNL7UZrBPSiZwkOqvYYzZyF25eXfPKrZvzD9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qWBV/Zhz; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-490ae94a89eso12893535e9.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 23:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780640950; x=1781245750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vAU8ucH49VWogl3LxGL6+W4AZQI2q/uk0brbvJV4cSY=;
        b=qWBV/ZhzOfiXJPvVG45ODMtvZIGHZz8AfMm6hubD0XOpaPRParE74s7UrG2ywoHpWp
         oH4b55P5aMmAZGnOuxjZ8JQqbLTxbi1GMPZd5BAfSdaK0MnltrZDBLsJ2Op0DWrkv73n
         SyaZb/WrJf2XpJFh7JL0YtlV1QYelftHJV7nU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780640950; x=1781245750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vAU8ucH49VWogl3LxGL6+W4AZQI2q/uk0brbvJV4cSY=;
        b=qZaPNt+XVqzhWzWxUv9ySkHYNlZ6+8+VaFKGi5XFoXDk/tJPbT02qHcCNZBZqN/9n+
         yAcZfvTwDlwnaU28MhbfkfW4yPd1HKtGBjMQ/vBW0eRz4y8lUF/5yNGVxsaKCvVcBwdf
         QY++Z8ahEXIuEKGgEv6pvwNyYata0x5ZYRdLOJbmR75R7WP6xY9PKkIGZbbw81Jkufiv
         hoIPKZHpHI4wwF/wQn/MNoucOjjlrrA1LvQlGdeQlMtzdKXqHcvBWLeWZrJ1nWtqg8z8
         qiis/AaRKFIKaswOgN+/tUDWCxhsDNiHWgPcxaiQrw7Qs3tby0clo5iZ+nII3AtRsaL4
         XeVQ==
X-Forwarded-Encrypted: i=1; AFNElJ9JEf8sBpLwV49ZsuGrAqhzNJxCFo+wzAfwXrMmdOYfmpVcVS0KhJPoGQ2s5uUg1BrWqgJ6j0ETfZar@vger.kernel.org
X-Gm-Message-State: AOJu0YxxNcqLZt3itb2UiMItFpajvd7vmapv7yaUUSbbhISt8ykEmezU
	LhM8aDDlrVVWxCvmm3v12561TNeFZ86AeMr1aK/aOLBDQnMTfvaDegMaO5l6S6uPhps=
X-Gm-Gg: Acq92OESC2VDt7txpunZDdyvKn4jiG2cr2F8h6m2MM2OIf5Nc1kBjJb0pJnqEZxMAgC
	YZScU1DE4Ct40waaYNVh/+VEyMCiv7Lot10H0BI1/gk+qy/wL6DmgkUQR1PrbN9Sz/2pmkK0Q+3
	RqhhkrByUuRuwM+6P3VI9b+lgI98X20WYLM/s91p6RmIdHLq9eSo2dCd0tBS2jkn7LChjhxL7C1
	6HgPgzNp8o7l6ubH60r3+0cVOHxlz1X9jLkHbvZ2RS7Y/EBPEjKVZ9Ptk6jT/V9ZRuYBxVnYG69
	ThKV7dp05mwPEd64eEIMnbsCJcwE+kW7wdVBXbbd+IKfsLecc0ZSGesT9tBxcPaswKXfuAsfCW/
	17Xor5pp0Kp9JVwPpKJX5qxsmsB8UToBGI8DMKr6Z7GkmXRUsSg08op2YoCOWh/UNaOXG9hRlH3
	euzaYNh7tOPRJyCVfK1sxViPb1iEoGRqtX8T0U7HQ2a1P5+8TL+WAnKvCC6BLMhqg80Ctfcjm5k
	pRkd8wb+8Fkj5dAYE47u1S0zmiXDxzPcpdDXueNUCoJbtCIzSiAXeK+sg+FcHHxr7DDZnFOKMKt
	BIjNOm2+XdTZCtv4fAX9vxohXaWktLYG1z4=
X-Received: by 2002:a05:600c:3f1b:b0:490:c0d8:d517 with SMTP id 5b1f17b1804b1-490c2598543mr27584865e9.3.1780640949794;
        Thu, 04 Jun 2026 23:29:09 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f344148sm23022648f8f.19.2026.06.04.23.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 23:29:08 -0700 (PDT)
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
Subject: [PATCH v3 02/14] arm64: dts: st: add SDMMC2 support on stm32mp25
Date: Fri,  5 Jun 2026 08:27:30 +0200
Message-ID: <20260605062900.368376-3-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[engicam.com,amarulasolutions.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-307199-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:from_mime,amarulasolutions.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56C0D6458D5

The SDMMC2 controller supports SD cards, eMMC memories and SDIO devices.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v3:
- Add power-domains property. Suggested by Sashiko.

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 673fbc5632e6..faa1355948e8 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1667,6 +1667,22 @@ sdmmc1: mmc@48220000 {
 				status = "disabled";
 			};
 
+			sdmmc2: mmc@48230000 {
+				compatible = "st,stm32mp25-sdmmc2", "arm,pl18x", "arm,primecell";
+				arm,primecell-periphid = <0x00353180>;
+				reg = <0x48230000 0x400>, <0x44230800 0x8>;
+				interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SDMMC2>;
+				clock-names = "apb_pclk";
+				resets = <&rcc SDMMC2_R>;
+				cap-sd-highspeed;
+				cap-mmc-highspeed;
+				max-frequency = <120000000>;
+				access-controllers = <&rifsc 77>;
+				power-domains = <&CLUSTER_PD>;
+				status = "disabled";
+			};
+
 			ethernet1: ethernet@482c0000 {
 				compatible = "st,stm32mp25-dwmac", "snps,dwmac-5.20";
 				reg = <0x482c0000 0x4000>;
-- 
2.43.0


