Return-Path: <devicetree+bounces-52791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAF7889A7A
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 11:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A2C21C331E2
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 10:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BD4141995;
	Mon, 25 Mar 2024 05:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="bf9fXS0f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8AFD234510
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 02:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711334506; cv=none; b=ckXi47D+B2U+R99QfSf4FVJ/GEf06ViKCU4TynzcGWo0nSVZsH0FuT8XviYMxsaYsz3X576A2x5L+n/DhoXZknRzcf9ohXWRkClQbF0krqaW/tDNfy3j7l0Kpje1YCNshJ3j5IheBx1gF5f5//8nu54FjtQQPjVfQDRT3PQBKFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711334506; c=relaxed/simple;
	bh=G6eyCkk3zcshPKj88fY6m2LVAW13sxCXTh/5Qc/MreA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=YE1Nl+vNcBdpogMJPwg+QvP+IkTVEEzdPAjmCTvuCu7UZD3gtYJmu7wq791iqSNa095soYacoibjyQGmeFh0x6NV1H+QfiNzbYYfF3oxLbOcA+lnSaH7KXczaiI79/wGhaJTmhxS9TCsjYs3UjkvQ/xq7TG7IQkXuRDZOnQbXug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=bf9fXS0f; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711334499;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s0AjBi2RF0rePA20AYHaT0lWCGd363Pz8c5elcKVlPE=;
	b=bf9fXS0f/xJ4HrbQseZ2WaI5ZocGKaDNVpqH2SXtbHQkDFSjlAEjXIJCMcZtJIycyT/yCY
	eXo/RFl98EssfPBtqKiIkxc9/tn+9VvhqFsa+tfZgOF1n5TbmAc9ZQx/O7TuqjgZ6EK7Ps
	pygBsdpDkxLcDLmIe/7PB3GtdFN1EGThz6cY1nVUAWXXFL2E5bxzDOiPfLaD3Qcdevyhhw
	BGAzYueQ2BbM+f4Ui4XCVRMep8XxJYdd5IpsRRc0Y0+S5lTyBqPd35Jf/ChyTWNVqPMrQO
	EdAJv4s93WJIuuSoQ16X5kcGnpQ2yfNAqpj1ywn0+PsP29g9Ii7S5v/9oBNkBw==
Date: Mon, 25 Mar 2024 03:41:37 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 Anand Moon <linux.amoon@gmail.com>, conor+dt@kernel.org,
 didi.debian@cknow.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3328
In-Reply-To: <171131986742.918919.14220098959078401116.b4-ty@sntech.de>
References: <a681b3c6dbf7b25b1527b11cea5ae0d6d1733714.1709958234.git.dsimic@manjaro.org>
 <171131986742.918919.14220098959078401116.b4-ty@sntech.de>
Message-ID: <e3eebf444a5440a983f5848c0d7af1e3@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-03-24 23:38, Heiko Stuebner wrote:
> On Sat, 9 Mar 2024 05:24:42 +0100, Dragan Simic wrote:
>> Add missing cache information to the Rockchip RK3328 SoC dtsi, to 
>> allow
>> the userspace, which includes lscpu(1) that uses the virtual files 
>> provided
>> by the kernel under the /sys/devices/system/cpu directory, to display 
>> the
>> proper RK3328 cache information.
>> 
>> While there, use a more self-descriptive label for the L2 cache node, 
>> which
>> also makes it more consistent with other SoC dtsi files.
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for 
> RK3328
>       commit: 67a6a98575974416834c2294853b3814376a7ce7

Great, thanks!

