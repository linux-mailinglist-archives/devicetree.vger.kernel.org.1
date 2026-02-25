Return-Path: <devicetree+bounces-268505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACdZOfYzn2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:40:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2AC19BAAD
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B98A304BCD8
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E62A63D1CB1;
	Wed, 25 Feb 2026 17:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="mu2OwJfq"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF724392825;
	Wed, 25 Feb 2026 17:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772041179; cv=none; b=VRlZYLUi9pINfl5yigiV6QqKlPYSVnWpQlzyPC/LCESN1z5BdAOHMcbqAvr2iTRbIt84SryBUOjeFqP00sty+oRQCLoxxa0WQgJlr4slbQ5BHeDP1kZMR24RQLogO6/Bnot7yT173mtp2YLtcXZ6/Y5ZbWmfZHNvYI6HUdgdwYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772041179; c=relaxed/simple;
	bh=sS6BCPYIcxjiFsdpIgzKOe5b1pP6g/b0avT1U8nYhPU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XdPRPJqgd/7ilF/2muAlG1qfAWIfJLnVHGg8/tbrqKE8DjwnD8cLws+ZCipDUZbN7sk/9UoYQWEnErq6NRsSTgVaFks+1PMkA1lmMKdKEVnjLwaEcnf2ggbvRVmQGkIAlEp41ZVPTx+jAvqxyzw3Xahs8jWSVsIkS5Evn88ajPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=mu2OwJfq; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772041179; x=1803577179;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=sS6BCPYIcxjiFsdpIgzKOe5b1pP6g/b0avT1U8nYhPU=;
  b=mu2OwJfqHT5FzrRYXByUXFA7NtX6nXyDbprYlBqiZBSnYKVFk749YR87
   NSoqacLUFPO5N0+htM9HQxmKcZyEP6Vko99F+o8UFjiIb3emzSkiyN4xT
   NtXzzjNsmLc/KMFGLHwj//J0dTWKKvu0zwWCmuTv8vemHu308IkuNHlG+
   9hbmA5mUp1yCb6D086rjYRRzYkZ3HflkxwJRnXnzvesH4bkVLrM7hHNYQ
   S5ETXPZEdaOzSWELV8D+W6xDIyiRIHBa9ESZFxPaydpqyDe74WhmQIt7E
   0mm2is6PgAHbtKSQorQpvuzIxUxGst4Rw44OBor1wdeqkPeVhmimJFePR
   w==;
X-CSE-ConnectionGUID: j2lU8S1FS5uByM/+3HYRWw==
X-CSE-MsgGUID: XgCG5wWBSHihbmFTzivh/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72993406"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="72993406"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 09:39:38 -0800
X-CSE-ConnectionGUID: h7rARhpAQfKwHXj2RS+twQ==
X-CSE-MsgGUID: rncQXxFvQySqHkTfHlfPcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="220909798"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa005.fm.intel.com with ESMTP; 25 Feb 2026 09:39:37 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 888EB98; Wed, 25 Feb 2026 18:39:35 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v3 0/2] memory: Drop Baikal SoC code and bindings
Date: Wed, 25 Feb 2026 18:37:19 +0100
Message-ID: <20260225173930.3819351-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268505-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 1D2AC19BAAD
X-Rspamd-Action: no action

The platform is not going to be supported, remove stale code and bindings.

In v3:
- combined patches in a series (Krzysztof)
- collected tags

In v2:
- split bindings removal to a separate patch (Krzysztof)

Andy Shevchenko (2):
  memory: bt1-l2-ctl: Remove not-going-to-be-supported code for Baikal
    SoC
  dt-bindings: cache: bt1-l2-ctl: Remove unused bindings

 .../bindings/cache/baikal,bt1-l2-ctl.yaml     |  63 ----
 drivers/memory/Kconfig                        |  11 -
 drivers/memory/Makefile                       |   1 -
 drivers/memory/bt1-l2-ctl.c                   | 323 ------------------
 4 files changed, 398 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.yaml
 delete mode 100644 drivers/memory/bt1-l2-ctl.c

-- 
2.50.1


