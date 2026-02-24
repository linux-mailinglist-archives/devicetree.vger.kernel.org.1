Return-Path: <devicetree+bounces-267683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YD57E5QDnWk7MgQAu9opvQ
	(envelope-from <devicetree+bounces-267683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:49:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7285D180B8C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:49:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6E491302EBB4
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 01:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35F825F988;
	Tue, 24 Feb 2026 01:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UXC4fXeG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f227.google.com (mail-qt1-f227.google.com [209.85.160.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C4025A64C
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771897705; cv=none; b=jVgi201U1sAJQi38X9Rm+l32O2YcPMP1ydRXtevfXkue9p8GLCKcoC0tbiDdtqfMaQj0vnMPZ7WXEIg4ttzART22Qu6lha1Gge9OhASHMoHkelVyVQYge2Ve/Zck3DK2P+CEXiHpoSFB/UmXT5kKJjDCn40gfNqmMIVCDGwadGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771897705; c=relaxed/simple;
	bh=ymgJ32QMNYCUin60FKOe1Z68d7hZB5lDstBRZvKPO2s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BANYbP+r9YwG3HD23/HRLEF5ftnXlnhO+O4WQCvU2xo44fUVejDcCuHcGcL9+tgcU7RL/l+6FU5pnsn68zeQ+qrXrVumN2Qfz6oKa1l30OImdBaj9bMSC79HJz4h6d61sNCIW9XzwyvIQqQvXk6yyxXq1KaaL3Y0poFT+uzUaVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UXC4fXeG; arc=none smtp.client-ip=209.85.160.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qt1-f227.google.com with SMTP id d75a77b69052e-506e287dd53so40820921cf.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:48:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771897703; x=1772502503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yEEHWNvLAhr/ZF6L79UPjbW5kaI9Zew8uBravIkb5jI=;
        b=f+ONesgcWMOoXOHsxaydYP+0CdQfWh6T9FrswNxhiZzzu/Gmm17OEQhU52TfhkDRGX
         +LcHn00D9HW1m40DpECpc9CMIqhydK1176jxeSJlpiNIToVa0MMt/2AolWvmARRBHSwT
         kM4WKWLtcsIlu0ch7t6LVuCufbm/yOg+YKeA9nuNB+mVYZjcPH+TkThz0bRRmnjvIESM
         xP/EE0WlKcoDOkQsaXsx4IavY83kWgVZH5Zv0+TGvlfwGk09t4rI7BVw3iJ8ljcV36Bu
         TUz36oOPWdkPZ/g3SaOhCwI99RnWjcFbWkLOZTzd+5zONUtzRkJ+ZbEq47+Y0hHgq6Zh
         Ma3w==
X-Forwarded-Encrypted: i=1; AJvYcCXTGlZn0BQVtbZuafUgnkE17DFp0ZkKKxJUBlqLFT5dmck7o3q10hENb9wmWvFzWPC8SFrZD9zAa7aC@vger.kernel.org
X-Gm-Message-State: AOJu0YxVNN6l+sJ3CMHWwZB2DIPCy6YdO6VXM8iFM/VHtsdLoKZEvQ4a
	4a+7Qk4MHN3vqNyXruQY1oPx1t0W4Pv4qdOpKachB09lbr8pykb+2dZSMYhgNLiuhszK3EIUcpI
	KZQAbJgFXHPpCE1bMpk7dFXjPZhBju640BQbvf3FgXcLGsR1yaiYD9w8mwybaZ45a8XngT3jRnh
	OBXeNIRkRqIRBz4iF9T6ToFgd4y3x+PUoIQ8N6RbssCIw7E50qiDpnp6xRrzMdDhBpGwe2Ok2rU
	gLg5aaW17D2TA==
X-Gm-Gg: AZuq6aLOuZtJXr0qJzgT4ufI9ZfgHDcCigV1cd2CeKDH+Hf+nPa6OxiW5hjwEgRwwsx
	7Lb6QuvyOAYzNVFjxGmB9n23hhLIz1oj7D1D9u9m4yumr9djX1Qa5xbAqjwmZJmoEk2Qse/Mofq
	IPt7h1A/hhbB1Cfs5Pt7gXmpetaykT9XKVIJgRJpfAy5RMpqmH3sdmfUYAgjPnxQJ9HDtRqZ7Hx
	ccJK5D3bZnbvumosiLD7xcExL443/hu+owwU3FQp7UEvmr7JYXEIC6szBMqZEqNIlGUxPLghETs
	4s55+JUEzhzMyk4Kpsi6RV4HWoJ5lu7JLcI7XSq2ryCWcyf/mMv4CTsV4M6trvNwkwwrtd+27iV
	muaD5JUV90adDJ1tvQZUen3dTMjr+wLxvxEnaUnqpakI6w3GE2LN2CgsKXkpftePk/U9SMMETuE
	1hVDfjSyA3HF364tOQ68M08Lev1l5lBc31Z46yyybNOCJCy/hctN13Fg==
X-Received: by 2002:ac8:5d09:0:b0:502:effc:401 with SMTP id d75a77b69052e-5070bd23474mr147537121cf.74.1771897703251;
        Mon, 23 Feb 2026 17:48:23 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-95.dlp.protect.broadcom.com. [144.49.247.95])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-8997c8a7cf0sm10476406d6.13.2026.02.23.17.48.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2026 17:48:23 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-127133794b6so6488478c88.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771897702; x=1772502502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yEEHWNvLAhr/ZF6L79UPjbW5kaI9Zew8uBravIkb5jI=;
        b=UXC4fXeGU3zwXk9gyYffG8/aaq0g4GLDoYLeiDwNOt5DSOSeBNqDIHI0GXj+QfsplU
         ghpj4NjiMIdTrZcsIfYt/OvtRCOor3ZpATc/ZuVwmBnQbeXAdUVtC9PsbaD1mWKnG4Mr
         487cOiS3pDCUPZPAsEiLmbgDbMvfU4+CKCRZ8=
X-Forwarded-Encrypted: i=1; AJvYcCWBatbOsmD17y/wMg95f+J5BH1LmXbjzCdmev2PqrMhxqts/YdtC16aSS+8ZltKHeesc+H1bPzfL0z4@vger.kernel.org
X-Received: by 2002:a05:7022:2214:b0:11a:273c:dd98 with SMTP id a92af1059eb24-1276acc4db8mr4490765c88.20.1771897701631;
        Mon, 23 Feb 2026 17:48:21 -0800 (PST)
X-Received: by 2002:a05:7022:2214:b0:11a:273c:dd98 with SMTP id a92af1059eb24-1276acc4db8mr4490750c88.20.1771897701103;
        Mon, 23 Feb 2026 17:48:21 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af102d9sm8470964c88.1.2026.02.23.17.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 17:48:20 -0800 (PST)
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
Subject: [PATCH v5 3/3] MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver
Date: Mon, 23 Feb 2026 20:47:58 -0500
Message-Id: <20260224014758.2660318-4-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260224014758.2660318-1-kamal.dasu@broadcom.com>
References: <20260224014758.2660318-1-kamal.dasu@broadcom.com>
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
	TAGGED_FROM(0.00)[bounces-267683-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:mid,broadcom.com:dkim,broadcom.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7285D180B8C
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


