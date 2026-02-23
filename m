Return-Path: <devicetree+bounces-267363-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDjuDtg3nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267363-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:19:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BE417563F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41F34306D8E9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F42E3612E0;
	Mon, 23 Feb 2026 11:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fnfufS8F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43BC2DB78E
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845469; cv=none; b=NnWFNbeee6ML50AL+UdlMZ4l/Pn3zdBRI5PX6cYXPQ0KnfF4+WEMjYffZqD2kTW6aFAW+cSOves6Cmt37294YTGX8GrBj369NnDgcLxHbpvSZEOwK2WcF8wo0EnkZQ6juSjFQaQQA5kLen68E2A8NzH+UG04e5XEj0u/z9D7/jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845469; c=relaxed/simple;
	bh=uTj4gapYUMyafJqifSahFMkj6rVicJqXTR5n6i+21+w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nVtSxg1wYhqRwHkj4AY2jvnTmXy2fAOqncAAgdE17gvriILy+1mi6ckOZD00ljBDeIsrndr0bEIHV7nPQMPcz7/WfAPFL0FfMEn58C4LeDyQ5MCmtQA/ggDiZqqxEEGfULxGlN+pNtOSash8nhzImIxpm6ngHhDCoV1sd/wsi/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fnfufS8F; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2a91215c158so27828415ad.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845468; x=1772450268; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wwrI25iLIFnHM5KoM7IfI6VZoQcq26sDFnBNFy9YZM=;
        b=fnfufS8F2LJFBdPoigALYxIB9U9YyK8S8CnllF4fdGfB1Pmafd2Ree3tIJiJ1TZYT/
         FB4TnCtkyP0wXl1W+18n2KosSMAEq0VeEZ3r/aF/D3fM1Aor+L1pmF+NfdFFfA8K19rT
         /+aNHa9TWWYzDVCJ0gJVgGLUDgvM/H4J7V8cHqcWH7yDsef4fOi2ZEPNv/iY/u4Oqvbv
         uDjmpQvboIDA34mjGTSTjPqfL4dN2ysr97n5CsGQlAdx2bOElIuHCC+u7GcEgW1fGBXX
         DAjfQHWUF3OfQj6RLm1H+iKuuCEsbuz2RCa5vjIjSkUn6tlo07IPLPQn8APi0tTVkLjd
         5u6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845468; x=1772450268;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5wwrI25iLIFnHM5KoM7IfI6VZoQcq26sDFnBNFy9YZM=;
        b=qMWH4hU0+oT/0tAiH4pmt+/RSvMW44rx46R7oIQ7RPyemIxLNDIzWWcaoD25lENZn/
         Yj7if0+9Ukve2sXUfMZx3Zil7M/8iAlgf2wY0F4dTLKbhBnFrRONXkuLeXD15+J5Fjn1
         p9EeYMn+Q+SCqWVbOS+tsBo4915be6kSYAqH1Bsb8PRBkhEXR3qRZ+ot7Lv8ZBLhrWZ7
         Msx0giEOMwrsulccI6mh2Q11TrnCdavtPmOcnqFRaXICeYz2pLZfiylAwEPGXQyM6+Y4
         qi1d+xIRsK1A9Brf4GQ4V3a4iZp/a3nhO7+oLmsyxt4SkEQ5fPKI4F3XUL5USYJaX2mF
         zi2A==
X-Gm-Message-State: AOJu0YzbZD4vNd72fpCzwcsrWFgnIdttYcsorjeYwGEBjbCXn2hFjUqx
	lkdWsB8vWM+8oimpDiM80KkdoX8hKNEtf0NEABNB0u0MMABNBRKXLIR7
