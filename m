Return-Path: <devicetree+bounces-34361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C49A8397FA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:41:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FCB81C27007
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8671481AD3;
	Tue, 23 Jan 2024 18:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hjoGIbtT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA00D7FBC5
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706035297; cv=none; b=Viv+inmd4cRVFSXq3C4pP/RLc07abLnqCpdkWG0Ocp0I3osTUDpFpt6YCqGvlxXCF2igaJC3ZMAzvNzZA1H/9P0A/wTdDWCdx/+eomyO+vP5rYi++i/O/hBb9pGRxSe38HTAWI2PdtC3zXLcJlcwONd7zqJmzhIDDgz6RG68yBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706035297; c=relaxed/simple;
	bh=5Z8UwiAp5u+3S5PaC31HB/zFb6BCfvOQCRiQrc3xwks=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FFW/rvtD159NmgHN1QohdqK211u14NreGsEL1HgXaV6jHm/2akzKNIDZXy1CnjX3ED+z9/HXwr2vRvEY9I6zY7vY2wbOmGSURdL5fZafYcLEFyqtFsXbhqYtJ3awclZIqky9/LKPf2oJCtRMuo6s1mHBOzt3o/v4+ZRcWPRlRj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hjoGIbtT; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50e7b273352so4886511e87.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706035294; x=1706640094; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AaVxPRhE878jN2DUtSbnFzkKwVO+PgXSHCcaR8B9SpU=;
        b=hjoGIbtTOJmHxl27IKEN+ePrXYEAsoL+dEmIQ3n27iEOi3iClm+oD9vBiibRSS2YN4
         JwpRj3KwgQDaItKApIgDWyAYBdlLcBW7d+JW4+HYTffmeZQiZ5dMKu97nHK6+xnEqBlH
         b4OJRapomm/e2CMDcAHrfmlzS+Iba/fdmg697ZdtIvJB7bnmwFpAKMPEP/zcxWhllXAt
         85GmlpTgBX1+s0567MYE2S7E05ldzulhJ5m58LbGSRd/+l2LmWUEi2SBufudeoeBMvzI
         uPMyCozQjiAiuLhxB0KK5AHr0t34OW8Qw1hLJG9EB6kxRPOZJlj3zgL3hY+UPzJY3K0Y
         zPOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706035294; x=1706640094;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AaVxPRhE878jN2DUtSbnFzkKwVO+PgXSHCcaR8B9SpU=;
        b=lfNv0W1UJ0BeJhxT8pSrddkwJievVQ5o92XKeVR9F+WMNypZe4wq+bgJ9Fg5RxvzMt
         gGrfyMlk1WFU3KvoL6fzBwOf1U0dFzLW0ReiTyOgOG/2ZFcW4djj0oumtvxnGj6Dzis2
         +NNV5elMgorJrj0IdySF3WLUwh92JQ/EJeklQT81pGMXbSC+VmgMmx1S6GiZcFat/L5w
         Nm73ptHA9Np1wqnJTbKII7c9cURyGohxD/Oejq+6QuhdENExwt34VofXYg460HJsKiUo
         ReGwLRAmX9jVh8VVBFWvA97UFwSNpkNmIAiETQAUElPv7axcP5+/SNYy9HjRJXAZsf7l
         vO0g==
X-Gm-Message-State: AOJu0Yx1zRxYqyVPXlGFITxziJvWjsU8E1Q4w/s6+8KTOsZgQ6u5Pojp
	GnkWQvVrGaaLB6rnHMuhRMr3RjYAa53Km5shplWEUEaPEtSuvMQYXoVTjZtIs5c=
X-Google-Smtp-Source: AGHT+IEeNhdjfGuNIfFu6QbvEdd52qRS+kK74/wdD+medJbFXjkwOG5DE5nv7ekWn7JcO3XLfBr6hA==
X-Received: by 2002:a05:6512:3da4:b0:510:c7d:8cdf with SMTP id k36-20020a0565123da400b005100c7d8cdfmr483021lfv.101.1706035293715;
        Tue, 23 Jan 2024 10:41:33 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id ep26-20020a056512485a00b00510091c44a6sm40347lfb.165.2024.01.23.10.41.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 10:41:33 -0800 (PST)
