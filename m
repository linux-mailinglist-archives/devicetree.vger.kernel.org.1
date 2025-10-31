Return-Path: <devicetree+bounces-233628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0ABC24236
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9AD03BF14E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5348732E698;
	Fri, 31 Oct 2025 09:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QzaK0tDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3E232E136
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761902039; cv=none; b=POAArz+ZM+1QcVxPJUJJ/5YVSJPvQN/lgizfosFWLoDkuuk8u669omvj6ZZXBfJOqPFfzCjYnaFStyJeM1Donh4Bsyg/lJGV90ZnWS18/4zFvlJyFDpGr+9cdXWlpOhXqWfzVXBNa6NTLQHR0+Y8oNN7HlT4f3zmrKEz9gaaE+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761902039; c=relaxed/simple;
	bh=fj2dDXJl6zM/ibn9uNkORebDcvcFug5dDwO39m4oqs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ixOWPqyb2JPzQXPAND8BeSZo6agrXB/0rXIDMLRu3EyCqh5993AzIqR9WYUoBa/MTbABkpM5oTpXYa1ifvR5xUNTs0QI2K0/g6olOwHlpqc2XdE8FQ8/9mnucCsSDeOamtHYAJv2cssj2MTr1dzVWcFczlAC7cDNtmAxdClGYVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QzaK0tDZ; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7a2754a7f6aso2785486b3a.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 02:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761902037; x=1762506837; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HnoarLXb19bER3fZtEiYJsJttG37WwsFkpglznqPRcw=;
        b=QzaK0tDZ9R7UyWlx+XTeW5zBd7wMRle/um0rDcDeXBQxwKItKXu4mdQ8Z93w44XXsi
         PtPXfC/umH85jY0fbq+nb6Xg1iMyiyuHJN1+XdYA1ukARv5yIqZ0x2Clnh+jaumerlsI
         emcDCjWayEuONvD6DlnPzMALOIKJ4FOasuE+lBEm4hnpd0UvpWLu9okFz5JUGkLHZo2C
         zjw6m5SrCDxIjFKdpZNhYyQGXdfa0PDUfXZ0NApJVwEHzzCyCED7sCq9vbR506ti3ZF5
         CNIysl1mX0Q1tPnFO5Mzjnv0fGjKhHy9zrNeGGml/8opDCRclmEtS9q8medBz0tpgak/
         nQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761902037; x=1762506837;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HnoarLXb19bER3fZtEiYJsJttG37WwsFkpglznqPRcw=;
        b=lwXvTXpLrt2TrsdGOM7gT46/DmsqHAlxQ5zLVjjD5YB2CFd32EmBtItY9UkqsWIhCm
         cAaaTnkeIBJsSBdYdF7BvaO6hpsXCx/tw6LkzKrYvAiQQg3HVi0sivNQjgskjls0npm1
         gvcu7D8vBGDN9t4Lr4SUdTvufPvXGJ+xZn4JCO+OV81LBaiiQ7bLN30nTxx8TByFDu3n
         NuGPZacUtAGWvZ3SlYQNU5whcGowmoJ1ba1AYpiyqRQEweB/dpoY8nZ4bdH4DdEkmfC+
         ++tny7ehwAUyPOrvRewp/fnuZ7Gis7RbhcAXRbucev6ScP1SfwixMUyoE6UDZ+V7vEnp
         RIww==
X-Forwarded-Encrypted: i=1; AJvYcCVsEQBSyts0KJeLAvYKmFC1PYILRCtm2fr7IKxZ0OQvDjp5wd9z4PlIaHg2NPyXBOMchcBWDDVkm6sU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9NfXQxb9u1jZIOaJOXSonlHnTR00+2QgkdNda9R1HFjEpC4vw
	2whpZ1ek8OeSBgwm+5hhvErK0UyNCX93NAlLB4BuWvZMMltQFDQ2syvr
