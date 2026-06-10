Return-Path: <devicetree+bounces-309734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4nkHOPFNKWrzUQMAu9opvQ
	(envelope-from <devicetree+bounces-309734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:43:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38755668E6E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:43:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Xzg1Ii7O;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309734-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309734-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C735B30DE804
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F8083F7884;
	Wed, 10 Jun 2026 11:39:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E56E30595C
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 11:39:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781091565; cv=none; b=WfrCIrc67Ni7lz2m3cYHnX2jcpQUOEE+RV0Fm9b1fImS6ccxAO+ZKKntI4kkU6qJaHf/Z8EcQ/b6Nh/2G3NX/Oov3Zs9VNZDsGyhmy2Fh+OCiRWn/qyp0DNcBqzy2BHuDONTSMFPKNSFbcYMDim+8h6SC1NSENC/s6/Twq4Utuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781091565; c=relaxed/simple;
	bh=kJlyu0Ku8D5i/hWc61LWnoUqEP/8/5haNfDxLdtNTf4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BbmZ7kfgnwWiqOyk7tRN/3gFnY6ZVe5CUAPQ/dpPwJKBaZ79l2TJqL64/Yp2+SIupqElgP4mAfZrPrmHVP7jNdZJm82Om1Av9FR87UP/yvBAO4ezOvdJQXOyO6qaav2CtPPJM90h+Z2ud3Q9cSBaCgylzj+jFGoD9KuttyA5dIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xzg1Ii7O; arc=none smtp.client-ip=209.85.128.48
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4908b92904fso76465965e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 04:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781091562; x=1781696362; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dLodmWzrTN66XZxi0VhoRsFvF3s+BeRFANK73fDJpdo=;
        b=Xzg1Ii7OVeJT3vjDySZW+ak5IJ5AtIiF4LsUhdahySxIM/sz2cj3DbGOCmNLvT5pq8
         EeIkesKWnKX+ekoajvT7mh/3L3BuPdAya+lh4NbUnd6yaS4lVg1tDaHfPFUSNYohHjcD
         NlQZkTBtUFVsmXN8LAp4CJTJay4Z0CFhBwlh8gHGCawUFvT8uTKuL6XDzHNFHGq/I0gq
         0bgIo1d8G2kAUSh2FzCpdNc3a0rb5tXl8sYnGLrPL3LIGJl2MBcwgUxLhtMgZTA6aWRO
         HMMcVkTTluqlj1hFzBCrv66bleeucYqGjcGuXdo3axJtTEveaKWQ1pY2ZWXvw2HBiqbb
         hTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781091562; x=1781696362;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLodmWzrTN66XZxi0VhoRsFvF3s+BeRFANK73fDJpdo=;
        b=BC9v0fUvSXcs13b/AgplXqlI7MdYh0mBRe/TQ2QSdbJ8VNdBGBcharGXKC1OSn0wep
         3Q0fmBwcbwHUL8Gq6DUKdegG0I2nnY0JMF42YmbFiX2cP4YSXf+brCpXgP2xNCd3Sbey
         iH+pb1P9p6hTt+Yc2gcFkr70ApXSAjzsAxOuDU5oHWz7Iwjt/uHz5xvX2V1EGb8pYm3L
         unaaFW6tOz6TppP7wcZFRX8+M35KGAEmWn6OlcfrxbZrcXGy6KcD20cPXkm4WKQ1jNVB
         7VH8NjtshaT1qkX2y6vnnZO7zcnJ1uobQ5haeWOPi41mx91yZi/g8hXUlT31XbOjMf5L
         rNOw==
X-Forwarded-Encrypted: i=1; AFNElJ8eCQeEEqxV/5NcscdktqTZquG3sClRBv2/VnPtx8JrA/qLT7V49dg9p2UPdKSO1qUAoiU1U7uG5Fmf@vger.kernel.org
X-Gm-Message-State: AOJu0YyuL4zs342C4nQJ607+7AR96s/1cTNjK/ZVZlscF/LgIe23W5+5
	WXz0BAJRUJCybPRmStKVD/DgrJ2jSQ7r5P2Fm3vlqGbRgRtJbTtYpogz
X-Gm-Gg: Acq92OFEHLhsRLSbd522w8YSPokteUSw7JczmFK1B3HUZ0mPbc+VK3A3vl+Yazej6jk
	x+7/pB3eu6l8uMKK/mhDFhwDagp3KIr59v/yvP99trnHdsqERc+RL87R/aLbuPbMDkOVb2XRbS+
	Cs7ogPBEqwnz29u+gT4z+MDQWJkXWfwgpnObxi82aW5UvOVQln7mkLplQLhy/T/A8wcl1m4J0+c
	UIs0aul/YLeLbiKQ+UDxPCnaZLEIC8PCr/I9Lh8ScWDnBssgKtq+2gfWYZ+nIApQYKv51RD0EkK
	MPuOI2HCrjIHAzbtnkcEHIBaesw6hFDL2agdFUxThnUfAcT97sPmu5cGprONXNNytEHGSYD16Ig
	MBxXLvoG1H8Xq2DyDbBkO4KWjbcRUmTTu0iphdgSHurqgsaLkHle6tpH0f/2w4OQNyTxaPlqt4G
	eFP0e4gjqF1J7Gj+pjXuOkzxabDwaCP8/KS2d7rEw=
X-Received: by 2002:a05:600c:3107:b0:490:9588:bdb6 with SMTP id 5b1f17b1804b1-490c264cc2emr408619475e9.33.1781091561822;
        Wed, 10 Jun 2026 04:39:21 -0700 (PDT)
Received: from [192.168.8.79] ([2a00:f502:260:7c0c:c5aa:32d2:49d:5951])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f344148sm68042009f8f.19.2026.06.10.04.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:39:21 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v4 0/2] ARM: dts: qcom: msm8926-sony-xperia-yukon-eagle:
 add initial device tree
