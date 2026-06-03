Return-Path: <devicetree+bounces-306457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8i4GN9h4IGrz3wAAu9opvQ
	(envelope-from <devicetree+bounces-306457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:56:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 393E163AAED
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:56:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=By5iYhgM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306457-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306457-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10BF430680FB
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 18:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A86AA4657CC;
	Wed,  3 Jun 2026 18:49:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0853E717A
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 18:49:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780512566; cv=none; b=Zbg3jzUSqL339/5f6iWPoI/L66cdz+kqXJT20hwLSiARkMVvCGzmVv1eBHoJWkdLN2VkhawVEhkbLc5i/mYr8jnNk+eKck+9UhA+byEV+Ry9eG2nRm8IQAFkaL0+XS/6stuo24wJBNm4phk5l8kqO9DBkF+3SiwBRfibh8GI+RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780512566; c=relaxed/simple;
	bh=EoAF4YHy3iYTq0qtbpAuxEpwDtw0CacTgV3exikXeKc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ukrO/fzRdDvKOZh0B4vDoG2uMPEw9A9Hz25egMDJSXVbbz0jFc5eUeq7h3thQ0zH0Swd5bcAu0gD/B55/PnQIuN0TzjdwasGhO9KX+O5JmD4Z2HJ3DcgkdcA7mSvENOj7S/Zs1OHekvuSnZJK2zdlvR2hzrrm8VknqchncWKEnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=By5iYhgM; arc=none smtp.client-ip=209.85.214.177
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2c0bd02d97eso48681325ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 11:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780512565; x=1781117365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ygX2OtS8jtfRsEiUpxVA4rgdEOhC6dRMuJ3m7A2/544=;
        b=By5iYhgMccAyHP0G3AmAW8m1JxG/irSmUEA2V38OpJhdE1IJ8XjDZb4eo6+akZhqkC
         klqDUb7QT4HmcG+2ymEEg4O+ywLDwe7Bt1fP6u97Qo5MtCwYEvJwm/ZB8N8WFbswVnVV
         b4x28BsgqZocg4Sc9MNDAe7IkHhHgZFr0zMAk7KpY09GOQKYWRJ5SQLjdMeOKvB41JsT
         D+3+XJOupsjz475itgT1INKdsDKOcoPftPeeGECZr/0vYRLQffynkiunKmZjjt3GcC/D
         yPJ3fILGC+StIv8VGVwQfVrxq+SngbFTMXKmghWV+AHlT6yT9xPiEWdJAaFvRQvoA7Ne
         KjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780512565; x=1781117365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ygX2OtS8jtfRsEiUpxVA4rgdEOhC6dRMuJ3m7A2/544=;
        b=aFH7u8c2IMxRLQcTMumKktgsOuDrlz41SyylpRRX+MaTj7AzcAaMvjTin+UdtxKKD+
         Iexl6rHX0MTwEoaH0a4HFr+YQKJ/v5ypIcjhgRPifRKWaRv151vwd1ZOi/+fuxWQXWpy
         KcN5EeGCqGf0QwNoFUaRKHkP5+YU2jpny6ASnVtDbGrANDZzvCstPbkQXe70HBoV7oMg
         NSEW9lb1F9PtAo2hHq8L1GKVctgDP+bV8vep398pk9OJXfSG4PC8BRXY6Egd/n2W91jg
         S47XvE4Q7hI82sgOARahycBKoLp4bdqGv4672ZavmvHOPfsem84wRdRejuwKE/VIhh9/
         hKNw==
X-Forwarded-Encrypted: i=1; AFNElJ8IX1vMlLDIBrC4gBmgGPxVd8tSjKmzx/jx9bZ9EqMypmmSyvLLixtUGLHjHUyj77bJ2xPbZ/P9nUik@vger.kernel.org
X-Gm-Message-State: AOJu0YyLIpAyuGUNNurjWvocVhelS9A+8SyN9lBM9b84PLRrh1MX2t0J
	cympcr2CT6dQE4gaHnP6sPZd3eFnqNuXOS5Cy5mRBgCZ626laWsH8E6J
X-Gm-Gg: Acq92OGnRDWTXX/4GmjAW0ddXPWSLfACPLGJH/81h6bM/DUIvzJT9B29D0rxDSwyNwd
	hw8390zc6Eeg18mKLJMaaIOhuKosa+t5MUJSN8ss6+bUK9kdvOsVfp+XrBi5nR7q+dicWZY1+qq
	vtlld+jbB3N1Xa/Py0wjScMXUoHGGEzczYzCDhVnkdmWC/P0E9OoGUNArXmsEdbiWtK6DkJt0lA
	x35iQWRiviDHmWFuU2s9tsFowfRTrgNpKk79NFkO0Pv7JPxTnx3Xz2uyf9LegRRlTefIn6XjbF5
	Z6OxVmprq8zjkxwzRzNRKgTCLJNAKcrOYP5sLd0FTIz+PiQRWMz3M9ZGoO3ODRqdy78Ko8SdHRd
	fy4VEpvVbbx3BXDvPCbRsaTAPEHiOXSlfm2Ri/xJCnOflEDp7l3cKy8JUbB6AVZoNsE/OKKBhXB
	bQqSzVQWpBCYXEI86SuUuoXZZJvDO1NbgBRrpCj5D7s/+QoEYOdqCGLhdNcB5RX4J4o4F2IF0r8
	KdUfgzYk0V99lOW3S91TWzKxssVJH4tf+jBJ4HZyQmYQX7OeluaSg==
X-Received: by 2002:a17:903:2b0d:b0:2c0:cf44:3b3b with SMTP id d9443c01a7336-2c163fa3a7fmr55072575ad.24.1780512564599;
        Wed, 03 Jun 2026 11:49:24 -0700 (PDT)
Received: from lord-daniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2409:40c1:4015:6e6f:ee79:7998:9a6f:65e3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d59csm32139675ad.4.2026.06.03.11.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 11:49:24 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: jic23@kernel.org,
	ak@it-klinger.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com
Subject: [PATCH v11 03/11] dt-bindings: iio: adc: hx711: add RATE GPIO property
Date: Thu,  4 Jun 2026 00:18:51 +0530
Message-ID: <20260603184859.89693-4-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260603184859.89693-1-piyushpatle228@gmail.com>
References: <20260603184859.89693-1-piyushpatle228@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306457-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:ak@it-klinger.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,microchip.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 393E163AAED

Document the optional RATE pin GPIO used to select the HX711 output
data rate.

Update the example to show the property in use.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
index 0baf620e9057..099235b5fd54 100644
--- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
@@ -46,6 +46,13 @@ properties:
       one channel monitors the DVDD-AVDD difference for battery level
       detection.
 
+  rate-gpios:
+    description:
+      GPIO connected to the RATE pin. When driven low the output data
+      rate is 10 SPS; when driven high it is 80 SPS. If omitted the
+      RATE pin state is determined by the board wiring.
+    maxItems: 1
+
   clock-frequency:
     description:
       Controls the SCK bit-bang timing. The value is used to derive the
@@ -70,6 +77,7 @@ examples:
         compatible = "avia,hx711";
         sck-gpios = <&gpio3 10 GPIO_ACTIVE_HIGH>;
         dout-gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
+        rate-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
         avdd-supply = <&avdd>;
         clock-frequency = <100000>;
     };
-- 
2.43.0


