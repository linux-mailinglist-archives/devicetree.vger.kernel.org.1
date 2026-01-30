Return-Path: <devicetree+bounces-261115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCNbONJpfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:20:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAA3B843B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:20:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B080C300DCE3
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 455FF353EC2;
	Fri, 30 Jan 2026 08:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GuYuK0E5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2F3352946
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761226; cv=none; b=P7rvELRiRerVM7j90R+zLvj0W6G6YwQbQrSUvlZCoxsqWikjuVDJZTOm+aD9qJmEWo56qStoSQ0a7qqR+FJ6I6Y0VgE4bjQrhpnzCmt1KTTGScx2jb15Nnp79UpBnHUjFX6th7RrWB4DCA3963q3MtRl+1YKfm6nnnlC2UFcRdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761226; c=relaxed/simple;
	bh=bf8xEERmNoQu6JKiJbQyzBDcSJlpDrQjBle4TDLj5zE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ckXDUwoBl3zJsVkRXmVux/emNCFCEdm2n9sox+tSQN143KKO489zDKdMi2TT/n3ME5Z2Oz/UkYNFPG8npmMiV+i7C1M9tDbSVdgi7xreqom+L3gE2P2HOQLUHptRy2tL/HVieRjRaEbpMkJevrI3j8plQ7AFiFzqwqGxSyPCOYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GuYuK0E5; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-81f4ba336b4so1627654b3a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761224; x=1770366024; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qEEqxDFM2yhPiyFjlnl8LZDAP48x695zaYDrn7lQEUY=;
        b=GuYuK0E5N/6x6apXALLjKjV/tp/4UmvzMB1aQ/y7Jd+B9MdW6E15h1hktyWRQj0EYI
         2i5scAkHKpfWat77jzgCHGz15bW1A0XBlHrT6NFWfpZl1hdF6bIniCmLjzmZeJGHo+zh
         2LUIMW8fAL7ij0ifxOdnJ/Y/7obyZLLerQjbz/KqzFa5JzqzEUQSJbzxgHvh+C5Tuoy6
         lQIalSb0x/dIuUp5twKQiTa0uwWfZjNHJExlBPBYnUKkRwY9am0ociT5DDudE5EYumoy
         eiuqcr6RegZNptdpZS+m/KyYEdAIZjdC5mv9FxBljAmAQHIEcHUM+XW2yRmbja/DakTJ
         I1BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761224; x=1770366024;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qEEqxDFM2yhPiyFjlnl8LZDAP48x695zaYDrn7lQEUY=;
        b=XK7KDj5F9TX+4BkFkxDwFV6ggZwtmy56QNzNbRVocJKI5MPe/xDxKL4trmIJNgv+t4
         0b5QvGsM05BL0DRHEk2A1pqu4+rr+mK2fuzerQF2lGuFdHnpfdTr1NIVp5/1//PLNI+z
         RAfockrxYQ9FLyvkS6b6DQvFk6nyuCENgRWFp85GxjtJL6/NmfQcG2MnWBBEYv6lC7Ns
         mtMRmb33m9trGloPn8QTlG4UZeI4taAmFwOTsPPLH5FleVMhrjnSvr+JosX2nm86t6SU
         5S86SAw+JqR0iHT+e1EmNdYhxv//Djkac7k2XCb2Sh0WLzFCq7SBIUEwK1iSXfWUTKWt
         qFQg==
X-Gm-Message-State: AOJu0YwB6WtPWlgETijmkJwDztQi1zJIHCdOwYxbRe+J5dWqB11hrIIb
	xfjSB8A1qZ0cL/DVr7RrzLjqgeEO59yq1T6KIcnW9DH6eWUS7w58YVGC
