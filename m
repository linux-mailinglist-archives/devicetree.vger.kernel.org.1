Return-Path: <devicetree+bounces-252501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D15CFFFE4
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 21:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC6B93012CFC
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 20:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F46318BA5;
	Wed,  7 Jan 2026 20:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJu43v9l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA8526E6E8;
	Wed,  7 Jan 2026 20:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767817358; cv=none; b=PDKN2LC6JxoL55iyahM79lNcIhzFapjrKudGCtuRIDpOwIF0xKkXFLDdoaRzN7/YrhkPM06uIOk+oTkH5Jog+7pJAvR2AWeAlfuLwO5B5VLmOuxqMQ8+BIIhdLILTWMtvhYNnoO9OId0CB2PVn+n7Bs4CKse4FFwvA13X/gohpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767817358; c=relaxed/simple;
	bh=2/uzGL1zT1yro75q+p65ljnyNxFlj+SJ9foPOMp4V3o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RUmPEYH+BB3KZEEK+XY32dTuNF2eW5km+uDV57izQui7mEYwIPY09r8220NBcoBPeIt4PsK+mOcUYtYc9AC+SWrbsmbsbEme5GTdq1A6f8F2JJQDvXCI4V8M5TTMF5cP9oO6UGAJ21hVPg/qhXVrhKmZAwgsUJ3o5nRcAkNHcqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJu43v9l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DCA5C4CEF1;
	Wed,  7 Jan 2026 20:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767817357;
	bh=2/uzGL1zT1yro75q+p65ljnyNxFlj+SJ9foPOMp4V3o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HJu43v9lYCSA6ptpujSY9gLlG5Jcop8GNGbq9wRCp1cGKDOPIUnUvS6N4MPZ2olST
	 32tUlG/PvdkUz9OgzSzKqXijl5FnIIEaNphLyHBGjIQqqzzcgjqJLA92NU5bq8iV8k
	 HPLwnpwfnW2Pyv/A8QokJx9TuUY+FnRncUCV1xQ455OmsrcGZxrmeoRd6Mz658Kev7
	 M63Aps1LZTZua5+9vgkhYJgppJJ9cgggAG+Gasr1UIxUDxE3Vu7bhwifdGCPZgTLTp
	 FL+nrIoNvizV2tSaHEkBz5Er+/l7Uvrd9LnAVhCEHYJE3+hrJXh7VqbeUG9Dotb9m0
	 1s18AmpHDUFQw==
Message-ID: <68985605-1b18-4413-943d-c6af04c4a7f6@kernel.org>
Date: Wed, 7 Jan 2026 21:22:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
To: Timothy Pearson <tpearson@raptorengineering.com>
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Georgy Yakovlev <Georgy.Yakovlev@sony.com>,
 Shawn Anastasio <sanastasio@raptorengineering.com>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com>
 <20260107002136.3121607-2-tpearson@raptorengineering.com>
 <20260107-spotted-swan-of-sufficiency-1bfc03@quoll>
 <887779054.192722.1767805783381.JavaMail.zimbra@raptorengineeringinc.com>
 <24a1839d-5c5d-4e59-bc42-403dbc8134a4@kernel.org>
 <2068648185.192779.1767807665985.JavaMail.zimbra@raptorengineeringinc.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzSVLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGVBBMBCgA/AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJoF1BKBQkWlnSaAAoJEBuTQ307
 QWKbHukP/3t4tRp/bvDnxJfmNdNVn0gv9ep3L39IntPalBFwRKytqeQkzAju0whYWg+R/rwp
 +r2I1Fzwt7+PTjsnMFlh1AZxGDmP5MFkzVsMnfX1lGiXhYSOMP97XL6R1QSXxaWOpGNCDaUl
 ajorB0lJDcC0q3xAdwzRConxYVhlgmTrRiD8oLlSCD5baEAt5Zw17UTNDnDGmZQKR0fqLpWy
 786Lm5OScb7DjEgcA2PRm17st4UQ1kF0rQHokVaotxRM74PPDB8bCsunlghJl1DRK9s1aSuN
 hL1Pv9VD8b4dFNvCo7b4hfAANPU67W40AaaGZ3UAfmw+1MYyo4QuAZGKzaP2ukbdCD/DYnqi
 tJy88XqWtyb4UQWKNoQqGKzlYXdKsldYqrLHGoMvj1UN9XcRtXHST/IaLn72o7j7/h/Ac5EL
 8lSUVIG4TYn59NyxxAXa07Wi6zjVL1U11fTnFmE29ALYQEXKBI3KUO1A3p4sQWzU7uRmbuxn
 naUmm8RbpMcOfa9JjlXCLmQ5IP7Rr5tYZUCkZz08LIfF8UMXwH7OOEX87Y++EkAB+pzKZNNd
 hwoXulTAgjSy+OiaLtuCys9VdXLZ3Zy314azaCU3BoWgaMV0eAW/+gprWMXQM1lrlzvwlD/k
 whyy9wGf0AEPpLssLVt9VVxNjo6BIkt6d1pMg6mHsUEVzsFNBFVDXDQBEADNkrQYSREUL4D3
 Gws46JEoZ9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLue
 MNsWLJBvBaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6ei
 OMheesVS5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wA
 GldWsRxbf3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA
 6z6lBZn0WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9
 YegxWKvXXHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt
 91pFzBSOIpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gU
 BLHFTg2hYnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/
 JoFzZ4B0p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu
 4vXVFBYIGmpyNPYzRm0QPwARAQABwsF8BBgBCgAmAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtB
 YpsFAmgXUF8FCRaWWyoACgkQG5NDfTtBYptO0w//dlXJs5/42hAXKsk+PDg3wyEFb4NpyA1v
 qmx7SfAzk9Hf6lWwU1O6AbqNMbh6PjEwadKUk1m04S7EjdQLsj/MBSgoQtCT3MDmWUUtHZd5
 RYIPnPq3WVB47GtuO6/u375tsxhtf7vt95QSYJwCB+ZUgo4T+FV4hquZ4AsRkbgavtIzQisg
 Dgv76tnEv3YHV8Jn9mi/Bu0FURF+5kpdMfgo1sq6RXNQ//TVf8yFgRtTUdXxW/qHjlYURrm2
 H4kutobVEIxiyu6m05q3e9eZB/TaMMNVORx+1kM3j7f0rwtEYUFzY1ygQfpcMDPl7pRYoJjB
 dSsm0ZuzDaCwaxg2t8hqQJBzJCezTOIkjHUsWAK+tEbU4Z4SnNpCyM3fBqsgYdJxjyC/tWVT
 AQ18NRLtPw7tK1rdcwCl0GFQHwSwk5pDpz1NH40e6lU+NcXSeiqkDDRkHlftKPV/dV+lQXiu
 jWt87ecuHlpL3uuQ0ZZNWqHgZoQLXoqC2ZV5KrtKWb/jyiFX/sxSrodALf0zf+tfHv0FZWT2
 zHjUqd0t4njD/UOsuIMOQn4Ig0SdivYPfZukb5cdasKJukG1NOpbW7yRNivaCnfZz6dTawXw
 XRIV/KDsHQiyVxKvN73bThKhONkcX2LWuD928tAR6XMM2G5ovxLe09vuOzzfTWQDsm++9UKF a/A=
