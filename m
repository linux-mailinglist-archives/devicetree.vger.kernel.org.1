Return-Path: <devicetree+bounces-261118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uE8vGQBqfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:21:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 919DCB847D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7A127300E1A2
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4CC73542C3;
	Fri, 30 Jan 2026 08:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kiza895n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB01A352C5B
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761236; cv=none; b=ZA3LQPRlxtyfsuhiGuemXckVpV0M62TznzaWqcSMVQ15ecgA2PZz3nqrjhUMBkqU7G1+xuww4z4686dwwa9xafioZVQZ3irmMuevAX7nUyoejU166Q1qnfTO0NkfPfAxHI082BE9fUWpo36eZD4ZoTZl6czVA3LjQfNQ99qssuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761236; c=relaxed/simple;
	bh=NTGKevMUAPMV9E4g5zl0RMUalv3BlRNqGivNE3JH5S0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V6RsHq9TiwEs0fShwciSRCQlfjDiHHbso5LPsLtsl6p0Val4IWiddzorLHXfBtu4Yw6pCepGJRsxzZUy2NqXsV6+LKs8xfgUjEMqHieRDoaO35GFzhTY+vJZkJ5TvTln8VJZLBne9pTAPGBi3B6+Bz6GLm/wwEjt8HCiPYq1zMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kiza895n; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-82310b74496so1176237b3a.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761233; x=1770366033; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iYbUGVE7c7id+MiIunPPyopC/JujGSCKOd5+ZEtgyBw=;
        b=kiza895nEYnd57UAsJfDsCpfLUgDW0eWVxTFQNfh0mfPuvVUQA4D67SN5C92L4FBAc
         RVkdHIi5yEzwoI1GHzEtwT/yhJwpIiURl+1fsw5co7lWMxY3D8GV8fZBjDI4zVTHd1G1
         qdZU1lfqQPE0DaQeiyA5jJYc/+IVe0PPqafVAdLe0O0txmFevn3VDRiRpVvItshPLhV9
         NfyzWRBEqWlXsXZSswGmxsZbZ+dAin9157I8qeyjPKYAI9dZRCOvTjyvQZYH6lbvVaM+
         Dx5NFWjLfvCV8Y0lA60ztYmD7h2jbPQ1C6dPgNoMM3D3SpEcr2y8mjR0SDdLBJK6lIIe
         HX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761233; x=1770366033;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iYbUGVE7c7id+MiIunPPyopC/JujGSCKOd5+ZEtgyBw=;
        b=L3MeJ5CpZ77PSwCqBf4UwBC2uouAeK1g+IguzpDgXJd3HKTD0krT5duY3/E82UODox
         quOlgJQiKR1ew+ZF9a07eV1VebLdkWKwVib2SM6f0bHS0ax8rdmylHgPy8gaTnQ6W2nw
         fgCEyEIku323lMqS0RCH2sKFCmlh75GnyzLZp27wbhXiXHmhjuIZS5qONlHOzPDMAMEs
         xE5MDOmnAPwB7Wv0G1cQuWe9cOAfiN7rl6T2i4bZ/Q+TyjbS7VVOQ/ISRY21I8A7Pp8A
         L3tI7OsjHq1o0CCBfcFDfdFzxtLP5WmNB/zcDgvp9GI6AEr3Sw4Vn2w8PnHOjh3Sm6u6
         6gnw==
X-Gm-Message-State: AOJu0YxLJxZsRMsoPUOvZa2nxh/xktxKu15i46agLrGpAVV6nctDffML
	gtWiAxsXK8VxwVhnXip+b4AfpoFFQLPYCGDGkmPkVaWrxDvdoY24QkvG
