Return-Path: <devicetree+bounces-265071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPd2NavGjWnT6gAAu9opvQ
	(envelope-from <devicetree+bounces-265071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:25:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D93912D704
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:25:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A923B3063A2A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39DEE352FA6;
	Thu, 12 Feb 2026 12:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="STqzTlS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1794357737
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770899012; cv=none; b=jH7bfoTv8ix5RccXKHaGqcP/pNMMdz4LbKf/NaApaMElJ1gBiSnhNAFD98cMM12ONxu2YOqP2fnO+31c1316JTrZYYquzvEUGjrn0ufWgLIVsS2WkorQ5WtJhQ4URaNLX472hVewFqTqwl3UNGhNkRV/jVJ7RLa0lJ81LJjct54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770899012; c=relaxed/simple;
	bh=SGeG5Oc9Hi7+w3bjYA4BEFQUuMIm1BM7dNLIk/et/8M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WCjMYByio2GLHvurg/abUiNv9NOsdj7KOzQOt+FvuFyD08I15N9JiYHEPB2o8C8f+TYmWdm6pGvGuL/7pw1youfZFk7UcUBQr4tLrq26FSPZIYso5upJwauhpQao5dLnuROqUeHvokDq22EsKh2igaMPQDHEnYnkqB436Wb6wjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=STqzTlS2; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b884a84e622so1294405466b.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770899009; x=1771503809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d8YQzUIAiUS8rxddPlLKSmdZdg8Lpt3TKKcM7aSYoAQ=;
        b=STqzTlS2wtziEer8Sj/OXZ9KDwwtxfOWfIor7W9EO37he5g9E/drIbwWfxyvJmmlJV
         +/4KT0A0G/HjfpyBb7nzATgHOb05X8JFQ/oPNNYaU+ywUz/w1RP8eMgUh/RiALwyL1CC
         05pD2NiaLt8BNsWByqcQZ1CLqHDcLSoPd+sQ43WfiTIT1SryMKw+iZK/Ox1JCj9ez6qT
         d3qxFYkBActmFOJxPT09pNMqlMomibVhVxCrxXBVKusw9E9pz8o37We4JxHh5QZzWCD3
         uM/KeMqaMrq4/EI+xaiEkDgS9txQQnH8Oh0mBGKIbJpsy9a7w1vrrp4T7SzmNQSGPc0y
         etMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770899009; x=1771503809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d8YQzUIAiUS8rxddPlLKSmdZdg8Lpt3TKKcM7aSYoAQ=;
        b=Y6LLb3sxrv+ZSmGYbURzMlLXS7yR4e2RBzFmae7P0sqjSw45xWqs2ftTxLW5ScgwEV
         DpudTzOBxyEtVRURc2wItOR5P+vOLCUFhrAo4bYTEkAY8tYu81NqA/Y6jBor+MYzdDIQ
         PuJLLY/6vnyjDrKQEb5Z+/5RdT55phpwRyhaiMgVkhXFM+svRVmGmsdKaJR1x2C9nner
         jtdk0pMQWLYHwJF1rlZBfB8BX4+asSnKHNjIUpp8c2IIgFNqRGGsN21L7Fab7Puopi6h
         12G3tdP7jg/yuC2ENhB9SAPRvIJG3msYEXaodWRwGqp/XlaDP+lcY4Nexd3tflES0Dv7
         oQjA==
X-Forwarded-Encrypted: i=1; AJvYcCWOpSoPUHB9RuowuKXIbhztgjWHqAdYiDIbpALyVseA9176Otb4cfA8FTQRdMfedGIsO1tGJa1YHYxK@vger.kernel.org
X-Gm-Message-State: AOJu0YwClIkh5c823SOsvF9eiacOwCNSzzLLfgN1E7jLaqffslW/INYB
	5RYZwyCnTPw4/u+aJM7x5xRDPFXO+OVUMLZBOZHiKoSSv8YzuPsztOlj
X-Gm-Gg: AZuq6aJv8b+J1i7FSIG06LqQrw2MxAAGhjZlPx+IY6y+witwOGNDozDO6+wYtxNRTyY
	3jhhOztqpOI25EwGjejBHPKJ5AJbj4/lFbncwTKqT6xZTlVurCHNb2Q7mdDU/xqq3BAYKK1Q2G0
	b1HerojgWcFob3+Xp0/KxWLyDPDiDTgP8IVg7SKLZ+IO7LSO3MXfB5a+ao3ES69KBmHLTMNmcF/
	kjeztNU53bAhPLoJbGt+++XD5D4++R1NnMkeO8K/4GhWlF0xKNoXA4ZsocYNCWzTMXtHN6IWXbd
	280S0WhZAaWud1C0gWsjmvMONnLZRVCDnk1Ux4S2AGQ1FUjzlD6JxkqpqkihN8aJkZWrJpSRldz
	Q4DF/hPDu8nlOGKUts6Std2TIyn0Psz84lGWkPb1taPx/MSbZpZR6A5DL83ena8Y4SrhoUNfLwt
	qt3EjSiLJ7uz5Z
X-Received: by 2002:a17:907:3f96:b0:b84:1fc7:944f with SMTP id a640c23a62f3a-b8f8f646220mr135961366b.45.1770899006887;
        Thu, 12 Feb 2026 04:23:26 -0800 (PST)
Received: from xeon ([188.163.112.48])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec1c753sm155603466b.45.2026.02.12.04.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 04:23:26 -0800 (PST)
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
Subject: [PATCH v2 0/2] media: i2c: mt9m114: add support for Aptina MI1040
Date: Thu, 12 Feb 2026 14:23:00 +0200
Message-ID: <20260212122302.29211-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-265071-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 6D93912D704
X-Rspamd-Action: no action

Slightly different version of MT9M114 camera module is used in a several
devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 and is
called Aptina MI1040. Add support for MI1040 into MT9M114 driver and
document it in schema.

---
Changes in v2:
- dropped conditional polling of command register 
- switched to device_get_match_data
- cosmetic changes and typo fixes
---

Svyatoslav Ryhel (2):
  dt-bindings: media: mt9m114: document MI1040 sensor
  media: i2c: mt9m114: add support for Aptina MI1040

 .../bindings/media/i2c/onnn,mt9m114.yaml      |  4 ++-
 drivers/media/i2c/mt9m114.c                   | 29 +++++++++++++++----
 2 files changed, 27 insertions(+), 6 deletions(-)

-- 
2.51.0


