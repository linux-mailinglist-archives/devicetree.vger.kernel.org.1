Return-Path: <devicetree+bounces-266107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0L43EX5blGmrDAIAu9opvQ
	(envelope-from <devicetree+bounces-266107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:13:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E4D14BD0D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:13:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6707C301136C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60B70338F56;
	Tue, 17 Feb 2026 12:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EvzjbAcx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A23338906
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771330418; cv=none; b=QGgEysTsexCFUWb8j7d/9JoHhqNu6dNjYntICujg/xrUQE9loyY46JbPoM5T1kB2LtTC4ozhD8vBoWifsnLUnTriWU0tVZD3RmIR1G2GO7F82U9gO+L+RqvhaF6mTOdBVzr+7FAp/NZFQSBE+BF1Sa/wKt7ejjZI/ZknnLyPn08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771330418; c=relaxed/simple;
	bh=TfAEQ0DQqlw+rJE5RLoCHxNI1QmA0myGlCXlHcg8C9w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uwLiBf9ne/oWfPkHwogoB9HYKNUgF/el10vwZL3KEzzqv2cFYk4nO/YmNRx9wmkSJvrSsv7lXkgz6Ya1gSb6zyUOVQijgCzxXAeVCxSoKAFealox3wv6b/nvo/pEBEEoTeiQMuDL8CzZ9ij8i6rtqPZNc3RZXl1c7XObFqCfeZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EvzjbAcx; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-79430ef54c3so34066497b3.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771330416; x=1771935216; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=470sTxAyW3pl5tkqZsSbPmdvi73tkPic1jpEvnpVzmk=;
        b=EvzjbAcx9q/AhIcTj6BwiXAlF+071Bo3wrCZhVs5HymHKawwwaU7mRx7B7O4nbc1Yr
         YeYBYC/06W421UOOvHYny+GkHhbu/s9nNm0roWXoPqTFgVD6FAaF3dV1SYIOxIfuTv1B
         urLOAltgfaD68GZ58j+KTQKIVriMqGhLwUWgZaPlMFptJEQhWOrDt1MzKXv/stKlqEmT
         wlyrXTzOjPRAQPOpFtsHJUtF9WoGf8bGsHy108CBI4mXMcRK/GkQ+doATH1rUUZ3t63j
         tE7eDuL/n8JsaloVIi0o9YhF0BVfErbS+RX1v2QPIPJiOIVbhLFSBv0LbNUC+1DvSPTP
         oLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771330416; x=1771935216;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=470sTxAyW3pl5tkqZsSbPmdvi73tkPic1jpEvnpVzmk=;
        b=Rea0pCUu+oWz2amCpCkoHQvcuvy2y2Ubl/oh8AQbqQM6ulZtVfeYEgr/eJtHnBtQCM
         z+H6ZtacrJeIKiPwjwLruZNcqoUD5PCmBouriOi02x0+xtK24Iyx9QzN7EH6J5cSRHA9
         /cV+/lMJMMw+qPjcSJvE57cNVTYIBVhShUev2XWvReNyef/fWdQP9kpaT3QDDFnCbUGY
         li2fNBC8+7XDEOrLb288D1z+xDdSrBZ6joXv5kpjXBe2aWs1PVB92oNm4TI1HEbVUi8f
         xU4UwYsCBtJ+lRjoOZ/29ABCUIX8hL+/eLNtK3b/LKwdF/5q9P08IhvRGDeHKev8U17F
         RlLA==
X-Forwarded-Encrypted: i=1; AJvYcCW8o8AtoV4AwFC/V5pLyCifjNTpiGTShj418ktaT/4zGzWml9wnFdnsXyEY+M97Y5QnrT4F47NqEoQW@vger.kernel.org
X-Gm-Message-State: AOJu0YyHoi6tzIWEA4xKVqbrIiygEQazP1mQqXV52hca+f6CnsjAWOLj
	EYCBmDYIVPTlWHRf/K1LoorlslbbEXLJ0RKafT4w3S+wGuirfom0gwvj
X-Gm-Gg: AZuq6aJoVoeZb1XTQcHUndseYY/Mg2ykm5Y5Rrn8iTiHNcqMRajBaa31VJz6qofOGpN
	43lYGrJX3iWcxxO+wXsfn1CUt88NJEFk40MMIraeGHkwyzJTxYPJpO9IXnZHWlWE8n1Ivm8jcWl
	WAKmwkecLms4ZWkJ8/2r3NE1U84PEz4j7Tt2mT69zoEh8h2sTlcO7yVXQusrUnpQqMcULBMSHVi
	7wtwZZkyfL2gWAHZHVfssF7zxZ9hzrcXSOIu/62e2/jainxN2Uae4G8WXVXrcthK+9sFGqx0F5X
	BQA/yuvA13fU+vnnihNMfpGCqLgKLlzupYC+UxFuRr63HDIqC7YKvsH/5l7XeaeLiCgmNTvaAt+
	zxCNia5SUQvrbHckKI5+COZuUOc/TUds0aYNqu1u6GYqDCwfuPjyqKk5UtM3bcaLLhwxAPk7p1M
	8idXUuz0r+lGv6ecQPPrJtdpucHg==
X-Received: by 2002:a05:690c:600d:b0:794:d8a8:674 with SMTP id 00721157ae682-797ac62991amr89062877b3.53.1771330416112;
        Tue, 17 Feb 2026 04:13:36 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c16eb07sm115610727b3.7.2026.02.17.04.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 04:13:35 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Tue, 17 Feb 2026 14:13:15 +0200
Subject: [PATCH v5 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-cm36686-v5-1-63c2de9709d8@gmail.com>
References: <20260217-cm36686-v5-0-63c2de9709d8@gmail.com>
In-Reply-To: <20260217-cm36686-v5-0-63c2de9709d8@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266107-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 07E4D14BD0D
X-Rspamd-Action: no action

Capella CM36686 is an ambient light and proximity sensor developed by
Capella Microsystems, now a subsidiary of Vishay Intertechnology Inc. It
has an I2C address of 0x60 and is fully compatible with an existing
driver for VCNL4040. Capella CM36672P is a proximity-only sensor that
is partially compatible with CM36686 - they share the same register
fields for proximity sensing, but ambient light sensor register fields
in CM36672P are reserved. Add compatibles for cm36672p and cm36686,
with a fallback for cm36686 of vcnl4040.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml  | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
index 4d1a225e8868..2ba4d5de4ec4 100644
--- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
+++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
@@ -18,12 +18,17 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - vishay,vcnl4000
-      - vishay,vcnl4010
-      - vishay,vcnl4020
-      - vishay,vcnl4040
-      - vishay,vcnl4200
+    oneOf:
+      - enum:
+          - capella,cm36672p
+          - vishay,vcnl4000
+          - vishay,vcnl4010
+          - vishay,vcnl4020
+          - vishay,vcnl4040
+          - vishay,vcnl4200
+      - items:
+          - const: capella,cm36686
+          - const: vishay,vcnl4040
 
   interrupts:
     maxItems: 1

-- 
2.53.0


