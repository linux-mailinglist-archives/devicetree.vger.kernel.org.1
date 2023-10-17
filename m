Return-Path: <devicetree+bounces-9301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 567407CC8DE
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8834A1C20C73
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 16:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5082B9CA53;
	Tue, 17 Oct 2023 16:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eY4f1Uni"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5D39CA48
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 16:30:30 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB928FF
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:30:28 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507c5249d55so399947e87.3
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697560227; x=1698165027; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G0ZUMZHn3wvFYsU5SqLQBD+dmcl+H9Kyr5RC+TFVYd0=;
        b=eY4f1UniU9X6quGsUIjVsa3Fmk4O4ZkihI/JleaqUjvBmkbEnEdZF6cTx/Pjq/4r65
         PPL3arBQKeFHvwLNHXh84k7OctswFFW7bjzyg35GbxtS8LefErfoDL+34gqhv79CmRJx
         iq8T33G26srcDkCTqyOTZHb+jJhQXVx1GtEenM0uLodVFlRZfaulwooc+qzckXcgUE8B
         MUre7PHNPwKdAwXlSEqqMPz6ZlYP5D78t3eBwxwJapvd+cTS56qw+5RKSVO/XgqKSKNk
         47Nn9jXZo50erwT9k+iRYYGfxEeP5yWbxEb5Cpt6o7mpzOG+KLZccqmG6cuQcj8IG4HQ
         lz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697560227; x=1698165027;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G0ZUMZHn3wvFYsU5SqLQBD+dmcl+H9Kyr5RC+TFVYd0=;
        b=fjMJMCnVGfznuzz0XioNQzWeh8KU98ICK2i7XdU60Mptf/09PiUXT/UzF6o9W/+ziP
         purOtSoSRcwlLj94XhuQ1Y8XTWgJEf2Z6I8sJe9bEuu3fKsmQQb754NEI3qjoVFn9JnF
         FjmRK3vDdJ3GUwwXYBVjQTUspjX7la4G+6Q4gUBdwOuCfCmWdklrY1jAtQ4IDO4hKtra
         bhk3O6eGR4numrAvi6BGbG30JM05lsYlReHsCkR0cN4O25+/UsIJb81V7GDfc+bwbBb3
         cHmdO+jYZ50tBh5ktXxJB4m1A21h4qtvfPyZvYcNuLzFd8nOZ+Hgq4BBpu3zBy5uZJk6
         9fPw==
X-Gm-Message-State: AOJu0YxESJ9LJ22NsCCREflhPDnu6s+gyC8rupU1r+1nb6Mx6NFO7Lo7
	k1C9wtqobSUK6hO4CsjILJILXA==
X-Google-Smtp-Source: AGHT+IGG1ozaE0+IWIfhVotIqz0IAdLawX4MRfy3widezuDNZt4n9ouXns3q/MtSkRCIzjokPx3oKw==
X-Received: by 2002:a05:6512:4004:b0:500:bd6f:a320 with SMTP id br4-20020a056512400400b00500bd6fa320mr2729902lfb.42.1697560226942;
        Tue, 17 Oct 2023 09:30:26 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d15-20020a05600c34cf00b004063d8b43e7sm10257184wmq.48.2023.10.17.09.30.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 09:30:26 -0700 (PDT)
Message-ID: <c453e43c-2473-4da9-bc42-188cd4092682@linaro.org>
Date: Tue, 17 Oct 2023 18:30:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: msm8953: Set initial address for
 memory
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>, Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231015-msm8953-misc-fixes-v1-0-b800deca9e46@z3ntu.xyz>
 <20231015-msm8953-misc-fixes-v1-1-b800deca9e46@z3ntu.xyz>
 <ZSzoO9QhwVmL8jLk@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZSzoO9QhwVmL8jLk@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/16/23 09:37, Stephan Gerhold wrote:
> On Sun, Oct 15, 2023 at 10:26:01PM +0200, Luca Weiss wrote:
>> The dtbs_check really doesn't like having memory without reg set.
>> Address this by setting it to 0x10000000 which seems to be the value
>> filled in by the bootloader.
>>
> 
> Looks like MSM8953 has the same RAM setup as MSM8916, where the base
> address depends on the amount of RAM you have:
> 
>    <= 2.00 GiB RAM: 0x80000000
>     = 3.00 GiB RAM: 0x40000000
>     = 3.75 GiB RAM: 0x10000000
What a royal mess

Konrad

