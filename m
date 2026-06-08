Return-Path: <devicetree+bounces-307938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8LDcOvArJmo4TAIAu9opvQ
	(envelope-from <devicetree+bounces-307938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:41:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9306524AE
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:41:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bFdW6Ci6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307938-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307938-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EF813020A63
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 02:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACB5A327BFA;
	Mon,  8 Jun 2026 02:40:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5ACB322C77
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 02:40:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780886442; cv=none; b=Zi+tyByEPU65nylqiAxFnlq5ZE1wNqAv3ach/nMkrOMoRPPobdP+G3ifyaYtaGC6oV7HP41piY+9uDARuHEm6zOgJL1/HXbNCAc2CQ5uNQ+YiLBpWOd8p7cSp10YIyAX0hYGkdVw/Dl1URLysTb/ntbvJDeLOE0YBrvr/opXerE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780886442; c=relaxed/simple;
	bh=J3z5h5jN99f1BFk7jnvt5xoq1tLRgjc3X0kRzaksvsA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TV6vDgIaUBn3JDCpyJwpQ2Nn4iqHVDtpTEHZSt4xI1PfKbr/Gy/+2QPjZ47oy8s8WStWM5SOqrrvKTiWUJkZCoqS/UTBbpX9fZQcRrh6mHKadIWmq6Frcx/s35J4+EYwO3pjszJ+aA8zXyN5m3Ei0IauWPY97M298iJkQ5TuOLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bFdW6Ci6; arc=none smtp.client-ip=209.85.210.172
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-8419ab3a297so1533656b3a.2
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 19:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780886438; x=1781491238; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ctvKOED8Rs2Y8iHtAz2kdUCrMqrD3cqKZ8ykp6Je8z4=;
        b=bFdW6Ci6Qjq1LOqA/M19ow+rB7qdhbBx4MH0U6Flft8s/QQxkLuojs+gQR/CMfzxqs
         eqQcJ8CXebsoQWA1yUXPRdH8FpteaSmPQSMirA0hYpa3WrBLjb+7zP7BzuuESqpuZ6A5
         PTswp1m/aljF3GHwo7ngc1apIInDQkojAAR9xYMoy0OcXi2SJb1UTvqvg7+BfGinrK+f
         NnqM+LiXzCNxjI7P2nwBVh88k7RIpX640L8PC3ounVfdBTqqI7p/9D+k9LghR0i47jk+
         jjBbeszO7NPdvcbag7mhYOJ5XTQY6HP+/3E/IznxW24c0Mdsw6XGOea/PU2YEE/kRlHj
         yOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780886438; x=1781491238;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ctvKOED8Rs2Y8iHtAz2kdUCrMqrD3cqKZ8ykp6Je8z4=;
        b=k43I92VCgTX3Ww6lmH4F3AJRz96NPqXSUWI5fxepfVcHAOBSVwfeuC7OD2IYsgIBc0
         hwMmePnyTHxqK/BMgriDirHlQOxRtWnFbjsFQo5vCAhHF1OYMJYp+DIGlmMsWjvlyqIL
         zHSk+bXSIcQH7Y9/hE1o3iOS0clzJNfUYNusUXJ3HPpOYq4WS917Qv51bMvB8+puDdJ+
         L6kjL+tk+DILPZq3cXJbmHdCryyqC7wUxJafaB+shTSr95eujWuJ/hleTRw+AdSAqh13
         IuOP7ECRtG6nIMykCnK8wHgq9VAPwgb5jzPsA3zP6dpVcHiJcHMsYOaFFyhHX8ep7o8i
         4/pg==
X-Gm-Message-State: AOJu0Yz5ztHJoLWlychb4cbGd2tahaSuqnqtuU9xSQKbjrjEpOXoK8bw
	YFLOw4RANgKtbw8dAnHUJYgx22d9kYzQYsYQwP0nIsEKovwNZ1bYV/f1
X-Gm-Gg: Acq92OH2zGAH0Tj+WLCQUjy3JSd7rkjXZ4jBDWuR3AvkEOjh2Kth+kDvDjvsKTmi2aZ
	NeZz7E1tnBGoWgKQD2XMoJWN9BZntRFwxQILUNZoajrptuK0kT1NoYJ3IkDecHOUOHS1VdWOOo0
	oJ6ngZ1CejqCR4lKGpI6hRCavwvmDjucDAU771mUodo2oOJ+j6TxH0v+A86xcIxMYKSo9k++VAu
	fauJxU0bWkzhMXxCgfFAa2SvlS2PM43XMC0Leq7FpyT1FWzV+eVIzFlNcZV03w+prHf28dKpZsD
	MskAXEFnICwQjjTgPEozpr9oqHbn6uVIYzIyEBlTe/3NHG5vyv8o6bUncxfLMo1OVTaOfcVgldL
	G+RgPq0I5i6TUZQX5w3i13PH8yWLStjXs2FX1F7yA6cP3lgvESSNh+Jw1HGwgPndhY7VA8x3SPm
	zyXx8ySHG9iKdlIXmQXKd+VnYUg6aanuVfLcJ9OOvxVU1rBNpum/QTQKpdKI8oBr+M9bh6DiTqO
	g==
X-Received: by 2002:a05:6a00:1994:b0:842:2efa:5fac with SMTP id d2e1a72fcca58-842b0a84dfamr13614984b3a.0.1780886437636;
        Sun, 07 Jun 2026 19:40:37 -0700 (PDT)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842824a1cb4sm19310520b3a.26.2026.06.07.19.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 19:40:37 -0700 (PDT)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Mon, 08 Jun 2026 10:42:08 +0800
Subject: [PATCH v5 1/2] dt-bindings: arm: aspeed: add Meta ventura2 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-ventura2_initial_dts-v5-1-37ee5bcf58b6@gmail.com>
References: <20260608-ventura2_initial_dts-v5-0-37ee5bcf58b6@gmail.com>
In-Reply-To: <20260608-ventura2_initial_dts-v5-0-37ee5bcf58b6@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Kyle Hsieh <kylehsieh1995@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=909;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=J3z5h5jN99f1BFk7jnvt5xoq1tLRgjc3X0kRzaksvsA=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBqJiwEHsoVl4XOLzeORZ91RcLER02EI4M9I/iHZ
 9PYK+Fuq8+JATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaiYsBAAKCRClg0K3CVbE
 gbRdCACPE3XhgkbTVANCrtQpf2oP0lX8RvR/Vhcd6UN7TXYrajkCg7mmzR+0rYrPKVh2vJZKo1i
 tsQxFq2BgoJMTuWQPfPk202YQfqyXHM5D+sL5lN+/GkZO+z+i4sYn7/9QD4CI3xZZdYsSDpLS9x
 YdDQFBsHiU2IA6yAxK4abG0mR9RJoS65tafdFx45hv52vug+S3UajteRji1GOS6eElc0jOb9ICH
 aMpx9wbfKzQUFFQDmH5SKXNF7y8tWMWPRHuONs0BUsmp7iCcMc/P3KV8xIWxc9ot+NQwUAAf2Mo
 wTKdD7/sMe5RSsjdKuhp3YDGeMnNiO7KyHJwv1p7VxnsCKTw
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,gmail.com,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-307938-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:kylehsieh1995@gmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A9306524AE

Document the new compatibles used on Facebook ventura2.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..d48607c86e8e 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -92,6 +92,7 @@ properties:
               - facebook,harma-bmc
               - facebook,minerva-cmc
               - facebook,santabarbara-bmc
+              - facebook,ventura2-rmc
               - facebook,yosemite4-bmc
               - facebook,yosemite5-bmc
               - ibm,balcones-bmc

-- 
2.34.1


