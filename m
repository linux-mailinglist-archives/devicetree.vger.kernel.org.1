Return-Path: <devicetree+bounces-277976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 27qUJJtCvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:38:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D765D2D1253
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:38:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4EFAA3041DAD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC562750E6;
	Thu, 19 Mar 2026 18:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DmvSdOqX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FA43112A5
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945150; cv=none; b=pb9QlqLNk5z28vjk9soKVRVHBrCceLLU6SYGFqKJ/EgSj0hVSOGSV7nsKoU/G+WJRumRh2wm1tqLHMIkNnTp7DG4wLotJt690+WQOb7aO2dB9YXJ64y9R46BkaZYWNI/nA7WH30dficHl8l4DbtPb6e8De9wotqa74pNrActoxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945150; c=relaxed/simple;
	bh=btysGyDMTWyYm808BH1DcatlYaRod7KITpbxDYHgSKg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iKxGbr4EZHBkUmdQWGOJ5p2dk3/EL5kElZIXps4Vu8BiBCGD8zW4E3HlnLI537o9jMuJjVm8/J3bKTexst4s1nu6gCewp/lNZLvBNQIoeC6y8syyfkyxF6Yf0US2o67U9iPuOUNDlsLb3j3AmweEGXK9brnVRCAlyHPcDqQqdao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DmvSdOqX; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7d7422b4ff1so388129a34.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945145; x=1774549945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XvvMyIz9m6P5qRNX/2YBjZmJuc1YLtVPBVOQ9GiKfTU=;
        b=DmvSdOqXr0N/imU62WL64ENoutLLk65WOSION9WkL5AXIOToUjvuRfKwJUzpefjKOQ
         KU/aT7eszxnRmQ702HGm+bAkAq9I/eV1+yFOjdi1rmi+OqAQYbkbmrL66U0q6WJPhiBd
         6MBrRXSzQ60gNmc0I8NJQRXsIJ7MDwF4z44DQ0kdsVrQ58F2G9hlfXHo6pHrY+VyYYzN
         JMrCAQQi/rmkCZaEKEKMwgm68bxYLJXWPXR29IDtkT9arR6G8ITgHwR92SepvyXxWB9X
         BWmGwSUhn0veAh2od3jEOPHjc0N6wzN00FAv1VJysmbdL32fkkx7b9CeAAQkLfl82SdH
         +4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945145; x=1774549945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XvvMyIz9m6P5qRNX/2YBjZmJuc1YLtVPBVOQ9GiKfTU=;
        b=NqUlTzT9f20eymUY4ua4hd3Mg+nGDn1JL5ZwZxLMDVjmPwXOdT2+GBKc+e244kBwH6
         TSQuDpM4VoycCdyihxT3NEzgCu9LfV83xcnZQohh5J5RqPvICbD7uBQGBUqOHvaDrFhm
         Nm5QWfuw4nZgqiGkeiSFdanc2k/Z/UPwIn893t4StfqrW+OIzUHo7vLJoPnnUTjsmaFU
         Zcqqf9Xw84V/jTW77CVThJP4imW+CGexCzA+M9Esmrq+6trpD4TIb8ShRoInPjv3zmOf
         Hj6fizfp8M1muPWXLYEInadTnX33sB+mxkMYtrW2CFXl8lztUuBu07DBGR42zsPmpi1E
         LeGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiAyTOWcO6B/XTUiVisPojrzZqJnN4RbcHF+WehL9OPG8DJl5xXw1E8PtwIsUWLKyqor321CWPE3en@vger.kernel.org
X-Gm-Message-State: AOJu0YwlLskQvZexd9AtrEkmng6ZxarSyOuPos5W9Y/cglgI7ud9GeXo
	z5VuF1dks7FzFtUkUyA5Zu3n+bHe11+dLimZfI1eGKV2kGpccS6kIq+2
X-Gm-Gg: ATEYQzxATIU8TU51+W8ZxMKIptQ6vIo97TW/vuFbw0ca5jh/XkUKiHHknHw2B6NwXmh
	sRVQIsAwKfaWwkUXoNH9V8HHrfGku13pDR4H31qSjwh16BkBIDGZW4L3KyjyKYuWoKyUXcN17xh
	5uq9pOVxPvQs2f8c/18lFJPu4TBR/B9diPWPis5qW532RQLzpQ9M4fkZVN2llNintSkvwJYN90i
	mAI5JRZVGPCyo8t0gn/KpOV6KZzUVEdEZn0M0q/patrv2uRznZE3cn3h8qvQFuXElTRz90u7xNy
	BWpmfHgli7ktYpu2BExJn+advVa70BG6QbQNsGJ3AGVd3H/SJbH6lCcQ/BJokW8Gcz94zWMgzXI
	7+7sTNywgw2YOisDAgqsjSJRHEVYOpqO1v1d20TALaqA+0yylIpS0/4i2csnQ/TTXjoSyhTsp5q
	R/w6hM9iVapoRK9QlXrCwf
X-Received: by 2002:a05:6830:82a5:b0:7d7:e3b9:58dd with SMTP id 46e09a7af769-7d7eae7a567mr191239a34.10.1773945144869;
        Thu, 19 Mar 2026 11:32:24 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7eadcb11csm172193a34.13.2026.03.19.11.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:32:24 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/5] dt-bindings: iio: imu: add icm42607
Date: Thu, 19 Mar 2026 13:29:37 -0500
Message-ID: <20260319182956.146976-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319182956.146976-1-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,intel.com,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-277976-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.834];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D765D2D1253
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chris Morgan <macromorgan@hotmail.com>

Add bindings for ICM-42607 and ICM-42607-P.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..b69c6bbb6f6b 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -30,6 +30,8 @@ properties:
       - invensense,icm42600
       - invensense,icm42602
       - invensense,icm42605
+      - invensense,icm42607
+      - invensense,icm42607p
       - invensense,icm42622
       - invensense,icm42631
       - invensense,icm42686
@@ -53,6 +55,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