Date: Wed, 10 Jun 2026 14:38:56 +0300
Message-Id: <20260610-yukon-eagle-v4-0-763d5698bd2c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/13NTQ6CMBCG4auQrq3pP8WV9zAuCkyhKmAoEAnh7
 lKMEVx+yTzvTMhD68CjUzShFgbnXVMvQxwilJWmLgC7fNmIEaaIZAqP/b2pMZjiAVhJbZnV1FC
 Ro0U8W7DutdYu18/2fXqDrAuJcFE63zXtuL4baLj7luNdeaCY4ERTmuRKmJim56Iy7nHMmgqF8
 sB+VhG+t2yxVqtUCCI1t/Lf8q0Ve8vDX+CpjHNOlNFbO8/zG9fqjxIwAQAA
X-Change-ID: 20260526-yukon-eagle-658f2f81a14d
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309734-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:xerikasxx@gmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:konrad.dybcio@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38755668E6E

Sony Xperia M2 is a smartphone released in 2014 based on the Qualcomm
Snapdragon 400 (MSM8926) platform.

Add initial device tree for Sony Xperia M2 with support for:
- Framebuffer
- GPIO buttons (Volume Down and Camera)
- Regulators
- Internal storage
- SD card
- Accelerometer
- Ambient Light/Proximity sensor
- NFC
- pm8226_resin (Volume Up)
- Vibrator
- USB/Charger

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Changes in v4:
- Defined pinctrl for GPIO buttons.
- Aligned quotation marks in mount-matrix for the accelerator.
- Dropped magnetometer from the patch. It probes, but fails to read its
  revision if reset GPIO is not defined, and this model does not have a
  reset GPIO. Nevertheless, even if one is defined, the probe fails with
  a timeout. Needs further investigation.
- Link to v3: https://patch.msgid.link/20260604-yukon-eagle-v3-0-9e3b57d306a8@gmail.com

Changes in v3:
- Changed incorrect "chassis" to "chassis-type" in the device tree.
- Mentioned added vibrator in the commit message.
- Link to v2: https://patch.msgid.link/20260603-yukon-eagle-v2-0-f86b440583f5@gmail.com

Changes in v2:
- Dropped `regulator-always-on` for l3, l6 and l8.
- Mentioned added GPIO buttons and reset input in the commit message.
- Link to v1: https://patch.msgid.link/20260527-yukon-eagle-v1-0-98119d64a71b@gmail.com

To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Erikas Bitovtas (2):
      dt-bindings: arm: qcom: Add Sony Xperia M2
      ARM: dts: qcom: msm8926-sony-xperia-yukon-eagle: add initial device tree

 Documentation/devicetree/bindings/arm/qcom.yaml    |   1 +
 arch/arm/boot/dts/qcom/Makefile                    |   1 +
 .../dts/qcom/msm8926-sony-xperia-yukon-eagle.dts   | 407 +++++++++++++++++++++
 3 files changed, 409 insertions(+)
---
base-commit: 49e02880ec0a8c378e811bc9d85da188d7c6204c
change-id: 20260526-yukon-eagle-658f2f81a14d

Best regards,
--  
Erikas Bitovtas <xerikasxx@gmail.com>


