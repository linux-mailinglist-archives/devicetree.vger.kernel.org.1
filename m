Return-Path: <devicetree+bounces-266736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGqTEkuHl2kgzwIAu9opvQ
	(envelope-from <devicetree+bounces-266736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:57:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43027162FDC
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D4C6F30106BA
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748A432ABFE;
	Thu, 19 Feb 2026 21:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Y5vyQeEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f226.google.com (mail-vk1-f226.google.com [209.85.221.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2AB32ABEC
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771538243; cv=none; b=N5FNxRe7E5xmbuKtH8JkwDd1qIWX1vECPoWE1htU57mUa5ll4oAaqZc9y7GbLK5GDeLxXjyntP4ohBw++VRJL5gfMrkK+wOnVDyUK10BvfQsBo7v/e/E7ed3lwuUkdGbiEyIqBRFKK2XldKbEr3qpw+/ER74iFeZ8rM0iChfPkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771538243; c=relaxed/simple;
	bh=ymgJ32QMNYCUin60FKOe1Z68d7hZB5lDstBRZvKPO2s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KtdXkumBI9U4OxPztDsjmcN4s2gODGUzCqSPAs9MIzp0sy45bqgjQxiZGVDsOXqhdbWsEshy17oinUY+jplwk5YeJKRQF6o38i58kzpJj+6Vq23B+vZ1Cj84uPvV1CmsP8jyfNt2k8aRPvKQGdE8sAQZ4Vvr48yaIdKBI6rMjQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Y5vyQeEb; arc=none smtp.client-ip=209.85.221.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-vk1-f226.google.com with SMTP id 71dfb90a1353d-5663601fe8bso1354300e0c.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:57:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771538241; x=1772143041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yEEHWNvLAhr/ZF6L79UPjbW5kaI9Zew8uBravIkb5jI=;
        b=MoIKWbI6Sx0mJoF8rrvOC8EfoGcjbL7zBymSnCiARr2LXo1SG4LS2xNjgH/Xye25Lc
         Ip6g/06IdEmKbM33Gz7yfGKC01fgjB0xc+mqn5KD523fDVLtle0J2XgxbNbtAh9naX8y
         DjAhibyg7NkmpuRIa8CtavhmLHTQCnmjYVjn1Z6n2edrYaeR50OlTPAEKQgDm+rllrc5
         Jxefoq3gTei5zr80D6W9g5PYTXQ7xb7GsE4UUTKbYWthdlmN7v5ISTFwEr5QQrSSQV2O
         vLVXt1Gn/ETh1I3S44GarOjc49LFr/86Nxanign7AK0mGlUx3m/0tUBsnIYyVyFpofif
         6vYA==
X-Forwarded-Encrypted: i=1; AJvYcCWD87DbFuV1HBPdCsydhT6CG7JVIChF5nROPF5ynbIeSBX3BRzFliGuXmr2LbPFY5mGgZnqE49zB87B@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4e0NTyRHgXKYxjYDcGD1S6X8mcY5il6e1jjufpIkeqllRO3xM
	0DBz346K29PXAJoU/YFYJVqMPoFAy5gYTLEMWsAde8+b2UIb/D1dbAsBdsaSZIbumahwyhKMDnm
	lt04QDoGKq49fegKaqPTfpOopcHm2mvs0xvw3kDMV1eeU6eQooRHcBuKJE1gzM0pWOL2Gdc5dvo
	QKCwxLwUOclmJ3TuBENlw93zvYJikoPvX/0QSIWe25QrS2JzpfJEfs+O4ANgX6aPQb8Ew1ti5Iz
	MLFmuVkdZh4TQ==
X-Gm-Gg: AZuq6aL8XLfLEek9lMtRghUjh0mcs56a4WVSzHQczs7F3/rVUy9Bjl3hcb2M+lqnz89
	eV358dsJL18hke5zxBvAEYa8POGK+eBGB2DRohQvk2UJyNNY1YY+g462c/obcjyH9kfpwvC4TKS
	zXqebdcYn66W9zD4erbscVQuajQ0Mo84JTnnukjEVz02Vme0Q3Wz7rSKF0dF+TTJHaUExS9euWQ
	T8cQlH5W/VIKdyO00Ew9y54cV6IadsjHJzjPr0LrcrCnKXOuXFtHLtv64VReDCS/VmCTcIjol0o
	MY5S4QZWnMhDSN8EtllST7XZz8QDPBecjwIu9CVhus+c+dV54GCgLPk6cQA8OfJKVAo8xoIYZGK
	Th+MflTM+GppFVpbvxS92wk2TCsC1nyiOM2JIDZ32ErzAp5AwXol9kWHVSZBkkEoYL+NNsRs6XX
	qovGgXh+PmN87XN0SaJqcaHvuMwbDwqLKj74mhyQXMzzTDcrPglhFKMy9/
X-Received: by 2002:a05:6122:8b09:b0:567:4c2b:832 with SMTP id 71dfb90a1353d-5676a90b660mr8715034e0c.7.1771538240937;
        Thu, 19 Feb 2026 13:57:20 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-103.dlp.protect.broadcom.com. [144.49.247.103])
        by smtp-relay.gmail.com with ESMTPS id 71dfb90a1353d-5674c175a93sm3506954e0c.4.2026.02.19.13.57.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2026 13:57:20 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a8f8c81d02so15583165ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771538240; x=1772143040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yEEHWNvLAhr/ZF6L79UPjbW5kaI9Zew8uBravIkb5jI=;
        b=Y5vyQeEbgUbKoSxDVGD9R82bFX1d/sxTIHHqK54/gBd3SMEU3ZOLLrWGXYySuUK22A
         Z1cWI+E8l/Qy6TVCpTcPb0MYrDSGZRZboi5Yh4otHfLLGAZLCIaBAr/MK8BEacQ02AdF
         FGmhIh2Z56rpYaCdjwfEIprSzO5VHiVfpgX+8=
X-Forwarded-Encrypted: i=1; AJvYcCXjC6lb8rA7sm/+ixNXfY14e0d9M4FK/glMIfdwbQ6ipbu2tty2GZ763cc3qilKxxh5JYj/59V+eL++@vger.kernel.org
X-Received: by 2002:a17:903:1b0c:b0:2aa:f9d7:68aa with SMTP id d9443c01a7336-2ab505628afmr204534285ad.21.1771538239706;
        Thu, 19 Feb 2026 13:57:19 -0800 (PST)
X-Received: by 2002:a17:903:1b0c:b0:2aa:f9d7:68aa with SMTP id d9443c01a7336-2ab505628afmr204534065ad.21.1771538239253;
        Thu, 19 Feb 2026 13:57:19 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aae9d73sm156416065ad.77.2026.02.19.13.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:57:19 -0800 (PST)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: baolin.wang@linux.alibaba.com,
	florian.fainelli@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v4 3/3] MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver
Date: Thu, 19 Feb 2026 16:57:02 -0500
Message-Id: <20260219215702.63321-4-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260219215702.63321-1-kamal.dasu@broadcom.com>
References: <20260219215702.63321-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266736-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,broadcom.com:mid,broadcom.com:dkim,broadcom.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 43027162FDC
X-Rspamd-Action: no action

Adding myself to the maintainers list for the hwspinlock
driver on broadcom settop platforms.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b8d8a5c41597..c5971cbcf087 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5249,6 +5249,14 @@ S:	Supported
 F:	Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
 F:	drivers/gpio/gpio-brcmstb.c
 
+BROADCOM BRCMSTB HWSPINLOCK DRIVER
+M:	Kamal Dasu <kamal.dasu@broadcom.com>
+R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
+L:	linux-remoteproc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
+F:	drivers/hwspinlock/brcmstb_hwspinlock.c
+
 BROADCOM BRCMSTB I2C DRIVER
 M:	Kamal Dasu <kamal.dasu@broadcom.com>
 R:	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
-- 
2.34.1


