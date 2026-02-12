Return-Path: <devicetree+bounces-265072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cG1gOk3GjWnT6gAAu9opvQ
	(envelope-from <devicetree+bounces-265072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:23:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 674AD12D6B0
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E38F9304805F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F70B3587D3;
	Thu, 12 Feb 2026 12:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dMmwb6qw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC588357A41
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770899013; cv=none; b=qh6AQgHEV+hb0Do0V000TLBOruq+VuogA0PsEOp+niWb9usf3lWBjYAuPIuwUuj3IwqDrX10btcaoaPtHhVUuKQHnRKQd/wBTyPK4xUjuSzRGD02mEhHl2O+7IwwGZhCvaLdaB78sa87Fm1MJbi1Pn6MKfIJkFiaGbT+HXv+QtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770899013; c=relaxed/simple;
	bh=CoeSUcu5JKP2vlIyuq71hLdki8LZeHARqdF+DbG35Tk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WqxiyufX47FuMQ9pRI1RY/6xnzUzHz+bSyAINtiDSdV9XKsmiNCQSyp1ZH1AFNry9C23TfpOd9tLnB5MP0hAQ/ord+sSgZZ3V9QwRmDKo9tx+ZI3tPn+5dwAy+GyLqjY8tWAK8EUGS3ihtfgFJsauvch7BVBCtPux3EKvNI4Ld0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dMmwb6qw; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-65a431e305eso2782543a12.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770899010; x=1771503810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GcDfVsxOaZtMJ1kOTr1x0s4TukCtP+zyp2wxcrrzJwc=;
        b=dMmwb6qw1QgWBYOoFlRckOseeXiIgjvfS62Pj8IMLs4oXZZQVLrbh0FvKcIUxc9I/L
         PRBWFRLFNeITe6j8s3Os2xE+330lfVpGYQSntwVDf9c/KQby9EE3T+C3UXDDXGQoqAtL
         vSgoClyc888c5sK/5RmFr6OZfPoWSg+sx3DuR8x1lOXUxfwYPeD5JrewfDotPQ/lR/hW
         hvrfweMMREAB2hVfTgj/pcETW/rLafoIcw2TQKo9oyEHp9X0SMVCxeJTEpeR26pHOMBo
         HCE7yRqAGMJ/UlFz3B6oucTfmldGjGoPi9RuWldxLPCy6woIg5a/v4w3rAyWJlS3RZMT
         Lv2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770899010; x=1771503810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GcDfVsxOaZtMJ1kOTr1x0s4TukCtP+zyp2wxcrrzJwc=;
        b=Z2KK1pYMZTU/qSvdGluN4+A+kWzC9N392OqJUiBWJNglBTXNlr9pL+72fhPif2PT3j
         yTUtzb0THlUhK6kR8G+6JtkbF3ySb8RO1dyif5wI0djvZkn72Rn4hW0Zv8As4ow9AAUt
         PAnrcsMA9HmwugGao2mBY7c48h5VJAaJ0qRr4IstFKewHO0/kq+lbiMNyLowmHvoybKm
         aSxuTEWA0hUFr266rTq0qLVUKatTSZQK4UqJU2HxzE0OPD/iusJ+iUuk/KfRX0KWrSjG
         gjlzGwLv3m6cVB3cYnnMOO6PCrtZQvURQAYjadA+vUTGKcuma3PXIpjRIyBr/0N8HT+j
         Bxeg==
X-Forwarded-Encrypted: i=1; AJvYcCWpVuLlK9dBUut4sMSrx107mv0EYNWK5Wp6sl9NB0Z1BalCXg2Gz/Og3WvccYkenDMhy+66oC0ByhyT@vger.kernel.org
X-Gm-Message-State: AOJu0YxCb/XY4VnEnY143S+X7F/sQkCbKWtP5l4rz3rRi30Fus/6p3/H
	LHIbYLZ4pbS0RykoH+lK2VQPlNX3sOVjuUQEuOii0DCkIGJyX9k8OCEH
X-Gm-Gg: AZuq6aJSXhxBQBYOmv6PJr0sfg+ewJKrBhCEFbwoipZkQeWMx9PT5IirwyRMtCo7FUB
	3zwBtnxR5AGcr8VwBJriVxTZGEsHMkugxoYtbxy7kMzl+6Zn5GWQlEf8b2GAUnGlzBSEsb7nGt6
	DGtIpUqcMpwZze9FyZEa7bp/JyWO20LMMV+Q+UhM5uTPakwEQyhXbloemBM+U49RymgDsPf35s+
	uEg9eJW3DagxuYHQKo7wzFDDmbU5u6jydasO8MfjHTkUmcOBYVbtrSASZAkoJbe2G4akyYmThkI
	Qkgv+1T91kluarVG/tYDIf5OXpr7H1IvedOjG2q+Fn3zR4nk71/iKQ0QYKWabppkZ013JoFgfi+
	bC1CbZF/voXbM6j86eJz4KFhKDpAueud4BVuLfVP0qCw/EYr7CKtx8vu+ilxnFTE7DwhOhPpefg
	aVI6K6KKZD3ubU
X-Received: by 2002:a17:907:3cd2:b0:b88:463e:b55f with SMTP id a640c23a62f3a-b8f8f3d85a9mr142911166b.6.1770899009817;
        Thu, 12 Feb 2026 04:23:29 -0800 (PST)
Received: from xeon ([188.163.112.48])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec1c753sm155603466b.45.2026.02.12.04.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 04:23:29 -0800 (PST)
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
Subject: [PATCH v2 1/2] dt-bindings: media: mt9m114: document MI1040 sensor
Date: Thu, 12 Feb 2026 14:23:01 +0200
Message-ID: <20260212122302.29211-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212122302.29211-1-clamor95@gmail.com>
References: <20260212122302.29211-1-clamor95@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265072-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 674AD12D6B0
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


