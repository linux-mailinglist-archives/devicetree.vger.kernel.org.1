Return-Path: <devicetree+bounces-255884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA10D2CC5A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 07:54:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6E9E302106D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 06:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2333734E764;
	Fri, 16 Jan 2026 06:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EeYSwEl3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2893634EF03
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768546442; cv=none; b=YHb7vR1JlhwK87H90p3hkbZ2GcxXhRD0kIV0AQl1jduWNo2WOg4ZHan6v7tPWqiRWjtekIF0H2LmzGVlj0JbGgXHnqDcPp3Te3DvKVgfX35ejnkA+czes3HStAFf3zPRZBCsSR1+PodBAzr7zWVG1R3PKBBIAiZHKyc8x38TstU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768546442; c=relaxed/simple;
	bh=5GF4e5BmVnyhOpc8HNFg+XjZiiGpnVltdOuIeaBKAbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Sv+3TDAM7s7T0jsZoWgAMxU5repqNNlh0uMp9f+nkblS6RktzdE5Ff4+OnQg2AxPcaTyQutPNcJ6ZRhs/y5INk8c656xvnTcNHFPbyWEuDzgVP4o5uonOZ6mKh+3/7HVXaV+f1AJvR8QPnfGeXyl0MwsC4+jhulKAAjZ8dsj79E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EeYSwEl3; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-480142406b3so7509405e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 22:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768546438; x=1769151238; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=slZGbouLqbJpfaVGGnHBou19vIILt1Y3clst8iE34bA=;
        b=EeYSwEl3cFJxr4GGrB/GEL2kbi3Md6qLFxgWOTjooDhp1M8AgysTu2x70uMHn05tos
         2ydYmmtKRKKzy6UfEkNDPYpf9O4Uwqwwd1CxUWStTHX53pPuATTxS6jMO0AA6eBTopRY
         3oJtFvJzTTIibkTwblm7TlPcuBhoZGUQBo4fC9myj/xkRslJ1YgppRvENsH7hg7FAGJY
         oqP+QnVA05Las/4OOG+rrtioTermVHEQOKTECJMNdClMN+LU2hQ5QHaLjaHb2JoO36c8
         MesbnSGO5oZadQwWILLa/DhvQzIzPF8IaYlSjJhnZ3IqTIq+GViWYNmKj1DzZELUAKei
         qOxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768546438; x=1769151238;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=slZGbouLqbJpfaVGGnHBou19vIILt1Y3clst8iE34bA=;
        b=L/64sWCqoN72rcfoJ4iLH8aZucgpr5sUeQ/o9eDDOSfNYkaksRjsi3ZqlYyeUlyffN
         e644+1KbHasxZZGbwJZNpyIUepGOHdRyCH9Tt8ENi+9XPTeFv0JkxSPUEnIhwusMZ8Ek
         FfYxGNZhbFuHU9x2XtBwpL/po0MS1M2LNi7mOW+5sU5x39z7ZjNgSnS6pRj/dz51F4in
         m5h6Sgqx6mCEY7b9+XrGk+0QbC+tFQSz5K3neQc5ppTpagPX8ur1lgJpvPx2RA5mhhcw
         gutx9OshXyXRSA8jncFieF5yp7VAWSHuIPfBHc1K3cvjWyMNWP+6fvj9LEPfSyEY0fqV
         1lYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwW+4atRCVdzhjmnqR4GuKDwqst9eY5FUHUB9l7NIVWga6eGdIXC8E47aDJlZmBNnZa4koBM7uMNOR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx68TjNwa0QUfNFCN5y+VByv4puFkdW4mnlsi1z2PKa8pAE/wVE
	OOFQ3TWy1Aq805QOIGv36slUwmcTbXitJsP4kBIW4IR9IAta+1Vrg/5QXX8as3/v3KY=
X-Gm-Gg: AY/fxX4ehG6LdeS1eGs/1vM+h9ZOlfbMxcttSeNbxUM7ZBuX+coBh9QyjTkhJ5hs7HP
	GktcJVD8cGr7m0aNBcZOR9vBZ0yhg19FPe9aKQdQTLbEOslqBhodoPwS64efTRVpuhCAFL3mIND
	7cgWEa20g3w5w2V2NRK/0z90ULmf6XyzeB73c9UrMIL45Z6LMSBu9kBebDQhfpKtdrzVX6/1WZE
	zZTMCjCE7Npgknqcd1cZHafpHEN0VGTtwbGj/yDO8fP8/54Lo5c0X98ftkZQnhnDZnnTlq0faDw
	YuRtu5cU38EtFJvhkDFtW/oicrj3k8Z7oMG/93Zo3auaKC9oEoF6YLmG1UHcTdHG+bTvH4PHXxY
	KYbkbxbm89j8ajVSlBT/khaNvmz+/RVsIy2xyKEYrVShucO9PUv6Z9faOQMmziC68VeM2/yauHN
	41sBNhdt3wsKBakV4o2w==
X-Received: by 2002:a05:600c:3ba8:b0:479:35e7:a0e3 with SMTP id 5b1f17b1804b1-4801e34651dmr21491475e9.30.1768546438260;
        Thu, 15 Jan 2026 22:53:58 -0800 (PST)
Received: from [10.31.13.216] ([82.77.28.160])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356992201csm3448860f8f.2.2026.01.15.22.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 22:53:57 -0800 (PST)
Message-ID: <a35f22bb-efaf-42c1-9e14-1f9ba32a3a7b@tuxon.dev>
Date: Fri, 16 Jan 2026 08:53:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] pic64gx clk kconfig/binding changes
To: Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20260113-snagged-blemish-52af3d00d88e@spud>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260113-snagged-blemish-52af3d00d88e@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/14/26 00:11, Conor Dooley wrote:
> Conor Dooley (1):
>    clk: microchip: drop POLARFIRE from ARCH_MICROCHIP_POLARFIRE
> 
> Pierre-Henry Moussay (2):
>    dt-bindings: clock: mpfs-ccc: Add pic64gx compatibility
>    dt-bindings: clock: mpfs-clkcfg: Add pic64gx compatibility

Applied to clk-microchip, thanks!

