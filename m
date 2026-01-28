Return-Path: <devicetree+bounces-260403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJfsJPMIemkK2AEAu9opvQ
	(envelope-from <devicetree+bounces-260403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:02:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4996CA1C1D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:02:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 606AE3068D5D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A784F353EC6;
	Wed, 28 Jan 2026 12:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q5hIsRVY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45384352C5C
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769605144; cv=none; b=X+HB8s44noNQbcG24b6USVA7C3Y28j/VbDH08E4rz7W0a5hay60HQ4fSFi4YUkJjCHpWN68VX7ZWuQmbE5kWn2iyzlamiDBqvywlFa/42cd3sqvpi27hNzIzSS+Ba9QGyHIm9QH7VkmLzmAhr0A/YcSUbJXqK+F+pLmyxItysp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769605144; c=relaxed/simple;
	bh=mPHNzkdxhQ0WZ5DkwNm0IQdgUJMl+Fmoru7kIZpRwNE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mr2ytxkoskNu2fT2VbuNmQNIh0QLhv9AVSt/HNP5Tx9pOmNy6VLhzlpLm8raQ+wdqmet3sabw9HHzSh18nUZp6fIF5wzjdTczNnIfsfoYhpIfkbNAw8CfIv59lgyZBMfb55WZdzaBLwcps40Yh5ocAcwvQdzPVlR/okAn5NuYs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q5hIsRVY; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b87677a8abeso1031997266b.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769605140; x=1770209940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XThvwv1ifJ0OiZooeSbPvbfs+lFNOOjD5GuZJh0mNdM=;
        b=Q5hIsRVYfsbZoJ01FRZ8o4bE097UIsi8llSjTXyEkk8VYtSHgEwAJR9aGwN2QmlctS
         eNTIh9+aySbCfWOC3kg2C7bfl1McgX7+YHgSPWaKdj747oZ7Zv1U8lQZFfTbO/rG/H5q
         reSCj5Jb6ZO2VW9NYhnUl/9lRdRtt9zOHJdDiK5kP8U1qcrfK5iT1Cgr34N5YtayIMua
         T+uY728PfFShuq37neWL/Mr5x/KAHny6vRalxBLDqtWOhbaI+wXyVoFWK8UmevIRKm/l
         1NB+/55Jen9QeXyJZDZeaQc2iKipWW7/gh649LUBUGrMzS3KCYex9+D5fDNcYvTT0pQy
         fbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769605140; x=1770209940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XThvwv1ifJ0OiZooeSbPvbfs+lFNOOjD5GuZJh0mNdM=;
        b=iqNXVK3gyL+X5o+ziiU4TdbHcJOOL33SPGELZVET30wikqV7MxSAmBRnx3CVrVV+rg
         dqsAd35yBNm9P14ZM6b87o0A9qDhYKnh/yrIk9jm6YXK4WUEeiuA7nrSfF5FGYxh9Rc1
         D9xe1Ctcfhpdt+1ot5TkTEYo37dlzjoebVlxc/k0Em8mM3Ox5HDnkEABMSPxQNJZqdjs
         19QL5L/Rb7ZTG/eFf2XTtp5Tf1W7YZfasuz13lAJmgzfCe5ekjrhjbo1nVCH7Z+xQOWB
         8wTZ1HZEDy0d7oDXcv28fcpEjIqc+/rhGMfQSEhhr904inZigztSAl0dw2m0hUVOb3ex
         FN4w==
X-Forwarded-Encrypted: i=1; AJvYcCV01Bx9BlSp1gL/U3NwwQcfnjVeqtSPXAhxCu39Z9XwV6BXvvcnsZvh8FGIpPxJYB+WtdGbfhhBi41A@vger.kernel.org
X-Gm-Message-State: AOJu0YxIcuKZHErXhLSXPxea0hAWZgF1CGgTOWR1PhZIZv8ABzWQyVjd
	LYJ/x1ybqldpN/LdbVgrA+taxmXEOPN5sYbGb6vVtxk/tVyzHoySZZ/6
X-Gm-Gg: AZuq6aKRbPXlyMzR1zTWmpWF91VwN0bLc+A5dVhjlSCuN3UY4L6ACOUAquKs3uJIeBv
	gEpdW+BQnp7t2RY2rQVRijCyPGLjp8fs8nk9tB4WpF2oLeJDSuq+JZh9mvCZGvUUaQkp146tjI7
	y6Ubp57VIM5hXbknb8ivDL8NtrATyoKdgyx3AuS2KUG4MnpyehzQ2mXlWzNAtI+cu4Kwg/Oj8qs
	H9Hd9GJ/juytW2PhMwG0NdBAHGKO67qO4P2/y0QuxAoVxZUKeaDN9sLELbnGBhzY9vC5S08S9yg
	HAEa8S1+PIvmKbRFgr/6WwkRcRdcC47dnc2mTPRRvjKeTI4k0Ldn0Q/AVjUVf1Lwu3tXxgoHj3+
	5iwsLHqMDq/c4HEso/X9PwQmKvIfRxu2B4eBuOKHxF5nt9tubj3RcJb+Q/aCT+fTkRi3Sdv1Yg4
	FiO7OFwoVVbAm3muqv6vPO9yC/wIJSlTcv53s=
X-Received: by 2002:a17:907:3f93:b0:b7c:f5b6:bb52 with SMTP id a640c23a62f3a-b8dab4455ddmr378624766b.43.1769605140120;
        Wed, 28 Jan 2026 04:59:00 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2f3e26sm123344966b.67.2026.01.28.04.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 04:58:59 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH net-next 8/8] arm64: dts: renesas: rzg3l-smarc-som: Enable eth0 (GBETH) interface
Date: Wed, 28 Jan 2026 12:58:45 +0000
Message-ID: <20260128125850.425264-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128125850.425264-1-biju.das.jz@bp.renesas.com>
References: <20260128125850.425264-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260403-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.7:email,2.220.108.0:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 4996CA1C1D
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable the Gigabit Ethernet Interfaces (GBETH) populated on the RZ/G3L
SMARC EVK. The eth1, pincontrol definitions and hotplug support will be
added later.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
index 7c21afaee9bc..f52af01a7eff 100644
--- a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -8,6 +8,10 @@
 / {
 	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
 
+	aliases {
+		ethernet0 = &eth0;
+	};
+
 	memory@48000000 {
 		device_type = "memory";
 		/* First 128MB is reserved for secure area. */
@@ -15,6 +19,37 @@ memory@48000000 {
 	};
 };
 
+&eth0 {
+	phy-handle = <&phy0>;
+	phy-mode = "rgmii-id";
+
+	status = "okay";
+};
+
+&eth0_rxc_rx_clk {
+	clock-frequency = <125000000>;
+};
+
 &extal_clk {
 	clock-frequency = <24000000>;
 };
+
+&mdio0 {
+	phy0: ethernet-phy@7 {
+		compatible = "ethernet-phy-id0022.1640",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <7>;
+		rxc-skew-psec = <1400>;
+		txc-skew-psec = <1400>;
+		rxdv-skew-psec = <0>;
+		txdv-skew-psec = <0>;
+		rxd0-skew-psec = <0>;
+		rxd1-skew-psec = <0>;
+		rxd2-skew-psec = <0>;
+		rxd3-skew-psec = <0>;
+		txd0-skew-psec = <0>;
+		txd1-skew-psec = <0>;
+		txd2-skew-psec = <0>;
+		txd3-skew-psec = <0>;
+	};
+};
-- 
2.43.0


