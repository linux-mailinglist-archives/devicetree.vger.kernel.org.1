Return-Path: <devicetree+bounces-322159-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iJlnEPsWTWqRuwEAu9opvQ
	(envelope-from <devicetree+bounces-322159-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:10:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8913371D0BF
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:10:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pzoVenk0;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322159-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322159-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FDB5322D894
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98733E314F;
	Tue,  7 Jul 2026 14:51:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BB5350A10
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:51:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783435908; cv=none; b=fmZ1j+bVmFTpulfPgVrEvGGC5HA+BmRNNFqOX7JThNbpT18RtdqVUeRfI8Ba9CnuHSgCU6ZklwR/wobngqEkgXJl+QymMa7L1s9z1hHixNZ2MP+aT+wK7abjP/tJAQS6Y/z7Gk6lXDtFjIkbQYP6dZigxocQgQSxMa/Alnk/ACg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783435908; c=relaxed/simple;
	bh=jyzSsJfeTLInPlFKvtpG1kf+z+8k62GDWsQ8d3uU84c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=opj+uMyfj8fruwDHnaZ90KqfI3q3DeH9TkSQYmL/sTgfna7XYKn+ASJC+AEA7Ol48qF9YWZClQsWHQ5+lXetfznJbSmgGGvn3xxnqZho6MK5Y/S6EG3YLqq9qcTWAyBhf+z0LXFxUpsnkgUJafGt4Q2tKbFsFBqh4svnaiOR6lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pzoVenk0; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-493d92b7db3so26769945e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 07:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783435902; x=1784040702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VNFZAwQbfAY/X4R2S4dzYzrJFeb4tyhIADKaKXHVALE=;
        b=pzoVenk0oa0/O8df7bqT0jvivDUWsyQ0WqCmmDbn9uZ1oB2HwCvHm2oZgPumD4Q7dn
         ItHCqMK7wkVFpUNqoveKRqNDhn5HjLHCn9bKT6vqZH02loVVmB/0SnaSEf44heMftcoJ
         eDRxidmkK8/nbzqbC57ZV3LOEnw9ECBlzEGX6H4mHhYZ6N8wAQsuCjukzHfErN0lI076
         Se1fELoZmIvS/pxVWKKuBQ+qGMsumzPginJigZtMggEvQvyd4/p9vb0/xHJlYmqJFpze
         8Iuq3H21BJuKxNXd1s2lEQNO/qFe6LRAeVXINDaj+zFsQGzChr4Y4z2oBL64BgGAqa74
         q6pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783435902; x=1784040702;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VNFZAwQbfAY/X4R2S4dzYzrJFeb4tyhIADKaKXHVALE=;
        b=QMU+6Hnza4iuNWB8QlCB2UQWzBftAyOjGZqxBE8T1bxwJVpT+5Eis9bh15GwZ932G7
         QQCOvPvV4ocuSSe4KoCv39v6Y72+L7k+xKyawL0ztFjHrAA2vNq+sqb/e+eaPClxuXUD
         dEshW1OtxDUZ+FVPxe5KuoSZOUGAGLeQOuH7FzaAoPdDBAFdJX4FK9pxvTX+wRIu1Wje
         VyZl9ZFvAbtFEtQxTOiwbk5Qaw664BMSFLfSSdy7vVOqa0d5R7er93c5D9Y4M6JXI8vC
         8IvfOYeoC9atk2/efXsDyiapCMeX46fLPLV4jPqB0RSujIfrjp0RbmZt+heEbiaZ9n+u
         euiQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq/ECUBxXcs1iGrS6dYqac+IzVkqJq5o5PRWsY/qrxNyDHVbw1MmiDxQFdW9leKS2tlPWQSArFNf7b7@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ2j0YbZZDyNb1wI+QraOXbQekyWpvOqpLitBthmQ0J+mD9OSH
	fq09MO2ca0iNvBGOiVXFuCwhgiSDVHFbgU16niHXmA1f20slM6/beajj
X-Gm-Gg: AfdE7cnX7hpny1A9cEq643kvFyG5oCciHK0RIc9Hmdu3eAJMpWokX+cQ+BENIN3Ab59
	VSeAAHZNJ+OtKzRghVJDBDLwXjc9M7U62FcXdqsYUTI1nVKTcpwwTskbYkyU39oCvOz2D9sg9ff
	bTP/Q9t040QderkC6BPeBU+TUNDCII1Vv5R6c2fjnZs5dlxAt9C4JVffDQXw4hdiQQkhx4NyYr9
	SSbT8rz9/dkmkv3meELOQhCJa7v6rpuQ/vbBg5wtqtW27jPzTOwELMV9kAHZzJA+kBHaDszyPb3
	GdjzZs6PCMn8r2TxGBgQxoGhA/7p+cez872+eRllT/Kjl6D0OSrtJkMDc+cJAsMfTbv1Y7dp++x
	sF+V7T/DMTyoJebSFRwoox5QWd8Fh9yMdjXzIaq4TrPDUbkU5z/8MMZzXZSNMsOFhQ/2Yqhv3Yi
	KLxR9/9RRdsJzjUxqaSglr10QZoaHcJn95zNeijEOiSt6FHz8+
X-Received: by 2002:a05:600c:6096:b0:492:5bb6:6d4b with SMTP id 5b1f17b1804b1-493df0a0bdfmr67583005e9.34.1783435900503;
        Tue, 07 Jul 2026 07:51:40 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a4ac:4e7f:194a:852e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0ec6e64sm105192695e9.0.2026.07.07.07.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 07:51:40 -0700 (PDT)
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
Subject: [PATCH 3/3] arm64: dts: renesas: r9a08g046l48-smarc: Enable USB2.0 function support
Date: Tue,  7 Jul 2026 15:51:32 +0100
Message-ID: <20260707145135.247565-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260707145135.247565-1-biju.das.jz@bp.renesas.com>
References: <20260707145135.247565-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322159-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:biju.das.jz@bp.renesas.com,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,vger.kernel.org:from_smtp,renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8913371D0BF

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable the USB2.0 function controller on the RZ/G3L SMARC (r9a08g046l48)
board.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
index b189ae8e808d..a3c491778aba 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
@@ -97,6 +97,11 @@ &ehci1 {
 	status = "okay";
 };
 
+&hsusb0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
 &i2c2 {
 	pinctrl-0 = <&i2c2_pins>;
 	pinctrl-names = "default";
-- 
2.43.0


