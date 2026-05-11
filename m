Return-Path: <devicetree+bounces-295749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QL2XGk8lAmqEoQEAu9opvQ
	(envelope-from <devicetree+bounces-295749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:51:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 73918514A79
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:51:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F2EBF300EC44
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51C44C955C;
	Mon, 11 May 2026 18:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rbeIf+eR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CFA4C0428
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 18:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778525472; cv=none; b=sW1PVEfxfsQnWzjHJrQD6vlTvo+TAW1rxl/2VbGerc/O2awpGJWrSoIpnvQ60Na8Nddc+c3zYggWO/betZcn+8dpQHS/hd1WhpQ6H7bwoswMqFOtHn3LQJRAPfFhiyXjnaCvBXURjjxXFW9yqquYku3MbgK9vDapI6QT8DPtG0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778525472; c=relaxed/simple;
	bh=6cAz0Exq66CMI0Sw4hFCa7WyDA2HTF+LQZywIWIj8QU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TE2isk8fFE8HkSehY6ZUiqGluu05AR3p2p6F5nJWch3xfoPAMBfsv1qrsGZob8iJVxeq9jOTkoE3xsOM4bxzqM4bf348PaE4rQ+nEwbfqwL1IWA3uU/Y9hNxFV+WzkZQxYMcDc8UXK7qNWX5v71azX33qrLeBk1HuIHBXJ06Vpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rbeIf+eR; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-44c4cc7c1cfso3796409f8f.0
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 11:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778525469; x=1779130269; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q+XpErByE04HSy3HLws+NzAyVqid8HMXCiA4YA83SgI=;
        b=rbeIf+eRbKFaLRC2cc/JMnQlTxyM6E94vkEz0Zh7QpBDmpK3kNXLrThH2cNJCadIKL
         QvFM5kkf+lESX28/z6meJ3BxL9lNV/O3h9CByqIjgeOyWXTA4ALbf3KlX9OMMU/cvvq7
         jPsF7V2OcRFBfHj3gV1ZLyILevtJV8SbCvffP/WAGLQCfo1SdAawoi5wV+lB0q2saVfd
         pqWpJB6/KK+XfzSN76dGu/cvY2ocJUvTEMPuFhuaXLY2bQJAxWUQaD6YqTd+6pHQMFfM
         dJo9JOl3PRMag4fcZWArtOr0H2V9XBm1YGVB8ZmfYcQee1VvBNaQHj1FoCrcyo4Ve8+y
         FuNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778525469; x=1779130269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q+XpErByE04HSy3HLws+NzAyVqid8HMXCiA4YA83SgI=;
        b=Gnud1fV2NQTQb4mYNMvzYqUPu5ZpdVLylYypibFVPhBQC+TP6Qh6CVRVppkYbgLLU0
         0KL0BgRXan1rMgieNqtf6bUj2pOejNPZ3wnUBTDLTOUIkqbfS1ruIh64PoCjhTnuVANK
         T4AIpvQDc2tJv485ZPS3605NFRn2wcSUSE48qRdmEed1HeLI8ifP4r8EDIs9XtafIVM5
         JP+p4p2UpBUCTt/zIfza8VRgaMomgpQaDvsgU0zR3Nh00ohqk194V/Orj2uOvNhlyTYu
         QX9qEeM0yOyP3RjXVodamQ6UD0hZBHvM802Q6ss3kIHl8ZSWdCbkO6jOgtfuICndaToN
         wIuw==
X-Forwarded-Encrypted: i=1; AFNElJ9/RCkLQuEV903h7x9+29/P/OZFB5iY7kfZgFeCfNyLp8AubIoVPr97FjgPfP+8n0gE2BiCYgbzyPkU@vger.kernel.org
X-Gm-Message-State: AOJu0YzERJ75hWyfM4B/y3SoFuMGU+eobUxC+oqw1q1cWgVMlr4RyjzY
	ujLdiXWDlDjAh+YMawYDt+ZtGDA/EWO0Jm2nwR9RxEwu6O7JJH0Zm2i6
X-Gm-Gg: Acq92OEKnoHHr6Njo/n3alUnx3MRSzzGfP7sDrYJA2/LEKT+iO8VN8f3xUl3v1GzvbK
	w5+HtQDZTGBjmCdk8EVKg5CiXe+xbU9IkJU4oXu+SklRGV5FM7K5MOaqPHMWBn0AM7DIMR4dc3f
	sqRrcBqBtTFZh+8zZHspjRTgYkmLkOQbNNSOG2L6tK7/RYR5ESMDE5l2iZ7SpVbwZ+qVJkxPVrf
	kejh2hdABdnHpReaU5v/fntKa/0/TFfwPVF0ub+9m675c24qr/ADLZPiByqqtXf7c2MUCUXO66m
	V4xe/c/+/2vEMut8+uvRL3iMlBu+lMVzJG7aqWZ0qQ3Cmt9szumv9jrN0zzU+pSKPABZvPBrVWw
	4UWz5tFCn4/foQKP73RISktFgi+8tD1PAi9LhPxs+sC9pAoRLDxoZYO9O0QyM9cn8JyRLgzkiVl
	UEifkfgdOTvhIaS8d8Z4vLUxLXXQon6KExDJJEiW4wfaPlyMGvLhXagtkmBdqDIf7kT4HwB3wA3
	Hhxac5W4VP45+/DZituNB8OG69wXtfcdfdixtzGkWNqFA7koH7kDaKxp0o=
X-Received: by 2002:a05:600c:4e0c:b0:48a:54fd:54ea with SMTP id 5b1f17b1804b1-48e51e21378mr421235775e9.12.1778525468549;
        Mon, 11 May 2026 11:51:08 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:e687:6094:b849:9886])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e8f3cf0cdsm854775e9.2.2026.05.11.11.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 11:51:08 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Magnus Damm <magnus.damm@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [RFC PATCH 4/9] arm64: dts: renesas: r9a09g087: Add system controller child nodes
Date: Mon, 11 May 2026 19:50:53 +0100
Message-ID: <20260511185058.1926869-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260511185058.1926869-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260511185058.1926869-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 73918514A79
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-295749-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[glider.be,baylibre.com,kernel.org,redhat.com,linux-watchdog.org,roeck-us.net,gmail.com,pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[4.216.99.16:email,4.200.249.192:email,4.201.32.208:email];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-0.984];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,802a0000:email]
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The RZ/N2H SoC contains system controller (SYSC) blocks for low-power
management and access control within the CPG/MSSR address space.

Represent these SYSC blocks as child nodes of the CPG/MSSR controller.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
index f697e9698ed3..170d033dcdb3 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
@@ -1018,6 +1018,20 @@ cpg: clock-controller@80280000 {
 			#clock-cells = <2>;
 			#reset-cells = <1>;
 			#power-domain-cells = <0>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			sys0: system-controller@80290000 {
+				reg = <0 0x80290000 0 0x10000>;
+				renesas,sys-block = <0>;
+			};
+
+			sys1: system-controller@81290000 {
+				reg = <0 0x81290000 0 0x10000>;
+				renesas,sys-block = <1>;
+			};
 		};
 
 		icu: interrupt-controller@802a0000 {
-- 
2.54.0


