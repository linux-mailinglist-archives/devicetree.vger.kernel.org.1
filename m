Return-Path: <devicetree+bounces-176131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD516AB2E2F
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 05:44:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A7C53B4C0B
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 03:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD031254856;
	Mon, 12 May 2025 03:44:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C067C4C74
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 03:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747021489; cv=none; b=EGBVNu2/94ysahVizA/+SmGIuwsKDGyV7NDBDX8QSwqt7J4adHWjB8eodu1hxIOw7wKD6132auy/nscVS9VfQ67Rk7hJ3728sAI3RjJzRFjBIPxSiWYO9Hb4erC+lAmoSsFCCG6ojOg4Vwn28n+5iPsSg5PInEJYbAEM2a1OyFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747021489; c=relaxed/simple;
	bh=X22DcoaE4AUQQWTxAymBYEluB6Xchn/7RkfILlLYVSE=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JPJEOndpFE3qeAIRwrP6IM4EBxIK/KgErSElWwyTbF0heoSXbRqz6txHyrwvIFj2j+fQXgerccAHYRVXh+fqOuGle4Ipt2aalMloBOi6TLg1jLdGaDm3uqGQ9ugIjU0L1958QNY8gq24s+PAE5AoN1C8n7BJMqAnXt0MmasvT/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS34.andestech.com [10.0.1.134])
	by Atcsqr.andestech.com with ESMTPS id 54C3ieWE054642
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
	Mon, 12 May 2025 11:44:40 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from atctrx.andestech.com (10.0.15.173) by ATCPCS34.andestech.com
 (10.0.1.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Mon, 12 May
 2025 11:44:40 +0800
Date: Mon, 12 May 2025 11:44:40 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To: Conor Dooley <conor@kernel.org>
CC: <linux-renesas-soc@vger.kernel.org>,
        Conor Dooley
	<conor.dooley@microchip.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Lad Prabhakar
	<prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v1 2/2] riscv: dts: renesas: add specific RZ/Five cache
 compatible
Message-ID: <aCFuqMM128wcjE0q@atctrx.andestech.com>
References: <20250509-sapling-exhale-72815a023ac1@spud>
 <20250509-mantra-trickery-56f699596346@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250509-mantra-trickery-56f699596346@spud>
User-Agent: Mutt/2.1.4 (2021-12-11)
X-ClientProxiedBy: ATCPCS33.andestech.com (10.0.1.100) To
 ATCPCS34.andestech.com (10.0.1.134)
X-DKIM-Results: atcpcs34.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 54C3ieWE054642

On Fri, May 09, 2025 at 04:37:59PM +0100, Conor Dooley wrote:
> [EXTERNAL MAIL]
> 
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> When the binding was originally written, it was assumed that all
> ax45mp-caches had the same properties etc. This has turned out to be
> incorrect, as the QiLai SoC has a different number of cache-sets.
> 
> Add a specific compatible for the RZ/Five for property enforcement and
> in case there turns out to be additional differences between these
> implementations of the cache controller.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Acked-by: Ben Zong-You Xie <ben717@andestech.com>

