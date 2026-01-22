Return-Path: <devicetree+bounces-258624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGXJGUx9cmmklQAAu9opvQ
	(envelope-from <devicetree+bounces-258624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:41:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 059296D245
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FAD63065549
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 177AA39BA25;
	Thu, 22 Jan 2026 19:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VXr8kV0D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A569A3994D0
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 19:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769110568; cv=none; b=D2bFhMonXjWIXNy9mjXaxz+EhBQ6SQWJEzrTO7ItNs84dKki8QkGqw6n1gKh2ZRT/FzHMwD0Be4gBeuwXVp660w8rs8c2xIsJki1BdSwJpRv9uiahJq1gNlFSXSN5wm+7jWtpnlS3ldPYJZj6ijWkcbYN5MWkpsifO9jqUqqWSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769110568; c=relaxed/simple;
	bh=yDihcp/jd0OMfi2PU3Gn+hOP4VhSsBYD5UizE3u770I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rhO+9b/7kYkSLqJyK/meeRPMHrdF7QmkEIXYeXoVCfjJAm+RiIS0HvJ4j3EjRL0YFPQOZzb3B7OP8KKfO7cBnoMvkcEz5rmPJf8fysigqtmtR9pLvowvKWgA/TVOGhLeSWg0rtfWkzMrApYDSp7LvgM0o4Fdd9J0NiiOVpGmHQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VXr8kV0D; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4801d24d91bso14733695e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 11:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769110561; x=1769715361; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7SBABkPDPX8GYWi5QA3maCVdgfUpUsCKkHw/BcpYjfg=;
        b=VXr8kV0DDgXl2kcQ/ehPv3kVxAtrRaTafSLaIlzzt9V42/QwbYP2F6ukdCrD8OdVe/
         Joj8AelJpKiQlYXMLW17Uolf6FkrmeNr/G2fZfNbnvlQOsMptt83+bZxnHNDtaEDfdAw
         xzEieOGMG54xOHogtzVD9he1MUo3AkQ9D4h57SwGrOltLPtrSqNT+tKl8fFlLEXOb6WQ
         5xOJ6VP5TWqYnf03YlIIJ3FELhiep7U2YohsY+Qi35qyqQf8CvWsFT+ad9NsSYFbaiC2
         PhP/GDqUDouM9q60s8pdEZl9aw4nwUoAknSAlawpiEyAucvTsq5DnQceLQvFehlRPQLG
         4Kww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769110561; x=1769715361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7SBABkPDPX8GYWi5QA3maCVdgfUpUsCKkHw/BcpYjfg=;
        b=qxEqLEC++0rMCfJtOCGdYdQTu8FLMEMpeJ4dWcdD3tMu0YRVcjFEKBXIJ6U5wH2+Nf
         ImMbMttwWP8HNtaaChpLd/ldo4jhBsozKBQzOjJco29/9ZFApvDq0EmQWrTsEWLTDIBT
         sJALyQxThtHCy8YKZWLdwSh2pPMh7l5byMIWh1RqnbDor5zHBKxSBHFi9kBk+41dbh6p
         iUtGsY9mtbe8RP20IyxVjndVd7ZQQCyM4/hMTuZc5cp3lwB6TORnMWC+eYBwAqD6Sb5C
         2uQVGQ0+TqSE+2sAGXZbbYTP86/J6LEdhWNpz/9Y6wNAIHvw6+qKMhtBG4H8wDeLSOj7
         ciLA==
X-Forwarded-Encrypted: i=1; AJvYcCUn+G6mcyZ89k98tHYls4/YW3/tLHWzOxhB124qk2y+ErhZyUuKQEDCxAyKoPwew9Kq7Nby7oapK2sW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3CovSgpYySGrY6Ma5fhAZc16v4kENHiZF85XscrG0KeLtOgHk
	KZpRIclgAcf32nM6SREmS9Yb5ExxVBgJByegEt7ke1JbtVl0oilR9XQm
X-Gm-Gg: AZuq6aK9PTuxBSdQ7RMbsuKjxw34MMyLQlVsSPsmimrxtHjxSQPI3hDfJwAk3faNDuf
	3tml8Qr7sxlhDq39GJROVlY1Xm7UhcPpue/b/U/w06JOxqcAK5K3I14N8vSgurqgcnyVlmGoWGz
	rQdRdQC+AaIrPRZW9R8av+JVhqaPPdal5tZWP3q596pq1GmbQAoPwEeNzut1QM9S5x1qqVHyxHV
	OCIjd2CB/OBvoDtjq+MrYkLWdVrHOreVbnfueNQUFWHhl1Zvb88FjKzYjb7bKC5Pj/790i0XT1y
	OJ6ztF12vKPgKYPohq154Oc634A/cdj7v459ufAUKiavjMBtPUF3L0tFsoPhFIesM8PTXSTLA7r
	HlCX5xEgPC6Nu5CawfIx/5PWdpN+qNJj9XXQiSCuQfE+IXDfYS1v6dBV+w0ScCktnZaS+nqKk7M
	Ru
X-Received: by 2002:a05:600c:4f4f:b0:480:1dc6:269c with SMTP id 5b1f17b1804b1-4804c9d00b4mr10024235e9.37.1769110561252;
        Thu, 22 Jan 2026 11:36:01 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f745e6sm843027f8f.33.2026.01.22.11.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 11:36:00 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Fabio Estevam <festevam@gmail.com>,
	Andreas Kemnade <andreas@kemnade.info>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] dt-bindings: input: touchscreen: tsc2007: document '#io-channel-cells'
Date: Thu, 22 Jan 2026 21:35:49 +0200
Message-ID: <20260122193549.29858-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260122193549.29858-1-clamor95@gmail.com>
References: <20260122193549.29858-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nxp.com,kemnade.info];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258624-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 059296D245
X-Rspamd-Action: no action

The tsc2007 can be used not only as resistive touchscreen controller but
also as a ADC IIO sensor. The second use case requires '#io-channel-cells'
property, hence add it.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/input/touchscreen/ti,tsc2007.yaml      | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2007.yaml b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2007.yaml
index a595df3ea802..d9cb53e86512 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2007.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2007.yaml
@@ -53,6 +53,9 @@ properties:
       how much time to wait (in milliseconds) before reading again the
       values from the tsc2007.
 
+  "#io-channel-cells":
+    const: 1
+
 required:
   - compatible
   - reg
-- 
2.51.0


