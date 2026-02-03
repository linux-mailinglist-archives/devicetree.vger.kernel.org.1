Return-Path: <devicetree+bounces-262298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0I9HIdMJgmmCOQMAu9opvQ
	(envelope-from <devicetree+bounces-262298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:44:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 26514DAC29
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:44:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC0D031011D5
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB713AA1B8;
	Tue,  3 Feb 2026 14:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F6dH5K4M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6B63AA1A8
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 14:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770129615; cv=none; b=u/jpO0aAmzt7IY4aAnVCtvV1um+UftfvGJtpvia9ASFMKv+52KboiZLkHP39iTJFHNyeU785jbT5xsU11XS8J7EHQOlYg6frqiepIGBFhyp/Ebqvcfb7TVrSDI9QM1I7LYwj+vp8MFqpeWQIJXCGTxRCX438pLTLEMwBPsFRkxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770129615; c=relaxed/simple;
	bh=m/ziyU4HLGC5IQ7uzs5nBrRKBSwg2S1LdvZuY/kbNk8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T5wRSUvQ/KqbbZzunBjheDc9QK/iXsy7x8CgCeWJFNVdGsFWVfNiO0LSG4EpERPsgYPwkNzB7Y0oQxp3NW4KZAq14/fvK2Y5SgCj6DNzDz5qfoww6/9MGsci9vQWmUKUYqIRuwvMb22dAGXjXmpZAU9VjzDSXQJJ7Bik2XYax8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F6dH5K4M; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-82311f4070cso651084b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:40:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770129613; x=1770734413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXDwaifGC6j2k9hfNfLuDwLHZpRvyVgqB/72HtEhxLQ=;
        b=F6dH5K4MhImfzQ6+MU3AY4Lv3GcD+38wy6FokgXQYifU8f5lQRxOraF0BDAQ8S4kTL
         I9a1o5o71o7RJf7r9jHTCwaDL/AhnR7em4Et7YwmkGfoRJnYciMNqqmvrtv7CyFniDgO
         sHt72wN5h9g2yv1i1B/gosuB7aPbd+A8jq7SitAdUuU4apMCOeWCrZaJIHsVhIfLwGuV
         SNIhIHoqZbzwlu57GK4fpmDtz64XMoqPHguE6pE3MUEAIQFn49xyoRTZnoVkhoqWHN55
         NUuHJfEwcG/qHriBOviI2oPQ246CD9voQGY7iUIJWnVuEOXEhKtQbqz6RFjB+Od8Vemu
         Dp1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770129613; x=1770734413;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YXDwaifGC6j2k9hfNfLuDwLHZpRvyVgqB/72HtEhxLQ=;
        b=qRas6V4fY2p4MTh7dl5v6KGycKo1O5V5EZk4Gk8/D+x0cincAN4oe5ORdeQjjPTIaL
         iYrYcgdCuWBXmxLf/XHkkCf1ehH0ddm5Q5J4t5e6zPv5V257Zh2Cz0AYxyXdfyZ55WkJ
         Vu7xHfTVle6EKe9aqpWD/L0QiVbO7c23SdeS/mYQtXLYS2ppiPeqrOVfe9rER2Oubtgq
         j7aO7hBa/OyhikSvheRRYOxfIARXGdlS/G/GwwITm/KN0fTRlDwRJLd2M4INmk1aJTdb
         pW0LNeh9L64gJSloOogweYTGv7UGWceYzA3PnQgrbxXv21PB1PzrC9KkNo16eb1c/Mco
         TZtg==
X-Gm-Message-State: AOJu0Yy+Ch201T4gEKQbRBOWXl+/2WG6bQUSRDo2xLsJEXAOc0LSIXIZ
	KUR5K2ecxm0XmZITwszWQnknIOKdGueS7ZjLR9R/fuakxXRARK9ocR6PgtKzPf2E
X-Gm-Gg: AZuq6aIE3/uGqFV2IxuOvFVGQDfUMemYEqmh3dJI1sOkSItpBZ38LzxGacXc8kb2j6r
	J4aFYznfxekgPXNbWJg4I0fQA2nyvpNKA4XltoPDk/cBN34mpblgWe5Vt5ONG4LCyFxq1GvO3En
	0izA5Ky2dXAlYPgcfcxcCySJXg3aLCS3wmvn2hUPDt5Adep9zt5bWi4rZrso9pH8SJn62z1EtxK
	gT60xyfwfoQ9+GR3mFgd0dlqL7SyUFLOP9il8FuWPIZ0Kj8mW1m7TC4tc2p8jrxrFzAHg1ZAr7B
	zWs+mhhnn2QVtOZxdQaYJQTk4JgB9WneUlidWrtUkOdVaLeLcZCAsHKEzOIpPu9+SsYtlBeNsWi
	IyR9aW9DjdMD9ophBwgE4e1Q+z6u3f4FLB6rV0i49RJ1q2bd4x3RKqiwftKnB/GLPPDJRTwIMNI
	l6cdfA6gFM
X-Received: by 2002:a05:6a00:1307:b0:81e:af19:34ac with SMTP id d2e1a72fcca58-82404325ea7mr2773928b3a.29.1770129613506;
        Tue, 03 Feb 2026 06:40:13 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b1ee89sm19810313b3a.14.2026.02.03.06.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 06:40:13 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: linusw@kernel.org,
	stephan@gerhold.net,
	hns@goldelico.com,
	jic23@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v3 3/3] dt-bindings: iio: gyroscope: bosch,bmg160: add bmx055 gyroscope binding
Date: Tue,  3 Feb 2026 22:39:43 +0800
Message-ID: <20260203143946.301233-4-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260203143946.301233-1-jerrysteve1101@gmail.com>
References: <20260203143946.301233-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gerhold.net,goldelico.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-262298-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 26514DAC29
X-Rspamd-Action: no action

Add the device-tree binding for the bosch BMX055 IMU (gyroscope part),
which is compatible with bmg160.

Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_datasheet.pdf
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 .../bindings/iio/gyroscope/bosch,bmg160.yaml         | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml b/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
index 3c6fe74af0b8..e19aa1797f14 100644
--- a/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
+++ b/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
@@ -11,10 +11,14 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - bosch,bmg160
-      - bosch,bmi055_gyro
-      - bosch,bmi088_gyro
+    oneOf:
+      - enum:
+          - bosch,bmg160
+          - bosch,bmi055_gyro
+          - bosch,bmi088_gyro
+      - items:
+          - const: bosch,bmx055_gyro
+          - const: bosch,bmg160
 
   reg:
     maxItems: 1
-- 
2.52.0


