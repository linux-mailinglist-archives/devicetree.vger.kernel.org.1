Return-Path: <devicetree+bounces-262261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IF0iLpz1gWljNAMAu9opvQ
	(envelope-from <devicetree+bounces-262261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:18:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF97D9D39
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC09B300EE97
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85A00350281;
	Tue,  3 Feb 2026 13:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="loYbPeHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAFA350A15
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 13:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770124261; cv=none; b=pIOtPhQFfE8wBBeKdwm5JrUa/Hc8A9Wf7z+apRUc1CO00c3FWc/l0oAfObAbBZUOrqN4jlhD7LHBrlblFL8OT/NKqr8e+CT7Ul/CRlZG4wtEH2NTIrEVaqQtXr1nuwDc+mIBFNjngjLV5KeZs4TMQwKPjvHSUFF4PJkMciutDxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770124261; c=relaxed/simple;
	bh=ulzGfwFBdLI0KdBoofdp4L0xSfr6SAWHCp0feQ7Aqc0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SMA7uoWsNsYr4qcr5pRcotas6AmdXMJ+8h0lfY0GQTsOXlZdy4vzkzoG+C5P4XBwjAOH0rDvLZMbHSr7OW31Ma9DuWjKwIWhH+y8RIbiOSwmFvfLI9WLQbdVqxrtMg9y1Q79QDtn+ZoMrRvJVFKo4pWYQVqK1KrZarQOujzb6H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=loYbPeHi; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-481188b7760so37780775e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770124257; x=1770729057; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/C1+Nl/4wmQS8vlFidYpLBTK2ReRUCvwAwBWNYGjZk0=;
        b=loYbPeHi8emLCmXPwQJUELTWbqyrr7DkKxWTOSkypNIf4k95Mr9f2nlmrd/0biCTfN
         UKQOU6bygXYR+86lVJMsCg0L2N3y2G4/3TIJzInbBXvw9gjTn73tk88WtEXRvv+fli2K
         fUIjqwL7qT/0YkMgCIDMAN5zT0LKINeo1Mr+FpEeCTFhPZkNNuucG5ZBg9O6L1bQDYvb
         b9WaGojxiWOBXe8Eep1J3JN+B9GN+D9w32zqVFMiu5i97iZtcklc+PkVLBvh1O6RIIwq
         dZ0xuxvE4yqBNAcciTbc6xC4nOONh5ZkvO5kiPuLYeSkJAescf+Si0C1I20s4Dbqjfz9
         NOug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770124257; x=1770729057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/C1+Nl/4wmQS8vlFidYpLBTK2ReRUCvwAwBWNYGjZk0=;
        b=QEG8yQ1geNU5g/YxJr0daiyhcRyNZWouI6gmuEQDBRmDREKiKCJbF/AIS1TKHTNAlb
         3QA6GWzO525uqws6RpLYeu+DD9xhMdGeZDRCMjP0Wnej/SEK7MGVqr8WWsUV88MUcr8c
         XpegV+0D5YA7gDPp48JjIQmjhLG/FSmbVKN8mMn5eE4fDQIdYMpuxFQeTCeK8SzBg5bA
         xc/pQRuwPPVoY63j3EFtzBKxMTFrrGLgPNSc9BbBhgIiobKGRJyLyrIG9Qy96sYbIbn+
         ld6qeQWMhJPcKLmE4JS9FY/8rV4ttp5zaxDUTabUj33EHD8MLleZVbNOoU6N/59EpqjE
         0/vg==
X-Forwarded-Encrypted: i=1; AJvYcCU9CKhSI67F8DrlkGXvyyydvaaQ4WYmTAAFX6A5H6lbaWhlxjLlyyh5tW8q2wsf8lzfSCCdHyJbymoY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3XU9/qT6pF1vqqWYlRuf6sra6/Df63OT5AlR+Zl84l0Zi3hxT
	t9E5FiEflnWpCJhP1BsnOvS+DlP3x8mqo+150Yw+TcUJXIzYX/cHVLS8
X-Gm-Gg: AZuq6aI0LYgGOhVlWbEi09Go8Hf5BAUuCVOLD8MvHID8z9qIuH5OyVS8goGDYoc3/RL
	Tt65nNEzXZ+eSnezyzxXSobe0dhwhyAHHiG62w5I8e+Z3udEwKo2Bz9kfvtx47dL/eVXV+a9P2U
	Omatx/3YWanbjauIqI9HlCx/RxE9DJ7VgEaKCJuyeoRA3BLRMWuEyuDFw7GB6tLPuuc9b4uuKoJ
	RG4I0w9pNPoQvN3/anNVQ99ra7J0Ck93fkc7dpHdfA36VyGUsueS/124N9Ukk0m9Uvamyxqegf3
	JJd+zdsmZnO2tHNE44kzQMRsvzpzNNGyKthJdUMqwL8h2wHaMDeTTLFUd2kw0Xv4eyzQF5Ib1CH
	jZEqVAhYJtwnEPTExkbSy+AbAEolnXtJOA1AIKXe2ZELINJlu1b0tFbxgl6bwMdBEEZwVGVHtos
	5KUeCxX4zrRnKlp2miiA==
X-Received: by 2002:a05:600c:8b22:b0:47e:e4ff:e2ac with SMTP id 5b1f17b1804b1-482db4a7547mr192425315e9.33.1770124256880;
        Tue, 03 Feb 2026 05:10:56 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830512ddd0sm63662185e9.9.2026.02.03.05.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 05:10:56 -0800 (PST)
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
Subject: [PATCH v2 08/10] arm64: dts: renesas: r9a08g046: Add pincontrol node
Date: Tue,  3 Feb 2026 13:10:31 +0000
Message-ID: <20260203131048.421708-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
References: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262261-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.180.91.224:email,bp.renesas.com:mid,renesas.com:email,0.168.77.240:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.168.38.224:email]
X-Rspamd-Queue-Id: CDF97D9D39
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add pincontrol node to RZ/G3L ("R9A08G046") SoC DTSI.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * No change
---
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
index df61a3b77368..a92a4e07cc10 100644
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


