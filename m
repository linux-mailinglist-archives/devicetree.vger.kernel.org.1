Return-Path: <devicetree+bounces-58285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7018A13D3
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 14:02:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CA0C1F230B4
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 385C814AD38;
	Thu, 11 Apr 2024 12:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="Vy41shpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F22149DFF
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 12:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712836923; cv=none; b=scGvrMC8g1Qxz2So9tt1SuYZa2pQxz0Ss0q6qfUQBpi/8Uw+bGLvpgo8M1oMx1e4RZwSlXknbURDKGz71zdjVm2c5qlfv8qpW8R8CUxIAW1q3nMRIGiYbWNp4MGTQduzFw0TD82mV8ifh7YNIjU6EwtlggwwY6N5srBpl1dWmJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712836923; c=relaxed/simple;
	bh=doOhwiBjpxxQqY1rLrcrBqjVSCV6vzFMDlK3AJSyZz8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PhGdaSfWfGDHCvg3L+fUDLd617Z7mk8hp3OAAqt4flB4c8aawj05jByDEjnSLpCHZ9SoMNZKeoD+hJBOPP+AqXVYEKJieDYAVYMzsKlYIsj+mkdPQ5s7nQLU6rL+K8xjZ7ZewhvMmO4DNdPUXEAQqOL8ct/o5g0ZFwy8ap+MLVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=Vy41shpt; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d886dd4f18so51740031fa.1
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 05:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1712836918; x=1713441718; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uwD98CwQhR7Q3CQUV5z/ptQ0GppSR1Tt0Ic2tF4GPa0=;
        b=Vy41shptEKfU5rCAyH+3FZAL8D8PLEiJTcwl3inQUK1eQCHT2Ak7pvx9Lp8ImtbWv9
         AmD5kh3pNIVHeVnu2tghHGdjCXbxROAcx8AhSPLPEaDCAOqFtmaIQnfY5zNpk1gpyi87
         Fic19HkC2LoQVXRfpSCdGVz7nMy1xmMgMDRtufH/RSlgLNV57gv/GH0B4oVbJaNIKMbQ
         tTIBwpamKEyGaqYcxsZgJUy/bMs4Bk5ucCKLSwN6ZMo9I/0YtXDPojiez9Vr7+IoS3OE
         U4EyCkZOAjqG093+X5eQejtbOcPOqSXqdevL7/GsPYT42RJLABwkesHCI9i7qEg7iBP+
         cTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712836918; x=1713441718;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uwD98CwQhR7Q3CQUV5z/ptQ0GppSR1Tt0Ic2tF4GPa0=;
        b=ZneTujlk4I/rDd5h98vhXEI3dZw1xGgG6tJud4gR/9l60vRyObPeAJfPieVKYIgTWn
         xXZu+N8Dir20v8QQDK1f+vf+am8u0YGRaFc8hHH5U/qEcYgwxSpxpw6xk7cuc503iPjl
         6O+BPlk6bE2AkTyKGAj3p86+BsJse5po4zzj+qC29pxVj6T958grJq22qxzzGjiDk3wu
         BDd64s/D2A5fbbBfXYs/eLiVLnDYlUNaQbmmsWBNC9euWz2xOZebfb5uEPrpyHymsNAE
         QUrZQZVbPm+/CQh4+pEL5rA/9+sd+E+oFJpfcGUzV4tkvfpoqLdTvJmNF2oR1Su+wSwo
         QY8A==
X-Forwarded-Encrypted: i=1; AJvYcCUbsg1fCd18gPzmqEvnL0JjioWZJlzvtSEICIlcIEJwALrfqqIbMINxoR6hyBvQm9iBWlhdMeO5bvEDmFv6Mh1OaCGMHSzLqZW01g==
X-Gm-Message-State: AOJu0YyiMpO3GetgOgtvetDrgDuIiLCTI18QrjAjEMq3Af9rP1W2j39C
	v0oPsLcP97KXsgE9Pze/gj8ufUjxz9JdMn3ZNkMw5KFLeaNZoZEkcqTO6rNu6NU=
X-Google-Smtp-Source: AGHT+IEurZPeKh17aFb51dEYvQ9h/gbXT4M0UIujnkjMsVpDjMrgk2goKbLwPQw063dBf0HZNY1mSg==
X-Received: by 2002:a2e:9d06:0:b0:2d8:9487:7588 with SMTP id t6-20020a2e9d06000000b002d894877588mr3768627lji.38.1712836917974;
        Thu, 11 Apr 2024 05:01:57 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id j24-20020a05600c1c1800b0041643c9cb0dsm5356812wms.42.2024.04.11.05.01.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 05:01:57 -0700 (PDT)
