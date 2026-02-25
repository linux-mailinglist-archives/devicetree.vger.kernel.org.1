Return-Path: <devicetree+bounces-268098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bfbcGdxLnmkfUgQAu9opvQ
	(envelope-from <devicetree+bounces-268098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:09:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0093D18E8A8
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EA163040AA3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 01:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F9223D7CF;
	Wed, 25 Feb 2026 01:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ROFGp9JQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E381EFFB7
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771981771; cv=none; b=gHL5BgD6S77WB33Rkcq8JzjrkB/iFlx1q9o83dT635p8Jwzl9WkiWhUb20x2Zcs5+zVb6hMofo/P3iHeJt5iT+jOOTlCKHRJo8MkFLSFqZ+4bSTa40JpJk707b4rYEkTA38s/rLX1QIXou+XJ/3NBReb6h3du/WBQ5nyCZEJqcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771981771; c=relaxed/simple;
	bh=RukPKz1Tt3CmlbqbIlMxFcr4FTZWd9Ir9RojSVsJO0U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QcwJfs/IAENFOL3gpcN45Ow1hjrSBPHkjQZ2zyndWLw7ocNHaUJ0AFZWGFQ43XFHgSy91LgwDPxW4Po7FvkyNq67PV8XfEL+RaMWjaIpfrIF4cHvj/mn7DRDvqlKwdE2Y8r6ftEo9xXKwNwyFUuu4wHMZ7S2m8UXmHcGsvmecnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ROFGp9JQ; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2ad21f437eeso2944825ad.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771981770; x=1772586570; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eM+hcX0WJiN8fwhNPYgVInvSLdtAH1Z3iHRCYxgcmmc=;
        b=ROFGp9JQcazEPd0GoqDULp/04mWYCvMXEdxRJ3dU8zUQ51Nnj9hLrHDjJn2mkqxWUR
         DyhFrvpVODNcXrSVD1kmM0kEvucb42u5niJI1bOU0KnvdXnzgj4qWhe9jPtuZremD6J0
         il5P1JVf0c8qd1+Fy5M/WWtLs82WRq8DZk7TsDDMjc3pPzfa678X+vKp4RBB9Sf/UMfD
         eHYUg/A2uIjQJWouduSlsSK+wB2xcbqcpwFM7xqQriuT/Xx/MO6kXFWrxndO8VqkoqON
         iLMeXCuSRVg1fMjJlgJp6i7iXcwYb9GGGvWeFiwRMKqqIkaj/LkT0Ir5/Rmy3xemwYhO
         YYYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771981770; x=1772586570;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eM+hcX0WJiN8fwhNPYgVInvSLdtAH1Z3iHRCYxgcmmc=;
        b=RICHMFjU4Ec5cOiLeq/MjLMb1xIELL7XRmw6hkauLE7mmZiSPc8mYNpdFnS5wGqdNZ
         sOVxcj4Qt91NcFkML7iuRyUZeaXRrWPNolr2O1XYknByYIrtprSQ7m42ifJSqbZSuXNp
         NmECRRZTXrY+BM4lr+xUhokr7E5zzxbpHIg5ilL60pw2e+WUMg2+BDhw+P7yvHsJ4slU
         fC21ghQbq5lrnNF+6YL+h0veDTXAAPXwsQKbFU+ocmTU4f5Q8czZWcHfQiJ6k42v6wyD
         VdUdyvQcUAUnNZyruJjUT9HOSnq1CoLvNll1dReAe1kqPF0oKeCzraMixu/Mt6UlrNTQ
         vg+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUjcgAspxEmPITivaIBonxbzd0glU4MOf0gfHzx5cNkzGdqFt77IqEquhWh9SEM3RD6IasXdZb7xGtu@vger.kernel.org
X-Gm-Message-State: AOJu0YxwlrFcE4TlLPsKwTaM8DS2oXddsM0LRRrG8Im19fp/40IOWKCo
	4G13xV+YpFTYAAXbwQdPDKBVH6h8BJlua9sbXtcogrF9z9iDCy+hHBZMg0HDInpOHRGTnz27
X-Gm-Gg: ATEYQzyNK5E31786k6DHVhs39gFvaC22s2qifS+DzH1M+qzXH2xbzLHvSJYhOSoc/5x
	UCyjQVBQMsV1pJAht6zFUHnrdD3h1SqDug3XHlBKIxT3V96IqDZjAZmPt0HQmp965KhAVpRrQnX
	c4DX4qa3PZX6GYecMQcjyKLwcgCtgBcJBjVaiRo6INSdHMY0Q2xzPW1lJCSMETSfZP2/fzZ8ksU
	qS1rLhTaXvdDK5HpLVf2sJ40SwYxEfo66uZ/xXOcL3HZ1rPMgzUUuhGYI3Q4verXgaQFgxAKdqV
	OmbjVX5zNjyik/BJOxyuKH+KzeQ8JfVnliC3AeUXspNhxAlwOciZDWSXWlR9YO+l02BVFJ4XNxO
	4Gd4bt08CF1jn/zLeHJfEpGvOHN2fMg5xwj5S4kO2TeohsFvgUhEfD7Ms61hVAl2yyqkUXMJbHP
	iFRB21V1+ci6qmeYUaEQjWQ0yS7kNsqaw/U1o7v7i5doAf
X-Received: by 2002:a17:902:c946:b0:2aa:e817:1bda with SMTP id d9443c01a7336-2adbdc8e34amr15003465ad.12.1771981769944;
        Tue, 24 Feb 2026 17:09:29 -0800 (PST)
Received: from k.localdomain ([120.229.13.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f5e0f2sm119350245ad.31.2026.02.24.17.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 17:09:29 -0800 (PST)
From: kanadenadi <kenadicanady@gmail.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: orsonzhai@gmail.com,
	baolin.wang@linux.alibaba.com,
	zhang.lyra@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kanadenadi <kenadicanady@gmail.com>
Subject: [PATCH v3 0/2] clk: sprd: Add support for Unisoc SC9832E clocks
Date: Wed, 25 Feb 2026 09:09:18 +0800
Message-Id: <20260225010920.757793-1-kenadicanady@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.alibaba.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-268098-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kenadicanady@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0093D18E8A8
X-Rspamd-Action: no action

This patch series adds clock driver support for the Unisoc SC9832E SoC.
It includes the device tree bindings and the driver implementation.

kanadenadi (2):
  dt-bindings: clock: sprd: Add Unisoc SC9832E clock controller
  clk: sprd: Add SC9832E clock driver

 .../bindings/clock/sprd,sc9832e-clk.yaml      |  120 ++
 drivers/clk/sprd/Kconfig                      |   11 +
 drivers/clk/sprd/Makefile                     |    1 +
 drivers/clk/sprd/sc9832e-clk.c                | 1075 +++++++++++++++++
 include/dt-bindings/clock/sprd,sc9832e-clk.h  |  177 +++
 5 files changed, 1384 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
 create mode 100644 drivers/clk/sprd/sc9832e-clk.c
 create mode 100644 include/dt-bindings/clock/sprd,sc9832e-clk.h

-- 
2.34.1