X-Gm-Gg: ASbGncuOfp/DfRrCu6fNogCOXOwzPK1YgxZxvahUQV1dSwtGcbz976AtKyJB42FomJx
	g0QSQPorH31XcLQfDxabgl25ePlsfZwGalPtvPJYBh4tVJXGfgjPW7hrr/mB62gVbdg8I1tTsnd
	w26Kd/sA0L26aFfu2I1Ts9xZyWsvaC6Whm9IxP4YxAwDV80aNymZFaiqCaBzmX0qwV9DxypZ7S4
	7NdNPvkkuFcc9qj9APncgoX06ENdrgvby4riwd/nl0u37AO836H38+Qr3LvSDRIFbBgDjrNYxY4
	P+Dpi9V0PjLtLGT8BW+toXTMwF6KHYhjv7I+AhnwqEtxNQ9SrMEfc9NjAckpwX9xnZqX1DLIXKl
	BQTnFRsSfIKMOFMevKqdLSsudJe34NdeDnVSmQxyBia8FyLxURFdj8bL2aHHxNseV5qX4l/i8j/
	vgDANtKBJ+834JpnNopITvFCs=
X-Google-Smtp-Source: AGHT+IGjFs4oElSscRZoSOJ7pWJlm5l1cLItFpZRGYqZAztSPJKqy71nHip2TTG9mQU6ECqE+BjsaA==
X-Received: by 2002:a05:6a20:158a:b0:340:ecf3:5fcc with SMTP id adf61e73a8af0-348cc8e36bdmr3933450637.45.1761902037173;
        Fri, 31 Oct 2025 02:13:57 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d8d71690sm1487905b3a.19.2025.10.31.02.13.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 02:13:56 -0700 (PDT)
Message-ID: <a0a18b53-dc1c-4f60-8cee-4f6e5c6baa4c@gmail.com>
Date: Fri, 31 Oct 2025 14:43:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/1] arm64: dts: qcom: Add dual-channel LVDS support on
 QCS615 Talos EVK
To: Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251028061636.724667-1-tessolveupstream@gmail.com>
 <sygckhfcazo56jpmuldhctu3jnf3unekl4ahh7n3yels63ntpg@3esgqmoewfuo>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <sygckhfcazo56jpmuldhctu3jnf3unekl4ahh7n3yels63ntpg@3esgqmoewfuo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 29/10/25 21:13, Bjorn Andersson wrote:
> On Tue, Oct 28, 2025 at 11:46:35AM +0530, Sudarshan Shetty wrote:
>> Hi all,
>>
>> This patch introduces a new device tree for the QCS615 Talos EVK platform
> 
> "This patch"? There shouldn't be a need for a cover letter for a single
> patch, the patch commit message should describe itself; as any
> information in the cover-letter is lost in the mail archive when the
> patch is merged.
> 
> 
> Also, please transition to b4, per our internal guidelines.
> 
> Regards,
> Bjorn

Understood, will take care.
> 
>> with dual-channel LVDS display support.
>>
>> The new DTS file (`talos-evk-lvds.dts`) is based on the existing
>> `talos-evk.dts` and extends it to enable a dual-channel LVDS display
>> configuration using the TI SN65DSI84 DSI-to-LVDS bridge.
>>
>> In this setup:
>> - LVDS Channel A carries odd pixels.
>> - LVDS Channel B carries even pixels.
>>
>> This patch only adds the new DTS and corresponding Makefile entry.
>>
>> Thanks,
>> Sudarshan
>>
>> ---
>>
>> Sudarshan Shetty (1):
>>   arm64: dts: qcom: talos-evk: Add support for dual-channel LVDS panel
>>
>>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>>  arch/arm64/boot/dts/qcom/talos-evk-lvds.dts | 128 ++++++++++++++++++++
>>  2 files changed, 129 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds.dts
>>
>> -- 
>> 2.34.1
>>


