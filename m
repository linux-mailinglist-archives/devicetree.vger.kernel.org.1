Return-Path: <devicetree+bounces-104046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0431297D21A
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 09:58:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28CCB1C22C99
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 07:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828C057333;
	Fri, 20 Sep 2024 07:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="PNr44RVR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806B555897
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 07:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726819130; cv=none; b=XXYx0T5Sa00S2rwjoEBfBHGIMTLAm4QnPdDaXsVyCCyV/hg0u8p6aESOa4guc9rURg/AuleS5V7wWBmXJqTUZ3Q1xB41NA7Roh6b2mNYwpH81YPYByFt5J7b/YDbFN7o1kkxnA/paf0dAAsqzBbuFjyxipY8poYYkf1Mz7FnhRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726819130; c=relaxed/simple;
	bh=G8gaXS3CKvy6upathpVQhGzsGg8TbragSm/BWYuq5gs=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NDqzE+oEV3IqdIhq0et0T4Ku7eceWXmOkJYDZJHickM63066tkrdo07gKJFFUoVJHFCAZfT6PCZ08VCH/VrfQegGXYFhQwYnIbIwXg4PmXD7ws3SY76D6rA3IThsOe+3oHF6h7KGPfRN7xVWjWahln739TK+N1yMRLDNVIdBrXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=PNr44RVR; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f762de00e5so18876061fa.3
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 00:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1726819126; x=1727423926; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=G8gaXS3CKvy6upathpVQhGzsGg8TbragSm/BWYuq5gs=;
        b=PNr44RVRfDF/5JPhE+/WmZjTczCrusm+oDep7dkLfajMf9tLjDyn2MW+/lfwweM/mZ
         oQWqIsZPKQ5u7C0UjIFz2uzF2Hx9mXZRY08gHKcvp3n3s5e/OYN4T5tTiRjUI74rbs5X
         /cEIp+cwcUmIDQPPTjwahf4RPWGNlhJziEeGn/2HVsRJvSiYolJI1wsOXgClVGxVwoCo
         +00q/SqJ9GiaFYnQ7UjbRgXqW7GGh+zA6l2H7j+KmRi6EYZaMJO1cZblSTxRMbcmNUDm
         Lz9+DatKGNccZqDvKVpWllnlu/TsevTujp0715iCiL9qcxObyzaFdRbxrKJq2XdggtiT
         JV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726819126; x=1727423926;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G8gaXS3CKvy6upathpVQhGzsGg8TbragSm/BWYuq5gs=;
        b=P+q96k24HyQURFMSripb3QmV1iqyhhSwDhKg2f253e5CZdkyUuCli8gLgUC6yDvWzE
         IsmDb4WFao3gw+A2ZK1cfLacVI1c/6DVkoRANoTdUueP02MMb2uj/6z5UWiXfztEBp0V
         WkyULJg2tZpu5gc5RwcFBYBU9/XVo1GJATe57xAYxj3Y5b8XdEWjuK1USPfJA0G4uQOm
         DmR1VFl7E71SxROovrP6cQ7jN1A9VmgyV/yHIwOLl6ejHNAWP8O3jAtNIDNhmRlwKH6f
         UT+TdQUhAlNexToz+slmEn1YHuCCZ7w4tgmvdnw4/2MgC4PH97p9zHn51l+gv1pMZ8J0
         HKhA==
X-Forwarded-Encrypted: i=1; AJvYcCUmS7nz2H4VQbQIfgX4K/KIiyejnqUYEkcEmZpqrBtwTmllIfcVaSX/9WbqssksEByfoHhTprVaua1L@vger.kernel.org
X-Gm-Message-State: AOJu0YxYn0yetzCyvoRir6oM6RZW1DTxwh+YR9uW6MJx1giPe8Tn+AQ1
	1GXzwVImS2L0VIC0wQd4v5jjvralIfG/+sw15zBY0lOFE8M4P8zbycwIyPjPR0hDxLhiOJRtXe7
	qACF5jqyHMMd/sT/jO0j9Zm+wUUlQFehdAgyq3A==
