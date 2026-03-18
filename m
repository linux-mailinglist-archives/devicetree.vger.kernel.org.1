Return-Path: <devicetree+bounces-277078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLIXBc1yumkeWwIAu9opvQ
	(envelope-from <devicetree+bounces-277078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:39:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF582B938C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1251830837EC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671193AA1A4;
	Wed, 18 Mar 2026 09:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="OJhjC7fb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8773A9DA5
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773825845; cv=none; b=ls4+ALelKKeBXAfDXqmEToLTmjW+fuJ0iru3jU7mXJkzSKACcrT0drV7VCMx+k5BwyNjgAkyoItciN7b/JdfoW5l83x0xCQs2VCf9Wh/NGJlhrpZOF0B8MK4RX+9DsVLoQ9dqYYOlIyPgyS5rtvMaCzTJNMYHkSI5T5z8po8XDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773825845; c=relaxed/simple;
	bh=T+J1OY8trN/7RzkbAWgyzywsuUmbTSqBleeNAx93u6E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZITkJlwmw2p6u0NB/eeFh+AnkVCNNFzIQybTsgmJunW48FrtjeI7CNg4JnCOOe9YQspbDyqpl4a2CmddrlAGODdpKAvuwddU2pvaiG9V6lmpi/ien9iOsbX140K1BKf6vgNz4ePiFVWliJqZT0D6Q/Cq6Wf50exxjaAGO2LZPrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=OJhjC7fb; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-6670ba39400so3330287a12.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773825842; x=1774430642; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S9sCFNxATE1UQcKX1OKooIck8dS1xOFB94Y0TqD1Dbc=;
        b=OJhjC7fbkuMrHPhZAevh5QbspRtSKQRKjQhe/twBuQ21a8iD8t7qggNE6sQgCANlRZ
         NaslCEnGs8iQbbH3t+kUj+GFmd6G+n5jcvr+WrbefcLiUhhW+BfwX8unAgbkD8fhVdX8
         Rl57fsg1NevLo6NMjYwZd2HtAai8HN4ac7VRdZUN/7tOQURxYdBweSM63VV7bGJL3GzX
         RcmxMJwK8eL4i7qMcYInRDNpR6bnGmjvnqzAjaVQH3eczpjJtv9oDVxgiUYBw3ju3Jps
         FMAT4idJct1WvpxP454/ynvE8sn1y5NVzjHtP01IYsnjVlDClBuXcWJwpLHrGKfqpQ+r
         4VNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773825842; x=1774430642;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S9sCFNxATE1UQcKX1OKooIck8dS1xOFB94Y0TqD1Dbc=;
        b=s5z2nU6KrClV3W22FCwGTD1zTyTNDVbh5vgcqzTyGnxP7YrdUwPCSKKkLcyaGCeeWW
         WZnQBTWQskyDYDtewqFzrNs3/MbG3vAxGA11425+bTpNpjBXoZG0DF7OOG66d9Bn0q38
         fUCsuCk3S0OMBAVPLFbggiv7usdmjwC6WSfWyVMAkxXk5DcS20QNn1deKPC05Fq4QKdt
         BLxoZRvgcPtMAsFSjv354EOMV33iJwHpQv8CFnELb54BJqA1pZuKnf0nBWvpBkTQCjtP
         eGI3jIMlK3/Cr/Bdu7c8acQRgi0GomUCJT43dVtkj2Za+p+hzENRsvOE4O7H/0KdtU5N
         gtWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdiBApUT5ldxrYbRHd7VLaG0Z1INVxdE6ei7wF5h1/O3SwkAjxn31AoQzIdu5dbXcrtrddqSU7CUYP@vger.kernel.org
X-Gm-Message-State: AOJu0YzxBDr8Jw2VgUsM0z9m6Lq8PGIfVJXvmgoA2Badcsi6/nsynTH7
	wPZuyiVXy0BMF5zHdqiU6mBzy+qqsmUJIpl4AsVEwkYXJEEJtn3V8N8Qr9DrKY6APvUGUTYKTfD
	z6eCgweSC/Q==
X-Gm-Gg: ATEYQzw24LC5hDcLO7wtfFOZRpplz6PeNJWCi4DB5QhaHwLeHQmxlXNSZNdk2t38VtH
	6FzzY68Scxan9E5d4kexGZQl4GefEChGsOwxr8b4FzYwyuW1rPucuOrJNuX7r/7xrX8P/t7KgMN
	GD2mqA8aA5kEqaStRsnuqPoeFkznivgAtusF9yhE/XMrD9DSl1b4ynjAkM1cQ/iOdTfUyyYtQJw
	gjJ2FSnrj8c4XhMh/nLJImoLK0IhhYA8BZRyBDDhhu9nl7YYKLqmF3fcX7WHEFxkntT7kPr/zbm
	3oIyvBSKPmrd4WOzi5VkLsDwiejihFQQ0gSDT39yz6GOu/JexJnOAIGfXLeBSAhzOqW3kWarCiC
	UVRlHzFxn3rJc0ZFB+qLXdMGmRBZ9pDUxQcm5EPg2bPw2A2eCUt6hUuU1GCcwgOSX3Y0V/n+exN
	xbq6GWakjcEEHevMlSxQwyDbwfNWBiOxo4P26nMPQfgnM=
X-Received: by 2002:a05:6402:2810:b0:662:b884:d1c with SMTP id 4fb4d7f45d1cf-667b253300fmr1975302a12.10.1773825841765;
        Wed, 18 Mar 2026 02:24:01 -0700 (PDT)
Received: from alchark-surface.localdomain ([193.32.126.212])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-667afb4cf11sm1309970a12.13.2026.03.18.02.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 02:24:01 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 13:23:43 +0400
Subject: [PATCH v3 1/4] dt-bindings: vendor-prefixes: Add Hynetek
 Semiconductor Co., Ltd.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-husb311-v3-1-2b32e6192b9c@flipper.net>
References: <20260318-husb311-v3-0-2b32e6192b9c@flipper.net>
In-Reply-To: <20260318-husb311-v3-0-2b32e6192b9c@flipper.net>
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
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTuytfIO7fhvNKcjyW3Sl7ck52wqXjeg/uHJibk3DrBL
 nDUaYmfU8dEFgYxLgZLMUWWud+W2E414pu1y8PjK8wcViaQIdIiDQxAwMLAl5uYV2qkY6Rnqm2o
 Z2ioY6xjxMDFKQBTXcbJ8D+hVfBe7M0n9qL2B8y0mhxqDylFyah/+7B+x7qytZPr2DUZGSZ8e6p
 xveiO467K1J5nDwLvbvPzlvbquC7xZtXb4IWp2WwA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [4.34 / 15.00];
	RECEIVED_BLOCKLISTDE(3.00)[193.32.126.212:received];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[flipper.net:s=google];
	TAGGED_FROM(0.00)[bounces-277078-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[flipper.net,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.842];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c04:e001:36c::/64:c];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,flipper.net:dkim,flipper.net:email,flipper.net:mid,microchip.com:email,hynetek.com:url]
X-Rspamd-Queue-Id: 5BF582B938C
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


