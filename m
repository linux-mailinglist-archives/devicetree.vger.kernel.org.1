Return-Path: <devicetree+bounces-315333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z9x8AdYiPGpvkQgAu9opvQ
	(envelope-from <devicetree+bounces-315333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 20:32:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A50B6C0BAD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 20:32:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=o6kTQC46;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315333-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315333-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4CB53007353
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 949E330FF31;
	Wed, 24 Jun 2026 18:32:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523DB26D4DD
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 18:32:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782325970; cv=none; b=g4c0cAUbW62BlQ27ca2krTyxYstCZ+iKnJ4bfh1+4euP1KcMCJf9BQ8U8OS1oGfPgGdG7oIgXSmu4IdFXiq1HdBhIpX/bPw6uu3UpCM/B+16iqcvFnxLC4RmtI85rLaXnG/qLuuef7tTZ6M4ecCXhOu5dzPYo0YTSJabpk7u7/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782325970; c=relaxed/simple;
	bh=44wlK79p2iFBlaDNEJYYoVrsZ4V64y2DhfrkrngDWyE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kAoLz2e11vWo5l69R/+pid1kA2wvActCTEAd5ctEC1P84seF/4Hw0qGDBTLXF6kPAnEY+MV/r05Fu7nzRTGpaLJ1yiisW0gGuKoLWT5RyjZOHk0VDsCPH46Z9lWL9qNKtw2Xdgf8XhxCl5IgDoZSiufIoOLRK8R6xopctc8fV90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=o6kTQC46; arc=none smtp.client-ip=209.85.161.51
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-69ed219d3ecso1173534eaf.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 11:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782325968; x=1782930768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=o6kTQC46oH0D9sztNHJL97SV4mMMSm9+i6pSZh7uhCzV8FYM5jp4DooCiL+yG8M+3x
         mdmUQP041sVy4tFJJpirYLAObk7jcKnawV0D4+rwzrot6D6IvwEk8yItSveBG1QMZIrI
         NS5nbfI20fZQKD1ICZmpP8VIRLbZNg7gwOTdNfa4cEb4Z11dQjURrQgrSSFY27feq6Pg
         4smUIO0lh/BHjEh55PvNdl6SMSpXtVlNPmjcAfxbV/iMC/scIVHIzG0TSJ7qcn0EF6M5
         HH4u17YvqXVrUS05zXiq+jF9v6arURvcbukS54T72WaJCtMfISOg0/MrVACTO7sJ/NZY
         ZY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782325968; x=1782930768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=AwOVCuVj5J+zdLEv4WOtBY23+e7OfZNO1+1u6H9wB/pjHChXmUi1dp28GCQt4AEehl
         4TLiteck3AXXm4uPXzwN20NxzW8rJKSemBZOdYsrObAgWaTnKssZgPmYUpkm3rgNLYlR
         JNKp73fXzeFpnkAC6FjVc/X8grrEIxE3ViLIfCue4HwskYmwPgVszmsC0Ilk2c2xdR63
         DeMhxb1EY02MuwvTW26NAfNyA7uFv82evcj/54QnwuArG8maczHyPQr/mQW/lOs9aYR6
         DsoHpGuLRNoubEer03rIEH8bw+jU83vCaJTKCciRFsAfAIsbLfe7AlYUa2qdAhN/McLu
         6OMQ==
X-Forwarded-Encrypted: i=1; AFNElJ+yYv/ikagjseu1sSvoFMgxEsmxYrSon/5QlqwcYksoOUh1OK5ut+H6K5oQs8QTDn/+CPtOTlHuhGp6@vger.kernel.org
X-Gm-Message-State: AOJu0YyTUqHHwHuwcYXJfJe7diRFMMBRFQtv8lhBho5TUaaw8h0J0Vwa
	TmJ7V/z60TgwPM+1Xgp4wugA0O72PRDrrHafpuYso4NxiLzbgbbwsXro
X-Gm-Gg: AfdE7ckdnsRwlbrOPf5lGFSkKFbNnjD9IYni9dvwamZfhK/jFubeIcazLzY5U0bk++6
	SrOAhc+ZDVqAImfZW/io33NnZLTzBwbJLVARf1tZ7EXWa5j9y5c+IchQXkoOec3MlFeeffmgzaO
	RWccU8zeYNk0daIz0WYQvlslX3iokem/rF3cTUc15rkXzS+aHlm2Y+NC1tgbvItscRNKMAxojh8
	/pK95JfSH/nFcG3n2ZjdZK5B6Jc9/oezidwUzKKl0ooSAJQr5t2zwm+UBWXoZ1uQCh6hGOr79zk
	+6Okc39Oq5WDbPZfuXdevCN3w1yHtRZUHNG0UnYk3LKuZyUP6l8u6PvXfiLPQ5GqKx6XFQZepqz
	H69KMFGXg2JetFPkVjSOMQbsPZKuOqQ6gg6PdBPmAWjSoh8V4jmYo74HrkaQ4Nr78cLmiNmntFv
	FHLUiIDlc8OWA=
X-Received: by 2002:a05:6820:98e:b0:69e:35a5:1358 with SMTP id 006d021491bc7-6a122f85448mr3073013eaf.27.1782325968322;
        Wed, 24 Jun 2026 11:32:48 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4472f042517sm9968060fac.13.2026.06.24.11.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 11:32:48 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V14 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Wed, 24 Jun 2026 13:23:40 -0500
Message-ID: <20260624182350.50467-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624182350.50467-1-macroalpha82@gmail.com>
References: <20260624182350.50467-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315333-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,intel.com,hotmail.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jic23@kernel.org,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:andriy.shevchenko@intel.com,m:macromorgan@hotmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A50B6C0BAD

From: Chris Morgan <macromorgan@hotmail.com>

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..9b2af104f186 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


