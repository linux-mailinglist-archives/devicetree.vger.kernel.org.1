Return-Path: <devicetree+bounces-315235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qMhaM9bTO2ozdwgAu9opvQ
	(envelope-from <devicetree+bounces-315235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:55:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF0B6BE4CD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:55:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=oNVYkUUb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315235-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315235-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 106F63063818
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 12:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2F893AFD1F;
	Wed, 24 Jun 2026 12:55:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801223AFCFF
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 12:55:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782305701; cv=none; b=oRO8O34053tF/Yhsm7Vjw+RC0sXpcf2Vchh/zBXlw3wpDXxXpXdlf4dKpOOp63KHOsskrOQyvf8fR/79Y+k7BfJhH+eJv1ZcWv6ozB/yLn3xjVAosmVt/vaJzxzL5sA2LwTkSHLa2IFO4aYJATYKSs2fMAI0PHeCShlDx00aTgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782305701; c=relaxed/simple;
	bh=XUJDd4xUHVWu57IdXVomBU+JbtBGQJowIYaHzRYn3x4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PxKBflPZ6m3xBDZfyVfDfOcLxcE61BHHQqIdpn1ZeIPQrJhQoZ4U/cS6e9aVPOHskJQdQV8VAopTBaYNB+LKETuDOcrqiLrNuJhbLZo2NShuA1/CvVxc8g05KcLjjITjTEGHD//zFVPvHCMZpmI32ajpTZJ9/Z4PUteHrqfX02Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=oNVYkUUb; arc=none smtp.client-ip=209.85.216.45
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-36baeec21dcso567058a91.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 05:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782305700; x=1782910500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4jwCfEHJNxVKEsC2iyhku54hBK/Iu9IeFsnGfdfRF2M=;
        b=oNVYkUUbW9jE00EScZH4QimSEbbLhcZv6nP2Jjaav8wxgAc0ww5LXCpKMq0nleDDNv
         pKJjkfaVfvZ9AYF/6JlP6/J6RWLJl4Wbi8sRV+dwUwoNqEHNzSCGqH3vI6J0CCfYCMws
         ASjSlqtM5bG9DZooc13gwb9g2g/5dRQiL8AfvgHKJZHR+pUhsNKRJPAh/QzyN8XSGQmB
         nq7TQ6tFFiQcAd/D2EpvvBub9gNB6x3gNNPz5DxsgLX3N0gN1faCIapZQquiyu6Wpb8y
         2DT52pbqtPqfNLdEYxPrrTZJUWEyvLuh9sf5XrWQGxY9+LrBTDvi6W3QxtUOFPeFkHrM
         vfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782305700; x=1782910500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4jwCfEHJNxVKEsC2iyhku54hBK/Iu9IeFsnGfdfRF2M=;
        b=X9FIdlM004Nb9vU4CH+nz654APcTQAlCwlWhH5QDq1eeNeJnFwy83V8ofghbJzsrqK
         bk2eWE0jIwvYlsQI1m2XRNXbe1GoMNf26mpn1ZTs5x59yV4Xb6TfKcEjRCWvMUy3CEBM
         1IXkpYM2Ry6CMx/lCw+cWu1ujK++8Pjrk5nbAqRtZpuOltFh6Eqz4Nl3ADwQ+nRHr/N3
         eUXmd0lQL6lEJxPRed9P9EZ//HzLCiMP8sXy5C4X0BgfS7FiUWQ2/bP1jUqxsgCOuc5/
         dQI6u5T7N6VTlPFlppRSnqc2HFqWh1d//jBieTFyXifl76nbnEJoZsAj66uVQ/zEtB/a
         XxCQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp1y0KNRVcJZmewRPpsW/zn0UCeykQwr8zQEPcZTnbcdSnWPf6jlfZPcpZgMlZWPPNNeL7L5uzV5WJj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0xBLeCoyAZiLgGxShYu3phEuBMDnwzMA92OUyCruNkhmUovCC
	TqJ4+GJiPBlSbwvkCzRbzujA+EtzL9ZhfMQxUy1S8/kM7hH6Eyo+YEGk
X-Gm-Gg: AfdE7ckUX2u7L4jre3Z0+AvOyQ0JtFl+aBzcZbzkPBEH4N6bql9d7GyV1eZk9LJM3SD
	x+syozHOw1phDc4gj7eH3xwyvhmy3MJqeWsCSDpN7pIqD3HpBOX7j+WdbX2utAu8Y75XN9A9FeR
	4V75N6/7pL/ePGyjVAU3Ei1cX9BdVrwk3HfqP/zrwBT9QDNZ28ckiAObFSProMXbDkMJunYi9OH
	WwQgHbXiDfrWCCdNf4cq5gP6OvTNnx7atfHJdTzRcp6gkzHJzVu949E+4lvGIOGw4iOP++DjIJb
	ktQ04yV7Qmud3q6oLL9Wh4CSuH9OdVtV4pcMNyfUChZP4OOsERkojlFvPhLFXbI55D0iRXeRtw+
	CskDnF/e/92WXsCaM7YY2c5BzpVkNnoSaZed0jjw7FHna7rrEgwOC9cft3DZSuVl1qVe4pX+2c3
	2yTsKFUjXB+SxtujKWB81+3J434GbLOXEyap35cDd/
X-Received: by 2002:a17:90b:3941:b0:37c:63fc:b2fb with SMTP id 98e67ed59e1d1-37dd0e18a99mr9790100a91.22.1782305699706;
        Wed, 24 Jun 2026 05:54:59 -0700 (PDT)
Received: from localhost.localdomain ([150.107.232.166])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3b839acsm2984870a91.11.2026.06.24.05.54.54
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 24 Jun 2026 05:54:59 -0700 (PDT)
From: Ajit Singh <blfizzyy@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ajit Singh <blfizzyy@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add prefix for Vicharak
Date: Wed, 24 Jun 2026 18:24:41 +0530
Message-ID: <20260624125443.18729-2-blfizzyy@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260624125443.18729-1-blfizzyy@gmail.com>
References: <20260624125443.18729-1-blfizzyy@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-315235-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:blfizzyy@gmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[blfizzyy@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[blfizzyy@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6FF0B6BE4CD

Vicharak develops computing platforms and manufactures single-board
computers, including FPGA-integrated SBCs. Add a vendor prefix for
them.

Link: https://vicharak.in/

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Ajit Singh <blfizzyy@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..1948356337b9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1767,6 +1767,8 @@ patternProperties:
     description: VIA Technologies, Inc.
   "^vialab,.*":
     description: VIA Labs, Inc.
+  "^vicharak,.*":
+    description: Vicharak Computers Pvt. Ltd.
   "^vicor,.*":
     description: Vicor Corporation
   "^videostrong,.*":
-- 
2.50.1 (Apple Git-155)


