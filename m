Return-Path: <devicetree+bounces-272388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEunD/zsq2lziAEAu9opvQ
	(envelope-from <devicetree+bounces-272388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 10:16:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BC23922AD86
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 10:16:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C6C523010B71
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 09:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440ED38A707;
	Sat,  7 Mar 2026 09:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YSJFScSH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0883C38A709
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 09:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772874992; cv=none; b=NoDrSDmGAIBd0OgiML7gMrhPHOTEur7dyDqyIUN8NupQFyHFCQPDDUipZ+L3GjpBG1cVRubPR5F8HU3jiqG45OqwWEExVTUNEruwWplMXPg0OGJJgxplyU1AcYVoju2bjNgwTmvktLaQN/AAHln0lAagZc9QxE8tKpv3w3UhAwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772874992; c=relaxed/simple;
	bh=TOgEHLNDuV9hrgCrgPuAtFhAmugJ9ogGw2s9HsU/IRg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mGA9Sjux3tMJi832q1+7bEp0GeBu+k4ATA10Vy57xnkq61c25nmNU/27v8HlHDEcwsQnHeNulMzVw261TASvGpzl0lR/kM78wtEqABRO983QIjmxUPbFveNFhS6wADFE0wa43EyQoYYhHlcFP3zXZtzF6/96Rb5mZVYTwoFWMfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YSJFScSH; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2ad21f437eeso72158595ad.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 01:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772874990; x=1773479790; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ycKvNZw221jxVdyVNWLOsWUbPtsOR7YJ3JJodsI6vE=;
        b=YSJFScSHC6naSRjwLeTGtw5mSGYVEiDCiVbjHyeaA+Iy1Wd+AITa2fOpHYgPgLk/jq
         20y4FZAdKzxjy5XUaTpMQMgWdwKkUJHYQA4Qv7/J7bTS0Bd2iZUFCzyumR4hX5JHq4rr
         hV8IKDZ95iBcLDi4h0ICdhH0iatO+lUIYI887MOjjL2lUcxmJGhhpxHEqArh6ooHLxL8
         DrW3zU8PeFwysBEHzBW/QoVeZN6528VwKBFXgqYAr0cLB4SFwHmxD+K/pS6JzIkTazWQ
         bnROpJUqphlc3DCGjd46LIlzYlbmqNg9k31t3cQcFlG9L6AwEMmAFxG0evZ9RVHyqAZA
         /H0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772874990; x=1773479790;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7ycKvNZw221jxVdyVNWLOsWUbPtsOR7YJ3JJodsI6vE=;
        b=tp6s/vTA9UI2NwLWE6wvr/iq8qYggYvuSTZYinNc1Qi9MDOpEwDNMufwgVL25Uu+Zm
         gvPtBUE3arlIL5rwKucH/tMt9ZKZPh633Z68e7i1OVeuyItWMOvGSCi1p4DmnL5DYbmB
         s14xGr1aLR/M+U9/xf6ROFcvEoagjT2AkrUNbah3YStOPcMIi2/c+TXyVO++aORC/cC4
         tlj434K3KpVyNVT109t+N073GAxskY9s63DmLztvUa/DzNqrhd0XbpANrYklYyfjbJLh
         tc4heLCIICpWq7Xz0yBTR1xbaRTWnC51g2z2S0bujRKyDPjhzPFr1ofn5Ck6WRj/AgJ6
         OPLQ==
X-Forwarded-Encrypted: i=1; AJvYcCX13X/2QH5r9R334KUJBKrfA7hR18T9zwU8jT2qjQkW5rWVxsTJrcC1/8cllNx+vp8cwH+Oa+brFAC+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8dlYXpLLciGOl+EY14GDEyO/VDC6sUBXrII+q/uOdKw5ucKEl
	aHQ2BTm6uv0RAOMkKvO/CWIOG6eN9Vf6XQUV2Bxfl6QLUnqUDaq7ViEn
X-Gm-Gg: ATEYQzxgdUlntZXZ6EiBPw4UupFRAxTRctyxLhBRSFBZGXIUK1VqEj1DzHYYxYWfpEV
	THp0Tn/DyexFRacHHZREPjBdRrTHOkpUNI1GJOeQvmiaWrxH5w8UgoCherFXH3OAl+SbG9tTQR/
	TUg9YWnxNPaGoc+HngBujw5UavYHLnm2ylnrcm7x6oEZJmyUqO3vLF3+Sa8SrCBoE3tvFDc6Bv6
	r+QmJukBDH6ce4bjlEkwzwiHwFilPhfss0N2O4HgIyY2AMq5chRsxdGK3iJUGQz06gmpnbT58iF
	ABcS7tvTFD40BwzGJfFGp9FD9SDIO6/F53WJ6emO3Hap8/Eesz3x18f9fLgLhCm6cWwjW6VnMhA
	W7Xzlej1w65uEvmYpUvFsk6mxuTOabxpyYkEVPF/nOaVRTPhebKgzLBPgBpaKzIU6VdwFq+rOFY
	Q8ql9tUgFh93wJiSG6RXX+bbvzEPvdqrmqNgW7VR9oMco=
X-Received: by 2002:a17:903:3c23:b0:2ae:4ef0:168e with SMTP id d9443c01a7336-2ae75b7e02emr98819375ad.13.1772874990333;
        Sat, 07 Mar 2026 01:16:30 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.215.222])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ae83f74e4fsm45569385ad.58.2026.03.07.01.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 01:16:29 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sat, 07 Mar 2026 09:16:18 +0000
Subject: [PATCH v3 1/5] arm: dts: at91: remove unused
 #address-cells/#size-cells from sam9x60 udc node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260307-atmel-usb-v3-1-3dc48fe772be@gmail.com>
References: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
In-Reply-To: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Herve Codina <herve.codina@bootlin.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: BC23922AD86
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272388-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.968];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.7.161.32:email]
X-Rspamd-Action: no action

The UDC node does not define any child nodes, so the "#address-cells" and
"#size-cells" properties are unnecessary. Remove these unused properties
to simplify the devicetree node and keep it consistent with DT conventions.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 arch/arm/boot/dts/microchip/sam9x60.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
index b075865e6a76..e708b3df4ccd 100644
--- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
@@ -75,8 +75,6 @@ ahb {
 		ranges;
 
 		usb0: gadget@500000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
 			compatible = "microchip,sam9x60-udc";
 			reg = <0x00500000 0x100000
 				0xf803c000 0x400>;

-- 
2.53.0


