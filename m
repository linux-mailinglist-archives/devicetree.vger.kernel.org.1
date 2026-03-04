Return-Path: <devicetree+bounces-271216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GZrFK9/qGmYvAAAu9opvQ
	(envelope-from <devicetree+bounces-271216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:53:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC2A206AB2
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:53:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23BAE3037144
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CAB43D6464;
	Wed,  4 Mar 2026 18:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R3mQQIJF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D8537EFE1
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772650227; cv=none; b=OETHislgbtbL1riGrM5kRqc8VdtD+mLm5Pqg3orzVD/TdxMTObKTb8IKaz5qzyY/ZnnJZQCyyiQ7LO5ZIbLICoQy61mcmoj+psipWEXnBUsKeuZoX/fvuYaocDLKaD4j5FJgOLSem8xBBt272rGVtszJRwN3bsqCMECIFfubYPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772650227; c=relaxed/simple;
	bh=RTUoC20+hs5o1NjiDj56CArTzfaT0BOQTJKMZ8k4DGM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=inPSp03DMAToA7RANl++aWNG2gzfjZ4D9SayjFjcAZRpJjltxjm+Ep6u/H1grwSBU3SjgVWn2c9VBEM5k6lEv0T4tPu1W38YX6ZUg1x44Gp2EAd4DG4hVIMFSwMJd8vn+ix4u/Q9r8wNHAKJKw9jOikKlUSA2IR3l6zEdAiFKeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R3mQQIJF; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-386fb2c31e2so132471371fa.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772650224; x=1773255024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZAFPHVpy9gxZCYrgCFG0BaQtK3S7WRnxsZcnxGpFCQY=;
        b=R3mQQIJFfI4EU6UxNJ+jyT+cLYAXZu/BREtH9gdlY5w8svgxM98se52CL4KLKmDsm5
         wNyu0skcaS5vAmw9UNN9AJ+ZIuSRZOneaPD4cu7WLP/6G/Fj54/WNM/lJCd7jcVeXecR
         VLEVZ/MUbyNfn86vsPZOOAMGiRfcs9+cV34ZIARGFeLfW84rYDli6H1ZxPtHglKcGOYG
         UOS6vx0wAf2EOcVHyE7d+e+MtFNR49ouSw/HFgzxx7noCi1LEatqRlRgAj/uHyqGtMB5
         fXKExJocrEVWdN/JW+Uxhy8pV1dHxncAPkcEjZBlqKa4DS9JQiMi+WErziMy9k71Cj+g
         iBhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772650224; x=1773255024;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZAFPHVpy9gxZCYrgCFG0BaQtK3S7WRnxsZcnxGpFCQY=;
        b=Q4mz9WRXJ1JBtYi0sQ1T5RWS3saGBhCLnmq8C1gQ+CsOwIeLu3/sxM+PeGsxJi5/di
         T3ONCiQbfaiV3C18tH0P/97cO8VU5F6O1RIi7vWU/eFL+kuEqutqAjHJVJPWoL6o4DER
         3zB4+riHG/x2OzSxOYxQKIixjoWQY2pS6k/I+D2efEidpuVJsugB0lNFL93OydJpNDD+
         PNgke7QKG0ER7XAiIH6EXBmm5fqMCEuonMZ53tY6lMLG/idNTyjlhcxIx1qgDtdLvQCS
         GhrrLzoq7diLr6d/JDlDFbzxDDVxgOPMPudyxAUhGsv27qkdKeV8Uf+u/bTd3LINaTQ+
         mSjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaajka24AKW+UvaRWwnW4h+Xeah1mlk0tL0Xf+Lq517qKq0GI6I8i6jmXs/qodtWV6HQfRSENBrDkh@vger.kernel.org
X-Gm-Message-State: AOJu0YxyRrzon2NMnVpyeXEbPaX6Nm9pRwJbg1jjYEzMymxJ3aZiNS+m
	nu1PVoFLRl3LwMVcVxm7fpbGg9yQ15RNFstTO9jeHG7LHDqr/riD79gr
X-Gm-Gg: ATEYQzzAwAC9Ja4+X2eoYz0O+mhTKPWP12XA8m4cv1F7Og7FzvkhaXKX7LBZ8icc6Vu
	1RviC3oTblG1VUH06ZQck0bDpnEHmduQQCxo++38rBGGmX/l/GwpvthK+oQVhekjnMkuDixULlL
	MofNlihXwHEK6BPMZyO68WD2FMXrKsGNeiutSKeQuu4PvNVePmskn61NQGtTWklppuMAsw7AvVj
	379No1VVhVnrxdLLKyKv+eGU9GgNaKrQcaX8JExAZBM6qLcumyo8DX4VG20Y3wX8uEA1zn8nJ/b
	eJbXi/Z+4oBFc6NnA/EMVo+DFESUU+103dA/jL0ZzJ2MkaL6wlNhwJk9JLqPGKENV8afKtlPDqI
	AAkzvLR+k1L5BmoC6wBtfwUdUoHfGd2LGG3fQJDugtEdI5fNkCrzBI31AQ35ZFPbAm3QbKAFNAR
	5IaevzCXtX5fqt
X-Received: by 2002:a05:651c:20c7:b0:383:1d66:c204 with SMTP id 38308e7fff4ca-38a2c9ee584mr16374911fa.38.1772650223495;
        Wed, 04 Mar 2026 10:50:23 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f30179e9sm36636101fa.33.2026.03.04.10.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:50:22 -0800 (PST)
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
Subject: [PATCH v3 0/2] media: i2c: mt9m114: add support for Aptina MI1040
Date: Wed,  4 Mar 2026 20:49:59 +0200
Message-ID: <20260304185001.82988-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: ECC2A206AB2
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
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271216-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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

Slightly different version of MT9M114 camera module is used in a several
devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 and is
called Aptina MI1040. Add support for MI1040 into MT9M114 driver and
document it in schema.

---
Changes in v3:
- state_polling > state_standby_polling
- added check for device_get_match_data

Changes in v2:
- dropped conditional polling of command register 
- switched to device_get_match_data
- cosmetic changes and typo fixes
---

Svyatoslav Ryhel (2):
  dt-bindings: media: mt9m114: document MI1040 sensor
  media: i2c: mt9m114: add support for Aptina MI1040

 .../bindings/media/i2c/onnn,mt9m114.yaml      |  4 ++-
 drivers/media/i2c/mt9m114.c                   | 31 ++++++++++++++++---
 2 files changed, 29 insertions(+), 6 deletions(-)

-- 
2.51.0


