Return-Path: <devicetree+bounces-83362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF389282EC
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:39:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D3F41C229C3
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 07:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B99142E9D;
	Fri,  5 Jul 2024 07:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="S72Rz4N4"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72705132111
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 07:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720165119; cv=none; b=QNDQJOlJmpnFRzZw23x/0prdyaRElze2+fYvLyYoOqTGZ5zgyA+Y0OG2ZuRW7+wSM/T3qGH5LywawYg7W0RlsIvYmnPqIL1INeA6NkHrrT4mQuzbtb8LbV1J5tUJbsT5ECDrC6HxLqIziszkJYJIzYo9gUjySkBJmJxtpDB7s5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720165119; c=relaxed/simple;
	bh=MM/5Q60hUt/S4pB65gK9E2qad2L0vjZGhx3BY/wPWPc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UpiYhvTuC+5RkJ1l0626+1e6fNxsWsna1JI5z7AaKAK3hm1R+xQAwRC/ohNkzx8CvokJ/6I4lTFmc6363hTfkYoMqZ+UhXEdaikH6wUHJuszcdGCyqUWuGhOlbgQbdVQ5o/WRzCKm1OmV9WPn8VkNjvcLFvFyhqmk/+v69Yp6bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=S72Rz4N4; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id EEA0E87FC8;
	Fri,  5 Jul 2024 09:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720165115;
	bh=k+wTC2CV9BU+QOh9R0AUaRWABHWjccuUbKu4M+E3rs8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=S72Rz4N48DZexuc1SRDxFJLJEyGk+hhnkm5aZ/tDHrh2um8HPdB2RBX436YFtXu3N
	 LZfa5FTuZGZV2r/HYBW3TWRq+pxdqamyA8mcmXS2wOQ3V6dK93laGKH7XeffWmJ8Fl
	 7A3C1VjHno443i1OuGjzm8QDeHVTxs4FJSnu1LasY9WtT//lOvMNgOCs51onc2z1f/
	 rYJ14qZJ9FJnLJy1pBlkfv4ZF6F2/sEMWhhERsD5dWgHNitTHofVWoh+bIxWjRAEAW
	 soVuaHd7IbztNHb8/Kmk8K01zGDRByjf+CDfFgV9DlDTGix4blusMQi8JutPGkq0s3
	 1vIsqYKUoxFvw==
Message-ID: <0a664eba-1c97-4222-8c88-2958f4a72672@denx.de>
Date: Fri, 5 Jul 2024 09:34:10 +0200
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
 <f2a1f9c0-3234-4839-b99c-dd33b8dfc268@denx.de>
 <daad8a12-5822-4008-9418-0287476ff424@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <daad8a12-5822-4008-9418-0287476ff424@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 7/5/24 9:06 AM, Alexandre TORGUE wrote:

Hi,

>>> On 6/29/24 22:36, Marek Vasut wrote:
>>>> stm32mp13-pinctrl.dtsi contains nearly all pinctrl groups collected 
>>>> from
>>>> all boards. Most of them end up unused by a board and only waste binary
>>>> space. Add /omit-if-no-ref/ to the groups to scrub the unused groups
>>>> from the dtbs.
>>>>
>>>> Use the following regex to update the file and drop two useless 
>>>> newlines too:
>>>> s@^\t[^:]\+: [^ ]\+ {$@\t/omit-if-no-ref/\r&@
>>>
>>> I understand the aim of this patch but I'm just wondering about DT 
>>> overlay that would need one of those configurations. IMO, in this 
>>> case the DT overlay will not apply.
>>
>> It is always a compromise, either we will have massive ever-growing 
>> base DTs or DTOs would have to ship their own pinmux settings. I think 
>> I am fine with the later option, also that's what the MP15 is doing 
>> already.
> 
> Yes, it is probably the best solution to define pinmux in DTSO that 
> would need a new pin config. For some use case, we will have pinconfig 
> duplication in dtso but as you said it is a good compromise.

Maybe someone else will chime in, let's see what the overall opinion is.

btw I didn't write it is a _good_ compromise, I wrote it is _a_ 
compromise. I think nobody is particularly happy about it one way or the 
other in this case :)

