Return-Path: <devicetree+bounces-229286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5303DBF5A33
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 11:50:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 59969500951
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A1532B9A9;
	Tue, 21 Oct 2025 09:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qsVt+URK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A38532D0E8
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761040140; cv=none; b=hyMaIBq+6icUcfvBjK/PhjmP1RQVJCSLqFGht0Sbacl4UC0ScsqkJcVcdvxXn4P0dkHMaJwVqgP4Qo/bg5lGIVu05jb1lMxgmDsXLUBP61ZDKaX12bPTwE/SXQelzJOKZTAvlZHb6EJ4pdZAYYT0efVE65WlRD9xNNOcdOfLais=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761040140; c=relaxed/simple;
	bh=Urii5iS0FhFbA8VJNfixvzWMxw1LHSaVksjMI1C9gh0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rTbA0X4oy44zFr1C3u22GXqUKtbLVmf/6lD8+VqX3tq9ZTqLSZrCayu11WVWxI67WYSmlFGJVHM4fICuv7Kub+uGSP5J9SJp79RW1xBE9ICBOl3bKMTPj5qiRNKt3Sn6caK9dXsNlVVfuAJbQTIaM0jWBLUsHN5OeBvkA9GltUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qsVt+URK; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-591d7a9af94so731448e87.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761040136; x=1761644936; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=640l7eT0N+MsxbJx7EeYo7wg5aE7l2Z+pdg2rWOLL0Q=;
        b=qsVt+URKa3QTZRywQEgsuB6HiFJR2UiisACuvZWcsvdinQwCE8pDivxOL3uGps5vUx
         TzNF+/zzifJF4N3xrxSVOBZV4ifspPesxJfTlgwP2T40JNcn1LftyTAEFCN7eZVSZbTl
         CabckDXo65YMQ0YIAD4zv/VtGK844H1mgQ8VcQDI1JletDQUB+Pt5PAqTAjU9tKQ5yze
         YeSjzxiB7zYCMeYaxAHm1gMgn+2+a2sDkkYdMFY+lzflabUnZ35tL9bB0oqcg+yTB8aq
         yUKw64RQWBt1UNDGXndIY12SUinwGmBZdSyFclW0CqNIjlsV1ZX0vXS89j6h7wy80bK6
         oxFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761040136; x=1761644936;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=640l7eT0N+MsxbJx7EeYo7wg5aE7l2Z+pdg2rWOLL0Q=;
        b=Y1ClpoZMrDJRgNcOXwS+bKPaLyE9vTqXrMrOHJukuyIpGUFKFVuojZPls6dxwsgZ7K
         pES+ucxB7ylHSSkzo3cD4UeCnoiR1a8Gxg8mKrEDTF9giv7YgjuJmE7tZzHUS8DQT026
         DgG9NRrmmppOYiCt/iRyTFwHMpAm/ZVS28QE8BS1XJow+7geSlhT6CBs9rpP1bOBs8JF
         TWh1/wfz5q9Hq0hQS63zIo157+0t/Z7CGjD1Ypa3QLu4bSBSQM6sB1QGjEQhVdh3XC71
         xREStG2gyzfjSoNZcbE1M90H/0WLstUyCVDEz7rcyysH1Dx1U/pO1fU0rGvBntSpGYsm
         EbOg==
X-Forwarded-Encrypted: i=1; AJvYcCXV5cJzf6bJanpiFKFxkDbkHQGS6FzsW0SwMLIHd6VeXO5y4JPfMfXn4FqtbqSiK/UmmNpQFylVvQX8@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi8/5YRzk77RtunsyGYVmLPRuJ5wbmJ/Qzgbf/vgjkLOMnUXZB
	5oPnrWwubhe0PKjrSfpBPZn4b9VZvcNeoZOEzeCmvrVb3I1heX7gu45OJO8rtlo+3aA=
X-Gm-Gg: ASbGncuoxXdxSRita5T77T1M2e8ZAHTE93QIIJNdauCAYNzw+b42bruyv2vEnNc1GR3
	dfrJNwzxg7lu1Nl29VbBSHVkI1mW1CPjLA0RQdabq1Q+2RXD+nV7Jgu1vOPfdaCEUNcd+Lo0sZB
	CrAxR6Q8qC5r8AaHcqZTPnuZ8Vxyb4hXXU8bT7ZpHA/CQdY22NvIjOXSM07lnvN5c5LFjWuAgLb
	SijAFj1JdoyO409l3LOHlxrakUfvbnFw8ZIkrNMZ4BYav/3NduaFGgjE2D8LAaWbgKZT9pa4wpP
	LAfrObOrptFQDpEPpiuIAdHpaaFNdsAGuL5ha2rTFKHhtcq4k/KJlHh2Exmurd9Exf2kX3LzrV8
	lerLaKgVLkaQ0MtTZ2FxDbHb9VJW38WcDLpqMl6HES+EKxv9aRJ1vijvGaBf4l4l1bYpct+mACS
	RciVAnZ8AW2Mn/Svw7uef0EXOoyJkIVdP6MnJ2CpCch/YFlP7v3DJvoXWnec+CAQ+QZA==
X-Google-Smtp-Source: AGHT+IFwNjRiyfAAPzJORtMnct1hAhGnn7VXU61bxa/Ycsnt+eqvcugl3rjHUlPkl7DsvG1Rv3GmDQ==
X-Received: by 2002:a05:6512:15a3:b0:57b:5254:d247 with SMTP id 2adb3069b0e04-591d8464653mr2677406e87.0.1761040135951;
        Tue, 21 Oct 2025 02:48:55 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591def1b2f6sm3462711e87.84.2025.10.21.02.48.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 02:48:55 -0700 (PDT)
