Return-Path: <devicetree+bounces-261113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK2CDuJpfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:20:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99731B8451
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58A45302BE26
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35458350A30;
	Fri, 30 Jan 2026 08:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IWZT9jDQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE32B352F96
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761220; cv=none; b=ExI1E76tZpYAz70c1wibkyBgoywyugcB/hS1NEZiahFsAzSfw3Jwwyw5Y0o7Wj4LsT5+xHW38L37ctjjK3mSpx1GJLz/BMQ3i4BwH3+6zVbwjTv0mNkK+ahMPAFdCO7uZfY3rC6OtnS7wZ0s4rUSWdM/wWmWbPSEXpfIaWC3jVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761220; c=relaxed/simple;
	bh=hdlRtRi9TLU18op7sSDjRmIwRirYAAfHoP1MDNioDPo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZF4lZyh7PX+8cW9ONOnes9DGgw8EE3Q5gBO95rfHiFXobwDh2Cp4wJF1gGNlyDMWjOHIEW2shk8rYnvhvmLcSkwJNQeIrtKkB9kWaK9R76j6bAD+4CjHlfMksM5pe7tqVVXmb6TSqBuP24TWIJvZtUN6xg8ViYGgXjcYNwttOI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IWZT9jDQ; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-81df6a302b1so1828976b3a.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761218; x=1770366018; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oieK3l8IF6JRtYEigMvXLtMbPyL5df1jv1S8R3nBwz0=;
        b=IWZT9jDQRGOsuAyKN+OaG/n5wY2qNfs6t1A73bC+gKEEgUQcrWFwS6m25lkduy+xne
         n+epeeD6onus0em3BE5UFrMPs3KRqj9XAdVdoaDBpkYNCnXYAS4FHyDgIy5C2S9vu98Y
         oWz4CctJQXWo/s3o4vIEKozMzzXxFfMWntA/yeYjUd2Vjzz3cBuJrStXb9T4owI3i9CS
         kXN/ix4YhdDhSfKXII9hi5T3CfLLggad4tnWMmKs/hxsJgiCyVnK5Imvinf4+MZOWgch
         3sqSqadZRFgMp39aR2iA4NEsQ+RVksN20JuR7ahIGOEn/3ERnn5yDfon4ZlqPGOFQpe1
         U7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761218; x=1770366018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oieK3l8IF6JRtYEigMvXLtMbPyL5df1jv1S8R3nBwz0=;
        b=sEA8emAtHyvtEmzi/SK3xDt+XaU+RfCCWtrq5OWspqjuFMcahmtmVOFjBIZ2ESl+wx
         GbeQ7AUOeOeUQl7nEcXszCw3Ds2BpobEk7TZl2UXWrqvSHxad2ADl18p7HpDkvKT/ik7
         kc2M4y4QzIXFtBuKQP0BVCSMo6YDEcDnwKQdmGe4BajQNSMiDOtk/0t4rGME9MwyCNcu
         i0gMBgi5j0LqeQZ3m8WmRzsQAflSUac1TrhHO6cMk2dTSFi41W31AV2ZRw2ZGY08UoVw
         NW44SOub35NBhxvEf4hXOXZRRXv+f/M0rGjqa6qVh5JBewUQLO6kz7nxWuP+Cnc0hFSY
         ToQw==
X-Gm-Message-State: AOJu0YzuZzvs1+IGdeodo1S2k51zmJNCHkRMDQYpoaoZ+RSMvPQVSwSc
	JAU6Lpz/J0zcv/pMxeLp4wGBhDXM/R+9J1+4+nfbbP5g2MM1tkLdy6qB
X-Gm-Gg: AZuq6aJUBbeIdzTqrAC3sy3uDcsYPm+2w2GF13EDLAzJhbiAxI+BUedafgbhkP6gNLq
	lYOXbRtKgywPz3QvYeHema7KOljZp55AQzGVzMtOqg8WEY5cFFTbjFnAjsJSo5E+OL6VPXAKzWm
	UQs4DU0tXYq3cQTuihcP4/Rrt57hyT9i4c0/fItBkzZCLQGD9Xge6Hy/PFE23KR7nTh08YVaffc
	q3WwYMMVuHkT729MDpKtQjx4UZY1QkBfuhSQb7rVWLdtIIfxspItgFjmrhqbyOpsrtkgbdkILZj
	nxb0VXkPetL7aF9CGsi3/FHK5KXSUsBstlR0YMHzAOzTwf285GSbyADqQw0cx0XrvoibYPo87UJ
	J1fkmyLo3/hGs71fe5jYjO72j1bR27yrorX7QRR7PGQ9lr9tUSTnOpra1AIiHKH3MEaTNAiJuqx
	hVtTnhOBsqJlxh3jkqZdkLOKg9by8jTFupdhNJS3EyAfQh7s19C8tLt9R0HGrAwJbMMl4NwDkXJ
	pb89tR345vUsl4hzuwPHdhj9SwdHRfhb2mafq0cgfTTPBRYH81HWEuKoGMZScqMVOtxo45aSJ+n
	2uY2o3CqOMxp
X-Received: by 2002:a05:6a00:2288:b0:81f:2140:136d with SMTP id d2e1a72fcca58-823ab65a295mr2190012b3a.23.1769761218223;
        Fri, 30 Jan 2026 00:20:18 -0800 (PST)
Received: from 2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net (2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net. [2001:b400:e3e0:2a58:5bcf:a65d:c80e:2087])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm7866018b3a.40.2026.01.30.00.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 00:20:17 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:20:09 +0800
Subject: [PATCH v4 1/7] ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12
 bus speed to 400 kHz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-yv5_revise_dts-v4-1-4d924455f3a7@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769761212; l=1020;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=hdlRtRi9TLU18op7sSDjRmIwRirYAAfHoP1MDNioDPo=;
 b=fZnmMsrIsXktT/r/q2+TsbkJWf6xIrrJ17bze8j46nQ6BUBYHD2F7fsRHq+ze/StaE71TqDCy
 oa6BXmcCqmADPUb2cmft+rFczUbHRKCwFZ2DBi/fAeMujioTcYr4bQq
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261113-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.10:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4c:email,4b:email]
X-Rspamd-Queue-Id: 99731B8451
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
2.52.0


