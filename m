Return-Path: <devicetree+bounces-83288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88797927CF6
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 20:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B962B1C21C4F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 18:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E158862171;
	Thu,  4 Jul 2024 18:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="jChxk3Gh"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D416DD0D
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 18:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720117447; cv=none; b=VYvMDtBnO2CTcip0GsBrpdVT7Jw2P/SFPgwgpWwZBc4AMFIFbpc7W0mHWJzNn3uOg1qFhYu3UxBCQFx+xeF27b2sFEJ+SKn9Rg2eSv/aw0hTN80S87V47FUYnSPFWi4t/0Un0zk6yI+C4uSH+kxri6580rZIHW1yjp3t3qOF0So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720117447; c=relaxed/simple;
	bh=NEz6yvqNm9W1rublLyUMReUaknau088zIvVrSedcyVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CpK9ch25XFM0RfOAdYpnR0bzH+LeHvHvk8KF3qosU1UakJGT7YahxgoO5q6sNmP/U6fGB6DDSTSKKjXXcjD35QNJs7KPb9CwIz03nXM3j5WlFZhxcZWBP/q1D/CaAODCap5bnKtM252zKIYdN4ywgIs3fFaIBrfYTzZs0n75F9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=jChxk3Gh; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 3B00B888EB;
	Thu,  4 Jul 2024 20:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720117437;
	bh=RQNlOASpYPF+FOJ9kBWM+LXgM6BznGbxCQ7+u4Z50KY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jChxk3GhUX1DznBRyaVoKVFX6wP2TCdLf0t8vvXpm5r76lpOX2V5xfc3AhkVy1HTe
	 /ihUys8z5/Zod6TJvbq6NhOWe8tfGdJURFkdcZFkNgHHf1hZGRzUMZT7AxyUtNM9RX
	 JIYKzi0EEV1zAQQ6Aan/CYsbuCI13/6KzMABOC3sZRUXlwY2rpB6hieBj6sjXoVi5u
	 tm4kz0EgUNVOJsnh0VQ8vQSGw/X+qqykmyplrT2NAre6nLicibIWQWVL801tk7V6wY
	 YmELrKnldMMiGfMgGN149t6TK17Tw93zEz0EeiPOpfVUQeTYR/rgjZkoq/y/ZNZPsQ
	 6DCixR6YnFGNw==
Message-ID: <f2a1f9c0-3234-4839-b99c-dd33b8dfc268@denx.de>
Date: Thu, 4 Jul 2024 19:56:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: omit unused pinctrl groups from
 stm32mp13 dtb files
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Christophe Roullier <christophe.roullier@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20240629203706.93145-1-marex@denx.de>
 <f303a45a-3844-485c-8971-f71a46b8b0fb@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <f303a45a-3844-485c-8971-f71a46b8b0fb@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 7/4/24 6:40 PM, Alexandre TORGUE wrote:
> Hi Marek

Hi,

> On 6/29/24 22:36, Marek Vasut wrote:
>> stm32mp13-pinctrl.dtsi contains nearly all pinctrl groups collected from
>> all boards. Most of them end up unused by a board and only waste binary
>> space. Add /omit-if-no-ref/ to the groups to scrub the unused groups
>> from the dtbs.
>>
>> Use the following regex to update the file and drop two useless 
>> newlines too:
>> s@^\t[^:]\+: [^ ]\+ {$@\t/omit-if-no-ref/\r&@
> 
> I understand the aim of this patch but I'm just wondering about DT 
> overlay that would need one of those configurations. IMO, in this case 
> the DT overlay will not apply.

It is always a compromise, either we will have massive ever-growing base 
DTs or DTOs would have to ship their own pinmux settings. I think I am 
fine with the later option, also that's what the MP15 is doing already.

