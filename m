Return-Path: <devicetree+bounces-309602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id umQ5ATUoKWrKRgMAu9opvQ
	(envelope-from <devicetree+bounces-309602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:02:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9953E66791C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:02:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=imd-tec.com header.s=google header.b=MN7OfKMT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309602-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309602-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=imd-tec.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D98BA303B197
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89D33B42E3;
	Wed, 10 Jun 2026 08:57:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DBA3A8752
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:57:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781081873; cv=none; b=WGsfbGvsyAVuaZUr2WkiF+1+UZQGUHtuzNtbXuaoxUb0hrML7eEwNGrlA0oOv5YNUlv7cozeFjBBNALo4LYkH1VvS5UdI3RbLJHslMQ3pOUcH6rOIeBspM4ByxtjwEnavuBps5V/c5OED+CpDenhTca9V9Vk23/xKu/8GJZ2/3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781081873; c=relaxed/simple;
	bh=1npweHVp9OmRheT/zegFkBMOxoCfQB0An9chDs3xjhU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LpecSocfjYyYTC5hwvjAauJzmp5UzT//42DEjd9V7sWHHG3vGh2zVWMTqVhrl7bbUxMrvkji0B11vLcGRVQs1sYTYfOIkts645sGiUIYxPxmXddyfMdR0ovGtHX7NZXw/sB00U5jAKFHh3I0mrBZnwo9EggLJOTgggFAryJYmHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imd-tec.com; spf=pass smtp.mailfrom=imd-tec.com; dkim=pass (2048-bit key) header.d=imd-tec.com header.i=@imd-tec.com header.b=MN7OfKMT; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490ae94a89eso55259615e9.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 01:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=imd-tec.com; s=google; t=1781081870; x=1781686670; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HGZDkKeFxbNnSDuxlFvYzVfY/JIiXBnOSQb+89u/BgQ=;
        b=MN7OfKMT6EWNpkpQJ2Gnr5fEFEWYcJRcGH1u2VHpwgDu5uObpNytSqoIS+oy4cBL64
         3/TP2h42QejgJeM0xAOCoeynNFqiEAbFsJtdH5+jj6fcpZr+rMtOboa2xNwo7Hv+9O+6
         e4iyI1JhhgwUYIDKksFBcRrVDJL4djN7w0YeGpGJLMsUBKLJ2ZQa0ISAM6UIc2fEL0WF
         gtLou6LihF76hPrkzB+sRbWnZl+wMx9wpB5t3EdGkrUzsBMTwXIZ7TLMIzSbJF496/p5
         lrGKnp2uByzuiuHg1qQUbTVZGxx3VucXZh48lTSC7VaCDd1s9yj0sKcnfj13OMao/4jS
         VkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781081870; x=1781686670;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HGZDkKeFxbNnSDuxlFvYzVfY/JIiXBnOSQb+89u/BgQ=;
        b=aOQtHWCReXVzA49nBHGizolNykDAafD5wisEE3AskUSFo5nezOSoc9FGRkatdAKNSl
         vRkA6/vBgC/M/PzfGOyQ2cWN3zrAS3hhVPkcgBP+1t7LQgmZiCC94SsJuSIfWKEF6auE
         dvz0/T+/hRxbO7onIuKmuOy8nwy/5pYM8xUXVokSmx2ZmtOSeByS93de+4hKsqY3c8Mp
         Dru3py0EileKEZCeIm4Ha1svsYWTasMkE0heQsPYGXjOk1rEpmR54LrTWOnIEd9WL5Bv
         n1mtj3w/aTjjshK+rR0wgMU3qnu1TeP9gDGoKbTd7L6o4Fv4bVgCuiAJg7CTt5a3yMRa
         8h2g==
X-Gm-Message-State: AOJu0YzKvNU+bGOIDCrksUMDsxOXAy6GimgbpdsnQRjqx/v1vEeOwkMJ
	4adJdcKEE394KVrNipGPQkfNi25xKYWwaC9ofF9RRZSPVR6jgXuU/JDnBAf2i6TtI/8=
X-Gm-Gg: Acq92OE8mJQjAWjqfhjzHtbkiIe4kwIILqz/cxHRdXDOs75kod0E9a3YlvxWE8MjRSw
	RFQOBsurXee3nE0IELC3nk9irFsYy7AD6SVOdNsspXlvbfMsMyYwDMPQ2nCK8jG0L6sRR8oJ9/2
	+tBH329seZlaeL/KhN3K1iu0/LzRTdimNcpwct0/nZ8Kg/WnZorBkb4hSJ+ww3tPl6I+8AOjLUR
	602fcTexcENMXVrwzCGYeR7lWe8dDv+gTqy607DEzV6deQoTtAKgwBERWqsM1ZEItCBOhZn3LO0
	g2JPqSBdVHigrPqIl8Ebf4aO5CpJn5VQUUCEHRZLSbsF+SNqmR3DBtnltpd3aUOH/OPDeUcBfKU
	kbz93sfFTI+R8l6xbRyixnV8OjriB4i6JspFoY6S6oMcQ8BlIQ8GsOrF6Xb9WbMj8ppIRLPLUvR
	qEtQlfBkybrUwvrOVfdA4Bl5zIHEgCqtry8tC7g3cnGTiv8DNBixSlSqNZdseejuLUv59+rjRaU
	HtgNNCqKbtnLYb0p70WMGMogSW+BqxxMA==
X-Received: by 2002:a05:600c:5488:b0:490:9d1b:f07f with SMTP id 5b1f17b1804b1-490c25b1277mr455620115e9.12.1781081869366;
        Wed, 10 Jun 2026 01:57:49 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:23c6:2736:8e01:fc17:adf2:34ee:6df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc40716bsm584495835e9.12.2026.06.10.01.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 01:57:49 -0700 (PDT)
From: William Bright <william.bright@imd-tec.com>
Date: Wed, 10 Jun 2026 09:57:45 +0100
Subject: [PATCH v4 1/4] dt-bindings: vendor-prefixes: Add IMDT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260610-imdt-qcs8550-sbc-rfc-v4-1-358e71d606bc@imd-tec.com>
References: <20260610-imdt-qcs8550-sbc-rfc-v4-0-358e71d606bc@imd-tec.com>
In-Reply-To: <20260610-imdt-qcs8550-sbc-rfc-v4-0-358e71d606bc@imd-tec.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, William Bright <william.bright@imd-tec.com>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[imd-tec.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[imd-tec.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[imd-tec.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309602-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[william.bright@imd-tec.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:william.bright@imd-tec.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[william.bright@imd-tec.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,imd-tec.com:dkim,imd-tec.com:email,imd-tec.com:mid,imd-tec.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9953E66791C

Add IMDT (IMD Technologies Ltd) to the vendor prefixes list.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: William Bright <william.bright@imd-tec.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66ae7b..1484442fa0d9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -783,6 +783,8 @@ patternProperties:
     description: ILI Technology Corporation (ILITEK)
   "^imagis,.*":
     description: Imagis Technologies Co., Ltd.
+  "^imdt,.*":
+    description: IMD Technologies Ltd.
   "^img,.*":
     description: Imagination Technologies Ltd.
   "^imi,.*":

-- 
2.43.0


