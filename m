Return-Path: <devicetree+bounces-264522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAikEhiIi2lWVgAAu9opvQ
	(envelope-from <devicetree+bounces-264522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:33:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A505511EA87
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4167C30238E0
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 19:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B01B322B88;
	Tue, 10 Feb 2026 19:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TRvBhD3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F56D2D839B
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 19:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770752014; cv=none; b=YxM9p3pLOTEnaEdiieDRaxlspuA0y8ifGJEnv8fhHTedKZ1kwh0rvrZi9pZNovCMd670BPKP1OROpl3aKNWA2edN/bX5BBnGWEmJZ+k8DX+niCyeG/iYhjSPm/MH1FXcqIkRWdPhjJ+UfZH+ljD2uk/bgtCZnfehPMqYhF011Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770752014; c=relaxed/simple;
	bh=tOxwMlBPb2WjRRdQkXGGJ9FrS0pIDd5TW9EkQMWr8bA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RLcZZZreG3VAHeFUFx8DNIxL/KJq/rucFSKksoAkMfETJeS51vHHfmo4ouRO4DrPw+zBZbpKMYbxfw6gYeCHhpgbgCPK51kk3n0FRAPQ4nz6nUwS5OyHpvkpyiclV+MJWBzNb/06ZLPei3GCHSY8ySZgQ7uMob1zydM+u3YmTYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TRvBhD3b; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4834826e5a0so13612615e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770752011; x=1771356811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6oQpYXC+oOVLX3B1mt394dx6/WutKhxIvgHdxTMSixY=;
        b=TRvBhD3br6yGkwnY1kR0jqU2aC4Y3BEULfogQNxQblXU86HvOTS7z9fkqHxugGxvUW
         v4Iw0Waeo8zJSz2LdA2/0WymCwYqWMZL+2z/Ux0GgbsmOemw/RY/WjUdsH8n4vxnO558
         S2Ex5eeCj0TPlI/ZNlsNZyRgj9FMRQdnY4ewLE7Y4mIFK6YHKgwwM1Vhl7rxQSOD7wg8
         6QPJe5U9HDb5cEKu2G/2SqeKTGxd6Rtg6gOPskEA+IpIyM4kAdFQTHW7KEqlF41jgRRB
         a9X0mjX1k4FdWw9+8hdLooEhA7Mj4aQU6DjySVX2jGa+fHhY0DnsOagE+d8XcF2L0cCR
         QAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770752011; x=1771356811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6oQpYXC+oOVLX3B1mt394dx6/WutKhxIvgHdxTMSixY=;
        b=hTl5jt4XUsrr/pMF3C39xW2axJTSsemRxMQTZwBVhB/SQk7LoHieiulDastQCxzSy3
         hWprR3dBTWj3wzO8fM6OF70OjbsXulJha/qVmMLzOmIF078B0YO2C+xlt35oA/ufiE70
         EN2POsfu+IUB8TCbnoKiNSor5p25ZqWc4bGPcDt9WoQWU6WtHKTKF7zBOjobQrjp3Q85
         Sk69LkLZAtUdWb3mpQHMNeHdHlzv5bJQeHR2PqMtOx0xnb9kBjMzlykBlPRdkxK6/Q0V
         8Cj/NX0U2kr8g/NLZBapP5pv2gqhlN9Ny0L62txJGsNLjKmMLVnykZBrjT1Jxx1+YkEx
         Py4g==
X-Forwarded-Encrypted: i=1; AJvYcCXhF0UKvnt/Vsz75VuFK0Chd/fEyggtoFGzrUX2U/76KhXEPvPVaFo10vwulJXYHslPh9nmsX9aZ6Tl@vger.kernel.org
X-Gm-Message-State: AOJu0YzHYKozfrQRwrJ6VuZNuRBnEDPNBrcIrawk7M92D95m+D4xRel+
	TNnt+Fc/oDUxJ+Gier6/nT7AT/wZmSSn4uibfNqOdd+CzykrRQD8kA+/
X-Gm-Gg: AZuq6aITuD1Zwns8E3+CSizr4t719jhGqJkVHQ7tOLPeOOT9e9rvRbPtGGSwBSVVQmf
	1745R6ZW7+ywtH8mPxafbt0/CNBn9tTqAjolv0NKIKUPPJp7A361GPZC49+RGehIlcd+QSklOYJ
	gIMSlf7Ty6RBXdF+gZ+KO/VWwSyGTl1bhhNA2Spam9cyvJ0XYYBEuthfAHYn3OZ4bkObk7F9NOG
	EqxRyOhG/hNXWa2aJdeYCxLb9MJJ5Wl7oNbhn49c0WluaElHe7VkSZ2SKqSiPxERDOIzcAtyQE4
	MzX4sMgqv1+LaxZT+HHStcnXND0qydrGwDA0GOr4irDE5N8GdkhRSlsL/SLb06+RRyg0rlhyLO3
	bfQgQM7MjES+GoYTXLbg7QONCRoLCIMVpcwTPd4E4EAJNtJaGoh+0xSyOvwxudqtYHNjGTb2l9H
	0jiMUikygYhhPIHS/HfesN432s3HcWwImwfDtSkQtbkPPNqufBaa7VIBO0/mQ=
X-Received: by 2002:a05:600c:6290:b0:483:a21:774a with SMTP id 5b1f17b1804b1-48320225afemr247617395e9.26.1770752011383;
        Tue, 10 Feb 2026 11:33:31 -0800 (PST)
Received: from localhost (39.31.66.37.rev.sfr.net. [37.66.31.39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d82a4c4sm143519295e9.10.2026.02.10.11.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 11:33:31 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 10 Feb 2026 20:32:52 +0100
Subject: [PATCH v9 1/3] dt-bindings: stm32: stm32mp25: add
 `#access-controller-cells` property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260210-b4-rcc-upstream-v9-1-17ca1db7613f@gmail.com>
References: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
In-Reply-To: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-47773
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264522-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legofficclement@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,gmail.com,foss.st.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,st.com:email]
X-Rspamd-Queue-Id: A505511EA87
X-Rspamd-Action: no action

From: Clément Le Goffic <clement.legoffic@foss.st.com>

RCC is able to check the availability of a clock.
Allow to query the RCC with a firewall ID.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml
index 1e3b5d218bb0..882de8608200 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp25-rcc.yaml
@@ -31,6 +31,11 @@ properties:
   '#reset-cells':
     const: 1
 
+  '#access-controller-cells':
+    const: 1
+    description:
+      Contains the firewall ID associated to the peripheral.
+
   clocks:
     items:
       - description: CK_SCMI_HSE High Speed External oscillator (8 to 48 MHz)
@@ -122,6 +127,7 @@ required:
   - reg
   - '#clock-cells'
   - '#reset-cells'
+  - '#access-controller-cells'
   - clocks
 
 additionalProperties: false
@@ -135,6 +141,7 @@ examples:
         reg = <0x44200000 0x10000>;
         #clock-cells = <1>;
         #reset-cells = <1>;
+        #access-controller-cells = <1>;
         clocks =  <&scmi_clk CK_SCMI_HSE>,
                   <&scmi_clk CK_SCMI_HSI>,
                   <&scmi_clk CK_SCMI_MSI>,

-- 
2.53.0


