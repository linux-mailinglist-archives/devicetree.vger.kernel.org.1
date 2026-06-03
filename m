Return-Path: <devicetree+bounces-306456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z3U+Kzx3IGp23wAAu9opvQ
	(envelope-from <devicetree+bounces-306456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:49:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEBB63AA37
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:49:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MjYhcOtX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306456-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306456-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D54EA3026071
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 18:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72AB044E042;
	Wed,  3 Jun 2026 18:49:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B443E171F
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 18:49:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780512561; cv=none; b=YYofadd0opkoO6hbAfbb49f3kqfhnR9PwKwfoXWHZaMaIrXrPI6u85AGaoVvWksvZ+tooWArncqgbNEOkrQBWY1S1EDlvSQeXDUSKtcHMHH5WQjXiK8zj0+Zw/oNnScPBr7NlJxLQq2mTSKUGmg/UWIDGftw0M7f8mhvo6iEYTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780512561; c=relaxed/simple;
	bh=EcLRSHqnqB5L5pYI7tjNeUMf/1YsZCqijICND5QflsQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PqjhsuQrTeu0gRpdbJoabqJkOvXhsfO/i64yNwnXniEeSTyaYje7RM6m9E2dkuj/bQjbDYepeRMeQgAgIApx0vqWr7pv7tMfoXaaUJTsGAdqai+T0hCA+G3SVmzuyRTib91twMSkfA8+ZaXRQ3x0VxZt7+HcJcl9eYBfYb5pPZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MjYhcOtX; arc=none smtp.client-ip=209.85.214.172
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2bf22d29dabso45468595ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 11:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780512559; x=1781117359; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JP2oeys3gnF+eZfS4uTCq9ZgL+QAQ6O5vvj9ayK0/ME=;
        b=MjYhcOtXYatsxzcap5Qthf0sq/rvQp7/QRtu94Xx6B4Ahyi1KV84W9Sx5h7UrbubcP
         DQG8P+a3/1ZmlKq2LGdjubCUcS3RJsdvdJKp7rRWxsv+6v3FOi7gCaSLtAlwLNs4eJG6
         /QD1+LkDsS9VKMp1Uw6+nPkcSkl5m1TccQNoLc7ckUdhpYuyKeNz9jxP8c+l3wN1DyVN
         eFjuoFu+BmAC0DO3ogvy5nuvw8cWV7H46A0oX0mwkXIuJ2Wb3NJhfc1MpyNuOMV/wxWH
         k6aUDt+gIbyqdFBiwArfzh9hMyz6EZls9FGzkFcRfNJk2RORblHv0g8uNYjWN7ZFqJx6
         hgAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780512559; x=1781117359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JP2oeys3gnF+eZfS4uTCq9ZgL+QAQ6O5vvj9ayK0/ME=;
        b=Xy4Rvjan4OkxWoWSmYFbc61/MVf5tuW6aTqtHlfnByQetuI5ZU54n+/tMsvp63Ahll
         cqdI77uZ4NJFHHpEJaDjYr3PQcZlJsVz2VKQsXXLsRkM3gUwu3wK2sGWXdZAfn4E2DIh
         Y8xQ0DVFrDiWsNWayYiMbTJhsw+I0HeNcpQ7ovmM7E2cOlBjNu9VJvgOIK2nLXnHITgM
         I4jR4AEq63qkLicTme9gl9JC2WaBEr7dbr6yAUlJQFGX2EvnDzBFxbpqPWmktfjPCGaw
         imx+feHBF+YF7fCLS8gSW67GfORtdKPOcY5XsJeFVivn3lYyWzgANoO9H5CaDCniXByU
         UCmQ==
X-Forwarded-Encrypted: i=1; AFNElJ+Z1mMya5UKWh2Yi5e5P2isxM/wZO2CkP18bOBvixHP7hpK3Pmn1DEgmYmM71Xhgn1zK6eLOBBud4G0@vger.kernel.org
X-Gm-Message-State: AOJu0YwkGhj2R86A4aHfo73psWQW0KArYqPZxnsC+3AWlseStmgfw1B7
	MIm++MyYV+Net8dpgr8MZ36/+fw7n7V32RSSsQduZisjjRNob+G/FzMV
X-Gm-Gg: Acq92OFhMaONH9BW8624HTH0+dC72BmKiYCjTccNeMNYvLBsmZ5AwjfKsJySPCJ7s5C
	OERH020KeSfW3HAMcQFZEjOcTd17L1zWIJGft5/SePYiudYwdw2RcPGK94A4H0B/Xc8T2eQQ4HE
	pL0RdxUtmTJNb48N+tnDval+mEyvCwDiekOo9cVJBjrWTTAtqyVY0BJbALtqUOrO1h7Lw9XiqqA
	/buMXqv37fLVFqUw3CkXTkLCf1GKQDLvChtv24IWH+Z/RDtgsyBwl7edceYyUrMdRrgpojLrDeW
	RNlb4wpWqNMZEifkadyyKoDzYcyWZhKf631wKutDboY6aCtB0KUderns5zo3D8vT22VS+Z9w5CM
	Lz5lEdfU6cWIBpGQDk+nv5mEcF+LU1X0Es9WYA5ofkMRjfNu4pWS4vPEHvtY13ZlV3aWbWmXpU5
	STCy7KiOdDLrHKXMiOvvJsl70CFPq7I/vOZlmawsQ1Wnn3ny/ilLeNB1rAUYnOkSWVRKWaumEG2
	g0Lf96YN7Vagx0jCXsSKJmtaKdvMLvfm9IGWs0b/T1n5avac2N+7Q==
X-Received: by 2002:a17:902:e14c:b0:2b9:ec37:2977 with SMTP id d9443c01a7336-2c1644dbfd2mr28650865ad.38.1780512559486;
        Wed, 03 Jun 2026 11:49:19 -0700 (PDT)
Received: from lord-daniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2409:40c1:4015:6e6f:ee79:7998:9a6f:65e3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d59csm32139675ad.4.2026.06.03.11.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 11:49:19 -0700 (PDT)
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
Subject: [PATCH v11 02/11] dt-bindings: iio: adc: hx711: add VSUP and DVDD supply properties
Date: Thu,  4 Jun 2026 00:18:50 +0530
Message-ID: <20260603184859.89693-3-piyushpatle228@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306456-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BBEBB63AA37

Document the optional VSUP supply used by the HX711 on-chip regulator.

Also document the DVDD digital supply. DVDD is a board-supplied digital
input rail (figure 1 of the datasheet shows it as a separate supply, not
merely a bypass capacitor point) that was missing from the original
binding.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/iio/adc/avia-hx711.yaml     | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
index 1ea60dff98d5..0baf620e9057 100644
--- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
@@ -33,6 +33,19 @@ properties:
     description:
       Analog supply voltage (AVDD).
 
+  vsup-supply:
+    description:
+      Supply voltage for the on-chip regulator (VSUP).
+
+  dvdd-supply:
+    description:
+      Digital supply voltage (DVDD). On the HX711, DVDD is a
+      board-supplied digital rail; it was missing from the original
+      binding. On the HX710B, DVDD must be greater than or equal to
+      AVDD; when DVDD is a battery rail and AVDD is a regulated supply,
+      one channel monitors the DVDD-AVDD difference for battery level
+      detection.
+
   clock-frequency:
     description:
       Controls the SCK bit-bang timing. The value is used to derive the
-- 
2.43.0


