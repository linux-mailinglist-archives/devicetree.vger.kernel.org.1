Return-Path: <devicetree+bounces-184624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA94CAD4C54
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 09:11:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91C0B3A7DE9
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 07:10:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A332253B5;
	Wed, 11 Jun 2025 07:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NewYGlJv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1430C1494A8
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749625878; cv=none; b=hlGn79ZQJFItktjsfunjAnC6eY95eRhlSHYtu6lISDqDYP3OoXSvysPr+c/KbTrlEC+9AxC+4xPpbum0ODp/Hw0aSkCpwYh5BFvvMYUl9U9TvazxDE3Fr4VqgMUrOBC5S6lW02oHJ1Q8fFlIDWAOOGBYVDl8xOgMMPhZAmCQDXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749625878; c=relaxed/simple;
	bh=m0b8oAwGJgxqUIEP+6pLyaommzl5HsRsbrTpWtjJ93g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bVp/tMfsgFfPAiaNyeYVln8rYqBBGy6ogU5m8JkKXZHlyls7u/wPfEf7tCjIBj/zqgubjcZTLmdJeA47JFKfBdiItzb988E4QtuBQK2n6ahyJPz4/bR8LqwJM8XxMAoE3K0g64yVyyYK3Sc8o4owzXvkGQ6hub7VjCYQ6T+f4do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NewYGlJv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 768EEC4CEEE;
	Wed, 11 Jun 2025 07:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749625877;
	bh=m0b8oAwGJgxqUIEP+6pLyaommzl5HsRsbrTpWtjJ93g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NewYGlJvfdFpX0/m9wkT+/GBuNQI0kOA/jrHlMTXdixGTrnU5otLwH6z1rIGQPLyp
	 wELfa82zHaUaKE2TSRQVAS6BYomdw6JJ4Z7DMnkWCh1EUFOgwolKwke9WRzQHanOCV
	 k+9b5r79H3ucScbo6bkhF89O3/2ayV3Gf11j9tC/rnooY5gj9gAVgiUEYO4F9e58GD
	 WOrKkZt1ZOn/ikGtfdYqRdIuQ+1jxqDf6sn9yg9pjaSOtaYtmXFd3wqmnebmkogEEx
	 pRaginJAj2ZgirVNrAMk6vm99m7Oh1Ds4Dhj82wx8HsT9UFyQFRPfsvt/6IwgWqc0d
	 x3KG2hw/0rWAA==
Message-ID: <afe90a1f-ac43-46bf-b5bd-723a214a6a2b@kernel.org>
Date: Wed, 11 Jun 2025 09:11:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: 6.16rc1 dts-bindings check fails
To: Ricardo Ribalda <ribalda@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org
References: <CANiDSCvB5yytOgvk1QC812x4zOBn5Z4_C5wqUnV+2hSQXKM54g@mail.gmail.com>
 <a2efd2e3-bab8-43ba-a236-aa5052bc35c7@kernel.org>
 <CANiDSCs0xp_PsKmyNpY3zHh9xuvJEgYXysB2wyLEZOL_+4Lokw@mail.gmail.com>
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
In-Reply-To: <CANiDSCs0xp_PsKmyNpY3zHh9xuvJEgYXysB2wyLEZOL_+4Lokw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/06/2025 09:06, Ricardo Ribalda wrote:
> Hi Krzysztof
> 
> On Wed, 11 Jun 2025 at 08:41, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 10/06/2025 18:11, Ricardo Ribalda wrote:
>>> Hi
>>>
>>> Media-CI is reporting some dts binding errors:
>>
>> Every builder of linux-next sees this, it's not specific to media.
>>
>>>
>>> /builds/linux-media/users/ribalda/Documentation/devicetree/bindings/crypto/marvell,orion-crypto.yaml:
>>> properties:reg-names:items:1: 'deprecated' is not one of ['const',
>>> 'description', 'enum', 'not', 'pattern']
>>> from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
>>> /builds/linux-media/users/ribalda/Documentation/devicetree/bindings/pci/marvell,armada8k-pcie.example.dtb:
>>> pcie@f2600000: interrupts: [[0], [32], [4]] is too long
>>> from schema $id: http://devicetree.org/schemas/pci/marvell,armada8k-pcie.yaml#
>>>
>>> When I test your  for-next tree I have the same issue:
>>> https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/log/Documentation/devicetree/bindings/crypto?h=for-next
>>>
>>> They do not affect media drivers so right now I am just ignoring them,
>>> but I wanted to know if they are under your radar.
>>>
>> You need to update your dtschema.
> 
> I was using the dtschema from pip.

Latest from pip, so June, does not have these warnings. I think you
still use May.

> 
> If I use the version from git, There are other issues as well:
> 
> $ python3 -m venv venv
> $ . venv/bin/activate
> $  pip3 install
> git+https://github.com/devicetree-org/dt-schema.git@master yamllint
> $ make dt_binding_check
> 
> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/net/snps,dwmac.yaml:
> mac-mode: missing type definition

This is old.

> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml:
> maintainers:0: 'Not Me.' does not match '@'
>         from schema $id: http://devicetree.org/meta-schemas/base.yaml#
> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml:
>         Error in referenced schema matching $id:
> http://devicetree.org/schemas/power/reset/syscon-reboot.yaml
>         Tried these paths (check schema $id if path is wrong):
>         /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindingspower/reset/syscon-reboot.yaml
>         /usr/local/google/home/ribalda/work/linux/venv/lib/python3.12/site-packages/dtschema/schemas/power/reset/syscon-reboot.yaml
> 
> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/pinctrl/xlnx,versal-pinctrl.yaml:
> allOf: Missing additionalProperties/unevaluatedProperties constraint
> 
> /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-rtc.yaml:
>         Error in referenced schema matching $id:
> http://devicetree.org/schemas/rtc/rtc.yaml
>         Tried these paths (check schema $id if path is wrong):
>         /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/rtc/rtc.yaml
>         /usr/local/google/home/ribalda/work/linux/venv/lib/python3.12/site-packages/dtschema/schemas/rtc/rtc.yaml


These are known:
https://gitlab.com/robherring/linux-dt/-/jobs/10290125099
https://krzk.eu/#/builders/117/builds/613/steps/11/logs/warnings__2_

> 
> Is there a doc besides
> https://www.kernel.org/doc/Documentation/devicetree/writing-schema.md
> that I can follow to set up media-ci properly?


To update dtschema? No clue, I just run pipx upgrade. Works for me, but
depends on your OS/packaging.


Best regards,
Krzysztof