X-Gm-Gg: ATEYQzzlXxa9GbemkJdVN6V5Xj6nKnrP+m1rqWhH0iqZGWW9QE+oHgyWCXpft0ZlKqR
	/MKhcT77uVPPJQyQvqmY36FWkoH6OEoanRHxIrHoTFLVnzYTHqxtzACKACR+WTpF3/G3vWcwmqp
	o3vzovYwVimQkaPdsv0jlc+6WOoTvrrxsTruxfAVtvCIBogv7eUIn07bXqpBayM3BirSB73Q4gt
	vC7i9g1RXoN9l6WTXy2WkW5TpwLp8G2of6fmkyOMXac7FokjDycfS9D62QhoPwl6ss/Up0+mznL
	W0TB9pFRo+0p+1TNNhcPYfjIh7eWcjFqN5ptA+y7cUZl9AF6WE/u6w21Nz5pSDprBBEFcLzjtpL
	gvv3peSd+TuGRpSF1gdXHwMiUXtCJ/J9pcupelDccJhiMyIScnhMqnkEbcQMJVv3K0GP00drWFi
	v0P9YxS/tK6QoB9K1n4kRWUOpb266vutPASwFaV9Pv1Dyo7OqKFWIK7n8Vi7kJcCSykqbUoVopi
	Zl9ix01NYjOhLwVu6wPi9gKUkGpb15NMqFYKaEvi/uJv4RIAy8RCuzF1d98JIo8s0J4hGADBfZ8
	Lo/46KRNDr3C/eQOU6X4X3aMrg09Vqw=
X-Received: by 2002:a17:903:1a8f:b0:2aa:f2ce:5ac5 with SMTP id d9443c01a7336-2ad744e0d19mr87934095ad.32.1771845468170;
        Mon, 23 Feb 2026 03:17:48 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:17:47 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:17:35 +0800
Subject: [PATCH v5 3/8] ARM: dts: aspeed: yosemite5: Add new SGPIO line
 names and rename signal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-yv5_revise_dts-v5-3-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
In-Reply-To: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=1856;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=uTj4gapYUMyafJqifSahFMkj6rVicJqXTR5n6i+21+w=;
 b=HNnQYw21qw/5gIdn25f/liNOn6HycN5hMNxj1h1M8Hd4NAbVZdYM4erJQgerztGtI+WIRUPhJ
 K6MsgL/vOYgB5DYpyxQENGiO2ESFXi0de/QBlYMC+SvhKVbWQOME2qa
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267363-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 93BE417563F
X-Rspamd-Action: no action

Add new SGPIO line names for user space monitoring and event logging.

Also rename PADDLE_BD_IOEXP_INT to ALERT_IRQ_PMBUS_PWR2_N to match
hardware naming. The original PADDLE_BD_IOEXP_INT is unused, so this
change does not affect current system functionality.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 31 ++++++++++++++++++----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 45b8ac2e8c65a4f672e64571631b7f6944f26213..983aebc394d9159c7e3db2e7c39e963f7b64c855 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -978,7 +978,7 @@ &sgpiom0 {
 	"E1S_0_BD_IOEXP","",
 	"E1S_1_BD_IOEXP","",
 	/*bit88-bit95*/
-	"PADDLE_BD_IOEXP_INT","",
+	"ALERT_IRQ_PMBUS_PWR2_N","",
 	"FM_BOARD_REV_ID0","",
 	"FM_BOARD_REV_ID1","",
 	"FM_BOARD_REV_ID2","",
@@ -991,16 +991,37 @@ &sgpiom0 {
 	"PRSNT_BOOT_N_FF","",
 	"PRSNT_MCIO1A_N_FF","",
 	"NIC_PRSNT_N","",
-	"","",
+	"FM_CPU_BMC_RST_N","",
 	"","",
 	"","",
 	"","",
 	/*bit104-bit111*/
-	"","","","","","","","","","","","","","","","",
+	"MASTER_PWR_EN","",
+	"MASTER_PWR2_EN","",
+	"PRSNT_MCIO0A_E1S0_N","",
+	"","",
+	"PRSNT_MCIO0A_E1S1_N","",
+	"","",
+	"","",
+	"Fault","",
 	/*bit112-bit119*/
-	"","","","","","","","","","","","","","","","",
+	"FM_CPLD_RSVD_MCIO0A_SB1","",
+	"FM_CPLD_RSVD_MCIO0A_SB2","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
 	/*bit120-bit127*/
-	"","","","","","","","","","","","","","","","";
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","";
 	status = "okay";
 };
 

-- 
2.53.0


