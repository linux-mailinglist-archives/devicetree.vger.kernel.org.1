Return-Path: <devicetree+bounces-305773-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id igk3DFoMH2rTeQAAu9opvQ
	(envelope-from <devicetree+bounces-305773-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 19:01:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 151C563077E
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 19:01:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=nXboYM4b;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305773-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-305773-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DBDF63029D2C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 17:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 783613F54C4;
	Tue,  2 Jun 2026 17:00:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F421368D75
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 17:00:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780419657; cv=none; b=fg3PW4s0bK7/dN7L9d1n7RAGLtC61uswuZJ1UnDqq+9tulXFRSerS73p2BPHPoCW8LLF1qfgLCLH5sGwQywBHTFz+Ixtlhjl2QrqpuOfBOLfdNQp9NzX3An264CMdz0q5qbRHXkTZXcaBF8KHpN36icUujXGWEUFSpEwkKmN5N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780419657; c=relaxed/simple;
	bh=BuCPimd0wnIGZnAHNo8kq3fbLznVxR/5ajKR3GVVTto=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nQsAjFfe/CaXUm5vOLAc320mIDi6lo17Nz9mqxxqhPmzr/1bWSemhgOimjlK8n/hk6wVhGdZlsD9M3YRpnmN5OVS278ATvC3/+QYW+Lo1HesSczDU+WXNsTtqu97tzrygUSvchdedcQQEmd11R2SE4e+X56POnJCnf2NBEs1aFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nXboYM4b; arc=none smtp.client-ip=209.85.221.45
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-45ef56d9b67so3324256f8f.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 10:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780419653; x=1781024453; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sk5k1GMtYr/HULN9/BDkc9qWrRFDftSIlp3dBX3ccaI=;
        b=nXboYM4b8XvbLxCAaXPYo8zfjj1h2KFZp9VwGbPeu1Iudw0YBinpp7AXmyP1ZBhwTV
         Gxj4UuCwPOHLwhxM+rseksuyBpwM4HRgB9Qkhq7c54yjtF0M1E0CahadISvx4gKDBbZK
         2pRIW4qNvqINyrKeL8mDYi2w0vfTOPUVSZMBqV7e4Ism/Zmd9vevIPVvJfPH6CLHja8G
         FVUJ8FJsgvioqSofG6TuTFl2Ghu7kVhn89wzjn/VhntR1SfDtoX2xg+yvKSJUmYDXZ0S
         igGiNLKpaY+4hay9h9GOgaF+5ti+m+CcaTW4K1S776QKn0NCqdIYdyLWaN6iTQctRVya
         Nveg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780419653; x=1781024453;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sk5k1GMtYr/HULN9/BDkc9qWrRFDftSIlp3dBX3ccaI=;
        b=S+xIiXoN+C+Fqv65xJbac/X+hNQ2lBdQcFV4H09sR8mK5Xz9ShB3tSqSrY+hiRkXfD
         jLLiz2UKoPCXUW3GEq7ETXStwOefKkz5U/PZFSX3g1akT6EzaXgGiRK+ficBY5z9kIrp
         zCT6mnPBBpm1g8od4WJ/hpk9E92lkcmWTBXgashlVJwB3fdRO8JbEE/eN2wZ1IXUEtt/
         qAl4Sxli5C48qhESRkKhaR4uD9GyEbq4smQteEnzw2RGKQBZfDK6SKfZJNFE+8uLkTNQ
         8eLpJSHYspZ/Fa4SHHpruN8yZQYC23yKbcSpY60IY3+5SlxuaFl90O4oy231gmwyyWcL
         VCmg==
X-Forwarded-Encrypted: i=1; AFNElJ93hz35PSiPjrznvPlg7wHbJDc4NpoUIlErD6GBSCCYfOmgYCiZbpjp5dmVHTn3XrFXN/TsbXwKvykZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwL7E6L2wDBbQiJXvhE+FsNsHfOlAD24QtgXDXzCD5ty83Jr8Mn
	s3kq+CtV+J0Hf8HgcWk3Mq2SZ3cBy+C2MNdw/HZBKWgtCEuAI79p21oi/oSg2yWdhQg=
X-Gm-Gg: Acq92OHvaDFd5AqSmag6ANqhCOn2nuOW5OepNOPGo83tvLz05HNe4/esBNTeJ7zq4KX
	CXu8/YVkqFv7pAsdobQK2OVa+t9LJ3tjbP7nvAuACIjAiY4AKpyGZ5WlJGNdZ+kYFJvfn+g5YZA
	C0Pp6HClZh0cYl1bq6ZZzZpvX0EzS9LDQhB1oV8Wul/Liz910/x+MFug1aVORCiaYol/8trA8lc
	12L/L/I9F4JO603aE0QNX4I19eMLb6VLcnV1bVaW9RMKk/QXWHg4ELwbyhG0ndZiE010CNwTMqm
	zSOECvN2gkHxuEjtrv2ilRMaTAAZvvtG3++SP4vhggi3Ze/atQhAhn4Xbb95LMsiT3ecgitU0xI
	JX2dB8iJBkvHN80MSg68Ckp6QKhBAaj1hk4/ZXf4GQvQyHCt7ERx3KY1GIr0estqlXyMq4jTQ+h
	heCZgji9sA1idbjiwqS2oc0A4zfC3kbeoZqMvxjvtlKuBklJmd+1aaweQ2MAyA/KHVt/e6SROnl
	PDGnGfTu7sIkGZUKcQCMPU4OA==
X-Received: by 2002:a05:600c:458f:b0:490:b27d:e852 with SMTP id 5b1f17b1804b1-490b50b9320mr9331175e9.30.1780419653563;
        Tue, 02 Jun 2026 10:00:53 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f360bd6sm541156f8f.36.2026.06.02.10.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 10:00:53 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 02 Jun 2026 17:00:49 +0000
Subject: [PATCH v7 3/5] MAINTAINERS: Add entry for Samsung Exynos ACPM
 thermal driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260602-acpm-tmu-v7-3-8047dd54b0e9@linaro.org>
References: <20260602-acpm-tmu-v7-0-8047dd54b0e9@linaro.org>
In-Reply-To: <20260602-acpm-tmu-v7-0-8047dd54b0e9@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: jyescas@google.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-hardening@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780419650; l=989;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=BuCPimd0wnIGZnAHNo8kq3fbLznVxR/5ajKR3GVVTto=;
 b=2qpm+leQ5BiHyed1UhFlsXEUso4OD56cdRmtkZsjvj2beUooulxoeIa2paOJsetkWrE2vyngA
 ih+5udRiTgIAl6fxu10x6wGK2hbVqp8S5IXkteJxVbMjMf147Zw4/l5
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305773-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,linaro.org,samsung.com];
	FORGED_RECIPIENTS(0.00)[m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bzolnier@gmail.com,m:krzk@kernel.org,m:kees@kernel.org,m:gustavoars@kernel.org,m:peter.griffin@linaro.org,m:andre.draszik@linaro.org,m:alim.akhtar@samsung.com,m:jyescas@google.com,m:linux-kernel@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:tudor.ambarus@linaro.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[tudor.ambarus@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tudor.ambarus@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 151C563077E

Add a MAINTAINERS entry for the Samsung Exynos ACPM thermal driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e8218c2749b7..6a8521270daf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23661,6 +23661,14 @@ F:	drivers/clk/samsung/clk-acpm.c
 F:	drivers/firmware/samsung/exynos-acpm*
 F:	include/linux/firmware/samsung/exynos-acpm-protocol.h
 
+SAMSUNG EXYNOS ACPM THERMAL DRIVER
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/thermal/google,gs101-tmu-top.yaml
+F:	drivers/thermal/samsung/acpm-tmu.c
+
 SAMSUNG EXYNOS MAILBOX DRIVER
 M:	Tudor Ambarus <tudor.ambarus@linaro.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.54.0.1013.g208068f2d8-goog


