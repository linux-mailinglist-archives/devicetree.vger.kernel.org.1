Return-Path: <devicetree+bounces-267256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKmpEzv3m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:44:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7D0172466
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D79EC302A046
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 741D1347BC9;
	Mon, 23 Feb 2026 06:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ys9cSkQq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DDD3451C8
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829037; cv=none; b=MyiDI/6L2Ul+vruSbFdCdQ1j3D2dLLZfM1BbaHBpxVsmkl/mq6fdw9Oh1vHhxWjUkVQNNlGZaaEIafkeTuRH84AvYfF3Gqc5ouvc5746prKWjY7BzTs6CigJ8wyhDPHSsY3VWedS4vWxcNMsMhgwqIVwLch8l9Uz84RfWitGMIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829037; c=relaxed/simple;
	bh=mge4Qmqm5mfVb/itwLpMJkFHb3D/zMCUjlaII3/Y54k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BFjo6H8QoAhmyhoM/GDqfxffRD1ev1EQy2MLqqWjT1q9A2qSJBaOMD//GD24nVr9zwQO0YilHVJuc2bF9hCrUS+n51qqR8nrumVlUqQg5N4CFgpBFkN+zmcE8Qw5UkCbg90QV4txHORV2y/pqJ864O4dWCsRt7+zf+c8aUcLI2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ys9cSkQq; arc=none smtp.client-ip=209.85.167.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f67.google.com with SMTP id 2adb3069b0e04-59e60b3ccdfso5286266e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829034; x=1772433834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HFzB+8sry+Zo2KD/o+0tobuoDWWhrXFmuvNJmWgIYHg=;
        b=Ys9cSkQqqUMrrGBKZci2UvqCxbxK2tFoXIjryJv2EG5Lp8MVcSBEpwjJFzA5TkhWta
         1GBkW/lzZWxMUqUD7jxEwtjqW72iGV2KFpD+ME2ZHM4qg71gc6K9rKyi1De8ZUTjiYH/
         rksgbWR/TwKf2I5d8cCPEUG9s3sEHtWCjTPWj4u99ilfChtgZj4lodHCoi3dp8gCF1LJ
         jux9upeDRK3iQzAdqjP1ZVLpc0K/d70F8ckspQZlX/1iDnIqQZ/r1l9pJdFoB6qNsb36
         ubDC0UWgT3HnYH/ONeimVNP+dvQRkxGCKc1vrM8GN41SN+V+Uas47V9405iUXFggJoan
         niDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829034; x=1772433834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HFzB+8sry+Zo2KD/o+0tobuoDWWhrXFmuvNJmWgIYHg=;
        b=KvJkZwdtexEIz2QBEfVia2syK9vlRxNkIw5cV8opp85crnOqiYcadqIWdZ5+u9Pjn+
         oY2sdasg61hAeBhX4n6WMbOoPt/NI6vmIKIkHfUuqTFkjCkMW1TUwC2P7q5zEM+RjZpQ
         cfKrt8S98mgjkhSB0yuooiDMOGNiHrzYP6Gg4d2QUHrN/DsT/ZQK3wte9ZDtmaM2LBgg
         B7jgcDcUKGvKuqEeLfM14rArcdrP54ezgOFTziTAXu+aN3jXOQbR/wDD25UDAp+N31LW
         SDLVrAzxfaXeuDuH0NZtzH42l0Wq6RzeFGPaV9WpTURDsJLj2B/M0bXv+vYN/Gb9NOwv
         s5LA==
X-Forwarded-Encrypted: i=1; AJvYcCUXpqr1lt4St/A2hgPWBF+BWV1Ctzse0N8m4FF/qfdfn0FU4LUHHPRLP+56FMlgrm0oEHxcfhy6vOSN@vger.kernel.org
X-Gm-Message-State: AOJu0YxZhA2ZqmRY+LeGtDnRBm4WJ22ttAofkHmMAp3y39Ip55hEir1T
	Db3szbfZTIzqsdbARz0AQmRKJgQe76fWN9iLHgk3AtPwpXa2EegM4NOO
X-Gm-Gg: AZuq6aKO3pyYp5ytjgjieyH7pAW/FTN8zItMK99u1P3gzn8pb0O1JJ9u13cI5VfH/7S
	vs1ULNvKJd8oBF5Q4wGsOlVYV83HSVsvR/jmraW/SnYyAXKt6KXe++5bwzd9ZmBMfaJnEj9B2kf
	IEjtcpJ0QBUNYeWclqZc6vfbMU5aQ3f03N0TI5Ncc+W3EwVxvr2lhYgeVh2CBx/T6saYa1rGx+U
	60/ToOaRtylZgr8BhuaJJ7KRKPiddTGEz/SPO+UwkuJ2iLqgShfiFt5MRMW7gZ+BGqsTMPwGSud
	AlWRfYu/0B+RMaIzvCkoBImb0nMOn5n8A+5KlVlAG3TYawysJrgO7Kz4wBi9K/Qh2v+cHeBW3JW
	bOIKTMl2l9/jwY6Tp97xumO7S7+BDznIXBkvY4G8e6J/y6j4aVBfVVpvvnkd+RGWd/ZbRdfLCR4
	oxV1aSTuDay+4mjWFxbHKvmAE=
X-Received: by 2002:a05:6512:4014:b0:59e:5a5c:f33d with SMTP id 2adb3069b0e04-5a0ed9b7cd1mr2262971e87.49.1771829034237;
        Sun, 22 Feb 2026 22:43:54 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb3eb6dsm1363274e87.50.2026.02.22.22.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:43:53 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: mfd: max77620: document optional RTC address for max77663
Date: Mon, 23 Feb 2026 08:43:42 +0200
Message-ID: <20260223064343.12516-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223064343.12516-1-clamor95@gmail.com>
References: <20260223064343.12516-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[samsung.com,kernel.org,bootlin.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267256-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BB7D0172466
X-Rspamd-Action: no action

Document an optional second I2C address for the MAX77663 PMIC's RTC
device, to be used if the MAX77663 RTC is located at a non-default I2C
address.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 Documentation/devicetree/bindings/mfd/max77620.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/max77620.txt b/Documentation/devicetree/bindings/mfd/max77620.txt
index 5a642a51d58e..0bbb42e5dcfe 100644
--- a/Documentation/devicetree/bindings/mfd/max77620.txt
+++ b/Documentation/devicetree/bindings/mfd/max77620.txt
@@ -6,10 +6,12 @@ Required properties:
 		"maxim,max77620"
 		"maxim,max20024"
 		"maxim,max77663"
-- reg: I2C device address.
+- reg: I2C device address. In case of MAX77663 there can be 2 addresses,
+       second one specifies position of RTC.
 
 Optional properties:
 -------------------
+- reg-names:		If 2 addresses are specified then, must be "pmic", "rtc"
 - interrupts:		The interrupt on the parent the controller is
 			connected to.
 - interrupt-controller: Marks the device node as an interrupt controller.
-- 
2.51.0


