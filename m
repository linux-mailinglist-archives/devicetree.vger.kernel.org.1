Return-Path: <devicetree+bounces-265529-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AL36GlE4kGkuXgEAu9opvQ
	(envelope-from <devicetree+bounces-265529-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:54:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B8813B7C0
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:54:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47D3E301C103
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 445B03164A1;
	Sat, 14 Feb 2026 08:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="fT7EEbVb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E47930E831
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 08:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771059262; cv=none; b=BxvKRHgKUJmXIlgKPL/V6J5hMqA/c2zzqKwsSYGYfruMvDeI5Xe2Tl3Fh+8JFkjqVoO7nKYqBeNhBHC9DMa+VzIKFJuPRdTlg78Duj2Udhszi2kIpvKU7zMeyuwAMjznWm6sZEcSCJsn2zdUrWg0OwXRFj+OJLXJvtxiQkd+egM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771059262; c=relaxed/simple;
	bh=RdUKvBSrgPbAiTzpfNlDyFsgU4NM298N1Pt6g+Sdu0Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mAfuyTCGKifeqinYVZOHjVgKwd1PDDNWbTGkwqyY1j48oRZHuWvKDw0C5TOH3alA2x+FXVZL+pYw2Tn64TXnfsaVeRHi7z7dXBunERnS1seATx4J8d3A6nqMi5EjLxK5y5/kZg2oScWxFL1TVY80F+b/D0pNLMveGEl3/aH01FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=fT7EEbVb; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2aad9b03745so8570805ad.0
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 00:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1771059260; x=1771664060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5wTwZEnEG/9Ds48VtKchW3YwASmIm60NJ9pqu+T/QDQ=;
        b=fT7EEbVbvUOwYZQpL62ITRhdxJXTGjM+Mp+72th9kKj+81YBq9VGTcOQJuLNB99oKW
         R7r1YgwRtNdNmMFtzsW3xa75W2LlA52wOOHh+0tBiWzoX8ygHZxrBN24MX8GpHfrHW+f
         qa4GGbSrF/N4+F96sQ6h8TdT9RPsM4uvhs55X06U49DZXXouUM9QQ4sGnl+nLpWktq20
         v1W+LIoG2vetGyqlX4JmNKKm/WbtKCzYJjkQeaYRlj2ZXrJLFiHHj6gw5qPowfutS3M1
         AeJ5pYiAOEXmPrcFAPA9zEbLuh4r7h+WV664CKEkiTDGdYjIC2kZ4lzA22u63VNQT2+L
         HTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771059260; x=1771664060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5wTwZEnEG/9Ds48VtKchW3YwASmIm60NJ9pqu+T/QDQ=;
        b=kJIhF2joLt8aqDDPfNC/LkfoU8M5ZsQJqY9WPRCmJZLSJs9ui6Bipb+W64/7lnu0AD
         S9CU12cqsNMc5CoJaufVVqNV3vQMMX2/NQvaesAsWPf6oYfbNwaMhnyQtaBpZ/fLHEQw
         HYAjf1opB2xUPaJuzN+XaE4S9OZd6kYr32HQFafZG90UW+3PqCmRIoUWOl0yKjYd4Gjh
         qWqyF4dlyQEUjN+pCNhNVNHtQ9hq2HAAggi1/wkTf7jGivnL73j0c970kz+6lqutkUz6
         /HEI7gp0XTPb/rnviW8lC0oA5Br2qc+FCayrF13iIwwHpf7E+s1GFHDnRirdH2p4537+
         LzOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxCtpfIBoRzYlHE8HEzkKXEReO+jhGVMqeZ4Vj4Ex+T/HdiHuBYZNDySj3POK5RgmZbr86XfZ5XeoH@vger.kernel.org
X-Gm-Message-State: AOJu0YyUD3+1VgCf2+c7yr8cJDFc3QhuFmQOWhp1KdVI0Ng/mb8AQqKP
	OSIfI48fRKIEgqSXm0Pn009+EGY/k5SSEsSbdA1ntDW+T2UzcbhCPLfNSWQHND/HRjM=
X-Gm-Gg: AZuq6aKgYjX5G1vdWEt9XnTMt6XfqmCcGgPm7NK+D6RH35MK4P5iYLML8CNiC+SiVk3
	NMsBgM85KK6xr2xsA2Ap5pyX7DDZ6evK8VAHZL0Hn15305p265F273/8j4gJ5KXWOq+09o+F5Vj
	3SgpZGKmTkb5J1jlSDs0IqyCPK1TgKxkQpsz8XwzzpNEF6Jd+CjooHhEp6aXYERhiIWME7T6wun
	OIAXWe5/j5OyfT09OgS2X8PHYCL32/A78ThGdl6+kk5sX3ip2hyx32d/OYOzIY77UuA6f8gEjrs
	SFwLOjVv0bMkIexvXaa756KS7uP304JXUrr9U3y2HyvnTo6uNahNhis0S60c37h/DqdRsCOYMGx
	tsFnu8u5y9CAIeO7GXXD8r1abXfwZ1q5pIheJLTR1S+DgYVYCxZ9miNHTl+dpi2hE0FPJjQmpHX
	rCTSItfuI8MuYoaaI0t5QLCSOQeaC+pjoKDMKwA+KlhEMj67U8dFCiqLBfm5zbl/e2YaVClg==
X-Received: by 2002:a17:903:230f:b0:2a0:9a3b:d2a4 with SMTP id d9443c01a7336-2ac9744558cmr28409435ad.10.1771059260505;
        Sat, 14 Feb 2026 00:54:20 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567ebc3af1sm10256622a91.15.2026.02.14.00.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Feb 2026 00:54:20 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	mani@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	dev@kael-k.io,
	kever.yang@rock-chips.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dianders@chromium.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor: add taiguanck
Date: Sat, 14 Feb 2026 16:54:07 +0800
Message-Id: <20260214085409.3489057-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
References: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.34 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265529-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: D7B8813B7C0
X-Rspamd-Action: no action

Add the "taiguanck" vendor prefix for Shenzhen Top Group Technology Co., Ltd.

The prefix is derived from the vendor's website domain:
www.taiguanck.com/en/, which uses "taiguanck" as the primary
identifier of the company.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fc7985f3a549..1856e455f7e6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1598,6 +1598,8 @@ patternProperties:
   "^synopsys,.*":
     description: Synopsys, Inc. (deprecated, use snps)
     deprecated: true
+  "^taiguanck,.*":
+    description: Shenzhen Top Group Technology Co., Ltd.
   "^taos,.*":
     description: Texas Advanced Optoelectronic Solutions Inc.
   "^tbs,.*":
-- 
2.34.1


