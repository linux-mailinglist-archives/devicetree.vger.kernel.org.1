Return-Path: <devicetree+bounces-266786-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PTIE6TDl2m58AIAu9opvQ
	(envelope-from <devicetree+bounces-266786-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:15:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B911616436D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:14:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 662863040FB8
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 02:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E6F275B03;
	Fri, 20 Feb 2026 02:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XEry5pjD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C848C285C84
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771553664; cv=none; b=gq4a5c3d78kFIKxSIh3IKD3A0cftVYPhqu5l1UsrP3OjCHbX2u/cTUTu6SEt3iP4qUIbFTu6gQ5GdqAhA/NhySprv6vdFfK0wJwJCe4cTxJae1jqKw4O1oYcWZ+MBB3WUYlR3Ie71oLf+VpbDnSzyaKCZLiM7N2nyv1XFC/yoO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771553664; c=relaxed/simple;
	bh=BiWd7eVt/SkVbv1EnR3dkcN5muqtFs4AujPepSrWa34=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=arO75i7koJmofJ8p8TTO82Uf4taT9+p4gKFhrVZyCUsV5y3fB2DHaO4VA9DOQTtV5+1vFcqHtRrsSFEtnVf4gAhjynY03/vOtf+Jv2QRS8/FFsStXhKqyfzai4sIgKiQ1u0AG//BRMuhBTYzMxjpEy8w8i3pBeL9MOaRCHjctUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XEry5pjD; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c6e72d7a4d7so992450a12.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771553659; x=1772158459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r5LueQteSe7BZnxwZ8wBPpEEOfsmZYVVdUe5riM5y0U=;
        b=XEry5pjD+GCga1c9HIm6q0Ilgynx9mwnzDtwRdomCAPWAeBNWJ//eTme8079FzcV3h
         VYl4fr7/7Z47IYgm3TP3aIf91Bn/+hx5qTLZQt0etMEvZtoN35iaX2LsTZ7nqZwQLmvJ
         PwfZ1wDuT0Vz2ephgI2X5WIFWPZyAkEsCV9YIoN8Tc9Ge8tdvC9kc9dS4XmZ6nCkETM9
         le7B0Uc089b63wSX+rz94vul8kBWOUUDGda7hyhLR8FbAmA7LA4iarpyPimtzR9J69As
         DZV3KgNJTImUCQcQi3Zg5u5yN7aAJSFR7YfPqcSicJj7R+Xc7wLRHk3E47g6JNRhslxR
         VEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771553659; x=1772158459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r5LueQteSe7BZnxwZ8wBPpEEOfsmZYVVdUe5riM5y0U=;
        b=tcXt7nJEt+ZddXZtTrlMcX1FTWYW2Ms/NCMLBAcmv7bKm98MMpbre8XVtg8Cj3zFoJ
         1vbtqj/YWo03r++K1WqvqxFeZh+2B0xX7Fw3zOD6kq4va6FoedNrGn+sTSCnryhTD0E6
         wUJ8x0dtB06hAdeLW0ShEcYXFH2ltn03V98GqONjs4kzNLoBq0fUVjws+qpaNFMaAkN1
         7pfOox/oq3d/KbFoRzQOijvSClGSYX5EiF/aarYgJtcBhBuFo6RhOghL8VNHV/76Jx6Z
         MPBfU82s7p0tHR8bMkMxxycVtBhDKMWwS/u2G+5rp5rrNvHg2jOnCSWFkOSz2lU22Ugf
         2xdQ==
X-Gm-Message-State: AOJu0YyKFQl3HizOd9xMhz/JrepUZ2Hd7u7Ui6NmO9gaQImo+YiyNV4W
	27v9LfUilmoTr/V+/rR5YIH3XTq3rzmekgQAlxqi22nprmfwpq01MkC4CQNJV5Jq52c=
X-Gm-Gg: AZuq6aKrq+tjape9xjXyfkXFqYdOWQxWYIU8KYay6Olo/C9YAWmll2fINk7fc4MEeY+
	Yb3QdiCy2z1UYWowBxrJcVR+SwMqHsWvyuOapRwOFegh0Vx5bNj6bFIpC9BkSE/1xHVV7b0oVYI
	d7DZoUvDkDeAjueB6+oq9FcnYNIdjVOkrE0GWFTbTbU7WufQQlKt/o9iiPhiEKkYmO6jERiGTcn
	f2O4Ou1b98PD6hRVG5JlLOoFXEKEUwIZur3jzgEW0OwHUVXw+I+Yy8K7tXsKJTdOGDy+oqanQs0
	uGrbrn/3/CF7BSOU7vPFl4BsC1ImIdvtKTy8XL2aNW5ULgKTrvA4DNppnNBiXDHW4vRzx5p7Y5Y
	QhKuGtKvtC5wQqpSaNq2w/sFJ4U0k1Drx+YQCfi6wVzKKQMr2WbmTLO7Gd7LCL6AXk2WX
X-Received: by 2002:a05:6a20:a108:b0:393:74ed:7de6 with SMTP id adf61e73a8af0-39534131955mr246948637.10.1771553658912;
        Thu, 19 Feb 2026 18:14:18 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b69b13sm19607225b3a.30.2026.02.19.18.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 18:14:18 -0800 (PST)
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
Subject: [PATCH 5/5] ARM: dts: bcm47094-phicomm-k3: specify switch
Date: Thu, 19 Feb 2026 18:13:53 -0800
Message-ID: <20260220021353.40554-6-rosenp@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266786-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.7:email,0.0.0.5:email,0.0.0.0:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1c080000:email,0.0.0.2:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B911616436D
X-Rspamd-Action: no action

bcm-ns.dtsi specifies a default layout that is not correct for the
K3. Also allows setting the WAN MAC address properly.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../boot/dts/broadcom/bcm47094-phicomm-k3.dts | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47094-phicomm-k3.dts b/arch/arm/boot/dts/broadcom/bcm47094-phicomm-k3.dts
index bb1bc4e61bc2..5ed284b8f156 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-phicomm-k3.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-phicomm-k3.dts
@@ -19,6 +19,12 @@ memory@0 {
 		      <0x88000000 0x18000000>;
 	};
 
+	nvram@1c080000 {
+		et0macaddr: et0macaddr {
+			#nvmem-cell-cells = <1>;
+		};
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 
@@ -38,6 +44,43 @@ &usb3_phy {
 	status = "okay";
 };
 
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
+
 &nandcs {
 	partitions {
 		compatible = "fixed-partitions";
-- 
2.53.0


