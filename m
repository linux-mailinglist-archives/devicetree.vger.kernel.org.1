Return-Path: <devicetree+bounces-316153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rrh/F3uoPmozJwkAu9opvQ
	(envelope-from <devicetree+bounces-316153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 18:27:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D72EC6CF088
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 18:27:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Yfe9dYMd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316153-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316153-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 62143315A5EB
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 16:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550023FDC08;
	Fri, 26 Jun 2026 16:14:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E154E3FC5CC
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 16:14:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782490497; cv=none; b=bTI0oPhBbq40dRLdexVEzpMEVxkmqO8fL98oM6tf2vm7SB8fLvhzYirU9SQbRCOVd3Lf/hUYagkDt0iHlSrbI25bg9pcN4V2jgZpC1wIcU7MG5SeaBCEw8hJASwHMf1oyeEaleX9AAxYwUcCMfn9AFOkUSsnENwq/MU0UXC2QKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782490497; c=relaxed/simple;
	bh=qWsL8L9cq1iMKYS6Yx1aLr3DUOughAfk0agu5ZwgUjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jr8oRGuoYBuDfKymRpkRGFAHm74WeC7ywNL48aseUnZEieJolG7hTAODbHgsWp+hdcdBnNHerk4aVn/GiNrQDTJV32iDBwYsUyIAylwEE5oNzAUYfPU5sZ49ini+1/N7IaWR9HYYSdJ0DZYq5amiJ/VepVmRtupi0w6RK33MtAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yfe9dYMd; arc=none smtp.client-ip=209.85.210.45
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7e6d37b7098so1269179a34.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 09:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782490495; x=1783095295; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j9fg6CPH5fXaDARyBWa0tR4+RNpX2W01JudkDFTpO7A=;
        b=Yfe9dYMdTNGpReBX7Uma2JUAGGmYHpBuEAhRGa0UtMf1xRV9P0vZDMoObknTawFt1M
         NyvdC5w7fH7mNaSOZx9ni5pj4kzpFTRPGiZPNFA9tKBuorbHM2Ho3DA7cn7yrLG2f1oo
         MhNv5T5Z3z9eEz17dC1D7cIWlyXJZ4MVAFJmfENOwbjCxB9sM1LIjapgghz36b0nXVKB
         7q5PHh4v0MrVNSlju0bjexZBbXonNAjrqPW98Pmsqs5chpbEK7O8b3wTwWaoBil3I31i
         UOvgo6ATOC6L2RFX2B0g8vO60VLwlIMx3O5v2sybn9SQ9nqObVvFoqbnRJvAAschPuFG
         IHtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782490495; x=1783095295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j9fg6CPH5fXaDARyBWa0tR4+RNpX2W01JudkDFTpO7A=;
        b=oYiY+HgemJQkajdhTRptI3jinELKEcAr9ehf84Ce2j4L8PqSVGGcBOM7+H5M+XyuQU
         QRPH3VKuWgmS63yhHPlCA/3dpj6XnkxP2EWeIEaOUIYjrcnxUSoYl9NhjvUm9zEl1QHO
         zHLKOEpkZb9fDmPuqgBepuo8dfrYeMJUnTpcap8Og1bODel3u1OrXHfD32FQlnSQSW86
         dqt/Y5wGNltRE/A1VrzewSDyo3wSnvUgWGglj7iDXuKQaRWNmb8gRNisRTrykoRpcnH6
         6gLq7rADGV5dPxvcojp60poCymfZQKWpizvqsTMuRlYwtQ4CIzWAqaMUrxQmxtD2uUjy
         jQFQ==
X-Forwarded-Encrypted: i=1; AFNElJ9KSbHm+mfxkpLybv6PHwayKosPQOUt5sREcnLqlK0qQ2CWV69VgkVNj8OLXBNSAEV+iqo3Rxi6sUTX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8K4KurGWKRCo1G9kUypq7Cg+wEu0vYVWcde5ya+Ds0Snvge97
	g4W3Yi/qFHU2UTA+wp+BellCC1lYcWf63N5oe68WSpeYGwbPUBsAclj8
X-Gm-Gg: AfdE7clgvuSKeylQACVdmbQPbjTatqnBGbg+e2aqd4cPbdU2RXVBMrjSH1MbRj3jd3g
	WpJW2hgB09nYvtG6QnPtd/iT/glIppUjVTxqp2HRYmsJhYfL7/GH68pAXfwNZqmSozrtWFL+395
	MzK/1wErQlgjWL/RUpzX0ozQ9Yg2eXM33ysjJairdVnlX6CsNq9h7PmodlHc1xENi078FSIYhaQ
	k3zHkkgPHSE2E2C8kOFl+P1NGnCdqv36im72ji6F+Ti0uV3b93Aqx9pVo/XrHFcPBIfbcyTVPtj
	A4O535KT1jlkaop0zv+1maEzhxTowW+w38hhG6wOe57npXatlH8MIjddzsAK7J0+sKQboH7p5Ck
	8XxXh+6ByQ5iDHrHrvueqGmoEe82tuP6uhCofmXANRt1eUP2joIATj58D/rD6iJlMwuc1uOBynW
	MJf2GBo/k9FhM=
X-Received: by 2002:a05:6830:6d05:b0:7e7:57d8:a8c2 with SMTP id 46e09a7af769-7e99c35dd5cmr6634868a34.12.1782490494903;
        Fri, 26 Jun 2026 09:14:54 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9aa579235sm1970211a34.1.2026.06.26.09.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 09:14:54 -0700 (PDT)
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
Subject: [PATCH V15 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Fri, 26 Jun 2026 11:12:23 -0500
Message-ID: <20260626161230.93069-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260626161230.93069-1-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316153-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D72EC6CF088

From: Chris Morgan <macromorgan@hotmail.com>

Add the ICM42607 and ICM42607P inertial measurement unit.

This device is functionally very similar to the icm42600 series with a
very different register layout. An interrupt is not required for this
specific implementation and is not present on my test hardware
(a 42607p).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..81b6e85decd5 100644
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
@@ -67,10 +69,24 @@ properties:
 required:
   - compatible
   - reg
-  - interrupts
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - invensense,icm42600
+              - invensense,icm42602
+              - invensense,icm42605
+              - invensense,icm42622
+              - invensense,icm42631
+              - invensense,icm42686
+              - invensense,icm42688
+    then:
+      required:
+        - interrupts
 
 unevaluatedProperties: false
 
-- 
2.43.0


