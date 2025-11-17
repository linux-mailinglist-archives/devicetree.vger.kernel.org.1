Return-Path: <devicetree+bounces-239205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD98CC62A0C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D7553A5AFF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9514525F7A5;
	Mon, 17 Nov 2025 07:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHqlBoNu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDC9239E81;
	Mon, 17 Nov 2025 07:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763362922; cv=none; b=qrp5Iuz+ZnUglVYQwKbyCz/vj3IgUqPs8VlDc4Wkf4Mhc9t34sWkV9wkV+xEDPIUf/gx5J000AouxqzKWVs+afz52Rg/PyAq3fGCmgE+4EtDpceW2JSLA5jx/0x2e59ihPCSS81+kdwudm2zjgTEBAcFJOTuiE+3TRa7KKqDIFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763362922; c=relaxed/simple;
	bh=DPXRRBWGFrZM5Dr8fzmrocXenQwKS06dtRI9ceknvc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YgIG218v4b7ilXT3dgYyZfODTJzLT4G4Q7fvVUIfXS5SIRcpkaOAzVuY3MrbmjTEgDlBOFKGLK62vQ8sbRVPf33J2D1V2rtsfR/GuZR6+G/c9Jas5Yq1pMu1FwVVhTioqasXrxDa8ulNBqPp6RG9BOWqqNNWnqj9YmOZ4+Qfl48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHqlBoNu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66BE7C116B1;
	Mon, 17 Nov 2025 07:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763362922;
	bh=DPXRRBWGFrZM5Dr8fzmrocXenQwKS06dtRI9ceknvc0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SHqlBoNuaJX5K+18FodgV1+Di38t2mtfnNWUt4TkDloCKbxZppVVc/Q9O+PcVcNUo
	 XrkmUiXpxtP/5gb/9fWNarjdFw80forDBTbXhGz68Agr3bcwE3cQlhMnXcYhCxUPK0
	 4q5nrVLeV0t8+o6mgLr6wE4+vWp4TfcpHml83KpkV5guAc0S6geDi4BUhU6q8HaKSP
	 ONJsuVVaKBiiWayc0MGJc8PO3HmOTn3l7X1qfAzaZGTfbxNRFm4L2qjBVECCxbIgxe
	 F6V5UhAe0QDDSTBeHyPK7rEZSQPpoKtJpWYV0t/L57hQr6RvpUqHamV5irepO4TBoT
	 4u87ydgYSe9iA==
Date: Mon, 17 Nov 2025 08:01:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Baoquan He <bhe@redhat.com>, 
	Zhen Lei <thunder.leizhen@huawei.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Geoff Levand <geoff@infradead.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Changyuan Lyu <changyuanl@google.com>, 
	Alexander Graf <graf@amazon.com>, "Mike Rapoport (Microsoft)" <rppt@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/8] of/fdt: Consolidate duplicate code into helper
 functions
Message-ID: <20251117-tasteful-peccary-of-sympathy-a4f9cb@kuoka>
References: <20251115134753.179931-1-yuntao.wang@linux.dev>
 <20251115134753.179931-2-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251115134753.179931-2-yuntao.wang@linux.dev>

On Sat, Nov 15, 2025 at 09:47:46PM +0800, Yuntao Wang wrote:
> Currently, there are many pieces of nearly identical code scattered across
> different places. Consolidate the duplicate code into helper functions to
> improve maintainability and reduce the likelihood of errors.

Not much improved. Please go to previous version and read the comments.

Best regards,
Krzysztof


