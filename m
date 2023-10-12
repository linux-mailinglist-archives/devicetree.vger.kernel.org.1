Return-Path: <devicetree+bounces-8222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 653EA7C734C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 18:43:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 967811C20A81
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A877828E32;
	Thu, 12 Oct 2023 16:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tfCaWNK/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DD8266C6
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:43:10 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37C1DD3
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:43:09 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c4fe37f166so5508851fa.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697128987; x=1697733787; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zYVY41+EgeHUWytKBAwadhC78OOG5e1qYcs03zGmgqw=;
        b=tfCaWNK/ainnAAJXuPCnpqPAYdC3asa6RBHES/o/dc35QeFpH7VdRy0akVec+WSIHm
         mWGyQPWe/MumoSfLhUyiGm+7nqpmsDxoSjmrOcPaOHF38g+nae/ASYXD8hJ3WPpleBNm
         9WUkohsZHXA0SUc3LUlQGMJfG9yVgGzsjKiiRd0RMMUd4hQIOoM41PELkpjHstrBHyct
         pm8ScKCEfOtXmPD02jJqWB45MLp4vvm7o1DO7lLtMJe/vtI9M3l9jXNi8i35kloYhFtD
         jfUOFeLdokOwziZeKuXizjIWKniF7bLVjo85u5u1BuStLepKzuZgFE+oHVCi0YkvUfUO
         RvCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697128987; x=1697733787;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zYVY41+EgeHUWytKBAwadhC78OOG5e1qYcs03zGmgqw=;
        b=ro99dd0eMd+zrYWAS6UDY3xxXpoQaDRNNuV9BrcszD9eVasD4OwfILgIWMJhmgyYuC
         /4px5yeJqYTKYqstzhQpbgg81Rz88e8sz0FwHRdY9izH428j7/wYZYmInnCnkt1PyByN
         ZoMmtdlSL3hUqoCoualEJh62/mpCkBwfc656CPtifek8G1DKt2epXTtcEJgWn6hucDTy
         tm1laLVd0b8SkFhTkkJswgK14kegf43y9x20xKwi509kYv1rW0prXns6j5OsBFPBBNkw
         QFiJ5MUQOhERnmptt1VoxhpkYiQc4ROhER8JKzV42186Lxx1Pl0lgX7MyY5IHbxYkk2i
         gnuw==
X-Gm-Message-State: AOJu0YysLXvk8bNtsPmt+o4wDmnSQ1INt8UyfjmAKNsMX+nQPo9hXvNF
	ptxfte3qLLmoosct7YbjRqOJHQ==
X-Google-Smtp-Source: AGHT+IGeenve8EbJFMQJB4qQEz2s+VqYDanWet9BRqfbaa2JmWYxFZ/zU/ld+lORuOYL+kjVoq3mMw==
X-Received: by 2002:a2e:9f08:0:b0:2c0:300a:82ed with SMTP id u8-20020a2e9f08000000b002c0300a82edmr20041248ljk.7.1697128987482;
        Thu, 12 Oct 2023 09:43:07 -0700 (PDT)
Received: from [172.30.204.175] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id p9-20020a2e7409000000b002bfe8537f37sm3633373ljc.33.2023.10.12.09.43.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 09:43:07 -0700 (PDT)
Message-ID: <05f205a0-7ec7-4679-83aa-3951302b4dda@linaro.org>
Date: Thu, 12 Oct 2023 18:43:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: pad sa8155p-adp DTB file
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231011111936.165581-1-dmitry.baryshkov@linaro.org>
 <ZSabeBrfhFf8T8yM@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZSabeBrfhFf8T8yM@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 14:56, Stephan Gerhold wrote:
> On Wed, Oct 11, 2023 at 02:19:36PM +0300, Dmitry Baryshkov wrote:
>> On sa8155p-adp platfor the bootloader (ABL) fails to reserve enough
>> memory for updating the DTB:
>>
>> Cmdline:  console=tty0 console=ttyMSM0,115200n8 androidboot.verifiedbootstate
>> Error adding node
>> Error carving out UEFI memory: FFFFFFFF
>>
>> Adding `--pad 1024' to DTC_FLAGS for this board fixes the issue by
>> providing enough empty space for node creation.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>
>> This replaces my previous attempt, which added DTC_FLAGS globally ([1]),
>> which was rejected.
>>
>> [1] https://lore.kernel.org/linux-arm-msm/20231009172717.2695854-1-dmitry.baryshkov@linaro.org/
>>
> 
> Thanks for making this specific to sa8155p-adp. I completely agree that
> this workaround might be needed for devices that are locked down (with
> no way to update the bootloader).
> 
> But is this really the case here? As far as I understand, the SA8155P
> ADP is the "Automotive Development Platform", i.e. a developer board
> where I would expect that secure boot is not enabled (just like on the
> DragonBoards and RoboticBoards).
> 
> Fixing this properly in the bootloader would be very easy, you just need
> to increase the DTB_PAD_SIZE I linked [1] by 1024 like in this patch.
> This would fix the issue properly, with no change needed in Linux. And
> if you have some way to communicate/contribute this back to Qualcomm
> somehow we could reduce the chance to see this problem on actually
> locked down devices in the future.
> 
> Thanks,
> Stephan
> 
> [1]: https://git.codelinaro.org/clo/la/abl/tianocore/edk2/-/blob/LA.AU.1.4.1.r2-05100-sa8155.0/QcomModulePkg/Include/Library/LocateDeviceTree.h#L59
I'm not sure how productized this platform is, but I'd be skewing 
towards Stephan's solution, Qualcomm should fix the bootloader if it's 
not EOL yet.

Konrad