Message-ID: <e2399efa-b326-4921-8115-dbfcecd5f9ed@nexus-software.ie>
Date: Thu, 11 Apr 2024 13:01:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "Revert "dt-bindings: i2c: qcom-cci: Document
 sc8280xp compatible""
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Loic Poulain <loic.poulain@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Wolfram Sang <wsa@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240411085218.450237-1-vladimir.zapolskiy@linaro.org>
 <94779d2c-d159-4429-b0b2-6baa83461bbd@linaro.org>
 <1b4f745b-67d3-4044-9b89-de6c2c496af5@linaro.org>
 <b6d9702d-4736-44cf-9a52-b476af4bf94c@linaro.org>
 <7ef1c0e0-bd28-43f1-a46e-4fa551714e82@linaro.org>
 <d6a92b15-f68e-4e01-aad1-6483d53b9ad9@nexus-software.ie>
 <dee67a35-62bc-4ef0-b57a-d163c6679c6b@linaro.org>
 <acca5b79-6c53-4339-b5eb-5a81b7048139@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <acca5b79-6c53-4339-b5eb-5a81b7048139@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2024 12:57, Bryan O'Donoghue wrote:
> On 11/04/2024 11:28, Krzysztof Kozlowski wrote:
>> On 11/04/2024 12:24, Bryan O'Donoghue wrote:
>>> On 11/04/2024 11:18, Krzysztof Kozlowski wrote:
>>>> On 11/04/2024 12:16, Krzysztof Kozlowski wrote:
>>>>> On 11/04/2024 12:12, Bryan O'Donoghue wrote:
>>>>>> On 11/04/2024 10:36, Krzysztof Kozlowski wrote:
>>>>>>> On 11/04/2024 10:52, Vladimir Zapolskiy wrote:
>>>>>>>> This reverts commit 3e383dce513f426b7d79c0e6f8afe5d22a581f58.
>>>>>>>>
>>>>>>>> The commit ae2a1f0f2cb5 ("dt-bindings: i2c: qcom-cci: Document 
>>>>>>>> sc8280xp compatible")
>>>>>>>> was correct apparently, it is required to describe the sc8280xp-cci
>>>>>>>> controller properly, as well it eliminates dtbs_check warnings.
>>>>>>>>
>>>>>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>>>>>
>>>>>>> I am lost. Not on your patch, because it looks reasonable, but on 
>>>>>>> entire
>>>>>>> history.
>>>>>>>
>>>>>>> Can anyone explain me why original commit was reverted?
>>>>>>>
>>>>>>> https://lore.kernel.org/all/767bc246-a0a0-4dad-badc-81ed50573832@linaro.org/
>>>>>>>
>>>>>>> Best regards,
>>>>>>> Krzysztof
>>>>>>>
>>>>>>
>>>>>> https://patchwork.ozlabs.org/project/devicetree-bindings/cover/20231006120159.3413789-1-bryan.odonoghue@linaro.org/#3195094
>>>>>>
>>>>>> We can you sm8250-cci instead, so dropped the additional compat.
>>>>>
>>>>> I am sorry, but that links point to cover letter and actually the same
>>>>> thread as I linked. What does it prove?
>>>>>
>>>>
>>>> And just to remind because you bring some discussions from driver: we
>>>> talk here *only* about bindings patch. Not driver.
>>>
>>> https://patchwork.ozlabs.org/project/devicetree-bindings/cover/20231006120159.3413789-1-bryan.odonoghue@linaro.org/#3195327
>>>
>>> Konrad pointed out we don't need a new compat because the sm8250 compat
>>> string could be reused.
>>
>> Where did he point that? I see only comment about driver, not bindings.
>> Please point me to his comment (and again, not patchwork which gives you
>> entire discussion and no one knows to which comment you refer, but lore
>> link which leads to specific one email where Konrad said it).
> 
> Konrad made a comment about the compat string in the driver, I looked at 
> the yaml and realised I could reuse the compat string.
> 
> Then asked for a reversion of the add.
> 
> I still think this is the right thing to do, no ?
> 
> ---
> bod
> 

OK I see the confusion.

I forgot to fix the compat string in the submitted dtsi.

commit 7cfa2e758bf4d56e0db5587a88db01ee6fffa259
Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date:   Thu Jan 11 17:15:56 2024 +0000

+               cci0: cci@ac4a000 {
+                       compatible = "qcom,sc8280xp-cci"

That should be "qcom,sm8250-cci" since there was no need for a separate 
8280xp compat string.

---
bod

