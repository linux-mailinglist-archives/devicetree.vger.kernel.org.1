Return-Path: <devicetree+bounces-266626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEsoGOnslmmxrAIAu9opvQ
	(envelope-from <devicetree+bounces-266626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:58:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8D115E05D
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:58:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83AD330234CF
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17107326D55;
	Thu, 19 Feb 2026 10:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d9NO88Th"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354CF2FE579
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 10:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771498727; cv=none; b=ZlVX2X5/5S8rEV4bBh24Hv22hghOZ16OwumopN/ZqPKJNBK+QjCD5AqmXJe88QnzGLYr62hEWogxzWcDV8+qOG84/kQzcGzM7pu31qqz8hVb8k+DoYve/YSmyt4RovDPxkSUZUKQbrZ3NLy3NDgaFvVkAX6rWp54RTPM2uWy+uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771498727; c=relaxed/simple;
	bh=ErS3wJTAyTaQRYawS6VwyuFEeddf9rFQGTo3AZ++III=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XuLspmoo9uFw4bPB1o8OAgHSivcHzigSicODwWi6GtUfnEzCoGeckbswq5yTt8M9lbCkY8KuUNEKEhNv240EyyuhVDPSAE9NDA+QYCy2dJopAsztRVJdUNKNuJ8xWZGXVUTbg4v4Z1DcvKcfcSHzg7r/3Tu3hBlUfIO4FjWSUuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d9NO88Th; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a91215c158so5475575ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 02:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771498724; x=1772103524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SIriBNBZ/cMMJ/jUXL45O4yEu1LeY7GdlDxQ1g/V6qY=;
        b=d9NO88Th1qNJSS4zNzw7ZIm5YplwKIgH8jXcWUQiE69Qan33QM8abP8eAEUJlXvseW
         W9zf+vyI1fql9wy3jKdK8YkfbK+Sp9qnGy3eFPlXIlAxmU8YZBiMzP5zfsTI4FaEc+P5
         UBTUukuO7QGekn3OoCkY6AK9FdMi6WmkQ8bs6kkJD2qpTbRzXk6KFoY+jJlP2LE0JEvl
         rGew5kvqmEwS1D10E0w+tUONyQ+lg5zAn86nyPbT5lN292ssILzXew1hT4lYRYoBITQ8
         z7KLPAhHj/n1sEZjUj8yRW2O1Kc4/+Pdaa4uQsVk9LnkEMYNnpfCez8cKc2HAtEynrRi
         yE/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771498724; x=1772103524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SIriBNBZ/cMMJ/jUXL45O4yEu1LeY7GdlDxQ1g/V6qY=;
        b=vylmBcu+NKqxVJL3+wJeE5CM8Zr5Z/vcWp4VObmLm+Zzjt5t0mOwk9NIPp9bk5Zm8I
         CKyn5m+BBAhonoN5LNvmuNDkw6t/YSLlZnTMMUBBvkLKlSWvs6FwrjjGv5/gp7zZ6C8a
         StvfyFPoorx8KsYHXd6xRN0eI85tC9R+v/uFCcViwaWv9wpQyG5fDbM3bCq8Fi5xO28z
         B1/r8Mpgt5qGFoeMgPh9Ross/RpS8Qjw+5kIu+JlT8eWVp0Oez9fs+dSeh8Y1MhFYCiq
         oQ5yGqbO/EeyxYnfGVwEG5wzPONlughFavznmJzNvJb8XW3N5wGjTR/Q6RtMwrsowqxQ
         U1Ew==
X-Forwarded-Encrypted: i=1; AJvYcCWKShPcU97pCZznZ6JyeZrzHBx3Qu8PQxX0el3w8GI7QQca1oIEXcioOZGRAn7q97M4dqZV/PXjS2IB@vger.kernel.org
X-Gm-Message-State: AOJu0YyJsvp+HhezjMFawQ3jiMojlsr4byzqrVZbf2srCktI5vLLgs2u
	smtnZ06kGF9cchJWmKvuSaLF7MMRG3DDFUoAuVDZixfZC3fH3lpEtaHE
X-Gm-Gg: AZuq6aLuZm3mRl8wT8JSw8YPO6kVTNtEtryyWpFBa1zT4FcJ6hIuFTaQxV+WcMX+dJ0
	FVunSAIW4jwpdmJrQBw3hzb3mK3RT5fLnVh8dIOa5oTALCkFyJpFlPAl6vMoEQLVp4B9qn3kFJj
	yykrbVGB5MSEkIj3TujLwZEa6Jypruoejz1pMzNSasiJGlhS0YUaTCt2xDoRaSWXKoGfGTyd535
	AGy9UpEZ15KDhN4/aN/m9RiXnPJS1innC0ghy4S+HuQ1IOuUOLa0NyvSfflRPNaW5m85/ZEmaJD
	66q6Wuw0blBGlXNOnEVv6XvqLnz3KDMpSkT7kFYnHFExDaxZuXDVoAtgrnvsQVlTJMQCX3jpKeD
	8sr+DpGtSDRLKp5Djhk+OOM8HUQsQ2jZfI1E5HTG2yl+Lfl8QcOWJB/3AmvefDgD8vvEKJ2+bAb
	sHHVsNzflYZFVw+5kc7RnKL9Y8XODzL6bIvT9FvnocRdWWAw==
X-Received: by 2002:a17:903:2282:b0:2aa:daf7:84ea with SMTP id d9443c01a7336-2ad50f93ed5mr50572765ad.45.1771498724458;
        Thu, 19 Feb 2026 02:58:44 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:939b:3231:1953:3f2f:aba4:9c8a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aadd9e8sm164339745ad.74.2026.02.19.02.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 02:58:44 -0800 (PST)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH v2 1/3] dt-bindings: trivial-devices: Add support for XDPE1A2G5B/7B
Date: Thu, 19 Feb 2026 16:26:28 +0530
Message-Id: <20260219105630.11929-2-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260219105630.11929-1-Ashish.Yadav@infineon.com>
References: <20260219105630.11929-1-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266626-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,infineon.com:mid,infineon.com:email]
X-Rspamd-Queue-Id: DE8D115E05D
X-Rspamd-Action: no action

From: Ashish Yadav <ashish.yadav@infineon.com>

Add Infineon Digital Multi-phase XDPE1A2G5B and XDPE1A2G7B
Controllers to trivial devices.

Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index a482aeadcd44..343f1e62c373 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -157,6 +157,9 @@ properties:
           - infineon,xdpe15284
             # Infineon Multi-phase Digital VR Controller xdpe152c4
           - infineon,xdpe152c4
+            # Infineon Multi-phase Digital VR Controller xdpe1a2g7b
+          - infineon,xdpe1a2g5b
+          - infineon,xdpe1a2g7b
             # Injoinic IP5108 2.0A Power Bank IC with I2C
           - injoinic,ip5108
             # Injoinic IP5109 2.1A Power Bank IC with I2C
-- 
2.39.5


