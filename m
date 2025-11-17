Return-Path: <devicetree+bounces-239208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EFDC62A18
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:03:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FCB43B0129
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A397730FC34;
	Mon, 17 Nov 2025 07:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIDdNVrp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B15BFBF6;
	Mon, 17 Nov 2025 07:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763362963; cv=none; b=bPsx29BWBAIxTh8QaWBG5ua5toWnrWyY5E8H9bvCtcCmJLxn48/dH/DIslvXbpASPJbqbFARFmxd2GmRZb1crC3GttMCXAIvRr9rHqpqO+m8hGmiANOfXsaCwwtgGyR2lRk5XPLzY54CXoXA60Bj1u6Z16WPrfAPpp/0LCw/D64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763362963; c=relaxed/simple;
	bh=IUQgRpXPk8d/H86BeaRM83iSMttWe9s8EbZLW6K3DWA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BE3B6v6gYalwTSAIIaoLrJ/cyDh8EHT8o98tqRKMAl6sBL1IGGSQf8yfbVrU09F1P30Bw6oxZQI39/O2BjSYVdLbbeTtar17alG44xGWGPrFEKWrPH5WdHzRxUKD3amPr7HptojvKCz75RDqH5VeIGpFwjKExaqGsmjyABfqxCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIDdNVrp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5827DC116B1;
	Mon, 17 Nov 2025 07:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763362962;
	bh=IUQgRpXPk8d/H86BeaRM83iSMttWe9s8EbZLW6K3DWA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gIDdNVrpl6Z3RSX6VOomUZYGg99gpeb3QY5Eu94xjQnFO8QPJ19qumMJgCQk3ecdq
	 RWvrWuw/WJzfU9749mfpO5NgB0IIKg6dNytJlDJb701MFY4jjiBjh9xE+bZn7uhGrt
	 dlZoz1Y+IiJPN+O51MbffjjU585GCkhNnqtrSrmO4EjSknNePNsf8vlnCV/IirvKCR
	 aW0h4lK1StVp8KIv9hz6UgQ9qvWmA+J6XV+sCfUigdEXTiL1ROotsfVXAKmuVtK9sd
	 TcdkH0t2egkuiWLj2cL5tjaKhAJvo3ZtXxt4Z2hHqgOrJ0yQuCi0WY2XTYorKdg+U9
	 yD5GT3dni63sg==
Message-ID: <159fe4c7-4d51-48ff-82a1-88ff196dcc0c@kernel.org>
Date: Mon, 17 Nov 2025 08:02:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] of/fdt: Some bug fixes and cleanups
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: akpm@linux-foundation.org, ardb@kernel.org, bhe@redhat.com,
 catalin.marinas@arm.com, changyuanl@google.com, devicetree@vger.kernel.org,
 geert+renesas@glider.be, geoff@infradead.org, graf@amazon.com,
 james.morse@arm.com, linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh@kernel.org, rppt@kernel.org, saravanak@google.com,
 thunder.leizhen@huawei.com
References: <20251114-watchful-sceptical-jerboa-a19d5c@kuoka>
 <20251115140700.182265-1-yuntao.wang@linux.dev>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20251115140700.182265-1-yuntao.wang@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/11/2025 15:07, Yuntao Wang wrote:
> On Fri, 14 Nov 2025 09:04:30 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
>> On Thu, Nov 13, 2025 at 11:50:57PM +0800, Yuntao Wang wrote:
>>> This patch series fixes several bugs related to dt_root_addr_cells and
>>> dt_root_size_cells, and performs some cleanup.
>>>
>>> Changelog:
>>>
>>> v1: Consolidate duplicate code into helper functions
>>
>> Your patchset has multiple checkpatch warnings and errors. In multiple
>> patches.
>>
>> Please run scripts/checkpatch.pl on the patches and fix reported
>> warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
>> patches and (probably) fix more warnings. Some warnings can be ignored,
>> especially from --strict run, but the code here looks like it needs a
>> fix. Feel free to get in touch if the warning is not clear.
>>
>> Please run standard kernel tools for static analysis, like coccinelle,
>> smatch and sparse, and fix reported warnings. Also please check for
>> warnings when building with W=1 for gcc and clang. Most of these
>> commands (checks or W=1 build) can build specific targets, like some
>> directory, to narrow the scope to only your code. The code here looks
>> like it needs a fix. Feel free to get in touch if the warning is not
>> clear.
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
> 
> Many thanks for pointing out these issues, they have been fixed in the new patch series:
> 
> https://lore.kernel.org/linux-devicetree/20251115134753.179931-1-yuntao.wang@linux.dev/

Not really. I don't think you run checkpatch.

Best regards,
Krzysztof

