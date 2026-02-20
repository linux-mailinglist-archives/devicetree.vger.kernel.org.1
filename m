Return-Path: <devicetree+bounces-266785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBCpK87Dl2m58AIAu9opvQ
	(envelope-from <devicetree+bounces-266785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:15:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2F3164383
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:15:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD5EC3059F22
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 02:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C456028506F;
	Fri, 20 Feb 2026 02:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEPorPik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8632737E3
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771553659; cv=none; b=B0eqwB9aHWSuUHFRWPfWMi0qcplv9fmn/BWbTTBLrb1/UeV+DKfJ+R26H1b6GTayfLTcJ+ZumJR3Tqiemy6+iNB90DeZ+PbuJMYbmx5gyHwTJdcVsuHARgG/moGd6UN6txpbx57Rp+YuQg8NsFxxswdvpFYrXwT/Eg357rQr4T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771553659; c=relaxed/simple;
	bh=ffgcMypFyhsHlX9vQPBNTxtRlvEbdYbXwOyOJ1GQ6q4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ApJlAshd5C37Jj3A0r6JiBKHVTIyBhglbfzsoW+UZYbnhFKVS1od5LjRcIXlo0bXljpBwzKfjVspIAhNkzxovM+iYeJKnw1GpZH0zf85YZALvAtlpy5SjjcxkD1P/bgSanROZRvLkApYjkjp6rRZMgJgF1pT4zDz5XLjdkpH4tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BEPorPik; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-823075fed75so813485b3a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771553657; x=1772158457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z9vd4Ll8q93n00uLZsvJAbMT0LuAwyI9AhtM0S44NLQ=;
        b=BEPorPikm/YWhoGEqjVyISqFXH2AC+/XyAWRwMT8pXpOz3t2okToYTIk6GnSfzvBUU
         8Ya/E8Gk5jfz+QEf4GaQteV9OxihkNpL9SQbGEK5mx7xAIS3voSKRdqf4A7GLHf6NMIG
         bpyJ2SgbQt/hKKav1k153DEOdcYFn3N+ZDYll6rtUjerkzt57aH8u3FRnubAlfZhY8xM
         RmCpMRbuNZF9CNwc0yC0d9vuVj5O3HcDBD9sskKawlc0d/DCfsl0W56zRPhUFPIkYICY
         ztRVsnWiqXguzRLgExauoA33f9acgAYlsdKjj+IgwrWACUfvo6RaT4qPUQqPlO+bAsQ3
         X/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771553657; x=1772158457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z9vd4Ll8q93n00uLZsvJAbMT0LuAwyI9AhtM0S44NLQ=;
        b=Ir4ck6tuc69V4Lv56rgt1Qt0DZ7F3XvL4m5ngMVVhk7JOu+95HgstNmZP1GCm1gkJz
         IjIemH6AAlRF951Xtaj9zvviZ6fZ5QNsgN3WdN7yHZYEoJ7qSoxl5PZSED87plSjehxX
         uCnvtWygDPF0T00J2AVegZ2EOeJEsZYGSTZE1mAodtAwwC9rN+c0grPCmVqogmaSC2Rc
         tpkREPH0439IFEsdfLnlMqkg18S4Bdn/eUN1tGRBAVSLECWbPAy7TCxOGbUl6MRuem6x
         KDyWKvBQATBkTCKyqfTP/+ZwbQB1vaKvyh+RwJQ/tl7XvVq4/Xw2R7N+fkL+CcQR3h7T
         g9Mw==
X-Gm-Message-State: AOJu0YyYjsWOWeQaC/cZPpfmhjWXudkwfKbmNl7VI4wSg5hnoH+HnjP4
	qx0+UlDM/s0crwzaEP5EuOSrm+QejU7dFVZuhHiPiM7kVdsu1oPIBxddWIUdf/uo95M=
X-Gm-Gg: AZuq6aL8wIRnkcJMoR4BtxwT2oD1P6gW0wOQPWQaeodoCJ9bbYXuVwak2dzDUtBM9LQ
	cM68WaucZGG418BQEAKIh1Xjh9acyfLz8lTO3t/TTbL9w8jEeotH+fbS/kywmHV3iHwlUMUzfRh
	znj4h5HsszpgCP75AJ6C8Uhx8gJwrDIu2obc2ofO0TeG8T946+Bt+kRYOvXjlBNRgf7Q9bMtQF3
	wI3kNyfC7JzDIWrxggWYRs58YJoLdDCJQZWS8x+IN0nLOmlolHHw1ayO7fyclfJJFzFdxwtriVt
	Pvcy1cAmtFAU7m3C8pNInpqUOFewOkpyUQoClPCT54m5N0ayvd5Bo+xj+o96uZn79Nux4EMfmcW
	NKBbPGiYXYPeXEoZQ5tp6v2goj8ygQ72si0JQBh83VmRfM0TKBfjs5NUYnLUBOTjsWwhV
X-Received: by 2002:a05:6a00:cd5:b0:7e8:3fcb:9b03 with SMTP id d2e1a72fcca58-826baddc719mr3288755b3a.25.1771553657550;
        Thu, 19 Feb 2026 18:14:17 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b69b13sm19607225b3a.30.2026.02.19.18.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 18:14:17 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 4/5] ARM: dts: bcm4708-linksys-ea6300-v1: specify switch
Date: Thu, 19 Feb 2026 18:13:52 -0800
Message-ID: <20260220021353.40554-5-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260220021353.40554-1-rosenp@gmail.com>
References: <20260220021353.40554-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266785-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0F2F3164383
X-Rspamd-Action: no action

bcm-ns.dtsi specifies a default layout that is not correct for the
EA6300. Also allows setting the WAN MAC address properly.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../broadcom/bcm4708-linksys-ea6300-v1.dts    | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4708-linksys-ea6300-v1.dts b/arch/arm/boot/dts/broadcom/bcm4708-linksys-ea6300-v1.dts
index 0ed25bf71f0d..44cf867b223d 100644
--- a/arch/arm/boot/dts/broadcom/bcm4708-linksys-ea6300-v1.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4708-linksys-ea6300-v1.dts
@@ -24,6 +24,10 @@ memory@0 {
 	nvram@1c080000 {
 		compatible = "brcm,nvram";
 		reg = <0x1c080000 0x180000>;
+
+		et0macaddr: et0macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	gpio-keys {
@@ -46,3 +50,44 @@ button-restart {
 &usb3_phy {
 	status = "okay";
 };
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			label = "lan1";
+		};
+
+		port@1 {
+			label = "lan2";
+		};
+
+		port@2 {
+			label = "lan3";
+		};
+
+		port@3 {
+			label = "lan4";
+		};
+
+		port@4 {
+			label = "wan";
+
+			nvmem-cells = <&et0macaddr 1>;
+			nvmem-cell-names = "mac-address";
+		};
+
+		port@5 {
+			label = "cpu";
+		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
+	};
+};
-- 
2.53.0