Message-ID: <b8d6ff55-cf1c-4f37-b2ac-a27a1fa4559d@linaro.org>
Date: Tue, 23 Jan 2024 19:41:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc8280xp: Fix PCIe PHY
 power-domains
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>
References: <20231227-topic-8280_pcie_dts-v1-0-13d12b1698ff@linaro.org>
 <20231227-topic-8280_pcie_dts-v1-1-13d12b1698ff@linaro.org>
 <ZY6sh8nlEUyEfL0u@hovoldconsulting.com> <20231229170334.GA9098@thinkpad>
 <20240122172528.GE3176@thinkpad> <Za6ns-xhN3N-cmIr@hovoldconsulting.com>
 <20240123170614.GH19029@thinkpad>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240123170614.GH19029@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/23/24 18:06, Manivannan Sadhasivam wrote:
> On Mon, Jan 22, 2024 at 06:36:51PM +0100, Johan Hovold wrote:
>> On Mon, Jan 22, 2024 at 10:55:28PM +0530, Manivannan Sadhasivam wrote:
>>> On Fri, Dec 29, 2023 at 10:33:34PM +0530, Manivannan Sadhasivam wrote:
>>>> On Fri, Dec 29, 2023 at 12:24:55PM +0100, Johan Hovold wrote:
>>>>> On Wed, Dec 27, 2023 at 11:28:26PM +0100, Konrad Dybcio wrote:
>>>>>> The PCIe GDSCs are only related to the RCs. The PCIe PHYs on the other
>>>>>> hand, are powered by VDD_MX and their specific VDDA_PHY/PLL regulators.
>>>>>
>>>>> No, that does not seem to be entirely correct. I added the power-domains
>>>>> here precisely because they were needed to enable the PHYs.
>>>>>
>>>>> This is something I stumbled over when trying to figure out how to
>>>>> add support for the second lane pair (i.e. four-lane mode), and I just
>>>>> went back and confirmed that this is still the case.
>>>>>
>>>>> If you try to enable one of these PHYs without the corresponding GDSC
>>>>> being enabled, you end up with:
>>>>>
>>>>> [   37.709324] ------------[ cut here ]------------
>>>>> [   37.718196] gcc_pcie_3b_aux_clk status stuck at 'off'
>>>>> [   37.718205] WARNING: CPU: 4 PID: 482 at drivers/clk/qcom/clk-branch.c:86 clk_branch_wait+0x144/0x15c
>>>>> 	
>>>>
>>>> Technically this patch is correct. PHYs are backed by MX domain only and not
>>>> GDSCs. Only the controllers (PCIe, UFS, USB) are backed by GDSCs. The fact that
>>>> you are seeing issue with PCIe Aux clock suggests me that this clock may not be
>>>> applicable to the PHY but it needs to be enabled for working of the PHY somehow.
>>>> I'll try to find the details on how exactly it is needed.
>>>>
>>>> But if I get the answer like, "This clock is also sourced to PHY directly", then
>>>> we may need to add dual power domain for PHY (both GDSC and MX).
>>>>
>>>
>>> So I answer I got from Qcom is that this clock is only applicable to the PCIe
>>> controller and not PHYs. On some platforms, there is a separate PCIE_PHY_AUX_CLK
>>> coming from GCC that is used during L1SS state. I think that caused confusion
>>> while adding PHY support for followup platforms and folks just used PCIE_AUX_CLK
>>> since they couldn't find the actual PCIE_PHY_AUX_CLK.
>>
>> Thanks for sorting that out.
>>
>>> I've prepared a series to fix this mess, but I want to know how you end up
>>> seeing the above "clk status stuck at off" issue. Is there an actual usecase for
>>> powering up PHY without controller or you just experimented with it?
>>
>> As I mentioned, I ran into this when experimenting with how to enable
>> the "companion" PHY for four-lane support. There shouldn't be any use
>> case for it (apart from using it to determine that the current
>> description of the PHY resources is incomplete or incorrect).
>>
> 
> Ok. I tested by enabling the PHY clocks during qmp_pcie_clk_init() without
> PCIE_GDSC. It worked for one instance of the PHY which doesn't have
> PCIE_PHY_AUX_CLK, but for the PHY instance with this clock, I saw the same "clk
> stuck" issue. Then checking the internal documentation revealed that this clock
> needs PCIE_GDSC to become functional >.<
> 
> So to conclude, PCIE_AUX_CLK belongs to the controller and it needs GDSC. And
> PCIE_PHY_AUX_CLK belongs to the PHY and it also needs GDSC.
> 
> I will just submit a series to remove the PCIE_AUX_CLK from PHY nodes. Then
> in another series, I'll remove the GDSC for PHY instances that do not require
> PCIE_PHY_AUX_CLK.
> 
> Hope this makes sense.

Thanks, Mani

Konrad

