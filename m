Return-Path: <devicetree+bounces-261116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BQANuhpfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:20:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC2EB8458
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:20:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE2B8300B8FD
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486E2353EC2;
	Fri, 30 Jan 2026 08:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kme+N00X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02264350D5F
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761229; cv=none; b=Tfgdq4hkwjr6j3CQoXKc55AX9xPziRViM1CmHJXyfCPBf3svRslpGE3/fTWxbghfvQpIACbCFvkB1tvqibTyuUvqDeD/LeV5SoHxadY2FdmiZvnWo/X1vmaHilqQyhydvgBg3bLJvkudQizGHg5tErMbZDLcTN85v800fkuLp4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761229; c=relaxed/simple;
	bh=MUMRve3kRE7pUB71SRAZkcB7pmeSsMqBTIHoXuxoOoA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jes/Wd4P7n+/UbHNYBgc2vVLR2qNWZDkt4nytC6updnlu50Jk5CxwPdigng5PdYiYcrqeRJKX2mNTjl6L2fVhDDAyU+/H9U80Waaw8/ZtlkFpLLh1+tNXoi7YhcyE1gV94lbx6RfHT8W7ycMf4ly8blGIcQuMOCaSDoDdjAV5E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kme+N00X; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-8230d228372so972182b3a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761227; x=1770366027; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uPIX0W/QwqFfqblc/FqF0IeuPkn1Wyp+rRntpvN5lJ4=;
        b=Kme+N00XdmNHIwUtW3Ij56nmgN1MENPJndJV20RLWvDnwh2kBnZ9W+WpPspd00W1hx
         sVmPJU6ChLP0rIEFrqXSAG4utN3BJN2Ul5AodBGwRU8HDVkjR4cQtqHxE4Cfh0Aa3vKF
         FTaUknZbRbDfC9e07e6lMgJj8okPJW0Bev1g5wNyX6Ir72Ld/w0WNrr6f7dD4SFXArJk
         Q2KM5gtaBpwPFtME8ey4BTDI3k5SsF+/sfBpdv9U8U4eBCE41+y2qqrZy17tdZ/bZTYr
         gG3TyVWI4W52iUX7Wefa1x8wL5zHEzC005Ol8tU9zD0ZI/pImiwcALjuHlxA2Nrg4Y76
         CRxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761227; x=1770366027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uPIX0W/QwqFfqblc/FqF0IeuPkn1Wyp+rRntpvN5lJ4=;
        b=UZO5Nq413V5vHi4XZ8wIUYseOtYvB+/hl3toFRO1LuQ6nZ2FLslJ9ZYtb2u0Fa/xLp
         Nm6raxfsYD7wmcXEARrQvSYaFJKl+JGeQGVhwumz3EL2KpGyyhQR/j1tRxY4kZmT8bAk
         +3UEVgUJSqqVUeK7DvegzE6LHx4G3WZR2C53XD6dCeCt+Ej5SZ+NpjfFfqFXU6YuMBIX
         a5ueWvcQv1Uwizgk5D20gIC08iAMJsPjBra0vzJTXkYftKaW6ETP5DURmJHO7ZG8uuWk
         rxJDATxhAULWqnNVJccPnBeN+zO2ev9+KYWrzxsAtTsnyXkokYYA6ZMHES9rXqbPMMei
         49uQ==
X-Gm-Message-State: AOJu0YxObZztXxhdNCX3d/k+s5pAlhFRlqWlbI1PJYGpK4U9ove1k+2f
	i4Y3lM5YLrMvIMSEppzeHQL/JJr8wDV+/is/1ChUxTr7BfnCo5JdqQKE
X-Gm-Gg: AZuq6aKT5CnVxWSlVM3acbsEAEguV5hNqKHkeTp4WAP9WvmijmDO+vzfHIbutiFzh/l
	uCGgMXPNYwAYJp6cMVbg6YA92AE8fTA1PmUqfl5hLXBtCMAMLHdvq49Skid1qeUsJBv3jwZItHv
	/SU6jNQWhKvCfN0YtRPoJ1xoLpr3A6HSf3ZEUSdtVB6ImI6mC9ApN34yBjStaqQoHnV3ANa2+GE
	2dhmOkJHCQU6tGIO44H/OUl8OYZDT/Hh6/OciqugKqrJBbbIzsDOnffbxa9a+c7e3Zz9fqI7y9b
	SDcEL+82SQ5v86PZZfi75FNRL3eWLfTC1tywuWe1feA6UmMzJHueWiRW5Lm3Zs+E91C9YXHvfYv
	nYc2mY4X1bcdCGIuOhk03/b8JydF8WtWKYL6KwyVaA33XSFB+e7KY0Qj9t6qf8HBHr6fXwUOisg
	e8hHKv/gNYwKOy4r/DFy3+GebpT1SZfmuZ+g/9vUlVstCVYz9NqZMik+qgMqt+er80NeccHFTJE
	OfMqFJS8GVpXxhAn/DNCd/Dl9EKCFutF7zzuQj/Uqqgj0LdvJ+vGrKlEnh1Km2rVvtVJ9xE2Pu6
	9kBac0MyPHiv
X-Received: by 2002:a05:6a00:248f:b0:81f:d605:b2c with SMTP id d2e1a72fcca58-823ab873c6emr1897727b3a.48.1769761227270;
        Fri, 30 Jan 2026 00:20:27 -0800 (PST)
Received: from 2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net (2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net. [2001:b400:e3e0:2a58:5bcf:a65d:c80e:2087])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm7866018b3a.40.2026.01.30.00.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 00:20:27 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:20:12 +0800
Subject: [PATCH v4 4/7] ARM: dts: aspeed: yosemite5: Add ipmb node for OCP
 debug card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-yv5_revise_dts-v4-4-4d924455f3a7@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769761212; l=881;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=MUMRve3kRE7pUB71SRAZkcB7pmeSsMqBTIHoXuxoOoA=;
 b=xVUYwrcxIkU1SuQ/nolx2k2lMN8102NKwD9efGjRAnqhuerUKmSd1F0eTs6qi+z2DjrAuDsQk
 ONI9NH6YPyfANvzfoyAAQenwBd+SDtNInZj1ywLnaatpk6SYI5Ceiuy
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-261116-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.10:email]
X-Rspamd-Queue-Id: 2BC2EB8458
X-Rspamd-Action: no action

Add the device tree node to enable the IPMB interface used by
the OCP debug card.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 983aebc394d9159c7e3db2e7c39e963f7b64c855..84d3731b17f7c7c87338672bbcc859de2b89b722 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -365,7 +365,14 @@ i2c6mux0ch3: i2c@3 {
 
 /* SCM CPLD I2C */
 &i2c7 {
+	multi-master;
 	status = "okay";
+
+	ipmb@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+		i2c-protocol;
+	};
 };
 
 &i2c8 {

-- 
2.52.0


