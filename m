Return-Path: <devicetree+bounces-34091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 274C28389C4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:56:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3D181F27052
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FB4558125;
	Tue, 23 Jan 2024 08:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b="V0eUMJDx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A2657303
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706000181; cv=none; b=rAM9cpJGzp9KYwW4ogAB8OyTyKypaHwLET42zeSxa5YBTZit3K4yNeNAkD1bfhBXH79uGJk5DM8BFOEM4QiRG+04ERBMbecWws5c3auMDNJmiARyuYoeX8/LftsB8PUpqolm91BsyFOZUad2Z4mm9u5odqAXun9CgY4ZV8c4j4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706000181; c=relaxed/simple;
	bh=x3A4OVx3SkR/4ZCuMaeW2pQbtc7sB+MQ7LWUhvtKftI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BpaiM3uAY8/iCWzIPjgbBSSNlD2TLbo87ujF7sB0dGVrGH947tBc4UUuXypd3CipAzGtkq94rURK0iOYNBxUkYuz01SBiqwJb5Ov08P3kfm7l7kD02MM+/D6/+CivFY8ef/RACp2MrQG13dpmZ5AS9Uy4mIr8sMKT1vltICdaQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b=V0eUMJDx; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40e8fec0968so52265615e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1706000177; x=1706604977; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NinV5qfAzGPsuHmYj+B/tpi9AsdCe89ZduPrSGUPCZY=;
        b=V0eUMJDxHtMdXL67DqDbe2IBAg78aa0ytW+K46RBSOuzsF9NkzQxj200Gm8D64svRl
         1vh4kYtjFvBbLkUIp1x/K0CaM0Ltuda03/8TiIZ5gWcMwEt1fmDrtiqr6y0lsJ4tyOQz
         c0mTBQRgmBtHw4BO5ww5Pl46Qhsi8/nU+Y+uBGxIkQowYJwl6V/cAAvpLZ/MGA3VVD59
         otr8f4S1RcXamWNS86MFARMmTw0a9tFJ4Ebd24gHdaKUC9lG45d6KmmdPDOMRGXN8XPj
         pls8Zz6I8/if1qNQsUJr8WEWk1kiI9Rst+E0AUuLuVSSnUDd1DxLsCD4eTOaAZm065Rp
         7xkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706000177; x=1706604977;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NinV5qfAzGPsuHmYj+B/tpi9AsdCe89ZduPrSGUPCZY=;
        b=LfGqCjQy+dPwVHUZZ1jEjYP5lZDIF4dQtUDeO7Wvqg9RkLMn4ZdknCvjqSuSqJVc3e
         VUq1iib9pojfgS1SKcFH0NgPQqGu9CADsY0/rmUp5QaDSgwOuXc9iH1RsBt+L+OtgbK6
         pLZU13rgAAKQ5miodmfuDNAsifPO4X5xOLz1X4pTOK5DTogbehI9ru5+17K5y8FqKgfR
         MyVAvZgvd+iN4Hjrwb/1Cysyczg/1Cch8luvpmdUwlKYGT3fMz6pG/SKg835r8C+6kr7
         Vuh+PR6QtyjkZocEv3J4iZMGAQOiHM3eQKIxpa+xsHY/FD3lgfBmUMe/a7Vk5LO4/4op
         qyaA==
X-Gm-Message-State: AOJu0Yz2WfPzgcxXHggVJd0In+lAc0PZRyCDcySC2rEfcibEz/6a/mrc
	jxHoyBb+ATzb0hXMfv3wEdhitNFVQui7hDt5iwl0YJ4ISvpSc3tkl8g0yXyByJY=
X-Google-Smtp-Source: AGHT+IFaMrjIoMQ+BliCMpa5bb9j1Q1aguZMQWXdMycJyah0r6e5IgMnz563Oop4sax3DvzJjtC39w==
X-Received: by 2002:a05:600c:2251:b0:40e:5984:f8e with SMTP id a17-20020a05600c225100b0040e59840f8emr314356wmm.194.1706000177058;
        Tue, 23 Jan 2024 00:56:17 -0800 (PST)
Received: from ?IPV6:2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31? (2a01cb05945b7e009bdc688723a24f31.ipv6.abo.wanadoo.fr. [2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31])
        by smtp.gmail.com with ESMTPSA id n15-20020a5d4c4f000000b00337d6f0013esm11999515wrt.107.2024.01.23.00.56.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 00:56:16 -0800 (PST)
Message-ID: <4bc121c7-ebae-4953-b2bd-c4c343fa8731@smile.fr>
Date: Tue, 23 Jan 2024 09:56:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arch/arm/boot/dts/dra7-l4.dtsi: add missing unit
 addresse
Content-Language: fr, en-US
To: Conor Dooley <conor@kernel.org>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Romain Naour <romain.naour@skf.com>
References: <20240122111948.416444-1-romain.naour@smile.fr>
 <20240122-extending-identical-9609420a1baa@spud>
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <20240122-extending-identical-9609420a1baa@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello,

Le 22/01/2024 à 18:11, Conor Dooley a écrit :
> On Mon, Jan 22, 2024 at 12:19:46PM +0100, Romain Naour wrote:
>> From: Romain Naour <romain.naour@skf.com>
>>
>> phy_gmii_sel node have 'reg' so it must have unit address.
>>
>> Fixes:
>> Warning (unit_address_vs_reg): /ocp/interconnect@4a000000/segment@0/target-module@2000/scm@0/scm_conf@0/phy-gmii-sel: node has a reg or ranges property, but no unit name
> 
> Does checkpatch not complain about this "Fixes" tag?

No, but there is a warning due to the too long line.
I removed the Fixes tag.

> 
> Also, for all patches in your series, the subject is odd. Running
> `git log` on the files you're changing is a good idea to get off to a
> good start with a subject line.

You're right.

Best regards,
Romain

> 
> Thanks,
> Conor.
> 
>>
>> Signed-off-by: Romain Naour <romain.naour@skf.com>


