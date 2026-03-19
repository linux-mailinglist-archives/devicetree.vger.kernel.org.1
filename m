Return-Path: <devicetree+bounces-277558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OImvKoVzu2kdkQIAu9opvQ
	(envelope-from <devicetree+bounces-277558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D81B2C5BC9
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBD7A30F5B6B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988BD38AC70;
	Thu, 19 Mar 2026 03:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NH+YDFRu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5043314A4F0
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773892440; cv=none; b=F1JtWSH54FROES6Zi57P7BnL2pnn2v7DSBtoX5HQHLbc2AiuZEIDxpUIj9gT47hM3BWIvVf3cqn3pdGItebSSGzbETaE5bx/wK8MD0k0Ql5/rDw3jFuS6Zh4TBweOMOTxvVukkBrkNIWFcwh33zei7be3O6KH0KQ7ejCf+pqTTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773892440; c=relaxed/simple;
	bh=DtlfL8vEYGUTtS09NRhPlXeWykX20CrYhOEtG6f+VEs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H6xfwbq4P7Mit6yRkITsUuB5EyRZdc1tee5KqJOD1ZOHksY+6K0ze5w7PNcfcksLeCDrl8x++mUXP8Wg3lreQPpuStg9IYpsKs76RWaO7MRSoBCBUV2sFJbe/6I8kOIprLYeNakxHaoNbYC/CLTCpiisZkhDw4j+cQxw8Q9Zl9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NH+YDFRu; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-35a094cc3e9so180637a91.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773892429; x=1774497229; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Il56uwMYRNYHM4/txQtsEb+JihX4ClDkizD3sAPU90s=;
        b=NH+YDFRulr5d+NPehmq/BdaZpoDHEHZNItl0xpZBnj2VhIgnOocfwwCfKcZhCHn0x2
         7IxaO6tsps9WnSkC0aSG3Slq9Ev3ornsSJfrU7uXTvrbChLGjBnBYCUaQertcfNmlPh2
         /vyshL5q2o5efrIxJk80CPMsQY+8f+JTGxQ9vsthzt2Ipp2lsDiWHXVasvZtaKJpFyIW
         GiUtpN2Ibvj1KvYd25JwJ8tZ0aNVoXKbuxnmh+xOGc7vrcphecs0UvzRKtFOp/lNybPN
         07wOvMYiIO5kwgVQOIIvgvuHIlq7vembfciMsTMxs/X2LnYgXORjKqbYOR7ySsJnmYL3
         EYuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892429; x=1774497229;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Il56uwMYRNYHM4/txQtsEb+JihX4ClDkizD3sAPU90s=;
        b=nrZRjJw+K+EIxLu5PSo/0G1wgXMN1TLWRHPPGjLWFyEo6yS/KeuZ7wkMRYs2luMn8f
         hcdbjfSjGA6dJNYjbdR4E1OknulpXPHD1dwxjJUz5DaoNNgCiuxXqOghnVz+VfNsVzTj
         JDMavk2UTT+gkH15vTzdIXo2VzoKELBZBUc8LjiyB0+pHriCDK5/12AJ3TdGcZqIsoJS
         1SFi98JdE2m41pCwLn47P4hhXbR6FTsbOmV3gjecPnBU2gQx2v8NM+HchdaetTkKP/2V
         PviZPcxzD06Wqt8CuriTWNW+8/iw8TwC1wUqDy2FXiKurwYqAraDL/H4IA8s43kly5nl
         vK0A==
X-Gm-Message-State: AOJu0YxDS+n/7HEqBej4twejCF8l/YHIjPs02GmiWtwCPTmd176CvYJv
	5Th5uD5XzmwKsp7vc3GZuWGht/AwHCClsuQcsyx/Q8XBMotthkIhmDhhM2UsbEFn
X-Gm-Gg: ATEYQzwoZeCwmY9dQ3vMvxO3jCjFOXXxHGlbaD2PB3OWhwPPY2b1CaVMba50qE6gEbP
	gS2twWJWYpVeBwGFU/cfgiy1EH6ik2QLx7G+5bT4W+td6VsJ4oQ2ObzVDhCAQvZgGD0tURIrRea
	c8a4/Num0BHjK6FiK7bwjfMzKbpj6NTFy8uCR8Ihoff3TGr2ochCYbr1xUb8aYRQAcWYMMCDkX9
	Ft8faJfxxHbT9IuDtfz4vVOdVeIEn/TZwQEutKftsHxNZwBM7bvgpbMY3ghZG7aWAVuwCA01YTQ
	jPfsv2pdw8LE5dzv/WamlzkX36dgfCWa+iW4p0QdhzlMU+BCjm4FHZkLqbIEujmR4J4OxhfXq8j
	O3o0AJqLWy1T8AnvxbW9LCzarn1k4MevYgxmuMN7BnG49SNA1aR9Y2Ixvdm5VdrDkJ4PfEwE6tU
	ANXFXoOZTzGFF0SF37us3Yx/10VmPDhPRGO13TbChXJLjFxgn7ybxBuOI=
X-Received: by 2002:a17:90b:5291:b0:356:24f0:af0c with SMTP id 98e67ed59e1d1-35bb9f0e236mr5075077a91.17.1773892429081;
        Wed, 18 Mar 2026 20:53:49 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc60ecb30sm1159145a91.12.2026.03.18.20.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:53:48 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 5/6] ARM: dts: BCM5301X: EA9200: specify partitions
Date: Wed, 18 Mar 2026 20:53:23 -0700
Message-ID: <20260319035324.269905-6-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319035324.269905-1-rosenp@gmail.com>
References: <20260319035324.269905-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-277558-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.847];
	DBL_PROHIBIT(0.00)[0.79.88.128:email,0.0.0.8:email,0.1.56.128:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.2.191.32:email,0.3.13.64:email]
X-Rspamd-Queue-Id: 0D81B2C5BC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some are needed to be specified so that linksys,ns-firmware works
properly.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../dts/broadcom/bcm4709-linksys-ea9200.dts   | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index 7b1363aa1144..d8aab570dbe8 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -195,3 +195,43 @@ port@8 {
 		};
 	};
 };
+
+&nandcs {
+	partitions {
+		compatible = "linksys,ns-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "boot";
+			reg = <0x0000000 0x0080000>;
+			read-only;
+		};
+
+		partition@80000 {
+			label = "nvram";
+			reg = <0x080000 0x0100000>;
+		};
+
+		partition@180000 {
+			label = "devinfo";
+			reg = <0x0180000 0x080000>;
+			read-only;
+		};
+
+		partition@200000 {
+			reg = <0x0200000 0x02800000>;
+			compatible = "linksys,ns-firmware", "brcm,trx";
+		};
+
+		partition@2a00000 {
+			reg = <0x02a00000 0x02800000>;
+			compatible = "linksys,ns-firmware", "brcm,trx";
+		};
+
+		partition@5200000 {
+			label = "system";
+			reg = <0x05200000 0x02e00000>;
+		};
+	};
+};
-- 
2.53.0


