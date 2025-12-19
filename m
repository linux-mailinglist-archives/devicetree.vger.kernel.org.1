Return-Path: <devicetree+bounces-248108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC95ACCEE5C
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 806AC301B771
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF9222E62C4;
	Fri, 19 Dec 2025 08:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VAqkhFN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0548E2DEA95
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131814; cv=none; b=UHDknTk2SZUWH8xJr+w0yk6ixZZ3qjYCaR/ia9i6VMun8cOkB2h9XbuVt1qlR9KDkzFGTPuQbfKlUG0vEEDTGFH5ALDOGgv/OT2xUEHP4/mh7AhbQR0GCHt2b2UukSrmJVhbhA4RZ3nOLZiCOSbWIboUe+qxnRPRck/eJbYnLH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131814; c=relaxed/simple;
	bh=MUMRve3kRE7pUB71SRAZkcB7pmeSsMqBTIHoXuxoOoA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e/HPBD5RpHKyFpvGCj3R+e2kLjQHf5fj6EcznudtDVzZQqULwL0FuAtcsJb8D738mbOyBGWMph1xfpdfVczAXE5y96+BCNojwe6/yu0NWyd6e2SsnlYSYml/lujq5pxPagzuU2Z5QzyBAJndRlKxKOFcgTqVtFswz/YHbPHaMEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VAqkhFN1; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7e1651ae0d5so1194116b3a.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766131811; x=1766736611; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uPIX0W/QwqFfqblc/FqF0IeuPkn1Wyp+rRntpvN5lJ4=;
        b=VAqkhFN1tbeY+Ep25EFDGR8QEAmUhKU9owGfwfIsFp0FY7DTfbZSscPCvRxcqNH2Hh
         2ubZN7mlhtw0mNX1IErM+vB6EEo9vJMjNfwVY3ux31552+XHXonPu1Y2tkmn3KC6xqr0
         WWSmVSre/9w7xhITIox63A2NPcH39DCcRZTmXH/Q8j8lICAk9eS5v0P8OF5ehy7gc5eD
         FMmC8F4vVhpheEbieX9BpNge64C+JOhbuIuue1AseH3+a9RGwVgVMnYzmRGADztqyA8T
         EsUS4ujQ6QCe07GxDOlwsO/GvSeolPuXgYdVz5qdOWzWQV1xvE+2W4tPW8Dg7xQ37SfB
         FZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766131811; x=1766736611;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uPIX0W/QwqFfqblc/FqF0IeuPkn1Wyp+rRntpvN5lJ4=;
        b=wvbkHy2BWSmvQnO9wWjZGcsyZ/dUVUxMudxQ85tP5qIUCZHv0Yz83IWlsCcW7ghkoD
         U+PoKYiXLhLHubewo8x2Z2b6RUOtv7iZ7YVKIZ28er4hBvr4abZtxzDdOhBDLwlTkbUZ
         MM6qlxA+mpDXPSNo6porE/xBhlx3Y5k1xzS5Nf6/qkem/Klot4xzMcY41cvJTGlHBubw
         k20UrO3GyltITAtC+0KjKxJHWgoIefczQQaM8reCIGIdEY2KncdCWnNApVRBUDDFmrhv
         NYO+tVubsrOTgv7rej3fOObu2tXAdqC2Dd3n9u5oiWx1JnZ7GE49DkwFe5ewoTdJxUtY
         Vvdw==
X-Gm-Message-State: AOJu0YwReBufWFchWMUzdZ4Sl4E+q6WYd+Pj4g8952VKaXgLrs1exqOZ
	wYiUbB6vcXu7k9B0TIvEQOqPONRkGK0IcqJYQNM8X2scoeHsjGK/H80n
X-Gm-Gg: AY/fxX7LV8WlCauqryO3raRLa6llWYiJ8CQg3g2QAgwqHLv6pLwojjhtGpIVPmaZ+23
	gQG8y3GV7XJo59rMWNAYSextjhzEYGj/1aKmE8CJbfbjZT+UHaAbQj0F0TuxuJ32PCAsYB5Gjkw
	vINnVn/Z7bEMWgPXdpz43RRsa54LO5g25GowkjNQM4lko7qG4yg61DwOiOeol1oyq/pQ4LDuedE
	BPPJQKNSp5acuAsadGFcr57F9kmiWwcw951yWDERGknwJhqGtmUoSXc3P9o0K4gXyM6j8CYaxKF
	+9Ihtxlzhxxm7fRM5SSmwvvqPQycpHg0p4e5Sd7u/+pfEhsSn/7d4w/VQUlEunaL3ZD0PN9x7yZ
	2oke2Tfhjzyyqngr6/G77j/x+BsMDmSiycNEK2flRA4eeLURcxlS/hpSavU3qUxpfo0oKr9/+AS
	nOohCWW+IEMOe0d4jZgPidwbpWomU/iev2prnHdV9N8FTmZSC/wMxIaC7lfBA1x65yqVdfCKiYw
	SgJ6onNcQeVvlcmOUvrz8ffc21jAGTeu+YsTs0/b0ONDzb4W3GnzVxEaT9P04stSxAAb9wI3BZY
	w1AmI7LqeUQ=
X-Google-Smtp-Source: AGHT+IF87dMR0WTlxFT+/7+Q4zUVJL2d6oeF6cDExs7FgCtve1jDteHOK3glUIJGSLFIIdCOD5Huyw==
X-Received: by 2002:a05:6a00:b904:b0:7ab:6fdb:1d40 with SMTP id d2e1a72fcca58-7ff64211d5dmr2128649b3a.3.1766131811124;
        Fri, 19 Dec 2025 00:10:11 -0800 (PST)
Received: from 2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net (2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net. [2001:b400:e3ff:afb4:41b8:b31c:89b3:a14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423d86sm1597274b3a.26.2025.12.19.00.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 00:10:10 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 19 Dec 2025 16:09:57 +0800
Subject: [PATCH v3 4/5] ARM: dts: aspeed: yosemite5: Add ipmb node for OCP
 debug card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-yv5_revise_dts-v3-4-ca1d5a382013@gmail.com>
References: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
In-Reply-To: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766131796; l=881;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=MUMRve3kRE7pUB71SRAZkcB7pmeSsMqBTIHoXuxoOoA=;
 b=bBod9LQ2/l1kdPXL0FiT4KKMhkm7xMnJ7m3S7Ae0Xy/Iis5bj+nUNmVS1UUStudh2mGaqBoeQ
 aqDClYKp1g3Bj+g1OiRNd9fryaRH8FVrcvjYcUTwcgW3B8YpAP5hyub
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

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


