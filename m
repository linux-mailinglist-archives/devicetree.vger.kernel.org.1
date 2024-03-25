Return-Path: <devicetree+bounces-52794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC830889757
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 10:13:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B012B39D2F
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 08:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8EBA1487C9;
	Mon, 25 Mar 2024 05:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="UDIM3dI4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E385B23DC5B
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 02:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711334536; cv=none; b=BG11qbs5Uj/KjVMBfNTqEiQNaWqAD8KkXARhhOROTfk5xYl8Dt6ZtRRjFhL4GAGO1y8LlwQ9OxCzHwTWuAIRu1zePtqES7dInnsZTqfniE9S/JtC6nmvnuMYq1Ev5+5/mz5CxI5PBIBYFrrXNdwBWSMM4Yzak7jdYZUp2wFGdpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711334536; c=relaxed/simple;
	bh=8eBcKVY7BmFI0KfOdiTDkwmtv+uQitcFF0iGyHqq73Y=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=dG7NXO/lxtV6/3gptEVQbA+c5vuX+pbvVzEsGFb34gkLNLf3yYgn45eSUyxeQGfzhi+J3Dy8HykziAKWa8PUJEk5BEuiOoo8/ZMXoVmSD1UlGecPH7M7b/S538zaPPSioQ6fiyscEuCcCdSWjlsuYxoJzyeKlDGka+TgwNbr+WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=UDIM3dI4; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711334531;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ICiTRU69evBYmpC+9SL61xwGacu5V9Do/Dh0LAgG0fc=;
	b=UDIM3dI4xUDEVwPAK4QCaG15+X2zuFGVVstmuFTrvE9xmAqXLxyHVr/pitO5AZjfBksQVT
	+I2/UIr4vrAmTKq6JnFt0yz/7ysPoLz0n1D3PXf3JIK56AL3ANwFc6IzTeZvmMoMADlF+0
	vtCsmgB8QCQjJvba37qMLtqL52R9xWCupDiIHsIzuO8IFD6KVT3SuWZePRhcMkLe3fLl/9
	/qsgeqAV5/kU187c5QY+sbUXUmIBVSYT2AXsLTIOEJWhjcmRvacx9f47K3YdWCmtRcxBi1
	LDbwLy0vK+4/4wQknBoYNZK/TR/wVq9av5KupzbkWGX/tzDJb8tCJUS6Sy8AnQ==
Date: Mon, 25 Mar 2024 03:42:10 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Anand Moon <linux.amoon@gmail.com>,
 krzysztof.kozlowski+dt@linaro.org, Diederik de Haas <didi.debian@cknow.org>,
 conor+dt@kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK356x
In-Reply-To: <171131986742.918919.14022674824297453334.b4-ty@sntech.de>
References: <2dee6dad8460b0c5f3b5da53cf55f735840efef1.1709957777.git.dsimic@manjaro.org>
 <171131986742.918919.14022674824297453334.b4-ty@sntech.de>
Message-ID: <e5129024642fe34a2885ac6451670424@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-03-24 23:38, Heiko Stuebner wrote:
> On Sat, 9 Mar 2024 05:25:06 +0100, Dragan Simic wrote:
>> Add missing cache information to the Rockchip RK356x SoC dtsi, to 
>> allow
>> the userspace, which includes lscpu(1) that uses the virtual files 
>> provided
>> by the kernel under the /sys/devices/system/cpu directory, to display 
>> the
>> proper RK3566 and RK3568 cache information.
>> 
>> Adding the cache information to the RK356x SoC dtsi also makes the 
>> following
>> warning message in the kernel log go away:
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for 
> RK356x
>       commit: 8612169a05c5e979af033868b7a9b177e0f9fcdf

Great, thanks!

