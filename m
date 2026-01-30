Return-Path: <devicetree+bounces-261114-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLRdHPppfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261114-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:21:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF04B8476
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:21:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87A033038535
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C46350D5F;
	Fri, 30 Jan 2026 08:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QFO2D/Z3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CF9352946
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761223; cv=none; b=tqQvv3ow6bpsbArtxLkhTfZAHpEXlrspzhMd8cvB31ql5WUH5V7G2BLCr8uXgeBUqzy7pm2mlbi/WbXMNO0zumgY/KCswwyXVZ9ITpiVDBxUeUW1X/qEnmERJ5+2WiigyprX/apTBkIrxYg4cZb1azkPOSofvJUHLIuPwJsNsVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761223; c=relaxed/simple;
	bh=PuGP3tDDyva66stpyd0PfJUp+oeZiyMMNMGNoISiM78=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UFWZxh+vKT0EvOS8IMiei35CO5LUcgBfv8bKDOmhMOYsDxIBETNOj83fw0BBh3nfFULnqnV2hiDc5D3em25TIRNGPtF6cjfkGIENoOXqoub5eoqk/IMHDIx3Ec4fVLowNkr2D4txMMPXpX4hmDLBwg6iWsvUuq7TIzY1Xa1unhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QFO2D/Z3; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-81e8a9d521dso1071275b3a.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761221; x=1770366021; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=34Z/wqK33nY+/r9/my4gnemDx7jJlFUXcUiWHmEPYyc=;
        b=QFO2D/Z3uUdFiUlMNkC9y2mV/iOEol2/SZC17vGHvpWuMJpI8xHR92GNGYy+BHHmY5
         dIzRBDm8cv4RMkf39KrxDZxN6w8eHyxC5dK4GCu4ut3gKcLrZfqS2RfIDom+NwEDCqFB
         bOzTBUK4+Es3TvGia/NRcq/nW6kXO0/Dg6gMvCH1wTOMCCJyuCKG0xip09mJK3fz8SzZ
         B8vpA+thEa5QUU/5wE6dgp2w3FJ95YaQSh2CIuOARQTKXgu6MargVVK75WuFEjuhXE/J
         mR6tcNZED/s8q4QIq5S4+roTufBJQKyukLL5EHiFKh7LzFtmoqCEfUfKzOUnKGjAU9hE
         Q5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761221; x=1770366021;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=34Z/wqK33nY+/r9/my4gnemDx7jJlFUXcUiWHmEPYyc=;
        b=tcQoYaNM76Z90aCfD/sWwWX9xmm1WzrWZCZJWqx/mshYJ52sJ3Qv4ngTaEzOfCbUvY
         N+ak/Q1EEkvQfrKlZ6YoAzVG4/XAc+s/xFKvDwB4dRWyRxT/CnQIGnHpdobS4nzZK2AC
         hdS4VexKaP5Y9LgO8nLLc1JrkjarKWLTmEzwj2x8I/gr1tsj/+uExqWbOT3jXqy1RRHQ
         Zv0txnEtfP7Kt51W2zDCtFj/V/8ceWI5cGg/tGIe6g0zviklVlgBKTXDUFCLMHi/O0p4
         rRdmEvKRWPVfpf4NbOtaWwS38ca4HX9sEKI4j3LaPPzuflBJuDMNsQqfhI+MQq+3b2Ec
         ii8w==
X-Gm-Message-State: AOJu0YxjPrQfscHBc5LPg96a8jhWNFP+lTV4iY517wpsSnII1ID4XRJf
	6JycsG+qjhbqkeVwMBC5NLehwEokl/9ACgwXR6mKzwmKbEJuVhMGelLf
X-Gm-Gg: AZuq6aISt7NoXobyYyhjZjEIg8uEZkQtSZeUiOa29uO0N3Peor/CxiLu79URxtQAUOL
	gdsKPfyKGvmO+F9rlORT2pobt79qTHqax1zXSPA+SFF0jSBIKVbYCFh9pDI28bMkZbQkOG5nvPG
	JuixwGup0PMMhxRsHu3KQugNYADE82Jej9tyQuQNIE93TvOYXZMO8/DQZwIqf6HgOIXbGRtcNGX
	4MeXirsqnlHyaFVDkzI0KEXjKw5bxijGrgwOMO1oiBM8nbRoi9mY1y5jAZf0ZxrxuOQ55DY6Xej
	1HR5xkpLGwNfsttS9lM8jZXu4fSj/pifOIJQjmDFHUfSaDynN+msdlwevhFaEuTVWXfMw4yN/W7
	aTv5oaBuaH8f7QEAx5zSw8mJgGegfkJzpvFOhCWVQLwl3KEbTWMKu6mIYemUiDOKRj+Ako5EVlg
	7vGrmNsL6iL6odpX6TdBH55iXUsfgyn9yOeNgnLYm9MjZZ9XFak0EzNS8FRV6amMA0JJ/ChMq+O
	fc0rgpx6onT3uGcyq8VIUZTNmWFFwIaTAh87kS3SNNu/H64WNLj4vzf1ewuwWDGq2PZ48VXVcrO
	HD+qQmYszUSVXfJP0LioWh0=
X-Received: by 2002:a05:6a00:aa8d:b0:81d:a1b1:731b with SMTP id d2e1a72fcca58-823aa43ff6fmr2318436b3a.19.1769761221359;
        Fri, 30 Jan 2026 00:20:21 -0800 (PST)
Received: from 2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net (2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net. [2001:b400:e3e0:2a58:5bcf:a65d:c80e:2087])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm7866018b3a.40.2026.01.30.00.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 00:20:21 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:20:10 +0800
Subject: [PATCH v4 2/7] ARM: dts: aspeed: yosemite5: Remove ambiguous power
 monitor DTS nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-yv5_revise_dts-v4-2-4d924455f3a7@gmail.com>
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
In-Reply-To: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769761212; l=1501;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=PuGP3tDDyva66stpyd0PfJUp+oeZiyMMNMGNoISiM78=;
 b=TkgsjuG0FPDCBBvCJEU7Gmye4sri5zyhSShXC2Zo/dGNnIavQka/xIB6cRiuAZMXqkNlek+OQ
 Mx0ZU9FdwbaBMNc40TTDnumCuh5KoS9T7cuzDeDg5RYpSsyCvgV7BG7
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-261114-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.22:email,0.0.0.45:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.40:email,0.0.0.48:email]
X-Rspamd-Queue-Id: CBF04B8476
X-Rspamd-Action: no action

Two different power monitor devices, using different drivers, reuse
I2C addresses 0x40 and 0x45 on bus 10 across Yosemite5 board variants.
Defining these devices statically in the DTS can lead to incorrect
driver binding on newer boards when the wrong device is instantiated.

Therefore, remove 10-0040 and 10-0045 device nodes, and let the driver
selection is instead handled in user space by the OpenBMC Entity
Manager based on the actual board configuration.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 7991e9360847532cff9aad4ad4ed57d4c30668a0..45b8ac2e8c65a4f672e64571631b7f6944f26213 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -674,20 +674,6 @@ gpio-expander@22 {
 			"PWRGD_P3V3_AUX","ALERT_TEMP";
 	};
 
-	power-sensor@40 {
-		compatible = "ti,ina233";
-		reg = <0x40>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
-	power-sensor@45 {
-		compatible = "ti,ina233";
-		reg = <0x45>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
 	adc@48 {
 		compatible = "ti,ads7830";
 		reg = <0x48>;

-- 
2.52.0


