Return-Path: <devicetree+bounces-264729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHfXL7FZjGm9lQAAu9opvQ
	(envelope-from <devicetree+bounces-264729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:28:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF925123501
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:28:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E29C6300E635
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECE72369236;
	Wed, 11 Feb 2026 10:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="V0bB8fsn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8559E367F59
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770805671; cv=none; b=HTQ6hSrjH2ACusZ3cEY9c8HIGPKMXBIuhEzanvHb89UD1ehvfFHRBqV5dU/A8k7kw3Tld2U+ITZcQFV75MgYnwyXBB7mV8Ukdy53gG2J1CoJbWHGgftvgQRXfTtQ3zV7CGjouoz+fM44SiAWu9LTuulTH7Gznt53Bkfdo8p5fX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770805671; c=relaxed/simple;
	bh=81k4vDNl2gcK2y3l5OMOHs+wHy9IM6fpjbVqmXKA9Io=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bLABMzvRaiGwQKTMD3IY8jXEKkY/o1JXq+c3u7HAq++5h4QEhjSKR/BpgCGRbfzAfhL8w7+hGU8X+332u9FuPc/PKgpch3oUtwycPhEjcepnJp92GnBr4bYQ6vdGihiWObSHByvEeeqdHtEB9QGd6GGgX3gW3jT8QebTldSCq7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=V0bB8fsn; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b8f7a30515aso37306966b.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770805669; x=1771410469; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rBzLromM8fM+G/3XeZ5Gq0URj+zbmif8mTrB9fiboAE=;
        b=V0bB8fsn35jFn6xl4q1t917TvmoMTUX5M3DMhisfkFqsijVFlNs+c0qLhnyrymJwUd
         IDOD4wK7uRyEt6Rms+daf853JztUT1NYmR7OB23cBndBzvqPxlQG66SxmQWtGzwc6FSQ
         dLasFBLr3c4qXPvzUzOLNAPdvGzB2wSgT5Dgl1cpw+r/+k0PW+ZUh9X/IoM3qS52t/Jy
         nbQIbUmXhhS2VGTfwZ8ODPMJKGcrA+2+b/GwYbVJ6ac86Ybk4JW8EkNqUAc6mihu4BZ0
         N1NCcJ/pViF1iRb/oWQZd6Hb68p/6RXBZUD6YJHtUn03CFYzyNCdhEf59R/Y9X/jVjqe
         6gug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770805669; x=1771410469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rBzLromM8fM+G/3XeZ5Gq0URj+zbmif8mTrB9fiboAE=;
        b=sweNIcY782LT75OA6Iem6DQ/gO/S4nKvCznfDdj0eNYDtFyrLYIJPcfnNuGBYxZe3Z
         fBe+k2xGId80FQrhBWqpd2i6sU9aZETvY8+HB9vPvGhCJc18QIZ4QB+z19oPVz2zC0d7
         gqNaaD1ssTTYbwQtLin3ZPM8pXCjzmuyRPFE7Gkq3dZra801EfzrAwv8chxxEuzCTuWB
         slQMeVl/486nYhwZvgUR8ADKHcdhTb6tbB3iunEqpNJt+cNXslfBSY/G/RMN7X9qvjQr
         e08ro51WUeiP7ptoZqwc1FWD4xKx+Izw5hDMt1KETk7z9oE8A2LL5/QddOKSnfIjwYiH
         68gQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnnUn1Xgfgg+KbVFOuNpKqZYRRz/Ui52CZSNNz5foPIbi+EpIa0UL6+7XKEUYuX+MgRlJ5o3lQgq2w@vger.kernel.org
X-Gm-Message-State: AOJu0YywKVfTrObzigdeP8KCoFvKdBkzaAb38CXiB97QMjy4wd10/R6d
	PxE76B1E6V2VmC++N4J4VbQgjpSWqQQh9v2G9qGz2uA4so8N9GSO4GkBDfkokzuPkSP9fAzh14m
	NsjhXu2M=
X-Gm-Gg: AZuq6aITIWdbVlD3gXzA32sJv/jMGE87j51IyQLwLbP8XL8XV4mhDdwJROk5vF5jj4c
	+FHweWdv2/AvboHWExv2FVsfaLqB4CVy7XpQwNNFDDwFHXoBwsbMqsDwkSOvYbev8itSvG2+H3Y
	6eFVMRHDuFZmEXQu/lt0slmDjpyEVmA92GQUXOmg9qrbCr/epuuWwbHa9U5XrAoX0c6YVnlZmGK
	nu3ha40ib7PWnosU3Sx2FV1rOvZMZB0ifha43Hne/bJrWLab8VXsTgwSFBekb1LeAVJEnr80/31
	O776QusgankVmrzF0jBhzTejwy21t3ifZd2/2l/McYEvafBIm+8D6NCqPxfxYYCmsBdwwkrBs7u
	bPOvr14uWajPnZOuXrUcvEtz4qA9+lBZdNMQJ/E6TMNDis59NNFXLBmbWVio0jaKknFmqCNhx9p
	/SqPam7WN40ddWBvTOHu/MRU8TVbJO8GiTBpL/Sbrj3c3eVZJHtgvN3+P0vJzeH7wrwP7MSe8As
	rmU
X-Received: by 2002:a17:907:3f86:b0:b87:892:f440 with SMTP id a640c23a62f3a-b8f6adfa879mr131503966b.38.1770805668927;
        Wed, 11 Feb 2026 02:27:48 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec54925sm44296266b.53.2026.02.11.02.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:27:48 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 11 Feb 2026 11:27:33 +0100
Subject: [PATCH 2/3] ASoC: dt-bindings: awinic,aw88395: Document
 firmware-name property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-aw88261-fwname-v1-2-e24e833a019d@fairphone.com>
References: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
In-Reply-To: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Weidong Wang <wangweidong.a@awinic.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Ferrieux <alexandre.ferrieux@orange.com>, 
 Bhushan Shah <bhushan.shah@machinesoul.in>, 
 Bharadwaj Raju <bharadwaj.raju@machinesoul.in>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770805666; l=1023;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=81k4vDNl2gcK2y3l5OMOHs+wHy9IM6fpjbVqmXKA9Io=;
 b=+TuqGtOHKZbjaHLp9RSffmfo1Jo26IZ+ZHUsmxB6KmReKvO8wMOW/FZJTG9rdaSCMl90jfaEH
 oA8dZV13TgvCVcuXWr6ktGI8W9pKs1sPbXA8VJJpqU5TzlZQ+RkFJGI
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264729-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,awinic.com,orange.com,machinesoul.in];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DF925123501
X-Rspamd-Action: no action

Since the aw88261_acf.bin file appears to be device-specific, add a
firmware-name property so that devicetree users can point to a
device-specific path to not conflict with other devices that might also
ship a aw88261_acf.bin.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/sound/awinic,aw88395.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
index 994d68c074a9..b9abb10942ba 100644
--- a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
+++ b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
@@ -35,6 +35,10 @@ properties:
 
   dvdd-supply: true
 
+  firmware-name:
+    maxItems: 1
+    description: Name of the *_acf.bin file used for amplifier initialization
+
   awinic,audio-channel:
     description:
       It is used to distinguish multiple PA devices, so that different

-- 
2.53.0


