Return-Path: <devicetree+bounces-238989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F57C6062A
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:48:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E6C0A3566C6
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA852D739D;
	Sat, 15 Nov 2025 13:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="tvozabYD"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3044F222582
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 13:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214521; cv=none; b=H0obRbPqZTzDZYwF9i4YhmGdt29hAme095tvTyxcEFSJOxro+GveRTJ5HkwwyFJ2jmzjDFTGDbecViG+gNNeTqXrzLXTFyNkYtsVxReW2iCO5pDNknRmu50WLl7R96HzZEq4Z7so3Zgkhjui/LkS2tIQP+cpZx01kFr0urqjWqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214521; c=relaxed/simple;
	bh=zwLAZ8FIwu8/2wdOIsag9BtfX4P1gXNtkvTWrIv1jqE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LCxYL+uEwd+7iGWhoQU6FZWf2gb+jBrZObTtljUbxHcwibtaG34gVqLsu0YWJf1i2hhqC0Rp47irvq4CGDzdAD1MoNy0xDo424VKdNtFWIce/IBH80QjIyToh6uk8jbPmJNQkteMPC8j4WudSo364o6sFAtP8KQ4+rSsW2OHeYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=tvozabYD; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ZozAh6QD96iV0peFxRHBSkO78UYk4yAtYbn0hDSAkug=;
	b=tvozabYDV/PqqHidaReYj9qlWGfOmL+11vqUTlxuGAX8V7ndKkv+W82ZTS7F0vSuE9HjDU
	446nnZbkzqmFkoJ77hnr69fIxkIJFsCSRDhpxAsSAkCLEZC2zXHGHMh432QSsN5Vn4/L9b
	zJ1aFqKhRMwgOnliBTD93ucocdb/VQ4=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Baoquan He <bhe@redhat.com>,
	Zhen Lei <thunder.leizhen@huawei.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Geoff Levand <geoff@infradead.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changyuan Lyu <changyuanl@google.com>,
	Alexander Graf <graf@amazon.com>,
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yuntao Wang <yuntao.wang@linux.dev>
Subject: [PATCH v3 0/8] of/fdt: Some bug fixes and cleanups
Date: Sat, 15 Nov 2025 21:47:45 +0800
Message-ID: <20251115134753.179931-1-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This patch series fixes several bugs related to dt_root_addr_cells and
dt_root_size_cells, and performs some cleanup.

Changelog:

v2 -> v3:
  - Use of_flat_dt_ instead of of_fdt_ as the prefix for the newly added
    helper functions

  - Improve the internal logic of of_flat_dt_get_addr_size_prop() and
    of_flat_dt_get_addr_size()

  - Introduce the entry_index parameter for of_flat_dt_read_addr_size()

  - Fix some warnings and coding-style issues

v1 -> v2:
  - Consolidate duplicate code into helper functions

Links to previous patch series:

v2: https://lore.kernel.org/linux-devicetree/20251113155104.226617-1-yuntao.wang@linux.dev/
v1: https://lore.kernel.org/linux-devicetree/20251112143520.233870-1-yuntao.wang@linux.dev/

Yuntao Wang (8):
  of/fdt: Consolidate duplicate code into helper functions
  of/fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
  of/fdt: Fix the len check in
    early_init_dt_check_for_usable_mem_range()
  of/fdt: Fix incorrect use of dt_root_addr_cells in
    early_init_dt_check_kho()
  of/fdt: Simplify the logic of early_init_dt_scan_memory()
  of/reserved_mem: Simplify the logic of __reserved_mem_reserve_reg()
  of/reserved_mem: Simplify the logic of
    fdt_scan_reserved_mem_reg_nodes()
  of/reserved_mem: Simplify the logic of __reserved_mem_alloc_size()

 drivers/of/fdt.c             | 101 ++++++++++++++++++++++-------------
 drivers/of/of_reserved_mem.c |  69 ++++++++----------------
 include/linux/of_fdt.h       |   9 ++++
 3 files changed, 97 insertions(+), 82 deletions(-)

--
2.51.0

