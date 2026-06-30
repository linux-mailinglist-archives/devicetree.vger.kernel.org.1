Return-Path: <devicetree+bounces-317818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GOY6KTLGQ2rShQoAu9opvQ
	(envelope-from <devicetree+bounces-317818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:35:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 221786E4E89
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:35:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=aveCoyRz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317818-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317818-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 600893112CF0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C25FA423149;
	Tue, 30 Jun 2026 13:29:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C967421EFB
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 13:29:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782826166; cv=none; b=dB3wal8G+g888PP4yVy29jKBVioEhZg7v9gcfCofsV2zEImc9Ah2HswBWxS57QAgaSfPpmK/FSeGMn8Ex7FFUUpzY5YGB9md/Q2tDGI0kltLBTqhTLWGG74f3lgv+gT8UpIN/d87sairLVRqXKVmLCC/xRoLEVwRTg41rCrG43I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782826166; c=relaxed/simple;
	bh=1jYHfBZ5v/zURoZ28SDfcz+g5I/GvgjfuChnVD+R+GY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=H2xHRj2BrxBY13+f8CEs/VVM/hY1gWDMJpq7PEDur+cSzDEOA+8S/rav3WoJsBtFWNOPQSSpy3PjV580CTkoOH33t0WOtmiVcPYtV9G6+tUOjn6vI13yJHq3UFDyHtn3vOnll5pC7acz8/xbFkDIvg2cSIC3U93UgBAmugPpkRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aveCoyRz; arc=none smtp.client-ip=209.85.221.47
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4758bd3731bso553358f8f.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 06:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782826163; x=1783430963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gVr02XPdPojhLzYayj+MuNGvSbrZFpz/kS5Ho7Wv8Mo=;
        b=aveCoyRzvZjjaGTe3JidA0yPS8QZV9VnEvzmWTu7yTgJLU6zrP4upITW2QqRmsfn4m
         D8fIyEoD3e+Gh1C8cEJMjg8fU07T8PS9udHBuflc4ZzMJJxPHG2q7KW23H5oglATmif/
         qu3Yko4C1dxS9NSX8352jFx0RxdzELKvz975yZhYbBfiyhEtV3uR8rYmCZI25X3Mjyf6
         fpo5YQ93S9ojSeo2bANxBqyiKngrFomWEwwE2fG0zzb/OsMIcjMPEdYCBxwnkV7/dkEM
         n68Q17oWeRLLbxExDKmoZMOVBuL4gUv+oG8YbicW/m+6252M8of05gxjJ5JwzvPc9N5Q
         w3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782826163; x=1783430963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gVr02XPdPojhLzYayj+MuNGvSbrZFpz/kS5Ho7Wv8Mo=;
        b=nZtAPXelPnGr7LZ23uXBlcTWUkBafVC4lGAL0cESFXWJtTPidRokN57l3kEkJQtyOK
         eiwk+WzRQkkvLIFmI2gvDL96hjcsfP5E+GQjp7UggjIRseA6+cVigEtIxlKdvKBNKhB7
         p/mwJLuhEA8noPhJ/a2hEon4zt+pzrTkRi9qEVItrJIuRUVPtFmLk/8t4Aeo5itEhHZf
         pfwWDhgi7kJRGn/apVf8fNUp1WfnCINJi0a/GA76zg+/tiG/a0FkoF5+vrEZaBzoX010
         pv4Qopss6EKiNccl3irFX7ZDtK4TM2zD1/AubKvVOmHplnvU1pQYYV6Cl5mR2JqKuoqo
         J1Qw==
X-Forwarded-Encrypted: i=1; AHgh+RrD3CEyvdfUxpzLDzG0JGL0KjtSqpZuoHEM1P/G8RqwfQeJiC4HHuGaoELHlOGcl/afxSc4rLOo40ZC@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwp8XHdKYDYuWAc1+YXUE/BKUXBq+e9QddMpGeOXAuNeszeGgG
	qiZQPhPkw8Zm0+DgfhtjKVz4f20Y4+/Er31/TUsjLx/S+XFWnxatgTwm
X-Gm-Gg: AfdE7cmMiY7qdvpbebokU9rWjgXrcERxw+GQpIjwiKuJV0aLlPeGyhp8ugKV1Z+X+Da
	p+7rVt+6OSsAE0kaCgPt5t2/TNfJLY8wMv0SxuWspB9yXmshk4Wb6q017fA0d179GH4dS9VDbdr
	t897GtVvViHGxytQmhdTFaKciD3eecDnUbmo2zXcEkhFJOKM2RCa0My3Yz+lvzO795ltm4j54Wt
	l8iwMTQAv6zwBWcYRiaPdwhnQycdRt2fFDXTmbPY5ILuw6CCDj8z8gf5v0SEEJz9YomzhC+Gc7k
	voyiDhEAJlWbQ0iWDsFZFZdnxVg8y/OA9iYNXZUnim5Sxbf5BWlzSP8hcDp6+IYKN9ZD7wIt8f7
	MqI223FXAwOud/zPtDkaePE7a+72HhbZIGMOgReBp4ffGuPzsZFGp6Xkd3Lq9tYZaytJ7AzdgUK
	AWcQJ5SZKbusUW9g5+up2b0tqCQ7mKZiUJo9Bs9w5X01Z311YPv0syPTne2vEc1zgg
X-Received: by 2002:a05:6000:400d:b0:474:8dbb:ccd0 with SMTP id ffacd0b85a97d-475dfa8909emr2660914f8f.19.1782826163485;
        Tue, 30 Jun 2026 06:29:23 -0700 (PDT)
Received: from localhost.localdomain ([82.77.79.113])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-47566743895sm7913706f8f.25.2026.06.30.06.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 06:29:23 -0700 (PDT)
From: Eduard Bostina <egbostina@gmail.com>
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Eduard Bostina <egbostina@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	goledhruva@gmail.com,
	m-chawdhry@ti.com
Subject: [PATCH 0/2] dt-bindings: arm: omap: Convert DSP and IVA bindings to DT schema
Date: Tue, 30 Jun 2026 13:28:54 +0000
Message-ID: <20260630132857.3007019-1-egbostina@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,ti.com];
	TAGGED_FROM(0.00)[bounces-317818-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:egbostina@gmail.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 221786E4E89

This series converts the Texas Instruments DSP and IVA
Device Tree bindings from text format to DT schema.

These conversions are grouped together because the IVA schema explicitly 
depends on the DSP schema. The DSP is defined as a child node within the
IVA subsystem.

Eduard Bostina (2):
  dt-bindings: arm: omap: Convert DSP to DT schema
  dt-bindings: arm: omap: Convert IVA to DT schema

 .../devicetree/bindings/arm/omap/dsp.txt      | 14 -----
 .../devicetree/bindings/arm/omap/iva.txt      | 19 -------
 .../devicetree/bindings/arm/omap/ti,iva.yaml  | 51 +++++++++++++++++++
 .../bindings/arm/omap/ti,omap3-c64.yaml       | 32 ++++++++++++
 4 files changed, 83 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/omap/dsp.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/omap/iva.txt
 create mode 100644 Documentation/devicetree/bindings/arm/omap/ti,iva.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/omap/ti,omap3-c64.yaml

-- 
2.43.0


