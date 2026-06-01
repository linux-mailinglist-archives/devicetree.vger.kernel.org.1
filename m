Return-Path: <devicetree+bounces-305212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ISZF/GiHWrmcgkAu9opvQ
	(envelope-from <devicetree+bounces-305212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 17:19:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D8662184B
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 17:19:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F23E3014758
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 15:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6663DB635;
	Mon,  1 Jun 2026 15:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FfR7Y7W7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094C23DB328
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780327118; cv=none; b=M9lLjsqhByLKga3Vf7B3eJd/2HUickVbEcJNrMQN7G9ERa8R0ocL0yiZMeWvQBuReKqd2aXM60aZKfikTa6jQb75PaYjxq+qo0HhQkbSy2yXkEEElCJNBGBUJgdzAknrAX1swTfdDw/tsxXxmRB6iqipvOKkgC35M1gU1LjAwZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780327118; c=relaxed/simple;
	bh=AlIbcBhxQY5tdoRA+xhInIDubeZASOSXqAsfI1siQbs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jCsoVmlbSSk4eUqfYIQbd1gsx7wLN7q2uVMl6thq8DOEirCgju79JEcJSyKWicx57y46Zm0RzCh13jvelN4pSKMXcEgsyGgLxOTPmTanQX//wATUc3uGvU5qavTtSC+pC1UkdYcFmpCLRWJUofaVYUATOFa/hKjxTUK0Xp4ba4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FfR7Y7W7; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2c0b9328c4aso12276115ad.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jun 2026 08:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780327114; x=1780931914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=FfR7Y7W7r6LYbOC9lZW56bfwTHeN+prruU72P17bLDpwmyKWsFxQUf18DdAejavNs/
         FsM3fhu/0XgbSiInBnTekjRu2wiaEPtEWEkR0HaVG/TToI+d746/SRKm6QFnNpr7BlJ7
         prIe1QTSrS3CYYrmhR9MR9BMA1BoI7qlfC2JPSmkw6befb6Sdn9OIapBDW1hvUEQDPIK
         ePhbqomP9HXNAZAVlNehNOT0J5P6L2+JOB7xuiNlBqRH8cBBmnMHAQ3uztXQXKbaCORF
         9hIEnerpq4979oI9Squ5CKGQUVDIRlyVTNsNj3ZpqjlqVlYD/s3x/JQy9F/aYXHCEdJX
         8AaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780327114; x=1780931914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=U25gKMeD3guyOepeoIV1S27bcML5epvuXx5lVXdMsgvDUQT2bfvNPWtiE/KGn5wjZ7
         QoS9q7wD9WcMG7HAz2mIEzzWvqB3Y3por8x1aAUNw/MzVoDJerLOlvum0NKKVJN48ZEV
         3gjHtcJIfIzQ9PAPPOIC/KqRiKvfhORPZXTDMl3s4izoF/fqJ2ajAMUZAv1mHlqCiFXC
         YeAL6E3wnP204ySAIcjIuAaQ13zDi6PfHLXbZhpBuIwiEwrOSzRUaECSLoil5YDr+Tsc
         BfxRObtKysb3ZTN/Dc/czFOj1oFdwywnwuFI0VYmmntikCnpbfoAGnWba4FRWCaOWkQC
         Jl0A==
X-Forwarded-Encrypted: i=1; AFNElJ8a02Lvnj86sybWZ0jVSBxmJslft+hfVXPl5ZyjBslEnTTrI6m8kDgn1xKkzSXK9MjA3RQ1XRjOzhyK@vger.kernel.org
X-Gm-Message-State: AOJu0YyU/Chra8cjmqIegs57XniQoSaF70rBH4afmnX1FNNKdOFa11iu
	5ZTtooDIdWYT+BpQYpTtxia650zLq2ioDoswziZGVQsEjlIdAWsBKXUb
X-Gm-Gg: Acq92OE1DuaDYFrpmfRAdDcSDf+uKK+6zRlfYHzU6RTivT4rPU0AQtV0VTpM9wJKhkd
	SYhnnbolzDN67ME/5wGFizlS9xlh7bgUR3YkPtvrwfQZOOtuwxjWDpI8JdXfKEkKY6qKQaBLYt7
	U+/nFIAsE3YttwTA0Bx+t0bcW8c3wgNU835B+JhZoeiQdUof+lAbbMbptoECAvwyRDWeN/8Yb2G
	B6A3Ur531MTvnhRhTwTlrb5HuZ5EUy0wcjeTby2YmH3YIseqFmKPCX8znJszQh0Tf5QC8GZsweM
	g5Q3ou6LPbO2cDM9m9DYFM7TdwuqH7O9MEFJH7bHW1TXthYN7jb+0JJiJo4Q4tkBt+NaewcD5OH
	23N9aqlsc9nsKMgHWJrMY+gFykJnP2QD5QIUw0HMOD7QmFrxNApQRS9Oo6VElIQv2qnXmjLPJF8
	O00SFvzUR36oOZRhkaIu6IGcHFiJ3ZyVIrThaJVNix
X-Received: by 2002:a17:903:986:b0:2bf:222e:461 with SMTP id d9443c01a7336-2bf3682aba3mr125337835ad.25.1780327114048;
        Mon, 01 Jun 2026 08:18:34 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf23c0d727sm106633925ad.59.2026.06.01.08.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 08:18:33 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: add vicharak
Date: Mon,  1 Jun 2026 20:48:08 +0530
Message-ID: <20260601151810.162173-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601151810.162173-1-hrushirajg23@gmail.com>
References: <20260601151810.162173-1-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305212-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: F1D8662184B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the vendor prefix for Vicharak Computers Pvt. Ltd.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66ae7b..504a691a33b9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1791,6 +1791,8 @@ patternProperties:
     description: VIA Technologies, Inc.
   "^vialab,.*":
     description: VIA Labs, Inc.
+  "^vicharak,.*":
+    description: Vicharak Computers Pvt. Ltd.
   "^vicor,.*":
     description: Vicor Corporation
   "^videostrong,.*":
-- 
2.47.3


