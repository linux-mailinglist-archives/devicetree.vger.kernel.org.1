Return-Path: <devicetree+bounces-257758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHFnHz59cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:16:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCD352ADF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:16:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7F93F4E615A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2594844D68F;
	Wed, 21 Jan 2026 07:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cg/DxZ94"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5AE3A8FF2
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768979703; cv=none; b=N4UHSKZw/KdLGcH7ols1nmq8I5xSQa5xr1ZEw85CCOmVvk+TRdwHlmdi+EHs28TVWb5wcEADoDTSJ0Lemx9FdfZ0pUGIj4cbvEVNb7pVViUObsCLqX152fzyzzJBGcMt9zN6K1DRbfVIw9MpPnwHtgCGTJGoYNuaJ6jVTaIEq00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768979703; c=relaxed/simple;
	bh=ASVCGF+65gM4kzc00o/lzqdcVsxqI28Mzu1yeg3kP1o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=NzDNwKGMqfq/yUFYLkFs09llk+ysvNUpdmqOijm8ufrmrijaHK8H1FRajwZA7wSl+FqcnP8SeOnGNJ5XnN7x/D/jciwOGUCouOWf/c9H98RzH+FVxqzStcs+rF8CVIY7pJUiuebNgo01JSJY5lohqrIT93l5H+zlApGtTLTecg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cg/DxZ94; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-34ccb7ad166so3228885a91.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768979696; x=1769584496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F60LwWqAp1YKpLWFuVlWdTZRt79aXAUJCqZHEy/se+w=;
        b=Cg/DxZ94NelATCcbKhCawKm1TeUpurvoPqtiF+4l5QyFM4nksZIjDmKgfqNqYGtbPK
         8ZFgCq1lb2H7rduvF1AcoJQzLXAHSRJDEuyrtuvQajdN9SV4wIzI5PURO7TC4ccXzB4u
         /2nbQllvvqXP5/aujcuj8ZUT+b9rJmZAtbS6qdg7Z4jOhuiEe7adHEjfzvpG0gdgJoQH
         ApNnR+Mm2nMrfCp1ly5Ug5vkgI6iK8HQLtEkrD/Bj9tppd4QAh0aNFjL02kth8cGt3c8
         0lTbf28yP/ph5Z+RF8EuiG/hoJT9L6OY75Rn0AJwJ5qVNijuEy/N/LJ5cA6IU73c5pC8
         FsVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768979696; x=1769584496;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F60LwWqAp1YKpLWFuVlWdTZRt79aXAUJCqZHEy/se+w=;
        b=lcRpvtQS4HLmivacAyUXPbXiKCHbv+m4iEWTkNuBGFBGhuwq399oFRu7PFqmi989xn
         4pp2BNESslREnAUaCHPhAX5eA0tZXuXSjFoP+xp3l3R9yIdNO9lcu/cYaoQfXIYmfkU7
         H1WD4/zn8iTqOBxIMt27UhA40ek4o8JX9skqusOXTVa2qHJYJ4/QTbi+HQ9kOKrd8a1M
         ddFTUovQ8XYKQA5dOHf4y0E8SnH2ipmbdR8UX1gnSpDjksCT8h9nHhKa+F9mvQ/+t1RN
         t9DvGgtr58EC2HtoYCAcU4paR4ZO+xdF8awBefzHrxsXAeIenJz92R6bH1RbiTaPjjro
         QOqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVc1i9Olv0Xy5azQbTmbK+b3HNTmvbJtB5bwGcD5h9M1Fhpa/xKM4AuH0KmjGU+xUy2bplJ0sy0/XyM@vger.kernel.org
X-Gm-Message-State: AOJu0YxbCBoQFl8zgc+iBI+wjtVn3kNNYOaM9WxRKsc8PBPz4KC1z21O
	hWY2JkIzDEI6qSCTZ+LWkQc/vnAb3XhYl/jqCbR2xIlfnnNcDU9J69vE
