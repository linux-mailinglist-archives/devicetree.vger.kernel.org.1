Return-Path: <devicetree+bounces-49536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D0E876D53
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 23:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D376281CC6
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 22:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83EB936139;
	Fri,  8 Mar 2024 22:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="RM40uu7A"
X-Original-To: devicetree@vger.kernel.org
Received: from out-175.mta1.migadu.com (out-175.mta1.migadu.com [95.215.58.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788159445
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 22:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709938122; cv=none; b=CFHGdaGvmRUD0ziBgBplBauLoat1JJaPCFkAe10SwnysiW6pnLbBEuBxzeYR/PdEDfJbWP5yDNvxS1NcrPXTOaaT4RmgbkyDCr3gMtkH0TSKCyZcJl634oPqjL5zpiJso+qSJ5AGHs8DyzFiNZcnfdTohG3cHiJgtuYda04/Gn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709938122; c=relaxed/simple;
	bh=yIdEDO0jYpKzAR2jMGZKtnbESLuRDJyKLv3nt907f0A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cX3dBm92T7aIQFhRy5h4nPIqzI5ZRq0H6yiicBRIooaFG3/Agg1P+TWDJGfxDNlpYpcJEQOxNWlsutw+dmQ+0z3jJccV6lJk6rt0gDwvaXhGwe1TN4P5/dhOJcssYxtg+9aNRa42olz665BKl4R5UnZhqhc06RV5t7oXbjjFwCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=RM40uu7A; arc=none smtp.client-ip=95.215.58.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709938117;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4iEh2PMAUq+7v3qjBOKf2/gx+vzkeT997C4mreJlVU4=;
	b=RM40uu7AwPrTqjawLoFu7T9zpWxdHhjnXWmWCnb+S/8orp6Q2e34vpM+jX/kpk+I8SqH5O
	HdzB3Do4nUpSTPaSxEh/UJby9BgFwj8v5jSm8V2MReALzIPLU2/TPlIapA/8b+B9IWciRm
	UDPcmBZJqESD+Fw2Yqb+SBt1nw8mX86KvhgmLh0NJuzkdJ5plwvoHlLS6cjjM2NZe54n3T
	pHj5dLce0LVuAyGJsoNSXtfRO8rWLgCAHnuBJtfc2HXox+qb581voja2MUtXJE1h6HZD5T
	LZ1QxUcPpZZQhOz1ZHIwgnsN2iKNwLUNQ9JvSAelpjELY4MHNaoe0EPaJyyqDQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Anand Moon <linux.amoon@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Subject:
 Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for
 RK356x
Date: Fri, 08 Mar 2024 23:48:18 +0100
Message-ID: <90122541.GozVr7r7Y5@bagend>
Organization: Connecting Knowledge
In-Reply-To:
 <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
References:
 <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2622059.124UsDBANS";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2622059.124UsDBANS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org
Date: Fri, 08 Mar 2024 23:48:18 +0100
Message-ID: <90122541.GozVr7r7Y5@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Sunday, 3 March 2024 20:04:50 CET Dragan Simic wrote:
> Add missing cache information to the Rockchip RK356x SoC dtsi, to allow
> the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
> RK3566 and RK3568 cache information.  Also, it gets rid of the following
> error in the kernel log:
> 
>   cacheinfo: Unable to detect cache hierarchy for CPU 0

I tried it out on my PineTab2 (rk3566) and while I didn't see any change in 
`/proc/cpuinfo`, I did see a/the change in `lscpu` and the above quoted 
warning is now gone. Thanks :-)

Tested-By: Diederik de Haas <didi.debian@cknow.org>
--nextPart2622059.124UsDBANS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeuVswAKCRDXblvOeH7b
bm2kAPkBh88cqsatrMOjm+deVfE2DD9kLUUkNJY6NmzYGcfybwD+N9eFMp/OHYXz
T5O8TdtD111Zzvj1v66f0AOcUpzrnAY=
=ARvb
-----END PGP SIGNATURE-----

--nextPart2622059.124UsDBANS--




