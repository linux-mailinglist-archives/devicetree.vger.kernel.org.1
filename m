Return-Path: <devicetree+bounces-266810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Px2M+z9l2lN/AIAu9opvQ
	(envelope-from <devicetree+bounces-266810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:23:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C604164F0F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2CCE3303605A
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09687330334;
	Fri, 20 Feb 2026 06:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QaTAP/CV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B923A30BB8A
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771568591; cv=none; b=lBChruIit61By3tXwlsy/AcoLmqjrmt5AF0vCkD00b7J4ny1N9HkIWzdqK+gJgSEOe2rddDG6JeDdxSDxa25ekf5GwggFtCY8u3OOXtuFu7BGYICXyW8gEsuM5zbqUqP38YHbcY2SOYGnt3yxABuNePctEb981NuNclsdk/1+Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771568591; c=relaxed/simple;
	bh=mUB+oWFMPId9h1Gwcmlg2XD1GQALPtczn82jDplWb+w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T6J4rfeGWg05nZ7TR5QItw/39LoohDl8+Cir8UCmsje17OmCxD6vuLUd0Wr5db/cF7BVr4yh4sBKY+4DQkKdA9e/IBtAxDGYz/rbBt58mGHqThQ31VhpPVShmUUi+6S+TeCTxpBmfTIHE5JdtbwPAW2bwgDOAdS6iDgl3bae8nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QaTAP/CV; arc=none smtp.client-ip=209.85.219.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f65.google.com with SMTP id 6a1803df08f44-89545bd3324so20848806d6.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771568589; x=1772173389; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LCKrSxgbtkE6sBorbcneokbI0mX+kuYA9Blctjh+gpw=;
        b=QaTAP/CVhdNPsKziDVSvEKQk/XeiNHOrtZ/LrvaGUSWVHt/lXHA0gICCxUGtYvAAAh
         277gep20Ewkc3x2bfEDfxAAiXlwfz07EGKPcqVdcwZy1SJ1MXV7/I68OMOFLOUlCgXSC
         wAzTKEoT5teIMioshAWW2wzr5lEsPjUkworNV/kpPuB9NV3HDUKmNeucwXATwLXdJlTt
         wISetCdwKLX92peo+d6qyZYLoB3VTu8+3g8dtlpSVdILMzUy08P+VDI8h3I5GK+5nsiN
         9iqTWTSrg1G7/2wnlB9K6MDj6dS/ZWGn0ci2ac7PhbEYiCgTNzeZ0oD9o9cmhxUTTjV0
         J4lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771568589; x=1772173389;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LCKrSxgbtkE6sBorbcneokbI0mX+kuYA9Blctjh+gpw=;
        b=L6pZ0YP8Tq/M9a1F2/vejPNbJeIJjCRyQOYkXTh5nw/YENOlU8NnPQxrP8Qglc2E4F
         HzyvShdiK4sf1uWn2Dr2lQhLHFMqzGdH/BgyQWycJ9jQ9T29M6WIY/lplMPTt6neWYHb
         55RG0pPP7PnMBC02QLyi2KHqgC7hkOt9U06zRCZ/6TVZNtpCL0RrbNc1UEFpCUyl33U8
         t/r++pauBjW7gXTiRID0b9R3601AM/BeyNV1XoQjyIgaZ02LxHl9NViQGY6zX/8N6dMB
         dH6SMrorUHuPq3+6qXBPD9xxnbh+0LTocai7Pu9EOkB1JAKhcl5NmTFVPGS1o6yNFL4m
         rPOA==
X-Forwarded-Encrypted: i=1; AJvYcCX6shw2nUoG3w09WYssCG0C4TQNn4jJoz5Bjhy03dt6OUaiMMuqR/rHs/1mEiGsvmZJ5mZvPB4BULf+@vger.kernel.org
X-Gm-Message-State: AOJu0YyhcqWF7xGNQnxiZanHBSgEsEDWCvGmLkmgHqFDBQ1qTSZjT+5g
	4fHQZTIVT2B96EGJ7/5iQfboSHTqve/o9+OoTmCnqfDAhKhvVxZ1yY+Z
X-Gm-Gg: AZuq6aLJswFFZtX7u4IFpHFr65+WAfrOjrKJRF/uowmONzk3yarQsic7X/sLKGq0WOW
	hXv8oGsmhILEqSiYB/rsK/lsoYFdKjBbibqgQSLAUhmBDt39ZXvAFxzG5u1aTrESjvSpO6wRd3p
	6iU3BHUgWX4LWQWSt4nuzloYs/+csp/IHOaaK3PIhraP6TJQrxWPL76NNkihUhuhcEhz2s2cbor
	9/ip2z26dRHWwtvrSpgtcwKBoMmuySjn8z5y/AaRfAYZ8uWFlSmYHX8lVjgvZlD0lcAtuXtvmJb
	Hq5tynyNaPCkNjUndxEVBFp5ssL8fZufiKLG/Gdo+WPj8//K+1zH9uS1TDTekQYfzZzwnvgnxgk
	Kv0zSr8znUfI4Nl6GyWPlqbCiP/NZ8s4X4Awi/Z/2wDzWDi6wCfCHfznzxqOO9oCcWb/2zRP4m0
	U5+rNGee4oTrdGXoiouNZgZVuJTvE=
X-Received: by 2002:a05:6214:2301:b0:896:f767:966d with SMTP id 6a1803df08f44-89961fc1196mr69841406d6.11.1771568589064;
        Thu, 19 Feb 2026 22:23:09 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cd8a5ccsm234206306d6.25.2026.02.19.22.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 22:23:08 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Fri, 20 Feb 2026 06:22:40 +0000
Subject: [PATCH v3 1/2] dt-bindings: usb: document the Etek ET7304 USB
 Type-C Port Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-et7304-v3-1-ede2d9634957@gmail.com>
References: <20260220-et7304-v3-0-ede2d9634957@gmail.com>
In-Reply-To: <20260220-et7304-v3-0-ede2d9634957@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266810-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6C604164F0F
X-Rspamd-Action: no action

Document the ETEK Micro ET7304 USB Type-C Port Controller with USB-PD.

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml | 3 ++-
 Documentation/devicetree/bindings/vendor-prefixes.yaml     | 2 ++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
index ae611f7e57ca..1eb611f35998 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
@@ -19,10 +19,11 @@ description: |
 properties:
   compatible:
     enum:
+      - etekmicro,et7304
       - richtek,rt1711h
       - richtek,rt1715
     description:
-      RT1711H support PD20, RT1715 support PD30 except Fast Role Swap.
+      RT1711H support PD20, ET7304 and RT1715 support PD30 except Fast Role Swap.
 
   reg:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..5e504cebbcda 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -541,6 +541,8 @@ patternProperties:
     description: ESTeem Wireless Modems
   "^eswin,.*":
     description: Beijing ESWIN Technology Group Co. Ltd.
+  "^etekmicro,.*":
+    description: Wuxi ETEK Micro-Electronics Co.,Ltd.
   "^ettus,.*":
     description: NI Ettus Research
   "^eukrea,.*":

-- 
2.53.0


