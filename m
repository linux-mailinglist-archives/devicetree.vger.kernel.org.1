Return-Path: <devicetree+bounces-260789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0I93GVAke2nXBgIAu9opvQ
	(envelope-from <devicetree+bounces-260789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:11:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E328ADF96
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 26287300C327
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2042937B40C;
	Thu, 29 Jan 2026 09:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ekFCyuJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8191137F721
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 09:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769677878; cv=none; b=bXTv3wNQfZFIlHv6AiJgB4K9yHaTtrLJa03qlkNcrzw6q7zDUdnRMfP+RAfREARTVpzZ7Iskr7QmOESvo01JtDpdX0Oo8l4ocME3mr+CEu4t7XW3bRfBh3IuQXiqF1ckt4xPw0KTYbTL+TdombKbmqYJBFVP8/TpXJO3ARluZQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769677878; c=relaxed/simple;
	bh=v6FdTaM3/9S+cgZOR/jP9oZ2cYA4WGpZsxblMxIWwD4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H5ZYRrvS4uyTkIKmphfYwl8glbwiAw0GzO/EEy+GYVFqiPFYehD54eUTlpc1/HGgwe7uKp8lGnh8eqsxd9eN7ofDbuK/BS0+6YVBqb1XdqVdQnyHUEwG37KdsD32Cpm6EhbyBj6aZiXWOzXexAXC9T5+Il+DNTKyg3aMOsat47o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ekFCyuJ1; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso6144985e9.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 01:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769677875; x=1770282675; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yxb+xzLrz5vUgOO6D/hBhQgk8cWp111oMhH2v5GHUEo=;
        b=ekFCyuJ1gP/PZsf61ep3ZZVggHI6M10J8OD5qdyjoXM4wppazlMHknJUMbX6hGozdF
         ixAgMLtaHUKv9L6+18qSBWk74GYKtIa0iA9m1qzxs7yy9ZNT1SlqztvKNwUWxJdlZVb9
         0BZUetnbFcwg7g3qBr02Gfk7UcDGOvQeoIP6dAkCRRjO6k/SfUrNxiHk+CAWO2q69Kvr
         Ju0AkIJpsDqXlQgbjNoXIqPrggd5Nj8Kd+8OW2PZFIAgIr9w8zLA9ThdbWhNQtaXidvv
         h/7Z9qVyPGxV+Q9XGMXzs9MYfC23zChUyqWZMWMOfnoBSiMwruEFheMgC0TApNkfTeUY
         P3bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769677875; x=1770282675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yxb+xzLrz5vUgOO6D/hBhQgk8cWp111oMhH2v5GHUEo=;
        b=JbrMN9mpq0syzS5e3MrcktClO24dBo9otSA3OSx7ByRGjtxRy0aMiqooI87kW75Fyt
         9Qfzc7b0ROgzHPWAf0cJBCoWmmUWT70p8n+nkbiKyV6NDSUi6yEpzvtH1SwZNLO110bq
         bmxholMHw9AZi58yDSDoPd69WDMv6mYoRA5tGlgTIu/QcYrRlNN4NFJEhhFI4VcT9mnr
         2qzi1dXObekrnIwcrbsuyJFW6uw+xPTh1iLW1fQZSLqS5fjocwEThkIYJhK01Gwp8j3b
         jZU2ZzIfFyuMYCRXqPvosqv9THSiMsqywT3RnFtrSSLBYlQATRIS/xdUMYPWtEPengTd
         epwg==
X-Forwarded-Encrypted: i=1; AJvYcCUZb2kUs9fBJBYYnp7/HG+xBYTHxUu4u9Lh6WNZsFnRTOA95y7rPZHG2r/B5Ts+ARu322jS/I5GmVbr@vger.kernel.org
X-Gm-Message-State: AOJu0YzHQNU6RKZgw4zsXlDBoGmwW8AalCOmmYkJn4/P/e8mGCmCkBOD
	urQx3aof+Mp0gClKS/ejyfRMCRhuTxfh424tLmcJLTovB9IsYvB+QAuP
X-Gm-Gg: AZuq6aKOjjiUpCAr0y2x4O3voyN15JowlHtr98msfhgzHgEldQz211SUUKq2po8QXR1
	TaAXCQ3o7LOR9B8pxzF1jek3uGAR7LwwmTj7mgxfVBKQtqBiz6+KwWsmf7GoWPS9JLXKjFRkP/C
	37b1HzbtbPvvf5OzJp408gzVEIshwDEG0UGdf+R/TiQcrBCLLYIEIQ6mBDCxKN687QYQl69QePg
	HgkIBLRjmaKF1LyeH4nPhVVG1TYsdBQ4YPuHs88MvwlejQ/E+plUBWylRywaGza4bUUb9LcEYpH
	w8B2J+1clTmPvuVIgIBe5JhYmpwNlQsBjow+edck+DWC+WcEb3BJ9Ee3Fvia21jnGHfoYmMftQR
	4ynXXYp9mJS/8hPvddl/uo7f9PWRs+3uEWno7jdQIRlvuLmHsm9ZsikWFcBb+ZFYdeQfRBd35bz
	+yo31QwgC1WMrDMhJf
X-Received: by 2002:a05:600c:1d1d:b0:477:9e0c:f59 with SMTP id 5b1f17b1804b1-48082891d58mr31641625e9.2.1769677874568;
        Thu, 29 Jan 2026 01:11:14 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:5792:2065:403:a80b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066be77b5sm175338875e9.2.2026.01.29.01.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 01:11:14 -0800 (PST)
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
Subject: [PATCH 7/9] arm64: dts: renesas: r9a08g046: Add pincontrol node
Date: Thu, 29 Jan 2026 09:10:58 +0000
Message-ID: <20260129091108.95277-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129091108.95277-1-biju.das.jz@bp.renesas.com>
References: <20260129091108.95277-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260789-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.180.91.224:email,0.168.38.224:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,renesas.com:email,0.168.77.240:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 0E328ADF96
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add pincontrol node to RZ/G3L ("R9A08G046") SoC DTSI.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
index 231b118ecc62..c6b042ac9c36 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
@@ -181,9 +181,19 @@ sysc: system-controller@11020000 {
 		};
 
 		pinctrl: pinctrl@11030000 {
+			compatible = "renesas,r9a08g046-pinctrl";
 			reg = <0 0x11030000 0 0x10000>;
 			gpio-controller;
 			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl 0 0 232>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			clocks = <&cpg CPG_MOD R9A08G046_GPIO_HCLK>;
+			power-domains = <&cpg>;
+			resets = <&cpg R9A08G046_GPIO_RSTN>,
+				 <&cpg R9A08G046_GPIO_PORT_RESETN>,
+				 <&cpg R9A08G046_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		dmac: dma-controller@11820000 {
-- 
2.43.0


