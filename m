Return-Path: <devicetree+bounces-266782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6K0RMIzDl2m58AIAu9opvQ
	(envelope-from <devicetree+bounces-266782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:14:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 266B316435E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:14:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40165303676C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 02:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CC7427FB2D;
	Fri, 20 Feb 2026 02:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MgRrGcH1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367B1275B18
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771553655; cv=none; b=cGWFalG9TuizGltvmawTev+YYDuCA5j0pttb3+rAtivXvJ/zEeNkyAybRLODAKX15k/OX3IDWp1aZ3TWujjEAuIAloz3WnzkMLKdJwRXff37lsr8izXQp06WizlbrDRCA96+O0h/f1cY2v3EgF+80Oa4fMWLpg8bjOj5yDkMpnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771553655; c=relaxed/simple;
	bh=vG/5YfOCtrSF3OZk1aFYdm9hlDAH+7XgMDKrJ6eYyHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oplxvw8H+98kMFrur53ii/c6BRcWs2+Nw8gTa5FIWvS4FY+OwqfKYzHbMWi77t7DT/1rzYMj+xZvrbs5Xd7URSyqaktfD4cisqxavscuT0y6z6iJ8hiW7Ef/V6zEZUm7eLep4Z3DjjT6RwLbqUYbnQmNdOYXjuxyC2k+vdh/gbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MgRrGcH1; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-82310b74496so851146b3a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771553653; x=1772158453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVIVsn7FhVGEmmpQd3To+p0nhAO6o8stxUyzkQjrFx0=;
        b=MgRrGcH1Yr6ZLIBL5pjdA7XRfANUpeN60UpR2R3nTGUfjnwLAEus8A8GNSVNoPTWn/
         X5L+ZEiAW2qAixXatpTYbPMQxtlKY97RfBpkhdcmFuP3eDSYkhzzjBA8cRi1tLo7dgoR
         yYUya6thY+jtYmf7DZQ/Zc58XLEUc8KMq3XzeVbZvKtXn60MkWHqML9LfPAMhKQwaB6Y
         y8QpYmiWQJjDlPD6u0O2SejDYEYCV4tu9PEnb88fz3928qqfLFlBgVQ5m4x8ZmffzwKr
         jRQ6bs9gc7oHpgpiynTqs+gkrhhmDxB1yHJ5z4abCPR0mNJy3Hvgv4RVo7S3OXjZ8YV/
         JRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771553653; x=1772158453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cVIVsn7FhVGEmmpQd3To+p0nhAO6o8stxUyzkQjrFx0=;
        b=kYwlhWjvbD0AR6v3McOsC2FcjIm54eHA/BOF7LmtcnRe6/gWT+25tBa9r+0BfYmKHj
         s0dklQPhJ2ObVYdF5Z9QsCBDq2HcfAH0pphQZIe2lU/ClIo6al9/oZiOK+KlydC4ZzXj
         Lqc3OUJOUtPKFILitEcv/8iqPj6TNvrZcxkstrnwaSu3+AD3z8MMF2ixhWi+WN9JRn9v
         9SlNiiMJqY0dihi46bbJ4x52Eu3iDSy57mNvDqJsl8m1fq5wfnP3g4n1SH7bcB80aiyG
         KKcZcKxiMWVUoT7mm6agUiKIBsQ/PZ7fq1hUe6nBPz/RLKIUW8U65KiViKNVMHJqCHDF
         JSlQ==
X-Gm-Message-State: AOJu0Yxas0eVLMvUEylNWuTGSLZzqI5B1WjCmhQAmJ52ZkjRktGVE6i6
	3qQ6UpgNSsf/kvVlshkKHXf6gpY4YoBVXVLm4IHnqSHd2zTbTZQD2lKjdz6JG0y8dTg=
X-Gm-Gg: AZuq6aKf6TOkyhEElZYO4dck4kRapzFgIDSeOFYvbW9MHdoGyaPDaUt9NwhYrfWfd0Y
	Mkq7pVogY/NGaai1nue0/RiehPeH90OlFGfwIEsD1qrvQHCiJoGdPNx+N3SLBTk5WUjWt1LZDs2
	Yty6Y81ENkHRYZsewFkXuHjQzE3r9JxahkCjfiO+Dvqoh+Vi2lnK5+yrnpOTGkAol//J/uSCbiZ
	rzGBXbbkSa0xNg2osTcZ6hRw4nQNlShEWTUFeXCEPhdX2yZkWPT3tIda+mhFpBjLDE3YB47By6P
	/2mo1BntbbHvfo/dxH6rMEzTmMkBVm1NrnNFFWUlZf1vVUg2/Tg+5SrXXVAvItYH+0bTXPD9/NG
	mRnbyJqWaqgUCyKD3aEgPFIaSFJXJRV6pdb0/6IcxAgqjKjyRckNtu/Ncu6FCjEovJkzi
X-Received: by 2002:a05:6a00:4616:b0:7e8:4398:b360 with SMTP id d2e1a72fcca58-826d0950c17mr116197b3a.51.1771553653221;
        Thu, 19 Feb 2026 18:14:13 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b69b13sm19607225b3a.30.2026.02.19.18.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 18:14:12 -0800 (PST)
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
Subject: [PATCH 1/5] ARM: dts: bcm4709-linksys-ea9200: set WAN MAC
Date: Thu, 19 Feb 2026 18:13:49 -0800
Message-ID: <20260220021353.40554-2-rosenp@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266782-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.3:email,0.0.0.4:email,0.0.0.5:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1c080000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 266B316435E
X-Rspamd-Action: no action

The MAC address from the stock firmare is offset by 1. Define it
properly to avoid having to override it in userspace.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index 2ba5adf2b7e7..7c6ad7787945 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -25,6 +25,10 @@ memory@0 {
 	nvram@1c080000 {
 		compatible = "brcm,nvram";
 		reg = <0x1c080000 0x180000>;
+
+		et2macaddr: et2macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	gpio-keys {
@@ -70,6 +74,9 @@ port@3 {
 
 		port@4 {
 			label = "wan";
+
+			nvmem-cells = <&et2macaddr 1>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-- 
2.53.0


