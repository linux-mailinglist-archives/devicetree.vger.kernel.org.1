Return-Path: <devicetree+bounces-261119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHceBqBqfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:24:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3CBB84D0
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:23:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7BA9306F00D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 370A8284898;
	Fri, 30 Jan 2026 08:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XuhojvYA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDAD353EC4
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761239; cv=none; b=EbT78cesSHKVUobnJsa2BfqEA4ReahXZ4fnQJPVyXn94KCWOzsy9ZBfA/wF91QsmYC32VyeF5eUCIZI66+zXdYGJ7883P4+AzwH0LNGSU7OmsmhJQTlawZs0pUgC+aNIHjOKeXHJHK7lstM8xDF9tYZbldKwQk0YGBVvd7GNAnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761239; c=relaxed/simple;
	bh=e4DAb0AqZOq3AWW4s/35NURRVqdT9q3pcfBbOpjvHRI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AFGRTmFyl5+pjgwlRJacetI93NNe/E+RaIs0NbxhH3SYIL3mz3S22erbEX2nJw8aTw7mLt8qGmwXDdWcVguBEeLuct3KP2f7RoqGxLXaq1s4oi+L3p273j9BPaaMvcqvc5wXCkjMJ2jXeIn1lG7tt6s0S9G7fuZEbAFBO3RCYtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XuhojvYA; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-81dab89f286so945830b3a.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761237; x=1770366037; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xti7XG40UH6O6PxwKMMYsKnB+u1Uo2o6K+zvBRm+Q+0=;
        b=XuhojvYAnclQVMi6P1iLuXmTEGycLeO8+opUn4E6hWD23rTU2b/2Kg4UQBgM63GNke
         EWJOYecvVrOu8ZzkvTtZugVWGQLAo+muA9PlT5wpwiMSYVHXnBFV2H9YQ8Ce35Bst8Xz
         wGUfEoYLoBP9ThJ4MUPF8b+ih2ET9BNYH0OqfKYfRdzmXxNWLiyZ+315eHpsKVEDFa3N
         TL4nhqUHdd70hyezD1IN0wxI9cbBN8AQF8WMc2y1aoEK4xmRivi6IDx4m+aJ7pGhVv9L
         V3BvTl+qTBd3DnNrcnOljkfQ06i0zNtuoa1J+0nYEJC2LbI+MpFaMHd5+6OgFg8S/g0e
         cFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761237; x=1770366037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xti7XG40UH6O6PxwKMMYsKnB+u1Uo2o6K+zvBRm+Q+0=;
        b=AUyc6OT95hWt0DwtL5MNIx6c+fzHVlgfkbaluwkgOUiZCTSNJ2RYSVEJhaYHLkng3B
         bjndieFytOqp+9f4+w5wKvlal1X4o7XZ+cjLIgBs8sDILqqA6eMjkJltTqTXiBJzwJ+t
         2M49nJSWB+FtfTYc+lq8VQH/8jc9ol95NY4i3onWvRQJvQ2bYrOufs9sncCLbXF0CmST
         BkKSIpKO+KtMmotIzrPOs/y6lEJjnPPNxtkiQzLSdKvOqzhka3b14zh9/29vPfjf54mo
         SfG3W2lqWroAVFPFCsx2dizSaxy5iuMXUOYQjei0blila9Zj7Q/Nc1uB4uma7UZ6uK3o
         N+ag==
X-Gm-Message-State: AOJu0YwlbI+wZOD0GKD34LRQNAGfCDaTM5idybRgy/6xN6GDNbCBQFFz
	O4Bkn0lj1lnmrDKmfGdvJ5YkiauQVmNSq73B1K1QDHbgM00bE86/U1Pe