In-Reply-To: <2068648185.192779.1767807665985.JavaMail.zimbra@raptorengineeringinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/01/2026 18:41, Timothy Pearson wrote:
> 
> 
> ----- Original Message -----
>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel" <linux-kernel@vger.kernel.org>, "Rob Herring"
>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn Anastasio"
>> <sanastasio@raptorengineering.com>
>> Sent: Wednesday, January 7, 2026 11:18:09 AM
>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
> 
>> On 07/01/2026 18:09, Timothy Pearson wrote:
>>>
>>>
>>> ----- Original Message -----
>>>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
>>>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
>>>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
>>>> <linux-kernel@vger.kernel.org>, "Rob Herring"
>>>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof
>>>> Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
>>>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>,
>>>> "Shawn Anastasio"
>>>> <sanastasio@raptorengineering.com>
>>>> Sent: Wednesday, January 7, 2026 1:25:10 AM
>>>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>>>
>>>> On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
>>>>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
>>>>>
>>>>> The Sony Cronos Platform Controller is a multi-purpose platform controller
>>>>> that provides both a watchdog timer and an LED controller for the Sony
>>>>> Interactive Entertainment Cronos x86 server platform. As both functions
>>>>> are provided by the same CPLD, a multi-function device is exposed as the
>>>>> parent of both functions.
>>>>>
>>>>> Add a DT binding for this device.
>>>>>
>>>>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
>>>>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
>>>>> ---
>>>>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
>>>>
>>>> How this can be a v6 with no changelog at all and still not tested?
>>>>
>>>> What happened with this patchset? Where is it explained?
>>>
>>> Changes have only been to fix issues identified in review and any posted
>>> autotest failures.
>>
>> And where is this explained? Please always provide detailed changelog in
>> the cover letter or individual patch.
>>
>>>
>>> Please note that the tooling to check the DT bindings does NOT appear work
>>> properly, we've wasted a lot of time and effort attempting to get it running
>>> only to find that it's spitting out internal Python errors even for other
>>> drivers that are *already* in the kernel source tree.  This obviously creates a
>>> situation where it's difficult to pre-check the patch set for compliance; if
>>> you want to see this first hand, spin up a Debian Sid VM (which has a very
>>> recent version of the DT tooling from late 2025) and try to check any of the
>>> in-tree MFD drivers using the documented methods.
>>
>> I am using DT schema on multiple distros, including Debian but not Sid
>> but Trixie
>> (https://krzk.eu/#/builders/91/builds/116/steps/13/logs/stdio). Works
>> without problem...
> 
> Good to know.  There is next to no documentation on the required software versions to make this work, which complicates
> 
>> On regular Debian based distro this is just few commands - pix install
>> and them make dt_binding_check - so I am surprised you spent a lot of
>> time on setting this up.
>>
>> What is the problem exactly?
> 
> Good to know.  There is next to no documentation on the required software
> versions to make this work, which complicates setup.  Bookworm's DT package was
> too old when it was tried pre-Trixie release, and at the time Sid didn't work
> either for some other reason.  The assumption was that the kernel needed a very
> recent version of the DT tooling, so Sid was tried again this year.  Will try
> Trixie before the next patch update.

So you mean from distro? We don't use it from the distro because it's
heavily outdated. It makes no sense. That's why I wrote - pipx.


> 
> Here is example output against an in-tree driver, using an up to date Sid system
> (word wrap not applied so as to make the errors easier to read):
> 
> dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/silergy,sy7636a.yaml
> 
>   CHKDT   ./Documentation/devicetree/bindings
> Traceback (most recent call last):
>   File "/usr/bin/dt-doc-validate", line 8, in <module>
>     sys.exit(main())
>              ~~~~^^
>   File "/usr/lib/python3/dist-packages/dtschema/doc_validate.py", line 66, in main

Feels liks distro package. Never saw this, but again I have never used
distro and have absolutely never recommended even trying that. There
were problems with matching jsonschema package, but regardless - if you
use distro you will use very old schemas, so you will hit another
problem. It's just pointless to rely on distro here - no benefits for
you, but only stale/old package, especially that installing via pipx is
easy.

Best regards,
Krzysztof

