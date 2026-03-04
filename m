Return-Path: <devicetree+bounces-271217-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMHxK7V/qGmYvAAAu9opvQ
	(envelope-from <devicetree+bounces-271217-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:53:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 154E7206AB9
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:53:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D0B4309916E
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600393D668C;
	Wed,  4 Mar 2026 18:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gdbegZ+q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B473D2FFB
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772650228; cv=none; b=nrL7ZNMlxMoFtk5vbfXcuLdaS5vEnsSWgmSq8lva6xo0y12mQJ4iwjpPztf6IL8IeM/FTlfBZgBoezAbeMmUPUJzmt7sqtpgpAYlyLzBmJZ7QRBZlT01d2A4Jjy+yDn3lGFkCx7AHX701c3gV/Co0DvgdD3OuQzY2KWx8tKTIZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772650228; c=relaxed/simple;
	bh=CoeSUcu5JKP2vlIyuq71hLdki8LZeHARqdF+DbG35Tk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b2+SlS1EZbIYFn7dOMCRkiGMSC4PhIalyJQfSeJvzxCrfJbZai1SEd0U/oD47s/eEzRrpUmk+F5xbmSyY1jL0BxmRZujklKLQbOBLxAoGJoQubRVNCZbGnzp6Z0+oyTHI85j7moTJpmp7rxwIjg5SuLx5fCD15TFcACcOfJqPTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gdbegZ+q; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-38a2f196cbaso14417651fa.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772650225; x=1773255025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GcDfVsxOaZtMJ1kOTr1x0s4TukCtP+zyp2wxcrrzJwc=;
        b=gdbegZ+qc5hmNjpKXkQdl3QD7D7SSXs2ZqPrMc23J1nJB9k3bJ2TKVeQI7p2Be1TPk
         IP8vkYi+2R/nhMbmzKS7Bwr5DmLhlwAWdW6vg2SkPO9U08CvuumAKExpWxhzc8OBmWnf
         JGG3Y+1S24JF2ws9WE7joZaSdAa3C1j0GRznpokZL+DJyDDwyZDtYn43JLIMy/rW38ze
         H6S9l1kSOlY0YLXzCGBxq/+q7y0jetsEZ8wZbbHd8AHHyqGvgdBwo9lZNNGKz8YVBeaA
         WGG+HrYvLcByhaiQI+uJc2zyB0T6yRDGWgXU5o+rhBKO6TpBoPG3I+HcyY2bQH+EpyEy
         EhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772650225; x=1773255025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GcDfVsxOaZtMJ1kOTr1x0s4TukCtP+zyp2wxcrrzJwc=;
        b=Vmyh+C8g+urNxrnQd0QSko6hgAFYgD6mmV0d/m6fry1jiAzkgiCWC+brNgj7qhECyT
         gnvtkYChXD2NzEizTRWr07TpLX2AwArPR8F4jZYrLMce6nFEXJKUWAY+/NYpi6OfsTZu
         5XjynpwNU8VcNq6L9T2m0xjb1GYAjC0GKGDA+zQidydznub2nwH83alCQPII1fLMlPPq
         ksB+uxgfbna3Acfj8ZWN8w1j2EzREkLz6aclAlx+hG8UFTyABAbyr5QRNt0JjHm15obH
         XKLUbg9LU3UrwRrDrNWraPhHZScQrWFCbE+2yYnrii3PF+FpqRCUt/vcEQ80cKrVt8op
         1/DQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEVArLNFNFAR+cyhhGjjiVYf0z9zYM96+ljIdfSTlMEtfpT+7IL3HX224swSOgNyOjyYFw2HFDkT5X@vger.kernel.org
X-Gm-Message-State: AOJu0YyWam2FPE/PDVVKwYMn828EtB4QQlr0/1XxQ+gQtMs2WTWk7N5w
	XA/lcO4L8f//x/vT3a8wiUCalJ/H4jM7Y4Adrol5Za3v99+ef0x16Vjp
X-Gm-Gg: ATEYQzxEUl5/qndXC8AsKNJNtdgeV+4Yb86Ek269VmDsE7WVVtEzLGjDRksK1cMTFjF
	fB29uz9MdjbplcOfPyIzpTf6TGzrvfAo7UK4ewpwXKvBi2qAhvcZYPRE8WJ8Us1dx39gvzIQ/dE
	VZkkvqV5J4pVyIQvzWJc6Kq0UU9ZtE0E2p6MsGNjazpW/vJOmSbphbneJFzET38zG7gnccwEM6j
	ooA+kYIv9EsDu4/npssdg1TQryng2J5wBdTIdgdk6Y/2X6d301E6XOdeDFJObL3jYGFo93RlcOI
	OuFJ19w8xbyB3oC1GaoAwxSzUajpBxXFA1mliuBu+dHiaI0HbclkKGJab5D5aGAm0O1T1oPLPIh
	xjWTIlLkKdx8SLVf1LrZnv/4/4BlN7YwV1Kfj38lg0pJMb0h9MyXPB+y54iy9stZUYwndq8QPEM
	ED7LZH/JMVN2e8
X-Received: by 2002:a05:651c:440a:10b0:387:20:bdbd with SMTP id 38308e7fff4ca-38a2c5baf27mr21840811fa.19.1772650224971;
        Wed, 04 Mar 2026 10:50:24 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f30179e9sm36636101fa.33.2026.03.04.10.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:50:24 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: media: mt9m114: document MI1040 sensor
Date: Wed,  4 Mar 2026 20:50:00 +0200
Message-ID: <20260304185001.82988-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260304185001.82988-1-clamor95@gmail.com>
References: <20260304185001.82988-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 154E7206AB9
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
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271217-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Aptina MI1040 is a slightly different version of the MT9M114 camera
module. It is used in several devices, such as the ASUS Nexus 7 (2012) and
the ASUS Transformer Prime TF201. The compatible "onnn,mt9m114" is placed
first in the enum, as it is considered the default compatible value.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml b/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
index dffd23ca4839..e896f4db2421 100644
--- a/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
@@ -17,7 +17,9 @@ description: |-
 
 properties:
   compatible:
-    const: onnn,mt9m114
+    enum:
+      - onnn,mt9m114
+      - aptina,mi1040
 
   reg:
     description: I2C device address
-- 
2.51.0


