Return-Path: <devicetree+bounces-228593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 916E1BEF4EC
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:44:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47D2E3E1FAD
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 04:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 183052BEFFA;
	Mon, 20 Oct 2025 04:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hIcV/bJf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA2A13C3CD
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760935456; cv=none; b=VCtAqXWDO5B95I4jLQJObWux4ddxfZ6V7gq0DXURKTItsxK/wypEOactNHSfCvcOwRRj8fCfpOeRcWJEWXbsp31SJ90ELLZgfkwyyETvymCO9xbDuc1r2fNHHZSJc6LrLDnoLe+RhU+V1Uw0pq3wboiP5LGXkgexCF6npYx4BAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760935456; c=relaxed/simple;
	bh=Sir+KVSVuMLYiFjlTfRR7MJreJK6t1DKB3Oo82ZAx1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nN1V/d/9toXKCm70aLTZDeyY0p5cmRqwN2PGCm+ByfxuGcsEQIS2U6+BMtaMSHCfXLCwHmUiKNRiSA/hhDefvBrYWXSVUy5SlAtcjqjVe4TA/hmBvIW4ugOSpZRyohiyNC9tuEEmKoMQ18hxLidN8gJoEKa4tK3ISogL4ZSSaDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hIcV/bJf; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7811fa91774so3382762b3a.0
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 21:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760935453; x=1761540253; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=spA7o91KDi70Ll6ROh4SAqPxwOp0/KEcn9hPwha/0d0=;
        b=hIcV/bJfasqPs7rbtw+HnFzvKoMT5ZwnOFsQ+xOj2FGxY3nqD5H8ib/+FKMra3+Gpu
         98rlH8KxQ3rlUSycjhVPk/+JHhjZgYnFHIpa/PfF3+dovUsTsMAMa19I9pCubhc7bTV4
         SAygLokh6oeTMiEKxnQXAdReaNLKLIqhBFDlZXsxSxhcC/lxOTLLVbtav5QNls6YDryU
         zXO+4vGUm0QjO5YjnLBkbHND09i+8ya1D5CtqoRwsqru4Sge1yBg6pnOp0i/RcteyHrF
         pntWW9e3CTaMKfG4nH9P+EwHtw760UjNAF3tL5dE9icNH6O2L3VpGi6TzwI0ro/11oP2
         5eJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760935453; x=1761540253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=spA7o91KDi70Ll6ROh4SAqPxwOp0/KEcn9hPwha/0d0=;
        b=sgaXNtRKelUQkvnBBdHlhSBC18G0TDXRWvQ94uQHAj6rZVoZ/LB0XQXskdylhUJQ7V
         o/cW0djbfumPe8JjSaySJI/P7pyR3pA//V4sqZdwBgqMR2kxUBAYPnZJm43nQvGFSPef
         VaLI/z2PD7b5GjJpMVdMkTKoscYjbpULeVBXKqTI7pEKFoUzyBfgfSI5j6BqrW5DfeuO
         Zhun+2qVV6ssbs6V0PTw+BG/MYFhsl/QiN4/P7PkHDMdCqT8qA0GYdFNdl3cfpGFt60U
         7p2qBSWsbMTFIfgivTjlLW63K3XtJ2NgNX/mJb++VUUBBfhsYiqF9vj7rINPandf/9no
         vAug==
X-Gm-Message-State: AOJu0YzBLo9MOgCHhzepdyeobpKc1YGLRTfpkrjp+plWCV3Z3eUPeQZY
	4n/s/HoFS/xiMzjD0go8YhrjqIAg5JbzeDQy/yUUP4ia8Lp7JyBMxB/0
X-Gm-Gg: ASbGnctVnRVHvhKQ/pk2uvX6J1d5yvUOHHWMP7AZDQ5HpwSzEJZliex2Go+pSzmLNE/
	AaQ0kNwdc/4lmqwppF/NO7vqj1j2HpOm7xKY1SoxMdxZiNzlYb2BAIOzEu6SA4QHqbrzwPpZUFC
	R031ov85G4jHcgz6gyqpcZFjlYv6p6XgYtO3XXiX2KIvk/G5fzy+N/0TdUAIjTMcWGAOfhF2EPi
	jAaDOKx+8fdPvgrGMVxl/Tofrw5308Uxl+jYNxb1h5fIE7j5Hu+Srpo4GPtmgLDnDAGJSyLIKwa
	GfJxKzcxEQ/xPJZAX3nK0eDfjNL1mSot/t7gXAzhx3Pwxoq5VSOchCA/O3onebKEfErd4LkUwuB
	PJk7WnWdoLDNUOF3yERkKjUqUxOwRoXA/qCvE1Ce1lHzFx0ps0M8=
X-Google-Smtp-Source: AGHT+IHWbr3T6FVN2FnRLa94Qqq1QareIcDELv0GtDJz5J4Z5xhqWfcvLugBUZ8lTWu9Dmv4dv3pCg==
X-Received: by 2002:a05:6a21:328a:b0:334:97a1:36af with SMTP id adf61e73a8af0-334a8523ebbmr15097184637.13.1760935452280;
        Sun, 19 Oct 2025 21:44:12 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a2300f2598sm7217538b3a.40.2025.10.19.21.44.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Oct 2025 21:44:11 -0700 (PDT)
Message-ID: <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
Date: Mon, 20 Oct 2025 12:44:01 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Dragan Simic
 <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <d70c0eb5-9aa2-47b1-8205-81b724180319@rock-chips.com>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <d70c0eb5-9aa2-47b1-8205-81b724180319@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Shawn,

On 2025/10/20 9:53, Shawn Lin wrote:
> Hi Tianling
> 
> On 2025/10/17 Friday 15:39, Tianling Shen wrote:
>> From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
>>
>> Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
>> corruption when using HS400 mode. Downgrade to HS200 mode to ensure
>> stable operation.
> 
> May I ask you to test another patch I just posted to see if it fixes
> your issue?
> 
> https://patchwork.kernel.org/project/linux-mmc/patch/1760924981-52339-1- 
> git-send-email-shawn.lin@rock-chips.com/

Thank you for the patch! I will ask my friend to test it but he uses 
this board as a home router, so it may take a few days or weeks to 
report the result.

Thanks,
Tianling.

> 
> 
>>
>> Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/ 
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> index fafeabe9adf9..5f63f38f7326 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> @@ -717,8 +717,7 @@ &sdhci {
>>       no-sd;
>>       non-removable;
>>       max-frequency = <200000000>;
>> -    mmc-hs400-1_8v;
>> -    mmc-hs400-enhanced-strobe;
>> +    mmc-hs200-1_8v;
>>       status = "okay";
>>   };
> 