X-Gm-Gg: AZuq6aKsOS4y7op9yX17N9C9Q9ja1N7EGByHhndL6Eq/SefZ6nlB+A/1xzuCL4SoOVz
	5Do/Yqk4ZUnYMEZziBua5eTF2dLvHRTKiiDObrKRIOTUSZmM49DY/LLqajz0Ckhblu1H43YqmTz
	+ta5Z6pNxawW3pDGr9vZyqaZHw3xcM+V21qta7LotqwNA0i1cMsnwlZ8qkm2kTR/67a3hh2w/T9
	e14I3ozIPM0IcM2E+R2gfaLgSuYaAURv59wfframbBaekovSrnd6pSz9I+Vcx4BZNVYco2w6Bd8
	wn2pjMEIp6xTUml518ET7+ImdU6J5tS9zkXRQIKkG+XuP2eRY+ZllUhlMRstZ1FTAmYgepRWLVq
	G9Kz9ER5ruFAfYGGtBtJvGH6tXI3smLvV2gRHYsCZN6z2Ha0ldzI5bVMPuj//2VepO3WOvSITQk
	XKL28mErcYJheRIj8qna1jd51nLr/T6bI9uvgd1lJEp5cp6LpoFWnCYl4hMe2Yf2uy5QIrKDCcZ
	apIxmWbA0FcUJg9AVSvQti2g18EILidiz7DKX5Zo1CyLTkUU1h/oKk6x9O66GwQvYXDWyIPBl63
	HgnMxvPOlpNW
X-Received: by 2002:a05:6a00:b47:b0:81c:446d:6bd0 with SMTP id d2e1a72fcca58-823ab670e70mr2255776b3a.23.1769761233312;
        Fri, 30 Jan 2026 00:20:33 -0800 (PST)
Received: from 2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net (2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net. [2001:b400:e3e0:2a58:5bcf:a65d:c80e:2087])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm7866018b3a.40.2026.01.30.00.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 00:20:33 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:20:14 +0800
Subject: [PATCH v4 6/7] ARM: dts: aspeed: yosemite5: Add PDB IO expander
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-yv5_revise_dts-v4-6-4d924455f3a7@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769761212; l=1824;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=NTGKevMUAPMV9E4g5zl0RMUalv3BlRNqGivNE3JH5S0=;
 b=EKe0E7xkKfIl93ATKKmxvOzRrcqGGBGFkA7Oq65hguM7RoXuXfiS4HXbDRBXhjCRF+7YLemSg
 uyF0pu4T5YwA9uz4uT6b+JFmyHCfLYHWs+2IlAaz+l2+H7EOwjbtrtb
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261118-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.40:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.24:email]
X-Rspamd-Queue-Id: 919DCB847D
X-Rspamd-Action: no action

The new hardware design adds an IO expander on the PDB to support
fan presence detection and HSC fault monitoring. So Add the PDB
IO expander device node to the DTS.

The IO expander interrupt is connected to SGPIO92, which was
previously named ALERT_PADDLE2_SMB_N and not used by the system.
This pin is now repurposed and renamed to FM_IOE_ALT_N to reflect
its function as the PDB IO expander interrupt.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts    | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 524597a81365ef10cd03b67d35eeb88a965cbe0a..48f864b52d1a22b12f8a39ba9703a90349ed930d 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -389,6 +389,25 @@ adc@1d {
 		ti,mode = /bits/ 8 <1>;
 	};
 
+	/* PDB IOEXP */
+	gpio-expander@24 {
+		compatible = "nxp,pca9555";
+		reg = <0x24>;
+		interrupt-parent = <&sgpiom0>;
+		interrupts = <92 IRQ_TYPE_LEVEL_LOW>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names =
+			"FM_P52V_AUX_FLT_N", "FM_P12V_AUX_PWRGD",
+			"FM_SLOTX_HSC_FAULT_N_FF", "",
+			"","",
+			"","",
+			"PRSNT_FAN0","PRSNT_FAN1",
+			"PRSNT_FAN2","PRSNT_FAN3",
+			"","",
+			"","";
+	};
+
 	power-sensor@40 {
 		compatible = "ti,ina238";
 		reg = <0x40>;
@@ -937,7 +956,7 @@ &sgpiom0 {
 	"ALERT_OC_PADDLE2_N","",
 	"ALERT_OC_PWR2_N","",
 	"ALERT_OC_PWR11_N","",
-	"ALERT_PADDLE2_SMB_N","",
+	"FM_IOE_ALT_N","",
 	"ALERT_PWR14_SB2_LEAK_DETECT_N","",
 	/*bit48-bit55*/
 	"ALERT_PWR14_SB3_LEAK_DETECT_N","",

-- 
2.52.0


