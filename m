Return-Path: <devicetree+bounces-19869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B8E7FD140
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 09:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C636282D73
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 08:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E50125A3;
	Wed, 29 Nov 2023 08:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSxUPZel"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4A71111B9;
	Wed, 29 Nov 2023 08:45:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 245B5C433CA;
	Wed, 29 Nov 2023 08:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701247516;
	bh=UXdPU/00DOBx8I3/wE+x2tqcMD+K75S/uS9lQYcwxkc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CSxUPZelmFUI0WhsDPo+TfYQ4f3DZ6eBQvGwkxs7C7+C5w66e93Uxmi6gJ39HReig
	 XASsYsEBDJXkGcbt9R5Defn6J9KPYbe5LuEbpVpmDZNANWJzpaK//Rj/Lw/12TdOco
	 8PBcJzIc3q66JcRdza4mHysFkQMk2Wqk7+Wqgl8hk1CWgL4H3wGskUzTJs2KihIOr1
	 dMrecvR3TqPeA7qZkgrg+Em/Y2jyjykDRDdmmJo626DWe84qwkPR7phmGxsf78Ob+q
	 3ENGT/jnvFxVvXp9S7f7OQdr5ot4zaAAHUuUu/Fq/vIQyINclnspoVS6kjvcHhPcHP
	 7mbItS1O+oX2w==
Message-ID: <d4a9bd79-1cb6-4da6-9380-bb8085866533@kernel.org>
Date: Wed, 29 Nov 2023 09:45:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] hwmon: ltc4282: add support for the LTC4282 chip
Content-Language: en-US
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>, Andy Shevchenko <andy@kernel.org>
Cc: kernel test robot <lkp@intel.com>,
 Nuno Sa via B4 Relay <devnull+nuno.sa.analog.com@kernel.org>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org, oe-kbuild-all@lists.linux.dev,
 Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Linus Walleij <linus.walleij@linaro.org>
References: <20231124-ltc4282-support-v2-2-952bf926f83c@analog.com>
 <202311250548.lUn3bm1A-lkp@intel.com>
 <fb2aaa4c69c88738499dfbf46ef93e3b81ca93cb.camel@gmail.com>
 <76957975-56e7-489e-9c79-086b6c1ffe89@kernel.org>
 <ac950d01-d9aa-4fb7-810d-b21335e4cc94@kernel.org>
 <ZWS90GQTJWA7DrML@smile.fi.intel.com>
 <bcc5da24-7243-42fa-a82b-48851ce17c0c@kernel.org>
 <cacce41f-f1c0-4f76-ab24-c6ea8bb0303f@roeck-us.net>
 <c7e7b7bedd5b016a29cc86f767cbec533d727ff4.camel@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <c7e7b7bedd5b016a29cc86f767cbec533d727ff4.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 29/11/2023 09:35, Nuno Sá wrote:
> On Tue, 2023-11-28 at 10:03 -0800, Guenter Roeck wrote:
>> On 11/28/23 08:50, Krzysztof Kozlowski wrote:
>>> On 27/11/2023 17:03, Andy Shevchenko wrote:
>>>> On Mon, Nov 27, 2023 at 09:12:14AM +0100, Krzysztof Kozlowski wrote:
>>>>> On 27/11/2023 09:10, Krzysztof Kozlowski wrote:
>>>>
>>>> ...
>>>>
>>>>> Wait, this was not even unusual test, just standard compile, which means
>>>>> you did not do basic tests on your end. You must build your new driver
>>>>> with W=1, smatch, sparse and coccinelle before sending upstream.
>>>>
>>>> Well, sparse is lagging in development, for the last year it's at least two
>>>> times it broke kernel builds because of being not ready for the new stuff used
>>>> in the kernel. Do we have anybody to sync this? I don't think so, hence
>>>> requiring this from developer is doubtful. Otherwise I agree, that basic
>>>> compilation with GCC/LLVM must be done.
>>>
>>> Sparse still detects several issues and handles lock annotations, so it
>>> is useful. But if you disagree with that part, I still insist on Smatch
>>> (which is actively developed and works great) and Coccinelle (also
>>> actively developed).
>>>
>>
>> Quite frankly, for my part I would be more than happy if people would read
>> and follow Documentation/hwmon/submitting-patches.rst. Most submitters don't
>> bother. That doesn't even mention building with W=1 (the much more optimistic
>> me who wrote that document several years ago thought that would be obvious),
>> much less running any source code analysis tools . Feel free to submit a patch
>> to strengthen the wording there. If you do that, it would have to be more explicit
>> then "run smatch" or "run coccinelle" because hardly anyone would know how
>> to do that.
>>
> 
> IMO, submitting patches to linux is already not the most straightforward thing in the

True...

> world. If we are now going to ask to run smatch, cocci, sparse and so on, we will
> scare even more developers from the community... I mean, the bots are also in place

This is not related to Linux at all. When you develop any C or C++ code,
you run these tools. Upstream or downstream, does not matter. Why would
you not use automated, free and easy tools to detect errors in your
code? It's just a matter of professional approach to your code.

> to help with these kind of more advanced analysis, right?

They do not come for free (someone is paying for them even if they are
for free to you) and they have delays in responses.

> 
>> Until then, there isn't really anything to insist on. I even had submitters
>> react angry when I asked them to follow the guidance in that document,
>> so I won't insist on anything that isn't documented as requirement.
>> Quite frankly, most of the time I'd probably fix up issues such as missing
>> "static" myself because I am tired having to argue about it with submitters
>> who don't care.
>>
> 
> For the record, I do care about the code I submit and missing 'static' is quite
> embarrassing, yes. The only reason why I still dind't send the v3 fixing that is
> because I'm giving more time to see if you can review some of the other changes. I'm
> pretty sure I'll be asked to change more things in v2 (as stated in the cover, there
> are still some shady things in the driver).

Sure, mistakes happen. I did my share as well. I only brought the point
that contributor should use automated tools available for free to them
before using community resources. Community resources, including the
most expensive one - review by maintainers, are scarce.

Best regards,
Krzysztof


