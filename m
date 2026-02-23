Return-Path: <devicetree+bounces-267362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BzKImI3nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:17:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3ABF1755D4
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F16C73036085
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F0C3612E8;
	Mon, 23 Feb 2026 11:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BK5zVDyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989FA35C190
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845463; cv=none; b=Re3Vh1Yl7dUDgZXaQSS9tobXmyDbdeTeRMnIs9ei4zPJ1D4iAMBpyQ0GGL+SKK7nZVqvP63fusQ8ff8wi37ue+8dNrjn+ojt1BH1rmCPDDDQuV4sSUNtguU7w5/WSmWhIZXwHDXoIDdSZUWj93X254NhOmKWWV/92q+MeAzGN8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845463; c=relaxed/simple;
	bh=Y8FxaZ3tGkhfSNOMUB9wrvZLgHj3UUmc4MXQt4g53Xs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B5EF1eB9eT1eaSx2O7MRt/BYzC0Vl++vJzJiLTflJ7jZ3EV7CpXJH6p5prdg1nVjpPu5WGAV8Y8IwCTHf+E/tiaj+ojqsBViBHzZVxyNZjWv9quCFiUSgwdO8bJSvaM7wjjxmBa/R9dECM1A4Ju0d+YbtB9223sN+YimOu3po6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BK5zVDyx; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-c6e248aa446so1687588a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845462; x=1772450262; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dekzOzjCcZH9VxfMLTSix7P8omyyrbtHyX+5U1//3bk=;
        b=BK5zVDyxz9Yu5AsKl06a0JIOSuJPgfcjVMZOG+PY3jhI2Vxu0tLSY8qNm77OlDpWRl
         /3YM5Jl5DbBJDDvkMIAGQSzjU6VbrFyjN7ClsEyeBSMUdoI51uPq0S0sfKy1oPAbiTV0
         NlIdfE4Ke6oW18tu7usTZ4LStqiWRqvm5PgcdW+KXBftI07rs7wNSnrDR//TjFtmrFsU
         e0JtCN/tBbDhTzUMQjj4Agrf7tJ7fcz4iBGewoj6LKsl2WgOZI3CFUTMDOccRf0tLNxh
         t1ANPVclRTK2AWl3B7RY/1N1xfLhGxXBvthHBx20gdaj5JBOfOsyAg/xnluf0pEtOPHl
         Tmfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845462; x=1772450262;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dekzOzjCcZH9VxfMLTSix7P8omyyrbtHyX+5U1//3bk=;
        b=FCKovrZUYR32Z91Lk99CRoXSE5+Jay9vrp3J3qTSJma6jfpsTuTFGMzZEH0DrHPNCa
         K4J55IyVe0DQ1behWTImxXuWMt1LglRyc0W1vR7vC2phFQt+izhnXHMBw48LXzFZrBTu
         yU/nP19GltCQ6M6JyHkoPhQWMN4DkZI8RDELD2zpQPeyLr58FGwrB1ONDLYoWUHQkZph
         Xnv39cmGygLP2ot9PwYTj9ppIAN/MeYBypetO7OnhnX/2EfV0OjXSJFnNZTSuGMQEHWu
         2dekUhsSp8gV/CQCdgjmvC7NAePNej5a9enKwOkKE02Dn7gCQT+dMzLUd7v09fHimuDX
         HcwA==
X-Gm-Message-State: AOJu0YyTFimO0SmdyMGaXX519xmE7YFCfp/YLvJwaiwmd1YJHwOVoYEP
	+5rJOo/nOtmKROsKqR09aawsJzTNTdvNiVLrkWAuHvT3fs1Xc5An1xJv
X-Gm-Gg: ATEYQzxfgPfVgsI9nPjWuOYS5bw02b9jiAwpDsopnEy6X1spXMmUppslhgQW1mcQxjy
	yHSvcBw6lXDK0czUKzJ/Li96nBH5Tj0ireERoDhVplKGK2otc8zSD919+umZb4SR1+3l+3F0gtm
	zsUlH2XMECWuD00ZUPhIHtib5Tqb3JkLL16171CC0Drgn+4RF30T+wCExUMT8rcL4IkKzOSAttg
	QGFxDrBZDjAKluax92IBzQPn8j9sSuzX0Mm4VnaImrIJDW7QVfPV4XpLkXh7FgTTsbvnmLYu5GM
	kbAldD58D0Vs3ilDggQDnGQmivvSJDq8DT7baXcKmVip8MLsDDObaC2UB3wpjRegj8Ieegiim3m
	2YFm2H3ylTkU0b9nRSpJ+nS5G+P1r6pJwg573axz3G5mJOpdKVCSlXPR7r6W0YMbdBn5df3rdmn
	G1OZHSIcjirlYXwoxRLbr0PEgFeT7xxFIbzedfIk952LP7iEkVwJD2uoy8Jn0bthwkEuCu1Njmb
	C2Aal3uqoMUiPuKCX8W9n2x0668zouAtXjf6pma6ZM4sCtQi1jJNqfkRJGM6lKVMDhTlpOL7uQy
	NjcIUUZsBOLGfhLX5aFr
X-Received: by 2002:a17:902:e88f:b0:2aa:d289:2d95 with SMTP id d9443c01a7336-2ad74463f60mr80278615ad.17.1771845462066;
        Mon, 23 Feb 2026 03:17:42 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:17:41 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:17:33 +0800
Subject: [PATCH v5 1/8] ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12
 bus speed to 400 kHz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-yv5_revise_dts-v5-1-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
In-Reply-To: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=1020;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=Y8FxaZ3tGkhfSNOMUB9wrvZLgHj3UUmc4MXQt4g53Xs=;
 b=9PqZ9iEvttl4uBW+fcNE3uPsZFp3PxYjAx1wpMdNwgGio2/smtdbhOC9H8Xc385a4xsseqnIC
 517wY5pxrxlBN/jjCoUegTvRbKseZvnPJXc2fms7ZaE3+VSHms9SExk
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267362-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.10:email]
X-Rspamd-Queue-Id: F3ABF1755D4
X-Rspamd-Action: no action

Configure i2c4 and i2c12 to operate at 400 kHz instead of 100 kHz.
This update aligns the bus settings with the hardware capabilities
and improves MCTP communication performance.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 2486981f3d6bd36f3fe780b21e834b85242f8aa9..7991e9360847532cff9aad4ad4ed57d4c30668a0 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -231,6 +231,7 @@ sbtsi@4c {
 &i2c4 {
 	multi-master;
 	mctp-controller;
+	clock-frequency = <400000>;
 	status = "okay";
 
 	mctp@10 {
@@ -782,6 +783,7 @@ adc@4b {
 &i2c12 {
 	multi-master;
 	mctp-controller;
+	clock-frequency = <400000>;
 	status = "okay";
 
 	mctp@10 {

-- 
2.53.0


