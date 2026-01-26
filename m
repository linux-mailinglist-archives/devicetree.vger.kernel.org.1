Return-Path: <devicetree+bounces-259616-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAMoFpu7d2lGkgEAu9opvQ
	(envelope-from <devicetree+bounces-259616-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:08:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC00D8C575
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 130C9301F9AE
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D911271469;
	Mon, 26 Jan 2026 19:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XomsvYpK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9C4221FB1
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454488; cv=none; b=UlunEwKDTtkH9Ktt4Hv8iwmyok7wdGbxLXB9KKlqRVmdMAScQ1HjUoXTJYAJJiDQUV7cCCAOPZu866mj5l9ElkRCE2dj9yyWoEHNxbzSCBmq+TscV3mEhmzJCgzGGBQiBc3Nx7l0bEAO0TNhDRCXD1iFiNrGKEau5vXS7nDffPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454488; c=relaxed/simple;
	bh=tnVeZAcwDz2MYPEkmWs0axpNzYTNy5GIfEuFoxCgrGw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SfEKrbGuYMf99OEZlI3oGpJ0PL4fKSS/V/UMp8xYgR6YZgC0N+EzFN5fKCbfomZyO8CkYjEwy10mbQjUIYBUu3irRzavC6fC/Vk0NbJtUKss9elrIDKbgtMwC6LXsmaZhQvq28iOyTeqP19G1nebKvqlX3hoUBtZ6nLWzm8wvks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XomsvYpK; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42fb2314f52so2817815f8f.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769454485; x=1770059285; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ExOshE1aCUz4IaRsUbS7Z0iSKUCbe3DbikmKcJvXEGU=;
        b=XomsvYpKXhJ4jy2uXM3gLEHp86c6eeRosL6w5ePQjdm+jGOOA5uLD311b0nJ0BWhoC
         yzF8mb6BNewsNENBuXVPIhvvplutVzYXnv5W1n94f5bf2Z0a2ktTWmBpX+PI+KZrRnCL
         WQ3CMck6o09YSPvO9ILPwc3nSv3Z0G8lVQGdvdR2u6CdSerPaPYH9q5lIVeJN9CGUgEk
         y+jVARu+m09KJyi/urffPu21mK8+oQ/rACM3FVJ2vSXESgF3bre50H/lTLqiiW9XaYjU
         nT/NSKAv1K2ROR5dnFUfFyX9wahxAoXlKilcR0LJawMnE19ZqrEZmm1L+BaJdwRiceRt
         yk9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454485; x=1770059285;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ExOshE1aCUz4IaRsUbS7Z0iSKUCbe3DbikmKcJvXEGU=;
        b=XPUWPYHQvht1jhlg+3I6IBeb7BhmI9zy0C0JSiOPWdY6aa1QsGgRqYiRbMxBUnTSvf
         S5uDLPd3X0L6qBzcyCgJAVCvKswwZBhCE7Np8L6l47JZ5Ykl9af0Jqo4Unh92DevInhS
         YjtpVH1RWsZmWWfMaXZHhu0C+mOWxllxDg+DyISUpFs9qvSHyFdKW8rTGq/VE6JJBQ1r
         GhlulQpCNe94iZ4Vm5X/J8GWBSo44QbP7KPdXfBOO63v87x1b5+DxIT6vbGCJin7MCOv
         dpgBRU+5QeaNZKUUuQP5J3cbdFMpbCjhcqp+N30nr9+MXPYTvF1beupP7ZD4XGP2ZxR0
         ZPdQ==
X-Forwarded-Encrypted: i=1; AJvYcCW99zgJjtKPJ0QXvmexnOJdBlSYuM/8QYBSePK9e/zYYXJ646HUQThorbscy9r+wM7m9lWg7VDdvGje@vger.kernel.org
X-Gm-Message-State: AOJu0YxTlUKbBvIlx1rbAH3RdTSDTQIkR5xUioRqOeAHguCKKyjBTP77
	UknDEwD36/lFEwk2luAIu3BjGqtStXz5Uiuw5xegRlGsG+jJ5r+OvS4J
X-Gm-Gg: AZuq6aJFUZVh6SG1lTb7nwpBKldx8Hcwfz1gr+9oQc+iCs7lv9LXwkxqjHtqTW+Qbum
	LDREL2NFbhQD0RkMUkp4tk7mUzUNqoGWPXhNkonIZdX3RERjfHhmIb5eShbIsOXdrzfPgNIBVpg
	33FoKuNLVQwilFbHyitUTMa+0rBtoyNypsE3BBHZkzadBxp6FK4nbJCzJ8HCV0BqP0VkZlScGCR
	H8qgyBvBadZNQe8WweAG7pU+SJvCKsqs831CyKx0rAWGY45dlV8aD+HxasUU9i2nXxMcwheAhHd
	sR7xtI+60o8ODK6+ah3KqHj1U6Hc0Lt5RAeUouFqGW5OLfakEGW3uyRIrm+dnu0DuG9kBicbh11
	3LMuJ9JTLnbvF7KLLCIuLZ4ZHutTlVGMEVCpg1WuOMlFPLMfMh7QGi8gAfx/1Nz367JZ0o6G5Mf
	4ODJXJO6NE/OY=
X-Received: by 2002:a05:6000:186f:b0:432:5bf9:cf2e with SMTP id ffacd0b85a97d-435ca122e01mr9230680f8f.13.1769454484836;
        Mon, 26 Jan 2026 11:08:04 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bf8sm31802030f8f.11.2026.01.26.11.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:08:04 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sumit Gupta <sumitg@nvidia.com>,
	Dmitry Osipenko <digetx@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v1 0/5] Tegra114: implement EMC support
Date: Mon, 26 Jan 2026 21:07:50 +0200
Message-ID: <20260126190755.78475-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-259616-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AC00D8C575
X-Rspamd-Action: no action

Add support for External Memory Controller found in Tegra 4 SoC along
with adjustments required for it to work properly.

Tested on ASUS TF701T (T40X) and Nvidia Tegratab (T40S). Both work fine.

Part of previous patchset: https://lore.kernel.org/lkml/20251125120559.158860-1-clamor95@gmail.com/

Svyatoslav Ryhel (5):
  dt-bindings: memory: Document Tegra114 Memory Controller
  memory: tegra: implement EMEM regs and ICC ops for Tegra114
  dt-bindings: memory: Add Tegra114 memory client IDs
  dt-bindings: memory: Document Tegra114 External Memory Controller
  memory: tegra: Add Tegra114 EMC driver

 .../nvidia,tegra124-emc.yaml                  |  174 +-
 .../nvidia,tegra124-mc.yaml                   |   31 +-
 drivers/memory/tegra/Kconfig                  |   12 +
 drivers/memory/tegra/Makefile                 |    1 +
 drivers/memory/tegra/tegra114-emc.c           | 1463 +++++++++++++++++
 drivers/memory/tegra/tegra114.c               |  193 +++
 include/dt-bindings/memory/tegra114-mc.h      |   67 +
 7 files changed, 1770 insertions(+), 171 deletions(-)
 create mode 100644 drivers/memory/tegra/tegra114-emc.c

-- 
2.51.0


