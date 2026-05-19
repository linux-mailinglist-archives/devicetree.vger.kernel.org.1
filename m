Return-Path: <devicetree+bounces-299704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKYpC1rNC2oaOQUAu9opvQ
	(envelope-from <devicetree+bounces-299704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 04:39:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D78E5767AC
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 04:39:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7537302000E
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 02:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F31C322B7B;
	Tue, 19 May 2026 02:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nrdogWdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181163264E5
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 02:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779158332; cv=none; b=uVmEUW29GsZMXT1pFxw40JGVA9SQ7mjIDRbu36evvDofkx285W4Rkr1JfgARhX3fv8ydZlDbhiSBmBpk6E1INHRIA+mD7hAC/smh72bn+40HZgt89t5DoFtKnkK8eUpmXgN3VDAJQWqX05aBgSJUcTwG2LvbxKuimZvXcwMdra4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779158332; c=relaxed/simple;
	bh=r3td0KNkgbQ1Pdmm5ePVyluvFrTHDo2pOrLyYXEIxUE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EZXw91evmtGJaNfucOn7kP9N3W53tkE48LFRRZiIlShFIrdS4OHGOvgw9L5wGsmZrJdYS9THs/618gUUErZ5WW0WagisdxHIRZF4coZY+PgAhSf2ZcP4wovjPti/toeLSYPV4pIW2qKVgaTslr/NE5Fpx5fnC7GOorvGgRtoQYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nrdogWdO; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c828daf83e2so1357426a12.2
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 19:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779158330; x=1779763130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kA6tgLKUjuyzF92vWnLnuV9dyaiQzrFuN5gzvVQORg=;
        b=nrdogWdOcvwL4orXPYupnSMUI+aBYUfwoNQCxQZP+sqDfBrpOLYWXh7bDvRpc9FETf
         d3X/+9x1sx5oNXDZzTYZjo5M9P5GiXMxCge3A7oxYmP+DbE5Diib08ZYyh1Z84TZXHAm
         GBDQZp6iHgL1MyFdwo2y8PForsM6L7BAWWk/leK8pDCu2HzQXqmgDgk+jENvvWaitIFB
         1AOVzMyAYGUqDnESLw7lR5TDUVljs3Z0kagS4heC3UINIAU6CXQi+xAIyLtZzY2NZ6Di
         yy6qO4PO61O2yFHyneMrNrWy44X0nywkWJbows9WN5xLFQ9u8f6ojBnF0UzABtp/L5Vn
         d9Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779158330; x=1779763130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/kA6tgLKUjuyzF92vWnLnuV9dyaiQzrFuN5gzvVQORg=;
        b=Vjh4UNghT5ZcVNrQk4m3MzS5QkwVJuXmbe+XqbACYT3AYB/uq5n6CHfK22TjmlWIek
         2arNvQd4ycBSJuxMaOUg7ie+i9YzG4OLddiBRr8rXjmvG85Jw4STfp5MMuoceEs+W3s8
         ZunLpgc+iXjweZXjxyIZRAxCPe02vNYE9TGcQFmv7KrSzRYKrEX8JqJxvqbHxqhdbeJl
         WIHlrH2QqN0tIgiEiLFN6F1TBw0LjD2iVFLNzA+KJXhi6vRFDrsmENBgqFui/VFbnUSF
         hPW+P+9RY3l+iJ8gncV4MOAZR0qv1WaUn0/wMszxwsHXFXYFc2JaiPd8VN8kFPAiyOM6
         PO5A==
X-Gm-Message-State: AOJu0YylkUUdq1ttyC1IFIz+AJedRSxlBFg1aUSYVGD7XfmgdeyUJ7pH
	bhXFKkHZ6lYYiKgeDage4Mg4uQa5HV/HD59KxJPCPLdLcQrh8JFt8fqh
X-Gm-Gg: Acq92OHUVcMX4uXyD8ymvLrdygFULqro6a53duGPqzMMurqsHwPL1SYgPi4Fff8iepD
	2UnEpFgCWsXD63WoplL030eTC7mM+cHnW7v+Uk6LS2tNWbsI1jdLxUBXglV0xFi7bl1hQS6y+3x
	a0grD8c4Xg63LdAI4e891BM8Ck5NY/ZCG7b8ZSKxRHCezV4bmFqLlrhnOJ6/FzNdRyNzwGKYA4I
	MZBVHbMBGvSDSqQFFjzgOIXUoqoSWf3Q4APlJGPnm/QmAMEaO/eX+oB12dhHoMP5jjFiCdIoq37
	dW2juBKVGuyKLDOmRLSupmUkhO7mMS2s1JHXOtrZUhok9XUDJcx7xLiGy7/DoqVNwuXCcEzuTeE
	Lle0+jl/fKBoYkmEAWWror//bLYDFhm3ZWIhzs/kD+lET3oO5MqSXuV0GG5Zhwy/B7Qu2Oud2nD
	xBcnYkz2aEEtK7bvMAdQFgCIWS/ZQ3YP81I+bAd4FaNZ099+UIMoOaj7+/8tZAzmQIPwWi2RtoF
	9ZH9RhV/tjnrg==
X-Received: by 2002:a17:90b:260b:b0:365:f8fc:3846 with SMTP id 98e67ed59e1d1-36951b87209mr18957919a91.22.1779158330480;
        Mon, 18 May 2026 19:38:50 -0700 (PDT)
Received: from open.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3695124601asm12407713a91.2.2026.05.18.19.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 19:38:50 -0700 (PDT)
From: Neil Cheng <neilcheng0417@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Neil Cheng <neilcheng0417@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: aspeed: Add Meta Rainiera6 board
Date: Tue, 19 May 2026 10:38:37 +0800
Message-Id: <1849ce935900a4766823e2eed87789a154426553.1779157117.git.neilcheng0417@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1779157117.git.neilcheng0417@gmail.com>
References: <cover.1779157117.git.neilcheng0417@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299704-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,jms.id.au,codeconstruct.com.au,glider.be,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,gmail.com,microchip.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neilcheng0417@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Queue-Id: 7D78E5767AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the new compatibles used on Meta Rainiera6.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Neil Cheng <neilcheng0417@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 8ec7a3e74a21..1a2252eb08f1 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -95,6 +95,7 @@ properties:
               - facebook,greatlakes-bmc
               - facebook,harma-bmc
               - facebook,minerva-cmc
+              - facebook,rainiera6-bmc
               - facebook,santabarbara-bmc
               - facebook,yosemite4-bmc
               - facebook,yosemite5-bmc
-- 
2.25.1


