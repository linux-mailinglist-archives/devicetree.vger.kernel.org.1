Return-Path: <devicetree+bounces-274227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EzZM6GWsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:21:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8372673F5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:21:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF7963096063
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23410282F1E;
	Wed, 11 Mar 2026 16:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="3Pu7u19B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA62B35DA5A
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773246062; cv=none; b=YTQt3gNpUram8yLMSTuFT98faPQb0Qo+hG6iAqwhwfaqqsJWmiGCKtjwNAIBPEvpORz4AyvpATc9l7BP+3xhubxDx4PpCurB4CMpsIGCs4JRGW3hZe2WsILVlMD1U0dvw6PvGReVu8VyyJEffXzKbssEpm73rZwkpds3rqTWh9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773246062; c=relaxed/simple;
	bh=KSJSNgctAT7J2Xo5Q/xEeeommaFbrWm35Z3cp49EY7E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K5qsHfaTjyMdqxHaqIOapdGWNZXr3wwtKWdcJtgT3MKsxfdPqWup4hgYF6IHspvNIT1ueEYV5VpNNWvNOdeP4oLCx+sJTxUO2eG0ZAEqeegf+3gyJ2sA5xP/lhc2hhqtHDNFgC+ftzY68gWVNpOzqPTA1qIaGPx+jC0xWrJ78u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=3Pu7u19B; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-439f5abc829so53764f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773246057; x=1773850857; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bzi3XIcBxTFWoz5//DP6Xpv7izpmnkI/JfV1bUZEMJo=;
        b=3Pu7u19B/YoUVmvgJ8bmRObMBcBH9M8BYjVcH4w8znul9UEMFbLUU9HHPRl6TTH/dy
         vErEQ4K/F9pslgY0QjrMWl91FEXLNonRNogJQfXJClUINu+m6RbHTBQKQPApmnZutGeJ
         isEIT6CXEH1t+9fHcgn8facHe4eU80IxBCY4Nw9eIZ9msI93f7FhIOVqcnGJ2t2V2PZ3
         IE5NMJnG/fwpsHi+SvOrMkCQi9PeYJmq24ffxWZM6bEOV1Qh4z/o/SREh+10POZyKwIu
         YCwVCngjKdYWW+tMA635h0NS88RDcIX7/nJndlZWxDwhVY2kdvqE7IzyFj6Vu8gD0x3l
         oYAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246057; x=1773850857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bzi3XIcBxTFWoz5//DP6Xpv7izpmnkI/JfV1bUZEMJo=;
        b=tEROiQa0td/4NsqXYeSVCjzjaro5ewAhirl7Eu1MkFpFu2P+eLQBPGXd+FG8ZA9Qs6
         UXrt4gFU4nKY6I6cUX3dlc1bldYC/wWWCDkf7v7/jWYGlx+ZOorHshfZELoXOb0d6kyp
         TZWjy53OKjgMiRU8UpkXcXpibdlTi2698neKTUypW32mwtrD2YywD5RK14NeVkbadjMy
         m2IU5z8csYY0yjiPSVrfURFucEY/8k4gy3oOIY/7JFem5gwymSeZ0Ps7g24+vTh8RuT2
         pi+ZOs+qQrJk6BHnFKAONLlOUTsUph+oOf/q0NJ1fFLMvU8KVptEILSKi8ZDZwuTaZDW
         lz5w==
X-Forwarded-Encrypted: i=1; AJvYcCXZ8nH5Vc/n6IznHk8oUAraLj+GQ4cZOp5lxpAdfas7D542+3s24elM9/m3vkcDRpkh64TCNU/YsMYV@vger.kernel.org
X-Gm-Message-State: AOJu0YzEAL6S/2IdACtEKWvQjxCf6npEivnbrIuEAWLUNl0LJr1Orv6Z
	w7rVXET10IcoFvWX7HpkRaq7u9/L5sougJpsYI8FWtB92IN4K8JI9GKZuYni58mDdEBnFiyGTze
	ZacAo
X-Gm-Gg: ATEYQzwDU0Aj7BSHwk7A1JG6u2kQOcye8G5qjhDDbmk7Us8WRdhtStYgZylkKgndHzx
	oVW1zmFeZbCOC+HNof0MiE7xn3EVf/MrumuEUBmOGiuFF5H+bNEyfN33lcmSGWASAQIUU2/n+kU
	qvGvxhveVR85MsDqnedtioFgpI1gJymJO8rxhhVBdSOeOf48uxAxCWx0OUwDSwf6mUqqcJh6qSm
	Mbjmq3n0VQWr9bGNeiEdqu0ZSasG05PkDgPks4R8M9h/7AV6R8AMLNUlx5dHjxIIj36W9oIaQQJ
	H3Ge6IDsmvrkPhRdYlv3GSixvgcYysqeU7PqMIppYGFVhbC6pnneXBTD/0hSSROmtKraiqp3awj
	R3D/vId5/sUORhzePxXJ1olVF/1ZsNqNwKYl+AS51zFhTnvT61mpuG8Hlak/mYHw2A6E0lcSolt
	zAOGB8QSkhCoXj9pT6JOA3+dTkAv6k002zwDc7Ej1K5Lsh5yyuLtZ3qR2kWVSWaIXmx9NbgbPp4
	ePMTQ==
X-Received: by 2002:a05:6000:4201:b0:439:c78b:cbef with SMTP id ffacd0b85a97d-439f81f272cmr6543942f8f.25.1773246056849;
        Wed, 11 Mar 2026 09:20:56 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm283952f8f.23.2026.03.11.09.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:20:56 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 20:20:44 +0400
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Add Hynetek
 Semiconductor Co., Ltd.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-husb311-v1-1-f25bcb58cff7@flipper.net>
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
In-Reply-To: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=957; i=alchark@flipper.net;
 h=from:subject:message-id; bh=KSJSNgctAT7J2Xo5Q/xEeeommaFbrWm35Z3cp49EY7E=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRunJa8jPnruenhO4qty3d46i/c4Za8Xlp1wd9Dwl9Cy
 9Ljxdee7JjIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCqn21lZJiWauzu4HTcXMNidtGSk6x2WkHGOgHr3worfSmJMbtXe4bhr/iENRY
 LX+S1lX45u0SDvXlB4IVylspZEVNenpZ7EVJtxgMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274227-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[flipper.net:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,hynetek.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3A8372673F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hynetek Semiconductor Co., Ltd. focuses on intelligent energy control
technology, mainly for the intelligent fast charging and digital energy
fields.

Link: https://en.hynetek.com/
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 04b7d1aaaef1..f1e6b1d03839 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -745,6 +745,8 @@ patternProperties:
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


