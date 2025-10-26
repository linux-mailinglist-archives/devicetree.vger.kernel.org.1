Return-Path: <devicetree+bounces-231156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B090CC0AF65
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 18:45:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2205E4EAE3C
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 17:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845E718A921;
	Sun, 26 Oct 2025 17:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="WGObrId+"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBEF2262FCB
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 17:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761500711; cv=none; b=Q5eNJ2wJjvJysHwUdCh2lJbRnAZcs+HIu2z7IH5kyAa9ihQiYISCI2yWcL7lzzk7Or9T6O9Pegz15guYGhW0c7kiYI77j6mUqlEsyy07eGniNIp5RjHxK9MatMKRevtZciOaE4xcjdPt81DoZ9zzPFIaZzIfpxAVFCIadJBd4Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761500711; c=relaxed/simple;
	bh=kLkjHkJJvgLN+ybPYz8/nAzkPH88F3EbaRt9O0fyHXs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=jzGPqwfI1M/3KWacCKGiSXd5U8lu7tKd3j6n2DvXpiO8zSBoLN/1lnCRC3qwuCenwpGQ1273+FYyxuNrjhFzWQzuPz+h0cTl9no9IwwARedN0HkuX7UKftYxX1r8B56qF9s7W2v/7/JZE6LmkzPUQTsn+ryQ4378Tt0OYsCuGbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=WGObrId+; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761500695;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Os2gdwgFgiG/vQXZuUM1r/XXyjqP6W0/g6mR5BtctSk=;
	b=WGObrId+lc+EJHIlJzN+dD7JmH64mJaxToM+He6Bg64ipj7P9PoZ51oO3eVEBKpVmNiPS8
	cKCqohngr3qvrAUcsONF/aT1AmNRoMPz6pmHrX0iTa8h17dzdC507UN3WqA6YW1YuLIYYR
	I0ZgGkQYUtAUvTeWUUO3rCuBqMOhJTOOCcvfq1alots9bWpGPB3ScyVLioV2j+vC3is/cP
	cXHRAem2rR/iS/mFCgVeXHQWCFFl0teHusYHPHYU76GZftHFY+EKoAmwzZ4M3C+Iqt2VVE
	n1Mk4v8P0S8vv50X6ix3myq3bU4MJUwtr0VN3UCIGwIHMGmeauBn9noYt0ASKA==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 26 Oct 2025 18:44:42 +0100
Message-Id: <DDSFVM1TXN8C.3JNX2M8XX04IF@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Dragan Simic" <dsimic@manjaro.org>, "Johan Jonker" <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Harmonize regulator formatting
 for Pine64 rk3566 devices
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20251026153805.107774-1-diederik@cknow-tech.com>
In-Reply-To: <20251026153805.107774-1-diederik@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT

On Sun Oct 26, 2025 at 4:37 PM CET, Diederik de Haas wrote:
> The regulator node properties in Pine64 rk3566 devices were formatted
> rather inconsistently. To name a few:
> - 'name' was sometimes put at the top of the list, while at other times
>   it was (mostly) sorted in alphabetical order
> - 'always-on' and 'boot-on' were sometimes at the top of the list,
>   sometimes not
> - 'state-mem' nodes sometimes had a preceding blank line, as they
>   should, but sometimes not
> - other properties seem to have been added to the end of the list, not
>   in their alphabetical/natural order
>
> So harmonize the formatting by making all properties sorted
> alphabetically/naturally. And harmonize the formatting of the
> 'state-mem' nodes so they all have a preceding blank line. While at it,
> also fix 2 incorrectly indented nodes.
>
> No functional changes.

I just found some additional ones.
If these changes are considered OK (in principle), then I'll send a v2
at some point.

Cheers,
  Diederik

> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
> ---
>  .../boot/dts/rockchip/rk3566-pinenote.dtsi    | 52 +++++++++----------
>  .../boot/dts/rockchip/rk3566-pinetab2.dtsi    | 29 ++++++++---
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 51 +++++++++++-------
>  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 52 ++++++++++---------
>  .../dts/rockchip/rk3566-soquartz-blade.dts    |  6 +--
>  .../boot/dts/rockchip/rk3566-soquartz-cm4.dts |  6 +--
>  .../dts/rockchip/rk3566-soquartz-model-a.dts  | 10 ++--
>  .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 43 ++++++++++-----
>  8 files changed, 148 insertions(+), 101 deletions(-)