Message-ID: <3854e3a0-744c-4317-a6ed-e28edbabc4a3@linaro.org>
Date: Tue, 21 Oct 2025 12:48:54 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
To: Luca Weiss <luca.weiss@fairphone.com>,
 Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
 <3210a484-b9c3-4399-bee1-9f5bbc90034c@linaro.org>
 <CAA8EJprP9Z181VDCT=xfyrBipzgiB0tfb8M_XZ4H=yOrvEnB0w@mail.gmail.com>
 <f41061a2-cf45-4588-8df7-22270c936ee2@quicinc.com>
 <D8EZ47Z557OX.37FDVYA5AHET0@fairphone.com>
 <d64c0776-0b12-42d3-aed3-4e6a13487f51@quicinc.com>
 <DDKNL43NWFMA.1S03T0SUYFVMY@fairphone.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <DDKNL43NWFMA.1S03T0SUYFVMY@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Luca.

On 10/17/25 17:05, Luca Weiss wrote:
> Hi Taniya,
> 
> On Thu Mar 13, 2025 at 12:57 PM CET, Taniya Das wrote:
>>
>>
>> On 3/13/2025 1:22 PM, Luca Weiss wrote:
>>> Hi Taniya,
>>>
>>> On Thu Mar 13, 2025 at 5:39 AM CET, Taniya Das wrote:
>>>>
>>>>
>>>> On 3/4/2025 2:10 PM, Dmitry Baryshkov wrote:
>>>>> On Tue, 4 Mar 2025 at 09:37, Vladimir Zapolskiy
>>>>> <vladimir.zapolskiy@linaro.org> wrote:
>>>>>>
>>>>>> On 3/4/25 01:53, Dmitry Baryshkov wrote:
>>>>>>> On Tue, Mar 04, 2025 at 12:55:21AM +0200, Vladimir Zapolskiy wrote:
>>>>>>>> SM8550 Camera Clock Controller shall enable both MXC and MMCX power
>>>>>>>> domains.
>>>>>>>
>>>>>>> Are those really required to access the registers of the cammcc? Or is
>>>>>>> one of those (MXC?) required to setup PLLs? Also, is this applicable
>>>>>>> only to sm8550 or to other similar clock controllers?
>>>>>>
>>>>>> Due to the described problem I experience a fatal CPU stall on SM8550-QRD,
>>>>>> not on any SM8450 or SM8650 powered board for instance, however it does
>>>>>> not exclude an option that the problem has to be fixed for other clock
>>>>>> controllers, but it's Qualcomm to confirm any other touched platforms,
>>>>>
>>>>> Please work with Taniya to identify used power domains.
>>>>>
>>>>
>>>> CAMCC requires both MMCX and MXC to be functional.
>>>
>>> Could you check whether any clock controllers on SM6350/SM7225 (Bitra)
>>> need multiple power domains, or in general which clock controller uses
>>> which power domain.
>>>
>>> That SoC has camcc, dispcc, gcc, gpucc, npucc and videocc.
>>>
>>> That'd be highly appreciated since I've been hitting weird issues there
>>> that could be explained by some missing power domains.
>>>
>>
>> Hi Luca,
>>
>> The targets you mentioned does not have any have multiple rail
>> dependency, but could you share the weird issues with respect to clock
>> controller I can take a look.
> 
> Coming back to this, I've taken a shot at camera on SM6350 (Fairphone 4)
> again, but again hitting some clock issues.
> 
> For reference, I am testing with following change:
> https://lore.kernel.org/linux-arm-msm/20250911011218.861322-3-vladimir.zapolskiy@linaro.org/
> 
> Trying to enable CAMCC_MCLK1_CLK - wired up to the IMX576 camera sensor
> on this phone - results in following error.
> 
> [    3.140232] ------------[ cut here ]------------
> [    3.141264] camcc_mclk1_clk status stuck at 'off'
> [    3.141276] WARNING: CPU: 6 PID: 12 at drivers/clk/qcom/clk-branch.c:87 clk_branch_toggle+0x170/0x190
> 
> Checking the driver against downstream driver, it looks like the RCGs
> should be using clk_rcg2_shared_ops because of enable_safe_config in
> downstream, but changing that doesn't really improve the situation, but
> it does change the error message to this:
> 
> [    2.933254] ------------[ cut here ]------------
> [    2.933961] camcc_mclk1_clk_src: rcg didn't update its configuration.
> [    2.933970] WARNING: CPU: 7 PID: 12 at drivers/clk/qcom/clk-rcg2.c:136 update_config+0xd4/0xe4
> 
> I've also noticed that some camcc drivers take in GCC_CAMERA_AHB_CLK as
> iface clk, could something like this be missing on sm6350?
> 
> I'd appreciate any help or tips for resolving this.
> 

Recently one particular problem related to MCLK was identified by me on
QRB5165/RB5, and it was reported to Bjorn over IRC, namely it's not possible
to toggle MCLK clock enable/disable state, when TITAN GDSC power domain is
set off. I'm working on fixing the issue (a change under clk/qcom), since
it's of an importance for a customer as well.

I can't be totally sure that it's right the same problem as the one reported
by you above, but it looks very similar, as a fast workaround please consider
to set an ALWAYS_ON flag of TITAN GDSC, and at least a report from you that
this actually helps would be nice to get.

-- 
Best wishes,
Vladimir

