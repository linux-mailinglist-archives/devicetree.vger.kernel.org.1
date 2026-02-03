Return-Path: <devicetree+bounces-262185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDSFD2HQgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:39:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE60D7D6A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EE7C31551F6
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D14133D6E3;
	Tue,  3 Feb 2026 10:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PzCJ6CgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565AE339875
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114644; cv=none; b=dcDRHfWWsoR3PFlOxfFvaryPP7azrnHwz+vKQfGRql8rxcc73LEiKqwaFJdOhswixn3QWbXUF48LLvYFdmb+s1Jjo35nZ9lsb0qKbNEac94TceFRANRKIqCrSwABmOMwV+IkyGco2FFdtOo44mZVYtQVNb4av9LsFF2ZCDOrt8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114644; c=relaxed/simple;
	bh=Wq+a0akVk10PgsktNJq5HYS6ak+Cjn/XFmPIdz5iQj0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T6pcHgx0rtAjZMOEmGu3s9bkCimwDJNReAE19F9n1VIvSCUcC33JVmOtOP/aM7Ugt8E/XqKVLo41qxQKXZGpVO79XUfykbHNSwSqv/48XfogpPVraFmTxia1H2Q7ektbFNcSKjqY4uaUvz8JW45zf6/EpuP2u6ArSFGp6noGywo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PzCJ6CgV; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-4359249bbacso405284f8f.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770114638; x=1770719438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ikFL8PTnKbTqxK17C0/xAPkkgkgnyx1QdclrpYFlkDg=;
        b=PzCJ6CgVFtBSRN8+2oZjjwJRGYcDJ0jI1JYPHpruuqdy8ArB3ki+fNqXSge8F6hCIR
         5Mk4PbNqCyYmmNf0XgFoUiL7ALBJGqyv+Dgg92qGSYBKfgOqDzk7HRacA+Q3ZIWGG+Q/
         VHO/gi3fXJROKiTOBH8T4Lws00aGabKAsfMFL0/EX2Z9WD1PjlgkC7HlOPGeF/gZ8mH2
         HorG8FpUzrdQSQ5HrHzEuUyk6dejnb/p99qe/Q+xOhTcYiFOi+kAQKnYiMokcUtHFccV
         GxhD4I78pi1bPfb+QmJzatD5Kf/21fusHwoA9Ive9BPZjI2vk7c538n5o2TM2douJdzJ
         c0hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114638; x=1770719438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ikFL8PTnKbTqxK17C0/xAPkkgkgnyx1QdclrpYFlkDg=;
        b=P4IQ1pLBxwbWkQ18rDEnHdtgVdbYoYPaXFTZAlVWQOGjH6hOgNlNNbF6zBYgf2isJ8
         BY48nTDOqTfNK8iGwx3Jf+Wag/ksQ9t2QmsG0wkDwkGWMlqK3hUKtNuPZoUC/mMyybKv
         WWBgdiGny1OayJAZmolKllrEWr45AHaKe7EdbfBzy0j+r0HZRDCRMo7QqAZiJnpIMOcK
         qWbgtthMANJniaCKeJWbOfdLpSjhYW9wAiip0TIheEEpUedpssNX2GOHER1g4whQK5yv
         BWdwv6OqzUVOKvkf+/7k7WuFatZmgQCqXIMRupmnjmB2E89wSSX+dcKk6sss+qonkcBD
         +F/g==
X-Forwarded-Encrypted: i=1; AJvYcCXDPHn8EUzbRbgegnvjNlcx5jMiR7SBUMxgv5s9I13SikaSft85Zm3/W8uqxA5oliEBmS+Uqml8grfS@vger.kernel.org
X-Gm-Message-State: AOJu0YzvRH89QhijAHDYKRWnibfp2F6BbcGuJqZRNoBrdPEZBjLdC67P
	eQan1glX2rWXbxxj+VJ+9h9nWsyxLgB7Mbh1uYoMpbeWTv0q9MSvQ+GK
X-Gm-Gg: AZuq6aKNQkzQeZ9fRERfPKuKgtJiRmNOLfIlY4Bzu1C/wjkA8rg5bGfdThbPLRqudk0
	O+zCQIn0vI6oTOnoA4y9VYvchu0V16SgkAitWSTRYyDPfNkmg307oc8aPgbOeQ+KoTLdCCNLAz6
	OiZgbswifKa3sI4iGb62qQw9ogo4Lx03PxUzwi2BmOm+4iec7E2qUTa78UoisOVyaIsQUDG7nYU
	yUG3XeiaZU2ipaVKR+qqi3CatIz5sQVqw0ke4qoCs3v0U0VPE5ixL6aJ9Wz/I9CPDBymaqy1IWh
	mT6NyKMFj5t3/mJ19htUl5CRaEU00jsxhZIBWmnAsk9j8FO0qV/sNrRM5gSBa99CZbjcAFdL6wS
	kwL4Ok1cetZxxWo8FMQKVlwACfMkc3UV5awQbwJb0hYXTlhxTLqqvewhlbC+O6BuokYx8yPpyj2
	MzolysKxMrsecCzd7mrQ==
X-Received: by 2002:a05:6000:402a:b0:435:985d:1023 with SMTP id ffacd0b85a97d-4361130e9d8mr3936898f8f.7.1770114638382;
        Tue, 03 Feb 2026 02:30:38 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1323034sm53160961f8f.35.2026.02.03.02.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:30:38 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 08/10] arm64: dts: renesas: Add initial support for RZ/G3L SMARC SoM
Date: Tue,  3 Feb 2026 10:30:16 +0000
Message-ID: <20260203103031.247435-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262185-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[2.220.108.0:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8EE60D7D6A
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
extal clk.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * Dropped gpio.h header file.
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
new file mode 100644
index 000000000000..7c21afaee9bc
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for R9A08G046L48 SMARC SoM board.
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/ {
+	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	memory@48000000 {
+		device_type = "memory";
+		/* First 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x78000000>;
+	};
+};
+
+&extal_clk {
+	clock-frequency = <24000000>;
+};
-- 
2.43.0


