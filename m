Return-Path: <devicetree+bounces-238999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0B8C606A2
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E9183B26A7
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B95618EAB;
	Sat, 15 Nov 2025 14:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="ZzMxC9Uq"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20C31A9FAC
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 14:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763215650; cv=none; b=EzKzZIvlhCf0ELgaysbfbsZQbOnof6EHeBX18APLP4nrDePas8EARojTNg2hJXbOLLnOR+buXTWrHgb3eI2yd9jW9j56f7cehBf+l2DB+PGzPr3JqlARPOJMQP8wHlR8wSkFPDzx37qzl1REBC8B8LV8MEaNJd2ibcAMMLAUjiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763215650; c=relaxed/simple;
	bh=D5Ym6lnh660BICGYSe0ItLn7aqKE/2pUnE410q8MzpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pE8vE+E1XyFv0sTiWUYrB3yDnKBQeEf7OH8etiTFml/dHuOp6sT8CIzff1M7dAUOXecbh6u5/h9Ghn/GigESXQDfMWnOhJwbAC7WQRilauRww2nAv3iSBG3o0JWk+1zz3iLejE6yxQla8K64f/QF/i6xvA1UyYudrnjPmNKJAEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=ZzMxC9Uq; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763215646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D5Ym6lnh660BICGYSe0ItLn7aqKE/2pUnE410q8MzpE=;
	b=ZzMxC9UqtiOgf4mimFIQFXOV8T39lyD6ylmZixXymVzem6nyBPun3FmoifpYFuJE0+wGnz
	3EmLHkjj3Z1HFDjPToCLSAzOsBTf7Egu5A+A/+Eyp1z6dLGNav4/gBLlo5yen24d7PzX08
	RYhkQA7gHwHK0Hq+7suz/Li1u8qgEPE=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: krzk@kernel.org
Cc: akpm@linux-foundation.org,
	ardb@kernel.org,
	bhe@redhat.com,
	catalin.marinas@arm.com,
	changyuanl@google.com,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	geoff@infradead.org,
	graf@amazon.com,
	james.morse@arm.com,
	linux-kernel@vger.kernel.org,
	mark.rutland@arm.com,
	robh@kernel.org,
	rppt@kernel.org,
	saravanak@google.com,
	thunder.leizhen@huawei.com,
	yuntao.wang@linux.dev
Subject: Re: [PATCH v2 0/7] of/fdt: Some bug fixes and cleanups
Date: Sat, 15 Nov 2025 22:07:00 +0800
Message-ID: <20251115140700.182265-1-yuntao.wang@linux.dev>
In-Reply-To: <20251114-watchful-sceptical-jerboa-a19d5c@kuoka>
References: <20251114-watchful-sceptical-jerboa-a19d5c@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On Fri, 14 Nov 2025 09:04:30 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Thu, Nov 13, 2025 at 11:50:57PM +0800, Yuntao Wang wrote:
> > This patch series fixes several bugs related to dt_root_addr_cells and
> > dt_root_size_cells, and performs some cleanup.
> >
> > Changelog:
> >
> > v1: Consolidate duplicate code into helper functions
>
> Your patchset has multiple checkpatch warnings and errors. In multiple
> patches.
>
> Please run scripts/checkpatch.pl on the patches and fix reported
> warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
> patches and (probably) fix more warnings. Some warnings can be ignored,
> especially from --strict run, but the code here looks like it needs a
> fix. Feel free to get in touch if the warning is not clear.
>
> Please run standard kernel tools for static analysis, like coccinelle,
> smatch and sparse, and fix reported warnings. Also please check for
> warnings when building with W=1 for gcc and clang. Most of these
> commands (checks or W=1 build) can build specific targets, like some
> directory, to narrow the scope to only your code. The code here looks
> like it needs a fix. Feel free to get in touch if the warning is not
> clear.
>
> Best regards,
> Krzysztof

Hi Krzysztof,

Many thanks for pointing out these issues, they have been fixed in the new patch series:

https://lore.kernel.org/linux-devicetree/20251115134753.179931-1-yuntao.wang@linux.dev/

Thanks,
Yuntao

