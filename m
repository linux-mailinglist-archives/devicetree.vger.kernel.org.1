Return-Path: <devicetree+bounces-264545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0C5DEzaZi2k3XAAAu9opvQ
	(envelope-from <devicetree+bounces-264545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:46:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C67B911F15D
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:46:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B2E75304804C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5C232FA28;
	Tue, 10 Feb 2026 20:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a7WUl8oV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67182277C88
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770756403; cv=none; b=tz9UEwFnMxxuJJQoVoKPFYST8bQ3K/tIxnRm8Ai3ujrvZpqZlyoOSm2ZjwpM0jiXxpEJMN8L++e/O2BDnKnhRg3cB9XkU067HjqM0OidqYdcjphKFtJuNdjWawwFxWvaiCg64pNImt96pweHd+Vku22CtSYNtYOcZUVgz7aLlbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770756403; c=relaxed/simple;
	bh=tsO/mYFaEUMvZc2LAc3OA4nmB8LFQ/GJH7pow3bd52A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iYtzs4xX+TJ+vzEUuaX1PE7aPDhsuGk5f8UJ3JJ5FZsvvOrhR9qtLAOLX5j+692TlxPE4AimrV4iDDyqKOiiO2+RiM+ktsNof23xbcguH3mDovrHwrm+lqBH3abvo5OHLvSLYQ0fMIdnVeZejxt+dUiZeiN14ENy+IcGv5o13So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a7WUl8oV; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-482f454be5bso2202725e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770756401; x=1771361201; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mMGv2vQvKQYUADdNnCmAW/VA3ahvinln9Fwhr3ZpQZ0=;
        b=a7WUl8oV5jjPJ9+PoeXKjCw1fby6IUc8JoUGNUEKBVnRhDDLH8gPKC5SI+VUFYovEz
         Cp3GSsasX+MbKoqjs3o9Kilus4StV0gUs0KnQmQE4tAe50aPfEf17niTqXsGT4V5qUUn
         bPlAPsdwnJQusezDm99XtQxtR6asF07gLwaq9kHlcKNo0YUp54HH3qetrN08z0NnXHYZ
         GgJ0zJCvmxLTIKX8PCCcpN4I5PhTbc1ykJUooB9aQXy5JV5CTaj6U+aHnNIdi6whr1Yj
         dJXFif+1aRIJsIp19Y//jNEnclnn1HpPu33nBhVP2skw2BbpKEBO/XXrORqBBcKknfeU
         IRRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770756401; x=1771361201;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mMGv2vQvKQYUADdNnCmAW/VA3ahvinln9Fwhr3ZpQZ0=;
        b=UNUupFzPU2n4VnisPaqF8shQYripTedG+OAlXubmeFUa+EWwpEx8sZM5b+XSPJEVgf
         95da085XXMw0tbBGpW/A/w6xIaC5jJ1jAXq8tYWypj15DXsN/36rvlUyI8eVd5ncfjHD
         vRmj3YphRAOrxtITC3s1IWUtJWnmDFqKJ2qCcD0gUfyvFjpVugysJnU0DtjlAb0chQbg
         JKYJoJbSyGWHGP8x93YjDOzCW/L1fSEb5CLVGM7WMnbPdqVI8/DhAKM/ehHfQvNiDe5Q
         lVh3pzEdPNIihmMj3t86ftHECPkGNLs07rMtorK6BM829woEJXq2Do/4MamOYjY4xkdw
         Hrwg==
X-Forwarded-Encrypted: i=1; AJvYcCVs16Cos+mOFPGuzYisIDICpnEpAsQBq9Efg5sfd659+bs+xZ7gV2vA+pAIjSelrsSrSRYL5iDgy7+y@vger.kernel.org
X-Gm-Message-State: AOJu0YyOjYojXl0c4BGmnwy5zWaBVP+L8Ov9ES4LxIV5JDSDHXGZNFu8
	5XOqkEgYU/LeQ6NeI0YTYYXDuxNEHy9oxsxGyrKeixitgiFjRZ3ck2PU
X-Gm-Gg: AZuq6aL/F33HT6Tb7jaj3SWYzGK37MLFVGGvc3+3d0lPYlk+bVy1DkMjZvLioMOPVgD
	UU9ASMF4nANG1QSXBXGTPmcz6+pUGOHRa8ekQmrSedm3lw5VdAdSm1J52U0bacGeO1ZSF200yz8
	8FPMqXV6LgJkldl2oU6JPboBHzaB5ML4XApJ4cSmHaZsJT8QB+116jSv2Tj61UC8vg5/ipq4UVf
	itvweNuO4MJOm4jyq8chtQp6JcBjAIzQPmYbcJPsDZUhxYz+EF/0bJesYquBKGtAi7J43pbagje
	br6xAUVV3PS+8Q23hneky8rtzbcuNaG58EZPPqt/8unB7yxAEqCqd9hqDL4vNJc1lKO+pqsdSRa
	lp4f8FSUH3vx6BuTC0zYBP5o7iTKJP6YQIuoQn9UOMCMvXNrqXZEdxsIKNRAFo9gF0Q+QpnSW1A
	yrGVULEoysbtSkrgPtLw4H/NaJqA==
X-Received: by 2002:a05:600c:3b8b:b0:477:a289:d854 with SMTP id 5b1f17b1804b1-48350511771mr58266075e9.5.1770756400685;
        Tue, 10 Feb 2026 12:46:40 -0800 (PST)
Received: from [192.168.8.10] ([2a00:f502:160:28bc:a26c:adcb:8da8:2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d7d6f3esm71451965e9.9.2026.02.10.12.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 12:46:40 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH 0/2] iio: light: vcnl4000: Add support for Capella CM36686
 and CM36672P
Date: Tue, 10 Feb 2026 22:46:09 +0200
Message-Id: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDI0MD3eRcYzMzCzNdkxRjI4skC/MksxQjJaDqgqLUtMwKsEnRsbW1AOy
 VWSpZAAAA
X-Change-ID: 20260210-cm36686-4d328b87b6d2
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264545-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C67B911F15D
X-Rspamd-Action: no action

Capella CM36686 is a combined ambient light and proximity sensor
developed by Capella Microsystems, now a subsidiary of Vishay
Intertechnology Inc. It is fully compatible with Vishay VCNL4040 and its
driver can be used for Capella CM36686.

Capella CM36672P is a proximity sensor which is fully compatible with
CM36686, and in turn, with VCNL4040.

This patch series adds compatibles for cm36686 and cm36672p, as well as
disables the light channel for cm36672p.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Erikas Bitovtas (2):
      dt-bindings: iio: light: vcnl4000: add Capella CM36686 and CM36672P
      iio: light: vcnl4000: add support for Capella CM36686 and CM36672P

 .../bindings/iio/light/vishay,vcnl4000.yaml        | 17 +++++----
 drivers/iio/light/vcnl4000.c                       | 40 ++++++++++++++++++++++
 2 files changed, 51 insertions(+), 6 deletions(-)
---
base-commit: 132737e360b4c0daa7f473faf0f55cb04ee3e15c
change-id: 20260210-cm36686-4d328b87b6d2

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


