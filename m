Return-Path: <devicetree+bounces-49551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEAE876EF6
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 04:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E5871C20B93
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 03:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779A92033A;
	Sat,  9 Mar 2024 03:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ITKjFB9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B4B12E5B
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 03:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709955241; cv=none; b=c7afIepFDBaTBwcH4NmGgTAQDQbY42yv+JRqZv/L5D8AI0fxqK9OiRnsnhcddRkfYvlvC4VlHU1r30YMgNKZoAFV8pVEgDutbPBnJuNcmcfTWZIFPoHy9c3HJ9W80gg4gJMJhUylI3vbbbu7LD8oJt18C0mISdBZA+cZX7+MXOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709955241; c=relaxed/simple;
	bh=ctWupuRrZpygeCuXAhI2gQJfipocNsiap8VYSrpyYuU=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=r9yzdfz3pPINIdH+l70NRHEfWoSn6CurCwHmavb7JzUx3DS06h7+H3zD/44Rd5jWMzxfFzklRamAVippIGrC20p3KkMCj9/KC2NvdmVEeEw926EikKc/9m+sEveJk3gR5ASRwyANlfwq7OCEPgNj9TMSmCgbcemZOf2AnCdkhtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ITKjFB9j; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709955234;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t4+I5353e+cI83JD2WcGGJqtPVJ5FDh69UyZW2V/aeo=;
	b=ITKjFB9jvpj8XRC3mtSfjw+iJ9midrzMwZA1bpEIkEtULBas3cnpGUMpFa40FgTPeLbeCR
	VkHd+hI3LY72CkH6j5cpc0Ej41VN1Aa9+ibHNZ57Uml5nGyhqbSYbHjC8tpIB7j/9s5OPz
	L8hIu+t//0jCSmuimCe9knSbfMKF5TqCnc+W9W1HNG3EVEw3npcN+pTSusmmYwSHWIQz4n
	NljdNgKe6YMc9bTHmLZg3Io3wlo8pQeDbja67VTxZBaJihDf7L2rtrGwTrHEdSwUCuenV9
	/Qr5B06/vMNsozSIBFTAHZvhdU8uqKiwyZJLvKfSbF201mQxIQfsJNR/ndZpdw==
Date: Sat, 09 Mar 2024 04:33:54 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK356x
In-Reply-To: <90122541.GozVr7r7Y5@bagend>
References: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
 <90122541.GozVr7r7Y5@bagend>
Message-ID: <4447952c7487f7cfd4d4118bbbc1eed3@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Diederik,

On 2024-03-08 23:48, Diederik de Haas wrote:
> On Sunday, 3 March 2024 20:04:50 CET Dragan Simic wrote:
>> Add missing cache information to the Rockchip RK356x SoC dtsi, to 
>> allow
>> the userspace, which includes /proc/cpuinfo and lscpu(1), to present 
>> proper
>> RK3566 and RK3568 cache information.  Also, it gets rid of the 
>> following
>> error in the kernel log:
>> 
>>   cacheinfo: Unable to detect cache hierarchy for CPU 0
> 
> I tried it out on my PineTab2 (rk3566) and while I didn't see any 
> change in
> `/proc/cpuinfo`, I did see a/the change in `lscpu` and the above quoted
> warning is now gone. Thanks :-)
> 
> Tested-By: Diederik de Haas <didi.debian@cknow.org>

Thank you for testing the patch and for reporting the inaccuracy in the 
patch
description!  I'll reword the patch description a bit and send the v2.

