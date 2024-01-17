Return-Path: <devicetree+bounces-32771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5473983089F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 15:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5E16B213FE
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 14:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7B1225D7;
	Wed, 17 Jan 2024 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KD7tYHP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00FC225A4
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 14:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705502953; cv=none; b=jWR27mS788mF1Xmp+wQBZ2Egpuix4m3YwauP+nmEQo2gxA03WUrhrQ7kNNnlIz5YOZH8sd99jttV9+Nf7tN4tVD7kjLcRRmRgEhPTCSRTthaJn/gZbdOy6T1EVQQ+/+2VumFCDc3C66DSgmub3bHCI5IFOrLc2aV/PrWk+8uk5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705502953; c=relaxed/simple;
	bh=xbOsZ7hNf9ivXDXTjA3fkk2LMk4yyJfbnqb4EOp2G0o=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:Cc:References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding; b=SDDDq0SF0U7hDFoIAXARl1hYE3GP1FqgX4Gk1L4GGQTgL8++fQcs07V5eI+hBgSnfyFntMg/l15eQfY2FEEOkdr/S/XezmuE5u5cNbQH2kyXLC4qTrdUF44P7cAV3EHacnuAcGxwVPcv20JAETEaBR/I9B+kWU5yyilBZE4X2BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KD7tYHP+; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a26ed1e05c7so1336419866b.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 06:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705502950; x=1706107750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wUp7AtgEUSYNvZ7/fVy0kILGk6FxXL69i5KUD1q97UU=;
        b=KD7tYHP+aNzQhO/v8Gv6InoamNLudK4Bu9cxQ+vn/k3HfVqP/E1JNP+iskw4JLgUtU
         Co1rI5XiV6gNnExMeB3S2NqqJ/ZGsCrmbtCxpO4it+pxJbC96bxLyhxN8FB9NmKGbZO2
         o3yP/aCKX4K4TDq51T7lYwzi3c6QrTr43py2Zz9DwA2h3IwdT1jRKgdH4H4IYs8NpIlO
         znZ8Dym8DyCwWfUE7qg/KfyLxSODbs+xdiefQnfnRbxLfTM6XuDeY/9V4GkXKoN2xoKV
         mg/F1IK1wLQjhFeWj8mD/Z/oPl2Wn/OAA32IDY3SIh80GqnWE5R0FgB0Wdyy067xwPkW
         aFfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705502950; x=1706107750;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wUp7AtgEUSYNvZ7/fVy0kILGk6FxXL69i5KUD1q97UU=;
        b=gBf6sVMDLDJ/JpJlqzebj1KK5rOLk7H7clX2syl+CnEMJ0Ehfadac/keCLGK3CitIK
         Ff7SjVDr5PmUW+uDutNYEbcbhbKMORBaAbhY7Kif93CJ8Th8RMhYqxAoBJy2MvCf87Zg
         k4rXz+RpO2mih6jH/RzvTzySubOjreFHoGcDIV4IEKipnP/o8vD5PL2g8Qvu1talfd22
         BEpK0E10SbmgIIXRzUQ+ebF8uV05nJmSaz1DIsuyxvDcbz2W7ddxs+t+kamgBFo94XZK
         Llqf096lF1q6Ob2i0z4gCI8P6osxwhUtsEsaMEylAcKVJePUl1D2VO6teCcl6duoDFTC
         a8gw==
X-Gm-Message-State: AOJu0Yx3YbSqaSJFEDGysMEPJ4QklE8N2yWZ1zBE4642XkEfQZkJgLAb
	ljN9t6OTtm2aVZEGZ0dY5ms/K3G1q870RQ==
X-Google-Smtp-Source: AGHT+IGfogk1vyrdo+0VUD+8Wa7WTI0X1CJ1wuka8a695dU1RQlPFwd51cLYisobNRPZgcLdGzCY+A==
X-Received: by 2002:a17:907:7215:b0:a2c:cf7a:b70b with SMTP id dr21-20020a170907721500b00a2ccf7ab70bmr3242363ejc.145.1705502950157;
        Wed, 17 Jan 2024 06:49:10 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id o10-20020a170906288a00b00a2a632e4eebsm7758780ejd.119.2024.01.17.06.49.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 06:49:09 -0800 (PST)
Message-ID: <f394e372-dbfd-4fd5-b5c8-23c383cb6cf2@linaro.org>
Date: Wed, 17 Jan 2024 14:49:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/12] clk: samsung: gs101: add support for cmu_peric0
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: peter.griffin@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, conor+dt@kernel.org, andi.shyti@kernel.org,
 alim.akhtar@samsung.com, jirislaby@kernel.org, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com, cw00.choi@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org, andre.draszik@linaro.org,
 kernel-team@android.com, willmcvicker@google.com
References: <20240109125814.3691033-1-tudor.ambarus@linaro.org>
 <20240109125814.3691033-8-tudor.ambarus@linaro.org>
 <CAPLW+4=y12fBf47v_HKfBdHTsQJfWo2cwBuFosUKo3xPBqcKJw@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAPLW+4=y12fBf47v_HKfBdHTsQJfWo2cwBuFosUKo3xPBqcKJw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Sam,

Thanks for reviewing the series!

On 1/16/24 17:42, Sam Protsenko wrote:

cut

>> Few clocks are marked as critical because when either of them is
>> disabled, the system hangs even if their clock parents are enabled.
>>
>> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
cut
>>
>> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
>> index 782993951fff..f3f0f5feb28d 100644
>> --- a/drivers/clk/samsung/clk-gs101.c
>> +++ b/drivers/clk/samsung/clk-gs101.c

cut

>> +static const struct samsung_gate_clock peric0_gate_clks[] __initconst = {
>> +       /* Disabling this clock makes the system hang. Mark the clock as critical. */
>> +       GATE(CLK_GOUT_PERIC0_PERIC0_CMU_PERIC0_PCLK,
>> +            "gout_peric0_peric0_cmu_peric0_pclk", "mout_peric0_bus_user",
>> +            CLK_CON_GAT_CLK_BLK_PERIC0_UID_PERIC0_CMU_PERIC0_IPCLKPORT_PCLK,
>> +            21, CLK_IS_CRITICAL, 0),
> Why not just CLK_IGNORE_UNUSED? As I understand this gate clock can be

When either of the clocks that I marked as critical is disabled, the
system hangs, even if their clock parent is enabled. I tested this by
enabling the clock debugfs with write permissions. I prepared-enabled
the parent clock to increase their user count so that when the child
gets disabled to not disable the parent as well. When disabling the
child the system hung, even if its parent was enabled. Thus I considered
that the child is critical. I mentioned this in the commit message as
well. Please tell if get this wrong.

> used to disable PCLK (bus clock) provided to the whole CMU_PERIC0.
> Aren't there any valid cases for disabling this clock, like during
> some PM transitions? For Exynos850 clock driver I marked all clocks of

They aren't, because if one switches off any of these clocks that are
marked as critical, the system hangs and it will not be able to resume.

> this kind as CLK_IGNORE_UNUSED and it works fine. In other words: I'd
> say CLK_IS_CRITICAL flag is more "strong" than CLK_IGNORE_UNUSED, and
> requires better and more specific explanation, to make sure we are not
> abusing it. And I'm not sure this is the case.

Is the explanation from the commit message enough?
> 
> The same goes for the rest of clocks marked as CLK_IS_CRITICAL in this
> patch. Please check if maybe using CLK_IGNORE_UNUSED makes sense for
> any of those as well.

I've already checked and all behave as described above.

Thanks,
ta