X-Gm-Gg: AZuq6aI1hRSmcbEA2TFVHgitrT2fzWhYG9/myyT/Mad3uyGyCOc23YHgzr+xhnf0kHa
	o4X6Hecro5k5QVnB/ws31HfYwK5oWC3UQA+YruY8uxS3nj1arNp3j3rj97c+NxLnbGg+VyJvhzb
	qMvObbKiz4AgQdUweESN1b9PJWDlP/LRiqgPvtf93+l8zxiatwzWC7uWiHCM8pOjlmYeEATYFHa
	6j3dPT4PovT98FQ/lYlEkyJmWZm40Qck0Eq+Mo48B2Xo+idrtohejcvn+CO8Ci4G6T2tFU91fQu
	alphVCPo4Mva29qW6cKo/PigmNN+ljZbdcWiE7OsaKwIWlxnnbbX+bG/eTnIxCJG5VRYVBNu6Su
	Dt/3dFsx5lY8oLf/MD9uCjZFwcBCGB1wEe3txlNy5va8mI31Z18ScilGVqEmgtoEXZvLlSqh8cV
	tSt4T5x8xnl9ol7Q==
X-Received: by 2002:a17:90b:5864:b0:33b:b078:d6d3 with SMTP id 98e67ed59e1d1-3527323b4efmr14020472a91.23.1768979695646;
        Tue, 20 Jan 2026 23:14:55 -0800 (PST)
Received: from k.. ([223.74.152.156])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352fb191a62sm507411a91.5.2026.01.20.23.14.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 23:14:55 -0800 (PST)
From: Nadi Ke <kenadicanady@gmail.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	orsonzhai@gmail.com,
	baolin.wang@linux.alibaba.com
Cc: zhang.lyra@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nadi Ke <kenadicanady@gmail.com>
Subject: [PATCH v2 0/2] clk: sprd: Add support for Unisoc SC9832E clocks
Date: Wed, 21 Jan 2026 15:14:10 +0800
Message-Id: <20260121071412.256215-1-kenadicanady@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-257758-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,gmail.com,linux.alibaba.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[kenadicanady@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 2FCD352ADF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The SC9832E clock architecture involves several PLLs and gates. Some gate
clocks are located within the PMU global register area.

** Author Email Change **
Please note that my previous email address (kanadenady@gmail.com) is no
longer accessible. I am submitting this version from my new address
(kenadicanady@gmail.com). I am the same author as the previous submission.
Please update your records accordingly.

** Technical Details **
Based on the review comments from v1, I have significantly refactored the
handling of the PMU gate clocks. The hardware registers for these gates are
scattered within the PMU global register space (interleaved with other
system controls) and do not form a contiguous region.

To correctly model this hardware:
1. I removed the artificial child node (`sprd,sc9832e-pmu-gate`) which lacked
   a valid `reg` property.
2. The parent syscon node (`sprd,sc9832e-glbregs`) is now defined as the
   clock provider.
3. The driver has been updated to match the syscon compatible string directly.

Verified on SC9832E hardware, clk_summary shows correct PLL rates and
clock tree topology.

Changes in v2:
- dt-bindings:
  - Removed the artificial 'sprd,sc9832e-pmu-gate' child node definition.
  - Added '#clock-cells' to the 'sprd,sc9832e-glbregs' node definition.
  - Removed 'simple-mfd' from the parent node in the example to reflect
    that the child node (if present in dts) is logical and shares resources,
    or that the parent acts as the provider.
  - Simplified 'allOf' logic by merging similar conditions.
  - Added mock clock definitions in the example to fix dt_binding_check warnings.
  - Fixed 'compatible' array definition in the example to match schema.

- clk driver:
  - Updated the OF match table to match 'sprd,sc9832e-glbregs' instead of
    the removed child node compatible string.
  - Fixed a compilation error due to a typo in variable names.
  - Updated Author email address.

Nadi Ke (2):
  Add device tree bindings for Spreadtrum/Unisoc SC9832E clock
    controller.
  Add clock driver for Spreadtrum/Unisoc SC9832E SoC.

 .../bindings/clock/sprd,sc9832e-clk.yaml      |  182 +++
 drivers/clk/sprd/Kconfig                      |   10 +
 drivers/clk/sprd/Makefile                     |    1 +
 drivers/clk/sprd/sc9832e-clk.c                | 1077 +++++++++++++++++
 include/dt-bindings/clock/sprd,sc9832e-clk.h  |  177 +++
 5 files changed, 1447 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
 create mode 100644 drivers/clk/sprd/sc9832e-clk.c
 create mode 100644 include/dt-bindings/clock/sprd,sc9832e-clk.h

-- 
2.34.1


