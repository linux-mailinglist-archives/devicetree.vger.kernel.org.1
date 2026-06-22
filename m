Return-Path: <devicetree+bounces-314559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v+7HBHG0OWoewgcAu9opvQ
	(envelope-from <devicetree+bounces-314559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 00:17:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5660B6B2987
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 00:17:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AcxaG0MW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314559-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314559-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFB04304C11F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 22:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BEE3370AC7;
	Mon, 22 Jun 2026 22:16:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A535E93B
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 22:16:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782166578; cv=none; b=TIiZlRH0KXWamxv4fvQWAsEpEokyKsAosXtwi04gR1ZcQCAQosQ/W2uxsNBEGiRiregJCNQWf9oaPsDvAVXhVb5EKCSQHEEATt1WccOwQz/R8W+Vhief+yFD5HNOp61zQZEHmSXRZHf53ccrasuC8tDAm3DQ0CJem4zO0rFhO2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782166578; c=relaxed/simple;
	bh=U2YoNQx/hGloZRC8McPJss1WdTnU2vgI7Fy7zmdhFok=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aNJYRY+cxKk4FzHufQP7u9IClqfiAKtn3iRdY2cdycexiKunBORqCkWU5pa+9Ra3LO0cfd1g80+M6NBz/mFWqGRK5wYAW5isVXryuMlTWLpKJ817s+cxBuph2f3u3B3i2pN2VHt4lXTBAhZaNOnJZfVZP+YrE17XesmzqcQ8C84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AcxaG0MW; arc=none smtp.client-ip=209.85.221.47
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-45ef56d9b67so3894447f8f.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 15:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782166576; x=1782771376; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/Qd/2tRCLWffwMQFEM05180CiTbv4f9HSRyN2+W50k=;
        b=AcxaG0MWMOYAD0Vp6DdVJYimk+P8nKpwy41ggS/jzYcDPJ9S52Gy/BxFVEhnI5as4K
         lP16jyjk+3GNthKrJr0vrKPZyWs4hqghh/5BGU8wgov/cKeOqLcYSmCV/zPhMjO259ov
         x4Pn7evQvMdg6UcrRtXevcp7nyEhdLwi+IAFirBIkJQNKc6TgP6F7Mi9WYW2Bjnp4FeP
         d4Y0W7DTJPsntnoHgFZyApou3Sks7OublwnP6oSDRVXkfsZIYdryBgIBVGDmMiIqt6nk
         KFEbWrDugOgIbILE8HfSGXm9ntmjfJdEQuc9xxKys+hgQtd76+e9DLRrVkFrBjzy0RUn
         elcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782166576; x=1782771376;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L/Qd/2tRCLWffwMQFEM05180CiTbv4f9HSRyN2+W50k=;
        b=D2NAKSuZf/NCEJDbDphQ74o1t0bIGMNcNDFtX48s2/mhG+QMfvlmRskleajmh1L/h/
         WbaseDyKBIhau+16l5hiBqrMg3FuErSssu7pExWP/OwzwBnFVFWMw347Rv6umNN9MHQP
         sDZ3grWvUVYkEQavKHkgfn3SHhpN0dMOKOLG7CQw6L7xVSApjqq8jkKoxCDX+Iq+tpSr
         IqjYuJerBCWc8mh/LAXMM/Yf6q8+u+i7KK3jAjTnVAJQU9rLV+9NpMfpP6uJHBxxDzju
         GKDp6F5lAzkfus5i4Utf5mECTr50BB0btcQs2aofD9iOUfb1eUdyOXH3Jezk6WFFT8Nu
         QOvQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr+Va18/8aE0HEhyaJl+ZCrIi69u5vYjffviBdxvzVMfe1IZo7P9hgG6U0g8mj5Ao0gJ9JZx9OP/qA+@vger.kernel.org
X-Gm-Message-State: AOJu0YwZLGBHk79Xeb7UN1/umU000VSRXAZv6AIROZHpeGyvRUJhCsNe
	gKFLl3M3xIvLpZHM6EllXSZWly3BG7QlbJARxlRONQBH47/AI7yxlFDm
X-Gm-Gg: AfdE7ckT5f8W9hBdbcP+PUtKnBcH/6y8Q3bB9qGPiAUnpF2PmsL8V1j/WBSlqeYgbf3
	iokUakOhi80uUqYO/eki3dPWi1ORg/fVkljl1/zDq8/truMN7ZSE6N3ZJv6/l+9Lx2vkp6jRnW1
	aIXwwnr42zYVGyNXngNQV/kM5xy2h0wh9us0CYmT08PYWfjwJpdBCvZDfwydBjEVdPyZri/qJC4
	Wcx8MR1c7Ie8lkXfowQe/ZWatzf4VH7o6gMUKDgdvn7zqoCf3w7qQ0bTwkd0JfjpFG/6a0O062P
	l5FCPKksDvNBxK0QXfH67O5aiavA3lI/orlyW/xM92uuhBJLSUU7ZXkuknyQcDX6BAYlSMyg/IB
	gZYXdLm6izZA4ZmNHFPMwroG/yyl5vuQ/rSXF+N1Ji9A6GF8avtETzDK7CLBdAFKkclUVsYEnJo
	Sk7ouPKDGZj3TiX078W9PZFW/fxQhx
X-Received: by 2002:a05:6000:41c6:b0:462:20f6:cb91 with SMTP id ffacd0b85a97d-46adb5877aamr94371f8f.15.1782166575651;
        Mon, 22 Jun 2026 15:16:15 -0700 (PDT)
Received: from Nitro5-JS.kielce.vectranet.pl ([2a02:2a40:27ec:2900::3ab6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-466648c53fdsm31319845f8f.10.2026.06.22.15.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2026 15:16:15 -0700 (PDT)
From: Jakub Szczudlo <jakubszczudlo40@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	antoniu.miclaus@analog.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	duje@dujemihanovic.xyz,
	jic23@kernel.org,
	jishnu.prakash@oss.qualcomm.com,
	jorge.marques@analog.com,
	joshua.crofts1@gmail.com,
	krzk+dt@kernel.org,
	linusw@kernel.org,
	jakubszczudlo40@gmail.com,
	linux-kernel@vger.kernel.org,
	marcelo.schmitt@analog.com,
	mazziesaccount@gmail.com,
	mike.looijmans@topic.nl,
	nuno.sa@analog.com,
	robh@kernel.org,
	sakari.ailus@linux.intel.com,
	wens@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 2/3] dt-bindings: iio: adc: ti,ads1100: add support for ADS1110
Date: Tue, 23 Jun 2026 00:15:49 +0200
Message-ID: <20260622221550.374235-3-jakubszczudlo40@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260622221550.374235-1-jakubszczudlo40@gmail.com>
References: <20260622221550.374235-1-jakubszczudlo40@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314559-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,vger.kernel.org,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,gmail.com,topic.nl,linux.intel.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jic23@kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:joshua.crofts1@gmail.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:jakubszczudlo40@gmail.com,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:url,vger.kernel.org:from_smtp,topic.nl:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5660B6B2987

Register layouts are the same as for ADS1100 but ADS1110 have different
data rates and have internal voltage reference that is always 2.048V.
Also correct order of ads so they will be sorted alphabetically.

Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/adc/ti,ads1100.yaml        | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
index 970ccab15e1e..28c5e2dd0ad6 100644
--- a/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
@@ -4,19 +4,23 @@
 $id: http://devicetree.org/schemas/iio/adc/ti,ads1100.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: TI ADS1100/ADS1000 single channel I2C analog to digital converter
+title: TI ADS1100 and similar single channel I2C Analog to Digital Converters
 
 maintainers:
   - Mike Looijmans <mike.looijmans@topic.nl>
 
 description: |
-  Datasheet at: https://www.ti.com/lit/gpn/ads1100
+  Datasheets:
+    - https://www.ti.com/lit/gpn/ads1000
+    - https://www.ti.com/lit/gpn/ads1100
+    - https://www.ti.com/lit/gpn/ads1110
 
 properties:
   compatible:
     enum:
-      - ti,ads1100
       - ti,ads1000
+      - ti,ads1100
+      - ti,ads1110
 
   reg:
     maxItems: 1
-- 
2.47.3


