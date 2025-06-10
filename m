Return-Path: <devicetree+bounces-184050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF9FAD2E27
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E003189075F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 06:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6159A27876A;
	Tue, 10 Jun 2025 06:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh6IsAVO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFD1221D88
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749538525; cv=none; b=OzJ+jsZQQdPpf9X2kOc9vKiozc+tuh0lTqB8Dp2li43l2c7yM9LnEqjafBE+CUCrelWTCJDaGCNs26Oq4WWXrMhHyYM/A6In7DuzjNM7I1sLs4e87W8Kuf3QgEzG8kwT7XOECNRdj+3zZtGeVd+qkEQBBXChBaaEx2WtStlhLjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749538525; c=relaxed/simple;
	bh=5+X5pK6RhsBwgUcve5X/Bm8VGFEbprpfsYBTRnMcIic=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PsaiP+6Yc3QPD50RWH3UfHFoixAZ1Gjf9uNx5iXZecLx4OC8svVxKPkdg8pOSLVLDnNA4U/NLjDHJDZ1nS2lw3Tf7rW3pha2mKjrngwNGtvCt5JyfA4i/j95Tgj4hD2bvmZWbRFb2BUqttHtYgPGjQ4xcDrvtabKnQI3z7AoDC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh6IsAVO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06EEEC4CEEF;
	Tue, 10 Jun 2025 06:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749538524;
	bh=5+X5pK6RhsBwgUcve5X/Bm8VGFEbprpfsYBTRnMcIic=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Xh6IsAVOW7Dz1hFZUKFPpGkQ5ceWG2C7F+KvQ65BDJr7yrqQw2+PGGqqkWTqvtD5P
	 L3ZHcbA/6LtZp498AisMqKG/m49tJAk1feWpfDhQ+AYbgm1XHInmwSpu8s91h4qZAb
	 u9qKDCpciw6y6yo9iEZcd50gRBo6d2OXDOq69cnWILwHr99gQ1ZIToqhyeZ7pRCmue
	 kFM82lotKn5eabGDtfhwv0j84NdyRGK+tI292+rVV/uStcGo81m/Lo6PwH3KPTQkxx
	 kSAHGZ3F3YgTfsg3o+V4akpVmbfINBP5OyENR6osaXdzjMtq3G+AhTqRXIrLgukHRb
	 QqJpushENGvtA==
Message-ID: <46fb1718-d3c9-4b83-b300-2e9f013feaa7@kernel.org>
Date: Tue, 10 Jun 2025 08:55:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: misc: Add binding for BCM63138 BootLUT
To: Shankari Anand <shankari.ak0208@gmail.com>
Cc: devicetree@vger.kernel.org
References: <20250608183745.126190-1-shankari.ak0208@gmail.com>
 <8b53a76e-cb6c-49d4-8369-c5fda9866734@kernel.org>
 <CAPRMd3nwr6fqbeUVBNkAVK6RSz_fgh3X7g79C6vc9GvKXMzAFA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CAPRMd3nwr6fqbeUVBNkAVK6RSz_fgh3X7g79C6vc9GvKXMzAFA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/06/2025 08:48, Shankari Anand wrote:
>> <form letter>
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC (and consider --no-git-fallback argument, so you will
>> not CC people just because they made one commit years ago). It might
>> happen, that command when run on an older kernel, gives you outdated
>> entries. Therefore please be sure you base your patches on recent Linux
>> kernel.
> 
> 
>> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
>> people, so fix your workflow. Tools might also fail if you work on some
>> ancient tree (don't, instead use mainline) or work on fork of kernel
>> (don't, instead use mainline). Just use b4 and everything should be
>> fine, although remember about `b4 prep --auto-to-cc` if you added new
>> patches to the patchset.
>> </form letter>
> 
> 
> Thankyou, I shall use b4 henceforth and shall be careful of sending
> the mail to the correct maintainers.


Reply inline, not top-posting by copying some parts of message and
ignoring the rest. I assume you will implement all comments, not only
what you copied here.

> 
> 
>> There are bindings for this already, why are you duplicating them? Maybe
>> you want to convert? Anyway, commit msg should explain that.
> 
> 
> Yes, there's already a YAML binding for brcm,bcmbca which covers the
> brcm,bcm63138 compatible. However, that schema doesn't account for the
> brcm,bcm63138-bootlut node or its register region, which is used for
> secondary CPU initialization.I’ll update the commit message to clarify
> that this is not a duplicate but an addition for a previously
> undocumented subnode.

No. You must not duplicate the code, but instead drop the parts of
existing TXT binding while converting. This also means conversion should
be complete, e.g. if any CPU needs to have a phandle to bootlut etc.

> 
> 
> On Tue, Jun 10, 2025 at 11:50 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 08/06/2025 20:37, Shankari Anand wrote:
>>> Add a device tree binding schema for the Broadcom BCM63138 BootLUT node.
>>> This binding specifies required properties for the boot lookup table used
>>> for secondary CPU initialization on BCM63138 SoCs, including 'compatible'
>>> and 'reg' properties.
>>>
>>> Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
>>> ---
>>>  .../bindings/misc/brcm,bcm63138-bootlut.yaml  | 35 +++++++++++++++++++
>>
>>
>> <form letter>
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC (and consider --no-git-fallback argument, so you will
>> not CC people just because they made one commit years ago). It might
>> happen, that command when run on an older kernel, gives you outdated
>> entries. Therefore please be sure you base your patches on recent Linux
>> kernel.
>>
>> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
>> people, so fix your workflow. Tools might also fail if you work on some
>> ancient tree (don't, instead use mainline) or work on fork of kernel
>> (don't, instead use mainline). Just use b4 and everything should be
>> fine, although remember about `b4 prep --auto-to-cc` if you added new
>> patches to the patchset.
>> </form letter>
>>
>>
>>>  1 file changed, 35 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml b/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml
>>> new file mode 100644
>>> index 000000000000..af4b879ba6bc
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml
>>> @@ -0,0 +1,35 @@
>>> +# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/misc/brcm,bcm63138-bootlut.yaml#
>>
>> There are bindings for this already, why are you duplicating them? Maybe
>> you want to convert? Anyway, commit msg should explain that.
>>
>>
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Broadcom BCM63138 Boot Lookup Table
>>> +
>>> +maintainers:
>>> +  - William Zhang <william.zhang@broadcom.com>
>>> +
>>> +description: |
>>> +  This describes the Boot Lookup Table (BootLUT) region for the BCM63138
>>
>> Describe the hardware not "what this document is".
>>>>> +...
>>
>>
>> Best regards,
>> Krzysztof


Best regards,
Krzysztof

