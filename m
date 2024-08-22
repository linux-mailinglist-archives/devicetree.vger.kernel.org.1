Return-Path: <devicetree+bounces-95691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5662395ABC0
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 05:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDBB91F28880
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 03:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E4314277;
	Thu, 22 Aug 2024 03:13:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.67.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E24F12E78
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 03:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.67.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724296397; cv=none; b=dTBRqpk+HW3RwCcgPWrl4qToJ+czhmIEOldJWdWFmiPcru9bVusZPaV+qxKP+I6FKI6wm0L8knXFEXPs6E3UGtqJe4/qQTLywSIN83mqdXHZDbTtFHzeHukcSCkkp93euUaaitSptOpbM7lRR6xpeK5MGHKfQnft4V8YUHP6z/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724296397; c=relaxed/simple;
	bh=l4LWDk+O58Kxw37GoNbNeqCiH6B2FJVjjE788hIIrjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qn0RmphysaYeDSsGQ2N78Tyksyn8OC9RTn4m2+KUmRcxBJRGwWqjKC8W+JscN7zETcOhwFCAe8phWbXmzJzrg/9/kfcnpFPFdU1kiOnHL7MxBcjmSS/U6XoATWJm4ZIfMUiOEqbcAn3UIDf+fqkXmuB4vStIbs3SjGYyNEOiAhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.67.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp80t1724296322tfvcpfc8
X-QQ-Originating-IP: jqY3a0bkQxjN7ZKmsWfjBWICqB/Nx/uhe2vrpngJqOQ=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 22 Aug 2024 11:11:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12622779271378069111
Message-ID: <0D8F14444C69EB08+cfb9ef39-4243-4dd6-859f-98ca34e00e98@radxa.com>
Date: Thu, 22 Aug 2024 12:11:58 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: amlogic: add support for Radxa
 ZERO 2 Pro
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org
References: <20240712215111.687478-1-naoki@radxa.com>
 <172416784208.3050902.355272849812987526.b4-ty@linaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <172416784208.3050902.355272849812987526.b4-ty@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

I'm sorry, could you drop these patches from amlogic/linux.git?

I changed my mind that adding new dts just for renaming product is wrong.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 8/21/24 00:30, Neil Armstrong wrote:
> Hi,
> 
> On Sat, 13 Jul 2024 06:51:10 +0900, FUKAUMI Naoki wrote:
>> Radxa ZERO 2 Pro is a ultra tiny high performance SBC[1] using the
>> Amlogic A311D chip.
>>
>> [1] https://radxa.com/products/zeros/zero2pro
>>
>>
> 
> Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.12/arm64-dt)
> 
> [1/2] dt-bindings: arm: amlogic: add support for Radxa ZERO 2 Pro
>        https://git.kernel.org/amlogic/c/8f97ee0c9f5c6fc250847d7492875a6d7152ba68
> [2/2] arm64: dts: amlogic: add support for Radxa ZERO 2 Pro
>        https://git.kernel.org/amlogic/c/69591796c5d585816a306134f6d565cf19da575e
> 
> These changes has been applied on the intermediate git tree [1].
> 
> The v6.12/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
> for inclusion in their intermediate git branches in order to be sent to Linus during
> the next merge window, or sooner if it's a set of fixes.
> 
> In the cases of fixes, those will be merged in the current release candidate
> kernel and as soon they appear on the Linux master branch they will be
> backported to the previous Stable and Long-Stable kernels [2].
> 
> The intermediate git branches are merged daily in the linux-next tree [3],
> people are encouraged testing these pre-release kernels and report issues on the
> relevant mailing-lists.
> 
> If problems are discovered on those changes, please submit a signed-off-by revert
> patch followed by a corrective changeset.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> 

