Return-Path: <devicetree+bounces-3686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C77897AFDD7
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:12:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7934A283C7E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0D41D557;
	Wed, 27 Sep 2023 08:12:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E05F504
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:11:58 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 193BD1BF2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 01:11:40 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-31f737b8b69so9154521f8f.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 01:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695802299; x=1696407099; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3ckTbHwDfKzFbEI8tdS6hS5ynC3aqs1kXGK7gaHMXpc=;
        b=vJ2BgLML1YkR6GUzMBZQyQ8dehgqPRFZaY8Xh3mLH+vO434g2aWMUt7hOHkP9WxjmH
         T2hHh75G6LskoatP+9oVym2Sk+I9bOKg+ua8u3/a1tWXcpE8SJ4Og3zjHCdqrFeZML4i
         IbcbJ9UdZaG7lAO71Fhiz3yIIQsxg/Q6/tOKODHI6RNJaE/Jwi9IRFW9K/xgl7HmT1IF
         5R24BuCeIebA3duVY6GKyHHQzInqiz8nSUsh5QUbTz4ctkfks2vJCLI+fH0xIXrFQ4UJ
         ovzh7WJPRlN+a/WKlZi+GZMFWQ/F1SY4jZKMkFslMRLB/T4YuC4HkKGWw+hApUCFxqTN
         S22A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695802299; x=1696407099;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3ckTbHwDfKzFbEI8tdS6hS5ynC3aqs1kXGK7gaHMXpc=;
        b=SEdJfU5Iu8o1Kf4MlqafQgh9XCEdfDO+lGAn33f5nT6UaY+oaGJdqOaqpYgKvVKcob
         GznR7kUVFWNxI7vYddacjEJkd2ZABVNGONcTk4S3KSomGA9e3TzSP8OYoulZ7nThrsFu
         Z+/wupkCCSnDG4Gxu1X40D/437IqixzqOUovRkEXlh89F8U5545T69ExEIGMkqnhUYzw
         9uHElnkW7hKjQ11dYciuW2s0j33EEELNuGn/nLlX1bUtSrGmVW1gLPxjiZ+wLTlzFiDB
         XPQgfggL8FbYlCrND+28IJPAnbb0JMWGsR0qIVbsKLR1vKQyvaKmDJ7kfmNQzajYSBo/
         ClfQ==
X-Gm-Message-State: AOJu0YwKPjYI7iEoZJ+07YJzO9Ti9QkR5sHQral8ZamayJqOXD57BZuh
	7AuoYhwEf368iMbac4gHJpfBUQ==
X-Google-Smtp-Source: AGHT+IF2l9Sai5n3yixiIddWbof/CUWzBiu0+9NTPTJD2EieajhSUDrqyEmJt8yl5o/Ukr5g9z8moQ==
X-Received: by 2002:a5d:4ec1:0:b0:321:504a:bc9a with SMTP id s1-20020a5d4ec1000000b00321504abc9amr775399wrv.71.1695802298786;
        Wed, 27 Sep 2023 01:11:38 -0700 (PDT)
Received: from [192.168.27.65] (home.beaume.starnux.net. [82.66.176.246])
        by smtp.gmail.com with ESMTPSA id b15-20020adfde0f000000b0031c6cc74882sm16621381wrm.107.2023.09.27.01.11.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 01:11:38 -0700 (PDT)
Message-ID: <c45df003-43fe-8ec1-42dc-9f688cc24acf@linaro.org>
Date: Wed, 27 Sep 2023 10:11:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.15.0
Subject: Re: (subset) [PATCH V3 RESEND 0/6] Power: T7: add power domain driver
To: Lucas Tanure <tanure@linux.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
References: <20230911025223.3433776-1-xianwei.zhao@amlogic.com>
 <169444496123.3944766.3763051739383485051.b4-ty@linaro.org>
 <916aea7d-50ba-45d8-9b3c-0f507c922601@linux.com>
Content-Language: en-GB
From: Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <916aea7d-50ba-45d8-9b3c-0f507c922601@linux.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Lucas,

Le 27/09/2023 à 08:05, Lucas Tanure a écrit :
> On 11-09-2023 16:09, Neil Armstrong wrote:
>> Hi,
>>
>> On Mon, 11 Sep 2023 10:52:17 +0800, Xianwei Zhao wrote:
>>> First patch is that remove C3 some power domain ALWAYS_ON property.
>>> Second patch is that add driver to support power parent node.
>>> Third patch is that turn on power if initial power domain with
>>> "AWAY_ON" property state is off.
>>>
>>> Other patchs adds power controller driver support for Amlogic T7 SoC.
>>>
>>> [...]
>>
>> Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.7/arm64-dt)
>>
>> [6/6] arm64: dts: amlogic: t7: add power domain controller node
>>        https://git.kernel.org/amlogic/c/5355699dabac3c97492a30e6e01820fcaae11218
>>
>> These changes has been applied on the intermediate git tree [1].
>>
>> The v6.7/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
>> for inclusion in their intermediate git branches in order to be sent to Linus during
>> the next merge window, or sooner if it's a set of fixes.
>>
>> In the cases of fixes, those will be merged in the current release candidate
>> kernel and as soon they appear on the Linux master branch they will be
>> backported to the previous Stable and Long-Stable kernels [2].
>>
>> The intermediate git branches are merged daily in the linux-next tree [3],
>> people are encouraged testing these pre-release kernels and report issues on the
>> relevant mailing-lists.
>>
>> If problems are discovered on those changes, please submit a signed-off-by revert
>> patch followed by a corrective changeset.
>>
>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>
> I re-tested this today with Vim4 and works fine.
> By works I mean, vim4 is able to boot without panics but drops to emergency shell as expected.
> 
> I was not able to find patches 1-3 and 5 at amlogic/for-next.
> Is there a reason why amlogic/for-next only have DTs changes?

 From now I'll only take the DT and the genpd/ changes will go into the new
subsystem maintained by Ulf.

You should use the daily linux-next tree which would contain both trees merged.

Thanks,
Neil

> 
> Tested-by: Lucas Tanure <tanure@linux.com>
> 
> 
> 


