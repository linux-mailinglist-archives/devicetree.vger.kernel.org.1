Return-Path: <devicetree+bounces-246952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F261CC1CC5
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 19EC73002520
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8820F31B80E;
	Tue, 16 Dec 2025 09:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ziyao.cc header.i=@ziyao.cc header.b="iKCo1Znw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail97.out.titan.email (mail97.out.titan.email [3.219.11.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0A6155C82
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 09:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=3.219.11.208
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765877505; cv=none; b=cRKuD9oKlHGnNzhyXw/FACIX4Rtc90L+c4QEJLPAMKLYG+hcK7iYYBmXhnNZyhooKqeADiJq5rrokRUCJB3LNmxu17dt7KeXzRUbzgwPwF1chrePL7BMYqNkpI8rRSr00Rj2VNbGNFs/R/g8s5yMSA3keMdntTUucmYhfhqCamk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765877505; c=relaxed/simple;
	bh=QGg6sb2yB+41BEaYLZygHIG+7cfrrZARIjbJCAtn3rs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZZVsTWy9k0gviUxDrzieFZdbsCkgjh/9w1TK8tYFVdvOTC7b7mtdgIgejunTfLrYRvqD+FneEGPoMg7auwHK7OMOa5CEOU36bcijDK8W97O0p6KGddBh9swGLPrtn+8p3KoobqIGWETgcNeTBRCEgi2VWzDUBtXQ9KulX3mo6+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc; spf=pass smtp.mailfrom=ziyao.cc; dkim=pass (1024-bit key) header.d=ziyao.cc header.i=@ziyao.cc header.b=iKCo1Znw; arc=none smtp.client-ip=3.219.11.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziyao.cc
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4dVsBd1DZ9z9s1K;
	Tue, 16 Dec 2025 09:31:37 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=qEuALlOiDJ9ZM5Kch+ZSeYflabXsN0k3ETWKl4Tcqak=;
	c=relaxed/relaxed; d=ziyao.cc;
	h=message-id:mime-version:from:in-reply-to:references:subject:date:to:cc:from:to:cc:subject:date:message-id:in-reply-to:references:reply-to;
	q=dns/txt; s=titan1; t=1765877497; v=1;
	b=iKCo1Znw/mjhAX2JNSmn9nQxSVZHXrCWmBPMVh+16Q9qMoLSUsfEzpp0EwlkOgJ+zHbPxlAs
	b6hoD118G7L8nBkzuI8pzNhyVYVdXazKosdQO+FRHfcwMr7utZAcYlIaJ1Hxb4ktqbDzfQqEaZl
	00GkJ+8I96DDgx4nf8/xfP6c=
Received: from pie (unknown [117.171.66.90])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4dVsBY3hPdz9s0L;
	Tue, 16 Dec 2025 09:31:32 +0000 (UTC)
Date: Tue, 16 Dec 2025 09:31:28 +0000
Feedback-ID: :me@ziyao.cc:ziyao.cc:flockmailId
From: Yao Zi <me@ziyao.cc>
To: Binbin Zhou <zhoubinbin@loongson.cn>,
	Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/7] LoongArch: DTS: Fix dtbs_check warnings
Message-ID: <aUEm8E-aMC4hGuSA@pie>
References: <cover.1765778124.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1765778124.git.zhoubinbin@loongson.cn>
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1765877496992165586.21635.5869125783113741254@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=TPG/S0la c=1 sm=1 tr=0 ts=694126f9
	a=rBp+3XZz9uO5KTvnfbZ58A==:117 a=rBp+3XZz9uO5KTvnfbZ58A==:17
	a=kj9zAlcOel0A:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10
	a=UEfRs4X7rQmhpc7QgncA:9 a=CjuIK1q_8ugA:10 a=3z85VNIBY5UIEeAh_hcH:22
	a=NWVoK91CQySWRX1oVYDe:22

On Tue, Dec 16, 2025 at 03:54:35PM +0800, Binbin Zhou wrote:
> Hi all:
> 
> As Krzysztof pointed out in the OSS talk, LoongArch only has three DTS,
> but has a bunch of warnings. The patchset attempts to fix them.
> 
> Patch-1 and patch-3 are taken from Yao[1],thanks a lot!

I'm fine with it, but should you add your own Sign-off-by to PATCH 1 and
PATCH 3?

Regards,
Yao Zi

