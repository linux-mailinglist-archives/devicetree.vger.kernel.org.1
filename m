Return-Path: <devicetree+bounces-10696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 181617D282A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 03:55:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33B1D1C208A8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 01:55:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F00231106;
	Mon, 23 Oct 2023 01:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17800ED0
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:54:55 +0000 (UTC)
X-Greylist: delayed 63 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 22 Oct 2023 18:54:54 PDT
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 23102F7;
	Sun, 22 Oct 2023 18:54:53 -0700 (PDT)
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 23 Oct 2023 10:53:50 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 124862059053;
	Mon, 23 Oct 2023 10:53:50 +0900 (JST)
Received: from kinkan2.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Mon, 23 Oct 2023 10:53:50 +0900
Received: from [10.212.246.227] (unknown [10.212.246.227])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id 56743B1D40;
	Mon, 23 Oct 2023 10:53:49 +0900 (JST)
Message-ID: <dc5ba655-e739-bb24-263c-5f362b0d0f35@socionext.com>
Date: Mon, 23 Oct 2023 10:53:52 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [RESEND PATCH v2] arm64: dts: Update cache properties for
 socionext
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, soc@kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: Pierre Gondois <pierre.gondois@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231020195022.4183862-2-robh@kernel.org>
 <ccb48488-7fa2-4784-8c5c-7d6084d16016@linaro.org>
Content-Language: en-US
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
In-Reply-To: <ccb48488-7fa2-4784-8c5c-7d6084d16016@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Krzysztof, Rob,

On 2023/10/21 6:26, Krzysztof Kozlowski wrote:
> On 20/10/2023 21:50, Rob Herring wrote:
>> From: Pierre Gondois <pierre.gondois@arm.com>
>>
>> The DeviceTree Specification v0.3 specifies that the cache node
>> 'compatible' and 'cache-level' properties are 'required'. Cf.
>> s3.8 Multi-level and Shared Cache Nodes
>> The 'cache-unified' property should be present if one of the
>> properties for unified cache is present ('cache-size', ...).
>>
>> Update the Device Trees accordingly.
>>
>> Signed-off-by: Pierre Gondois <pierre.gondois@arm.com>
>> Reviewed-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> Link:
>> https://lore.kernel.org/r/20221107155825.1644604-21-pierre.gondois@arm.com
>> Signed-off-by: Rob Herring <robh@kernel.org>
>> ---
>> I noticed this one fell thru the cracks from the rest of the series.
>>
>> Arnd, Can you take this directly.
> 
> A bit after Pierre - in April 2023 - I sent similar which was said to be
> "applied":
> https://lore.kernel.org/all/f9a2c0d7-a78d-9368-f9bb-e8aba11e7d81@socionext.com/
> 
> Maybe the Socionext status in MAINTAINERS should be odd fixes?

Sorry my mistake.
I thought Pierre's patch had been already applied, however,
I set Krzysztof's patch to "applied" but it was missing from the post to soc.

Since Krzysztof's patch includes the same "cache-level" lines as Pierre's,
the lines needs to be removed.

I'll post the update series including both to soc.

Thank you,

---
Best Regards
Kunihiko Hayashi

