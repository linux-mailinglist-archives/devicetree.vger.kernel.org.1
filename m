Return-Path: <devicetree+bounces-237651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96133C53209
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:43:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDF2F42617C
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1232C2356;
	Wed, 12 Nov 2025 14:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="lY2KHR3P"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602872C026E
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762958247; cv=none; b=p/FL79qfwBoCibhVr60PMLx1Sw1iGpffShvjFTrBF0xazIQK03jIfOHp/hfsjuj7lGTkRz2j7AeXCxp3uXz1zPe1ALFRtLP0gyJjRxo+jKhS6KfbVdSnn74vztRCbiMbDsr9zUDYrXAG0vwlHN4/6g+UtNW1rcNxw5Oq/vD2YEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762958247; c=relaxed/simple;
	bh=rFdkV8BtJFuneZDFlffAsIS8x4aIK6ti+OGgqdl4lEY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ff2tElonwZKWmE7QhPWBNVcWmpj+6zvR2HJunZb/zmkNOMWQVfiRghyhYbzbLoRmtvrQlG80gCfuA8g3TmZKtpW8BP5N8jVBdOk4ea0P99w6O4gh1BwCiULsW3VojbA4zzH4u0jLBRdIQwQAesg5LDTp0TU5tXag8laE3eXriT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=lY2KHR3P; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762958233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3yCieyHDoW3ITh82IhI4hK06ZWR3IHLaCTPT9+BieoU=;
	b=lY2KHR3PU43Bc8+D/67TfG8jVYd8ms7a4soa1ifgPGo+Oi8OEg5Amp597peqHokZ037rBf
	LDqTEefACtoufJB3/eGaiASAi02laNL+/2E17lJJjlf1KK78d6UjPEAAA+MdasOzsAe9b4
	HAJT3fpv9Jwe2PzZ2auDRY9fXW6qCa0=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Catalin Marinas <catalin.marinas@arm.com>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	James Morse <james.morse@arm.com>,
	Chen Zhou <chenzhou10@huawei.com>,
	Baoquan He <bhe@redhat.com>,
	Zhen Lei <thunder.leizhen@huawei.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changyuan Lyu <changyuanl@google.com>,
	Alexander Graf <graf@amazon.com>,
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yuntao Wang <yuntao.wang@linux.dev>
Subject: [PATCH 00/10] of/fdt: Some bug fixes and cleanups
Date: Wed, 12 Nov 2025 22:35:10 +0800
Message-ID: <20251112143520.233870-1-yuntao.wang@linux.dev>
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

Links to the previous related patches:

https://lore.kernel.org/lkml/CAL_JsqJxar7z+VcBXwPTw5-Et2oC9bQmH_CtMtKhoo_-=zN2XQ@mail.gmail.com/

Yuntao Wang (10):
  of/fdt: Introduce dt_root_addr_size_cells() and
    dt_root_addr_size_bytes()
  of/reserved_mem: Use dt_root_addr_size_bytes() instead of open-coding
    it
  of/reserved_mem: Use dt_root_addr_size_bytes() instead of open-coding
    it
  of/reserved_mem: Use dt_root_addr_size_bytes() instead of open-coding
    it
  of/fdt: Use dt_root_addr_size_bytes() instead of open-coding it
  of/fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
  of/fdt: Fix the len check in
    early_init_dt_check_for_usable_mem_range()
  of/fdt: Use dt_root_addr_size_bytes() instead of open-coding it
  of/fdt: Fix incorrect use of dt_root_addr_cells in
    early_init_dt_check_kho()
  of/address: Remove the incorrect and misleading comment

 drivers/of/address.c         |  4 ----
 drivers/of/fdt.c             | 14 +++++++-------
 drivers/of/of_reserved_mem.c |  6 +++---
 include/linux/of_fdt.h       | 11 +++++++++++
 4 files changed, 21 insertions(+), 14 deletions(-)

-- 
2.51.0

