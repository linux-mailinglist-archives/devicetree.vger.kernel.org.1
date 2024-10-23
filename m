Return-Path: <devicetree+bounces-114679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 796D99AC702
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 11:53:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F04E61F21CD7
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 09:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B0319C578;
	Wed, 23 Oct 2024 09:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ImvVivP6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E95115AAC1
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729677194; cv=none; b=WiUwNEh7JSJZsOniUzPlgj6EoZHNHIgw7G+aKsiEgtj5YHMKtdrtwX/UltYnHC98AAZ8SEZ+itjuBrag4D458vyxeQqjao8tQGTYQ4KJwFWtgAHYpizMvCHSKfje7t/fZ1y+/v8C00yEnu5RgVM850HqIwckfVbWvnzJB0UWZ0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729677194; c=relaxed/simple;
	bh=jCzTX7lB3cj83V1Z/IygOEiSzEIhQW6iDa3Gg4iBCAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F14RHdKCzeTqJ3SFZi1I4IrvdYxCYu5T28k+NFvwo3e4CbpyBeR3uxLVRMQ3UbYuv8kufvTsgIh+SrcWRyC6myE/TrhXJktSUNOR/16E183Uc1dyPerAzyaHIxEWnAxX8v9c8qXNo0kMNghpev82642XNnzDrYcvcbBm/qZxMDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ImvVivP6; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d5045987dso547809f8f.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 02:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729677191; x=1730281991; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6Q9csPuohOq2OWCoWo/D5rKFgKDtSVPR5bVMeYlWiHo=;
        b=ImvVivP6qYvYjUIwfQPLNOMi51D6yab7It/wwGkrm3K0NtFIUk1Fdyrf4biHEFR7H+
         O2N0PQjXEUmZqKNnenN+1eUPAiouH1fJs9v/mQZ8A4TMWi9zcSaYR6q/y521K1lUD3Bv
         YPrxk8H2RZs/1dnH3HINdAKJRP+dsWIzZaiMgvmICLkeWVgH5WoXoq4SQ6oDs9M3YxaE
         No0gsHJ5RK2enxi6JihttElYRoIUipaf8AmULrKxF7QL2r3pWF7/SJgT8koNSrczyeCU
         aUfRv3TDau/Q4pq4GGgrcLiO8MlqGOOFdx3v3vdkPv5ZvEmAxEF21YMKdS7gT8AsqY8t
         QzVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729677191; x=1730281991;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Q9csPuohOq2OWCoWo/D5rKFgKDtSVPR5bVMeYlWiHo=;
        b=r44pht0lOE/uLCovdOgIEgHX50LlwYnUVShspIuzRuLzmZ9HDDmTCmoKQZiFylMO4d
         1ndZCpWdtNu+ka4x6CCmH7ovHiDbYZOLWwK2Qpxzvuye7r5YA41DUfbJhUyCyU35n5tV
         KTrDzvn32dQf9aPmi1WIl3x/5BerdnIkkqvC1unMgbu/j0LFYkHmYl6D7NqR/V3TrCWx
         eNWn8tkVPzZaPB4YnmY3ih0xrxOKi4FMtPfDkTyK59AxETeRPvIEWhPZ5c3wkT5AY02L
         souyS0BTjQPwSUBZTR30p8mbbnHg8TlYVhsn8UWUG7A9o6irGiAhWOoDhToM7498p3oo
         j1tg==
X-Forwarded-Encrypted: i=1; AJvYcCW6s1rVq9BOFUfb5Mw1x8RPFfYzqX4RI2DbF9bZxdqxpEdXTadPni9IpgFX/9JfyCSTnvPBGpP64Iw3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7acX6KBsTwyke7vVZUMPRs9u3d8hVsHUVpau/lvQfhuqRxWR2
	ycrJ4qEeP7pUUBOvFSFlNm0IVABMVjb0c27lCRfqefRABQJX1ncwhGf/9r6oa8M=
X-Google-Smtp-Source: AGHT+IG9vnvfIRiPGkN+3j1YR06mu3aNkRUmOHA0Y58U0oNjyhTESb2ssvOwa1WIC0wfqF2o7IoqLA==
X-Received: by 2002:a05:6000:402a:b0:37d:4db4:ef6a with SMTP id ffacd0b85a97d-37efcf00310mr542733f8f.1.1729677191477;
        Wed, 23 Oct 2024 02:53:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b9baa7sm8509035f8f.96.2024.10.23.02.53.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2024 02:53:10 -0700 (PDT)
Message-ID: <aa872a95-b8dc-4bdd-9af5-d1aeb8906402@linaro.org>
Date: Wed, 23 Oct 2024 11:53:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: mtd: nuvoton,ma35d1-nand: add new
 bindings
To: Hui-Ping Chen <hpchen0nvt@gmail.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nikita.shubin@maquefel.me, arnd@arndb.de,
 vkoul@kernel.org, esben@geanix.com
Cc: linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241023092617.108021-1-hpchen0nvt@gmail.com>
 <20241023092617.108021-2-hpchen0nvt@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241023092617.108021-2-hpchen0nvt@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/10/2024 11:26, Hui-Ping Chen wrote:
> Add dt-bindings for the Nuvoton MA35 SoC NAND Controller.
> 
> Signed-off-by: Hui-Ping Chen <hpchen0nvt@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Really, stop, you keep sending me multiple times your patches. Same
patch, duplicated or tripled. Every time.

Stop spamming me.

Best regards,
Krzysztof