X-Gm-Gg: AZuq6aLpXCPSQflSeqgx/zEdaUp6DNanHebH8Vufe/43EbNQ1pwxlH3J2zRKp35n8Gs
	ZliANAwO8xH0Cfb3O4q9BccjXtDsQpfokC+kTgJNKLjiC1N+rOcLg69TbFnNjjXCJBJ1PJ54Svn
	iwxr2ZLY1JNzK+dWmFfocLYSaBtMFDB0AeDio7Jy0EMh9nnDeRt7L+eAhnfrofkVBtc7W59swtA
	8UmaJSrTA4+Jb4Z9CjNgYDgRUQh4pq4BXM3/AVIIgSnOfGoR5kLDdjQxGWkH51dtib5kcVtP9KF
	o0ijzQQeCVB3ma9CoEHSHsRN9qYFUh+CU3LorY+BRav5YFf9g/d/ZuQZMqCGIid7my6pwWEryDv
	06B0LBWAAkQpNoPLrNqsRSBlzXauiFwd9faiX8qpyZIlZwD3vHTVGpPXt6xt2Cqfsmc5UcPqqpf
	PJRkc1Zn8QudkSOUSYxWguwdfvTa3EJE2NaiQ3OB1nIvCaIqDAjlmnI7e2+cqwrrTu15mKStToy
	tNY4gwchLlqznQLCs3RS1Y7cTBwqNQL9LS3uAn5RKcMV2YaQgxE4Y5vCpmjTKFuDrMIRFYOEMp9
	9kxxMjzaTxB0
X-Received: by 2002:a05:6a00:8015:b0:823:1570:1e81 with SMTP id d2e1a72fcca58-823aa931c1fmr2112930b3a.53.1769761236703;
        Fri, 30 Jan 2026 00:20:36 -0800 (PST)
Received: from 2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net (2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net. [2001:b400:e3e0:2a58:5bcf:a65d:c80e:2087])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm7866018b3a.40.2026.01.30.00.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 00:20:36 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:20:15 +0800
Subject: [PATCH v4 7/7] ARM: dts: aspeed: yosemite5: Add debug card bypass
 GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-yv5_revise_dts-v4-7-4d924455f3a7@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769761212; l=1580;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=e4DAb0AqZOq3AWW4s/35NURRVqdT9q3pcfBbOpjvHRI=;
 b=yNNqOLbWXzjovfNGoeiqX69Gh4ImH0IhqpGS9SQJLT5J8mWHP8GLT7wzQeD3n0ODQnXvqfxFA
 zuNXkioHV+6B/q378yqFfgfHcbHvMvs1UeN6YOZWw4vWEQGt3bxi+b7
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261119-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 7B3CBB84D0
X-Rspamd-Action: no action

On Yv5, the SCM CPLD bypass OCP debug card commands to the BMC.
These commands share the same I2C bus used by the BMC to access the
SCM CPLD for firmware updates, which can cause bus conflicts.

To avoid this, the SCM CPLD provides a bypass control GPIO connected
to GPIOO7. When asserted by the BMC, this GPIO isolates debug card
commands and prevents conflicts during SCM CPLD access.

Add the DEBUG_CARD_BYPASS GPIO to support this behavior.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 48f864b52d1a22b12f8a39ba9703a90349ed930d..61e78d5e712ff45e1a0691979b9b36408404cd2d 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -166,7 +166,8 @@ &gpio0 {
 			"led-postcode-3","led-postcode-4","led-postcode-5",
 			"led-postcode-6","led-postcode-7",
 	/*O0-O7*/	"RUN_POWER_PG","PWR_BRAKE","CHASSIS_AC_LOSS","BSM_PRSNT_N",
-			"PSU_SMB_ALERT","FM_TPM_PRSNT_0_N","PSU_FW_UPDATING_N","",
+			"PSU_SMB_ALERT","FM_TPM_PRSNT_0_N",
+			"PSU_FW_UPDATING_N","DEBUG_CARD_BYPASS",
 	/*P0-P7*/	"PWR_BTN_BMC_N","IPEX_CABLE_PRSNT","ID_RST_BTN_BMC_N",
 			"RST_BMC_RSTBTN_OUT_N","BMC_PWR_LED","RUN_POWER_EN","SHDN_FORCE","",
 	/*Q0-Q7*/	"IRQ_PCH_TPM_SPI_LV3_N","USB_OC0_REAR_N","UART_MUX_SEL",

-- 
2.52.0