X-Gm-Gg: AZuq6aKfbmxt/b9s3Lns/rM+jnMru6unrfQLViOkbwXmaGAnVMxUO+nsOUuEDObnX9X
	cZ/VSb1qo46QaFzn+VG0Z71K+nXUEvEmRKY6n3Ap32uDi1XcK4h6dGa5AtYpls2hkJEijYLT9GD
	JkxLWCDzpAz8SihgauBPB094MW9RfHHnYGuqrteMvhIT1VkHKhI1UTx8L81TQrC8I4ixQP2aFm/
	T+2kRI9TCpNQNx51XPQkdtQRjxYgP+7/EWZ9ic9UtZ88cDIxFvSUt3+yp+3Tq5t8yaXvaN7wujq
	RLYeRnpvNqu5yv1tlc/9z1GexSJGj2w85jzrwe6cuYvYP1R3FkzO96Rj/VCIrRfpj6ur2w0h+V5
	EDFz1uy7/I81o4qwbiQZM0R3YY0sOphEbcnCvi2AfiQfkKslyYewELHOBU0lQOZl3qI2inet6NZ
	3hbLzYQPwnvmC0VdxCVHhL1flUQsf/IA9mIDO5yhYcWGnZCGgY3WfrpFI/yrPerSYGhgF93t8qG
	hjyMMGyIVNY0eqwop/+uqfHJDHnvoRDSFNAO/tkKSAKk5uOmbHwK+78suA0muVfs06t8BL1e3on
	zdJUXKlHAppU
X-Received: by 2002:a05:6a00:244e:b0:81e:c91c:70c5 with SMTP id d2e1a72fcca58-823ab6929c5mr2034622b3a.29.1769761224334;
        Fri, 30 Jan 2026 00:20:24 -0800 (PST)
Received: from 2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net (2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net. [2001:b400:e3e0:2a58:5bcf:a65d:c80e:2087])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm7866018b3a.40.2026.01.30.00.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 00:20:24 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:20:11 +0800
Subject: [PATCH v4 3/7] ARM: dts: aspeed: yosemite5: Add new SGPIO line
 names and rename signal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-yv5_revise_dts-v4-3-4d924455f3a7@gmail.com>
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
In-Reply-To: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769761212; l=1856;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=bf8xEERmNoQu6JKiJbQyzBDcSJlpDrQjBle4TDLj5zE=;
 b=ogvwTjVkAt6GpHVedyu0m+EtSAcZEiuA+8epK66Orc2l/JiI6JrX75f3U4Gk1Bs6PA/DbtY/d
 MFEPSU07bcxAHHFj8lGNTSM/GW0QQbHAk5NRjPJDDv0eSMozkWHMWmc
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261115-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BBAA3B843B
X-Rspamd-Action: no action

Add new SGPIO line names for user space monitoring and event logging.

Also rename PADDLE_BD_IOEXP_INT to ALERT_IRQ_PMBUS_PWR2_N to match
hardware naming. The original PADDLE_BD_IOEXP_INT is unused, so this
change does not affect current system functionality.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 31 ++++++++++++++++++----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 45b8ac2e8c65a4f672e64571631b7f6944f26213..983aebc394d9159c7e3db2e7c39e963f7b64c855 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -978,7 +978,7 @@ &sgpiom0 {
 	"E1S_0_BD_IOEXP","",
 	"E1S_1_BD_IOEXP","",
 	/*bit88-bit95*/
-	"PADDLE_BD_IOEXP_INT","",
+	"ALERT_IRQ_PMBUS_PWR2_N","",
 	"FM_BOARD_REV_ID0","",
 	"FM_BOARD_REV_ID1","",
 	"FM_BOARD_REV_ID2","",
@@ -991,16 +991,37 @@ &sgpiom0 {
 	"PRSNT_BOOT_N_FF","",
 	"PRSNT_MCIO1A_N_FF","",
 	"NIC_PRSNT_N","",
-	"","",
+	"FM_CPU_BMC_RST_N","",
 	"","",
 	"","",
 	"","",
 	/*bit104-bit111*/
-	"","","","","","","","","","","","","","","","",
+	"MASTER_PWR_EN","",
+	"MASTER_PWR2_EN","",
+	"PRSNT_MCIO0A_E1S0_N","",
+	"","",
+	"PRSNT_MCIO0A_E1S1_N","",
+	"","",
+	"","",
+	"Fault","",
 	/*bit112-bit119*/
-	"","","","","","","","","","","","","","","","",
+	"FM_CPLD_RSVD_MCIO0A_SB1","",
+	"FM_CPLD_RSVD_MCIO0A_SB2","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
 	/*bit120-bit127*/
-	"","","","","","","","","","","","","","","","";
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","";
 	status = "okay";
 };
 

-- 
2.52.0


