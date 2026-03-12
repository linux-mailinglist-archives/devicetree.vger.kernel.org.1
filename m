Return-Path: <devicetree+bounces-274550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ME+yFGupsmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:54:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB17271517
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:54:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68C0830BBEB3
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE13439C017;
	Thu, 12 Mar 2026 11:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FkyYbbL7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C07389445
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773316402; cv=none; b=fOH1tduyG1FIDG6pfGdDiLmsnbdkk2Q2g/1e6oERf8HSMbDPtKb2T1T0ub0sLIaYnFNCdEMgUBSXzlE42cYPGzVNp72TMgv3MEuRlYTUPnpwByrQPK5Oygsx/Y9pizLR4LNtFjoQPJzcz2tkxgmJ807BVvZUyUnGKXpvHkAFvMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773316402; c=relaxed/simple;
	bh=2iIh6/jj/6H6G9sjbI72U6v40DlA/kmaSOoZzH3A9CA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TVaIXIHJrgm9EpXBUOPgVj2TJwe+lkY6qd44wqMojmjfuxMn1H+7+7kf8tEH8nmKFTBmnQpiCyne8b0VEbxeu0q9nHAPERQmz/D1IoKj5r7n5KrNTxin2pS9jvcAnWgWP0U1BWxRY0oKquip4zfEAcOt79e5mfXgSkoxdz1jm/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FkyYbbL7; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439aa2f8ebaso601333f8f.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773316400; x=1773921200; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gk8qVbjj9bf3D7zS5clldQ8atXUlML3S3z10DBlLuFw=;
        b=FkyYbbL7aZoySwQlbBWia42i5HN4GslFA78IhvI6pIY+6+AvbjC3AItvOu/Pev3iNS
         WmLqRlhsTE4yMJSdFXvWI6xt5q1ibXqyuMeTfFtVWkLGSc1JhRDVz9qiUJNlm1p+hmgR
         x3kk+0KA36ukzsm4I0rKPqwTWfHSGXD4Vfo4kq2vyE0f5AEm32EM5Ln3DwagqGAiBTGr
         SLiM9Bz70dahF3Rm2aXvgtnb8yu0QHYXxxx2Pm/LgdF+X/TD8rJfaMY9tAsp+Pj4Tu/h
         4jr60MHL0vNERXC0Wr4BXE7p/lwxbc4Mgo4egckQFTdDLPVSDztgK+kZyoUEuEv/IDfh
         Qprw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773316400; x=1773921200;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gk8qVbjj9bf3D7zS5clldQ8atXUlML3S3z10DBlLuFw=;
        b=wfsP9aZHpYpFKWDfwKe4kscazEcNUp3JmpbvbvaeyTo9NezRB/komljScEqa1Rgs7o
         XqpLfLR9OTBzu2Wh7rz/JhTzRByxyYkM2poDvFIxXH3XuMnfuvkQBqKC4UFHt5ZzvkcE
         oMvop+PZ/b6nmJ5kcgMkrnV3OUR471CCbbFNAbc53w+K9pj+jFLWNfq5S566gu5ANkYB
         5xqaYe6Spv1ekznRh8e85Hnu791Gf+F135nym++jC4h6TKWv6SDbdL1qHlj8YDf5zU+p
         +e/HGDMRJ3ZXinvn8ypQXb51CdNDMl24hRgJcYAmPcavjsyR0dReNXd9u5asPHoKxnrd
         jxKg==
X-Forwarded-Encrypted: i=1; AJvYcCWvbNo1qffnTKLa5ShMP6gmxzTTRwl1JthskjqVKLDZNon+fU+zFIztEWc3hmoZFQrX3J/fSZBHls2+@vger.kernel.org
X-Gm-Message-State: AOJu0YxBz4sGjG5rcXUtfD6RBUXPfXePiUYxBEXCRoMFYFWH0RrKpK/9
	XAwFITavyZIatTqavMHQnLSUFz50sK4AeaSvmlvVkAuY8USWIJ71iD72
X-Gm-Gg: ATEYQzw7sCosUQEjVYKsScmNZZgp2XzrEDwV9S6a4/mcN+gA5MjsYUPUStHEzXjRWpv
	YkikZwe3F7Td7CyONwp3hlsrYVnyAP05hW3bn0oMs7KrYK7N9qnwyWY2Q8lw+d08l99WKJ7Kq3x
	Dy/NoLq4W30DzeVD3Nz75eHOwcqiGVGUWUBIrXxnz4MeTjdd7FJFa4ODKWONIGLXfi5HEdwxad+
	mbkhREpAIfe5zGcrcrdUICbLhqTzWpjo1S6f+rI4DE3F6IfE+CoEM7uZ3uLDpjuav0S7PTVpzd4
	wbrRFDzIANCIfKLbbjKJbkfhh8bmGEB62WHxeVNHhYXHblZ1YU/7JdohmSGob1GOfv6G7/YbEpf
	Q8brGlr2U5LJTGm5uuKFqzGhNc3RGnzFvSWx3BJ8WvwYJdXTFd0O/V5F3TWh9+5yI0cORY64JsV
	eYJKeeuDq0lu5FfpOLnlva7SRvqw==
X-Received: by 2002:a05:6000:40de:b0:439:be86:5051 with SMTP id ffacd0b85a97d-439f8415d9amr11408103f8f.59.1773316399868;
        Thu, 12 Mar 2026 04:53:19 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe22529csm7044960f8f.31.2026.03.12.04.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 04:53:19 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 12 Mar 2026 13:53:12 +0200
Subject: [PATCH v2 1/3] dt-bindings: iio: light: vcnl4000: add regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-vcnl4000-regulators-v2-1-2bdebbcbb58a@gmail.com>
References: <20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com>
In-Reply-To: <20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274550-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BFB17271517
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This commit adds regulator properties for vcnl4000 ambient light and
proximity sensors.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
index 2ba4d5de4ec4..a1b4c02db246 100644
--- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
+++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
@@ -33,6 +33,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  vdd-supply: true
+  vddio-supply: true
+  vled-supply: true
+
   reg:
     maxItems: 1
 
@@ -54,6 +58,9 @@ examples:
             compatible = "vishay,vcnl4200";
             reg = <0x51>;
             proximity-near-level = <220>;
+            vdd-supply = <&reg_vdd>;
+            vddio-supply = <&reg_vddio>;
+            vled-supply = <&reg_vled>;
         };
     };
 ...

-- 
2.53.0


