Return-Path: <devicetree+bounces-266784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oM8ZNYzDl2m58AIAu9opvQ
	(envelope-from <devicetree+bounces-266784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:14:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD3D16435F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4AEE03035888
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 02:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2280827FB2D;
	Fri, 20 Feb 2026 02:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JzVIeluA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FC5286D63
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771553658; cv=none; b=Uv3zDfQihA3DSN+yu5E+4DAlNcDjNMShTGMPNDmd62SyZd+9CxMFJx19hXiuk9oNIfly/W9SdNOhlFAn7OD1RcdvFCRT1sOX2CRZSvI+0XkNMJlMFnb7UeA164qH+HudBvzMXi94KAhHUO/eVyGXh/W1g6oBuOWritAy/X1XfqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771553658; c=relaxed/simple;
	bh=ihLUqtmLNAipNrceN0qY9XSIZi4H/7rb8Gy3gAq95eQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iLXblDldjV4/rK7q+qODRigvupSWfSAje65+MK6tf/4DYRl6301za2b7RCbH8rswm5HCaq9lZrhURps0rNVPYtjTZ0XcQAI4Ra7HCycpsIrr92jjsBs7SU595epjgr+FSnShoAJcF/TaMtR9CQMICaSgPKSxIWQ/pGV/68FQspg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JzVIeluA; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-82491fbf02cso857451b3a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771553656; x=1772158456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ueUIh90NJCaKnHKC/7S871pMhBZ1bq4EjRF6jq/WCEY=;
        b=JzVIeluAqMZRcJK3422FVqAdjf/krcoHG/yPEqmhYHvNkdlzvRDPHAzVZzw0W7vv6T
         NL8iopKVUhbSqQAZ4ibi78zef0zay4PgsyfOx9bV5pR+9HvrL8EowQAGG7rHL2yD//Az
         vGBmII90t5bHYlJXRdt1jrlo9QuEbEIUACLBMGejqLEiqZxEi+c1WZNyHe1YfDaz7JG8
         +lIcesbSmj7+hcDDTx1hWG+f9aTzmzxTWMNgWpuxId5oIzhmZFraTIOGwgdgF38kgOHN
         zYO0k96NOXEIIiqkyeYXIxagq415smDRbv/0uvisaAA/tr71ZHATp51cjU02Q8fMDnim
         hCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771553656; x=1772158456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ueUIh90NJCaKnHKC/7S871pMhBZ1bq4EjRF6jq/WCEY=;
        b=WdrklUMzvgSVQH44mNdpvFvJXppP+bWsLITTojwmnXaif77PjZ5S42RacGU787xYzB
         faFokQxqs+hyATzxiMJhkoMZGXcKAKzLSqsnnGbYGhaqUwwkBtu4QwlA/JpEfLSbdYNi
         tMU1NnMQY++vMSnioCpykDw6YkuNkDDpM4nzCvZ84eFP8Y8ortKvOX+sJ3oVg+RyN7qY
         TiN0tV1wCAMqXEdvYpSvKlgJ2PJvVcF6ANYs3qlhExqXUKkchTL4ZrQ/LkQ87zvVxW2l
         a7Qd2K6AX0O+MkZESSU3ZcHh9KVIlFsCx7f/WRIdarbgl7p/iSfXRyBBiiTmFmalUz7d
         eNTg==
X-Gm-Message-State: AOJu0YyR+vwizJocyt3LGxxlJDDZ1ol1UZfBQcRqhcEO7/gGKf2XYtxX
	INuO+R1VpS7GK1KMDK1qaQlK5gx6Vgkeo5J33r+lZuPBhRaZ+GUzexPqUPS7SSFDi+E=
X-Gm-Gg: AZuq6aKtlX5j8Jqh9zaafelhsuxGJGuqU+2YcOyuKCcJsn7OHhRq54lv1Ia1tOOo0rv
	yPYQn7XfJuT3AmAJlDjG2lFRlhQ54o7Du7TUlV6IzWmy6GAHI0Ce6yYZx14NOVQZJhDtRkk3VcL
	4cbs1q3Od+/qzie1BWgnZPZ2YHdq0UbuqYRvMrgY0VylFdvDadzLxpOwc1HYlrY4izsR2rPC8ew
	2vzCX7yfqlS3L5S+fHK67hy2uJDoNzYZaVopzcbINyWgLkZw+S92uH7aBKXEH2gSh7Mn5CiD+/v
	2Zmg4NpzlhnIp6rZ3RU4hLkaB0nkVERWPvF0fenKVt56YCgv1l/DTabrBxKMBj6bX9k4MssQgM0
	MV+0zr7fzzgvN1PRrUXys4VZvGYuX8EHzkUulLMhhiFeOzjlvsRDk+WLx393ZqWVM/4wT
X-Received: by 2002:a05:6a00:180f:b0:821:8202:44e3 with SMTP id d2e1a72fcca58-824d95345aemr17126081b3a.30.1771553656087;
        Thu, 19 Feb 2026 18:14:16 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b69b13sm19607225b3a.30.2026.02.19.18.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 18:14:15 -0800 (PST)
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
Subject: [PATCH 3/5] ARM: dts: bcm4709-asus-rt-ac87u: specify switch
Date: Thu, 19 Feb 2026 18:13:51 -0800
Message-ID: <20260220021353.40554-4-rosenp@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266784-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.3:email,0.0.0.5:email,0.0.0.8:email,0.0.0.7:email,0.0.0.1:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.2:email]
X-Rspamd-Queue-Id: 2BD3D16435F
X-Rspamd-Action: no action

bcm-ns.dtsi specifies a default layout that is not correct for the
RT-AC87U. Also allows setting the WAN MAC address properly.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../dts/broadcom/bcm4709-asus-rt-ac87u.dts    | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts b/arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts
index 59400217f8c3..f48c44ff01c0 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts
@@ -77,6 +77,43 @@ &usb3_phy {
 	status = "okay";
 };
 
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			label = "wan";
+
+			nvmem-cells = <&et1macaddr 1>;
+			nvmem-cell-names = "mac-address";
+		};
+
+		port@1 {
+			label = "lan1";
+		};
+
+		port@2 {
+			label = "lan2";
+		};
+
+		port@3 {
+			label = "lan3";
+		};
+
+		port@5 {
+			status = "disabled";
+		};
+
+		port@7 {
+			label = "cpu";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
+	};
+};
+
 &nandcs {
 	partitions {
 		compatible = "fixed-partitions";
-- 
2.53.0