X-Google-Smtp-Source: AGHT+IFWhG3CUQa9G9CqIMZPY+ykvt6XfSEiCGRn8+DLsrcQfk28XzMJQ1zmPWWX6CXejRPycjDQwRCnYNST7lawdRc=
X-Received: by 2002:a05:6512:12cc:b0:52f:368:5018 with SMTP id
 2adb3069b0e04-536ac32e5d5mr1155885e87.43.1726819126421; Fri, 20 Sep 2024
 00:58:46 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 20 Sep 2024 00:58:45 -0700
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <87ed5ec09z.fsf@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814082301.8091-1-brgl@bgdev.pl> <83c562e9-2add-4086-86e7-6e956d2ee70f@kernel.org>
 <87msk49j8m.fsf@kernel.org> <CAMRc=McEWWm8N++4a5LMCAa0GWsQdi0KuSpj3ZuS_he=H0LP+w@mail.gmail.com>
 <87ed5ec09z.fsf@kernel.org>
Date: Fri, 20 Sep 2024 00:58:45 -0700
Message-ID: <CAMRc=MdyHx72o=6Kf0AM69tQBLjuvRVepN0UNjt+Kf4LX3PaMA@mail.gmail.com>
Subject: Re: [PATCH net-next v2] dt-bindings: net: ath11k: document the inputs
 of the ath11k on WCN6855
To: Kalle Valo <kvalo@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"

On Fri, 20 Sep 2024 08:22:16 +0200, Kalle Valo <kvalo@kernel.org> said:
> Bartosz Golaszewski <brgl@bgdev.pl> writes:
>
>> On Thu, 19 Sep 2024 09:48:41 +0200, Kalle Valo <kvalo@kernel.org> said:
>>> Krzysztof Kozlowski <krzk@kernel.org> writes:
>>>
>>>> On 14/08/2024 10:23, Bartosz Golaszewski wrote:
>>>>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>>>>
>>>>> Describe the inputs from the PMU of the ath11k module on WCN6855.
>>>>>
>>>>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>>>> ---
>>>>> v1 -> v2:
>>>>> - update the example
>>>>
>>>> I don't understand why this patch is no being picked up. The code
>>>> correct represents the piece of hardware. The supplies should be
>>>> required, because this one particular device - the one described in this
>>>> binding - cannot work without them.
>>>
>>> I have already explained the situation. With supplies changed to
>>> optional I'm happy take the patch.
>>>
>>
>> No, silent NAKing and needless stalling is what you're doing. I responded to
>> your last email with extensive clarifications. You're being told by the
>> experts on the subject matter (Krzysztof and Conor) that the change is correct.
>>
>> The change has no functional impact on the driver code.
>
> Until now it was possible to use qcom,ath11k-calibration-variant DT
> property with M.2 devices. If your patch is applied that's not possible
> anymore.
>

This is incorrect, why do you keep repeating it? What will be impossible is
upstreaming DT sources which don't take these supplies - which is what we want.


>> It's also in line with commit 71839a929d9e ("dt-bindings: net:
>> wireless: qcom,ath11k: describe the ath11k on QCA6390") under which we
>> had literally the same discussion and that you ended up picking up
>> after all.
>
> I don't care about QCA6390 as it's not really used anywhere anymore. I
> picked up 71839a929d9e, even though I considered it to be wrong, so that
> your pwrseq subsystem is not delayed. But WCN6855 is a different matter
> as it's more widely used.
>

In upstream sources, it's only used in X13s and I added a node for it to
sc8280xp-crd but that's not upstream yet. Am I missing anything? As I said
several times: for out-of-tree DTS, this change does *not* matter.

>> Arnd: I've added you here to bring this to your attention because it's somewhat
>> related to what we discussed yesterday. It's a change that is very much
>> SoC-specific, that has trouble getting upstream due to the driver's maintainer
>> unwilingness to accept it. Is this a case where a change to DT bindings should
>> go through the SoC rather than the driver tree?
>
> Like I have said, I'm happy to take the patch if the supplies are
> optional. Why can't we do that?
>

Because this patch reflects the reality of the chipset. And device-tree is
supposed to model the reality. It's not there to configure your firmware
loader.

Bartosz

