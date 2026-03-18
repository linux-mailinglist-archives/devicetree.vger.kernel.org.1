Return-Path: <devicetree+bounces-277291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AB70FU+5umlWawIAu9opvQ
	(envelope-from <devicetree+bounces-277291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:40:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F4E2BD53C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D508330CFD86
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A233DBD76;
	Wed, 18 Mar 2026 14:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="hspEZ5/0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091523D9DDE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844397; cv=none; b=Dn7YEWZaj0PFRmlM3HgPtTxM8/4fZh/wpMuME1EfcUNFkiCQdEgXQdsEjMPjeFtOpr//8L70KnIkyRnTNykSCKM4AyOnbythl+iaFLCpoGLQ2m/VJK2rCM2ebZaH4DOHRDBlwUXf6HeZbbVbh41CTdNNvRfvG5OAs9o5V019jLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844397; c=relaxed/simple;
	bh=T+J1OY8trN/7RzkbAWgyzywsuUmbTSqBleeNAx93u6E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WngMDoGUAaZxUMhpM23iyxldQS6dRNRwa9G5tn/yjhCWj0Sjl9HOQOVqQG17vacXIghvipMSEPPmoSLWpLDhctpJzLp3CVwftibUUC7MiMv07p4J+gVK619UdXwtWH+fmzyV7deILvtmp49G3O0klSYxi+boIXQhMzEe6uNeAhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=hspEZ5/0; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4852afd42ceso59090465e9.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773844394; x=1774449194; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S9sCFNxATE1UQcKX1OKooIck8dS1xOFB94Y0TqD1Dbc=;
        b=hspEZ5/0KXR48ulicGhIDKAuX54iDCKlzIVaYdc+CGbUiF7ZyjQcecZpPsvFiKDGlz
         ueXShCx5A2PsNVX3y+LGkIgFvDNRYjzlYnC7mTpqh9goI/CXX2wbTjE/QilMo4Ow66Sf
         gP+EaO2kuhdhApe6rt7kwAb6NfOU9EvcGLTi+pKG5gMLb9eVhVluRYtUOb0rqyc4OoDN
         keVsjB2yjc0iEeB8RjNCOwnE5fB3Uv+ueKjUjoqDu93SwtXjL7biwUDghehyCxwNkaQt
         iZlbUXOAQwXN+rO54KH78paj54uywEBDsUf2tq7Am9TBZ8lJ1cBd7a3O+xKuOtanEy5A
         mGaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844394; x=1774449194;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S9sCFNxATE1UQcKX1OKooIck8dS1xOFB94Y0TqD1Dbc=;
        b=izvLkfz+9mX5hMCSnKB3FAq6WXmATxz4KbZ+DSZviVTjJZbBPxI5uF2Cca7J6QmPjb
         qUvTdkBNTYLuqF1RksNWdISy2Pma6qvPcINiYm4EJp7xXhyzvgwscLpE5wR5N+v8RQz3
         33AGfrQ7tB5M/IdXOv33QW2PYUdaivH5n4NV00I1QuM+eFYHYC+ZcfFZX2FH3XSAKo5Z
         wAc4AdemUCkVmownugvYvGI4pB0K0cWsO/NwGa3j/btQyaIt46emLRT3+0NjQurhNyBt
         jqtAHjc4ykdmEja9s37hh8JcTdJ95kZm5+wtCQrel7MP484dYthzGnBizOl6VKbPQNLs
         et4g==
X-Forwarded-Encrypted: i=1; AJvYcCX229XX/iBwIFgmakj5MGV7BEd5DNd83JbzAD+tTk1WiZyEEj6nxyfJ4KjnuttAIfrREJFz3FFt6wF1@vger.kernel.org
X-Gm-Message-State: AOJu0YymdbCMSs3GicZDaJcm3wdSc8ZTyDxnUbiXlacr5eYp2D5riKrD
	pGbjeLKSv0UAhYPMOv00GhlorAlG2hlzXTzDFymZTHYGmOYvKeUNBAYiC2eQge87JDk=
X-Gm-Gg: ATEYQzx4jJ5UId508lQXymEiTAJby60uNx/TK9/n49LoKrA909LJNTsVYiNP5F1FKta
	SUDYT5CQpHRZ6Pe+QnLz4jlNJV69ny8TRVlfDxDJT4tgkb2RoVxJ0zFXbcL/rOFUsvkL5wh7sFZ
	fm4lf7Si7Dl+5/bA3H48rR87JPm8bh8PM8mR0jyDA4A3ixYUn3OEGPu0NcOAKBfs8QW5p5FQbMw
	OPMXYlPSUIClR4PIRHELVLu7I0Ha/RBhhA0nT/V2FQj6nk/Jth1Z1zLkDiqi+EHwgMVqoplrozG
	B4i+ScxtmnCoPuI9nRBGrJ6pVSrlclq4OvlYy3PmI+JeBm38ruqqp/G5jJtoUg2JfEtgxqtDh+0
	lmAamwwjqKWy0zN7vUNIIwkvHCFzhMcolvrBBYosetMnAb2y/UWS7Xvdv1INh8D3dzGGH/clJqQ
	X8OFl1dZXCl9GM+XLZbHZoH/P+88xt3GpGi3qRwmbSn1T4BBrH2tlv7kXklKA2JjfkNTJuxOH0O
	LmeZw==
X-Received: by 2002:a05:600c:3acf:b0:485:4438:6ef6 with SMTP id 5b1f17b1804b1-486f44435eemr57308705e9.18.1773844394264;
        Wed, 18 Mar 2026 07:33:14 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea8fb0dsm270642085e9.3.2026.03.18.07.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:33:13 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 18:32:53 +0400
Subject: [PATCH v4 1/4] dt-bindings: vendor-prefixes: Add Hynetek
 Semiconductor Co., Ltd.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-husb311-v4-1-69e029255430@flipper.net>
References: <20260318-husb311-v4-0-69e029255430@flipper.net>
In-Reply-To: <20260318-husb311-v4-0-69e029255430@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1010; i=alchark@flipper.net;
 h=from:subject:message-id; bh=T+J1OY8trN/7RzkbAWgyzywsuUmbTSqBleeNAx93u6E=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTu2r7kzYviGyXduTk7ey0XzS+bNjFVv7SWWf9GoGYDk
 /3q59dOdkxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVljsY/keJNMj5lHBFzBWZy3zEW3gKmxuXhvZb35Rme5s7+VdC9jP8j95a/Xv
 zNd/oetNbPyeJZx/YedqnmmtZWuL5OMNdWc942AE=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277291-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,hynetek.com:url,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Queue-Id: C7F4E2BD53C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hynetek Semiconductor Co., Ltd. focuses on intelligent energy control
technology, mainly for the intelligent fast charging and digital energy
fields.

Link: https://en.hynetek.com/
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5a806faf7170..3ffb1a8e24af 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -747,6 +747,8 @@ patternProperties:
     description: Hycon Technology Corp.
   "^hydis,.*":
     description: Hydis Technologies
+  "^hynetek,.*":
+    description: Hynetek Semiconductor Co., Ltd.
   "^hynitron,.*":
     description: Shanghai Hynitron Microelectronics Co. Ltd.
   "^hynix,.*":

-- 
2.52.0


