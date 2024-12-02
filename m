Return-Path: <devicetree+bounces-126020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C390F9DFF3E
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 11:46:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B9E3EB29213
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 10:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BFFB1FCD0B;
	Mon,  2 Dec 2024 10:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JCuZDf45"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734861FCCFD
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 10:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733136008; cv=none; b=ZGSfZGCPii2BWjJCf9GDVkiZIujjQuPhv1UZO/MPtT9vYj5b1LuWof6uiuIDFyBHQGQ25/irshOQL+0YDfVMqaM8dbtu0RyrCMSp0+H8j7pVGIg7nwqqs7f4nxUT8AzgjyXc3gTB0WJF24OEikMuMSNR+mMHZNWuges2fuEUwXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733136008; c=relaxed/simple;
	bh=xalUBh6zRmqOmj1ZYQNXzIDhdbYBu556smNjpr7R520=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QkVKhKuKKe0V5vDaqB4KVvA7PWfh94wdUJtGIHSocmLLrJO9/TytfoXrIboEwG5jXfz6a5Fh6lWl/MDg+4m/N1giKCnJ3CLDU0CZ2JeO3xgLKq7UQrSY1q0iv5O0HQaxV9+J6X3HIpRZK740FX7RwAsbQfXDe0DiNr9Tp6sGXbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JCuZDf45; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f7657f9f62so38083891fa.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 02:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733136004; x=1733740804; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jP25TYUqJwcL/fuEV7RObAqteQ/sd95uJofPv025g0s=;
        b=JCuZDf45elC9jTdrtAfj+FM3VhR3MWYbVMhEHBoEesNaE9QzoR3KwdISBHfDn9lM3s
         DASzV81jx7DrfilcBI2v5HnFMsa9Fncp7/LgezGMDMWX+TKTZlorGtvA7XMr9xm8nFSo
         9IHSWP8fK4g9ugygnNsnMQihdxqIhIbuZnkG7RZcG0Wll/YspbKsjyoqBd35ApU0eGBI
         nMnTrl6o+QYjmvRSv94qQsoMPjAZHJ6Q6+0mz4mhX0jWcn4517Lk0NVUiD5ctWVItA4X
         jhPZxMV0A7VGodImQvvxwOKp+dIBCaN4H0cUQYJ8K/QpAqzkdvPou7QfIeDBwHvqVvAE
         UXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733136004; x=1733740804;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jP25TYUqJwcL/fuEV7RObAqteQ/sd95uJofPv025g0s=;
        b=aftNwggEOO8qL5h42gfUJg55QDAmYiP2k6HuOjunyKgNyX+8OIQkCFQKPKxYgVK6Dm
         /xOA4ieFXRkHCgLym+tmiVr5lYy9PUucTlSwDGrm2hOqS2ZZNe7dMTyU+rjnnzbcG3ro
         OI06HQa5wdDDTawYmSmTYC5ihLNXtfb5Hyu30XaQ0OQqseZ/vIiigYWUTk4cjR2Rcidn
         Jpq5MU7QGaOiBzYxSCY6+CVE9U2EoTKkEn14vyzhS1RUDO7DrxE0E7iSMOyt8Cs7UPyF
         f4nQigxwetSO+p6i28DoY6KCQd+sSz6PFQVmRN6F4HPw0cNSaNnO4fV+NxdNYxUMreFm
         KcCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRHhc4mi0LL3SEiPxh5MLvKNEN5yI9RxNLRlL2Wn+JR+sCbqy/bVW8brzf6tiPeWN++X6Q9Nf8qg//@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4+q4G94hGSFK4xq0gyFOWP3KVaP0eYToUVz8KNK+Hn7FaAqB3
	naKqj78Z7YCC/VGYoGE0ynG0wq5cpwYqcR/wB1uNNJDQpEyYtbnk0K07GMTXN3A=
X-Gm-Gg: ASbGnct4O5xgathy463Sc0tt2CniD4msu0feNBvj7L5MHn8Q5rK2t+eCfN8rspg5DXk
	7GU+Bh1sBJ08mpQBPQiukPLm/1PnenITU91Vbq02fOTKQICeSw6fEf218VspZEfoAA1O8av/UuA
	IFi6kcrnJFaMh3WXVVY5Rlu+4uZpN2J1VWEljvr8KLA0xmKrYNNIEw5LSYHw1EFXqkFeGBwEEgz
	wjmegvTizgzQAzPFvy8L8TWDx8pYSRMYcCNxo+Crz2H3XVKDzudzoyo4FizsNRCrtWWCpOgy4/6
	DPubg4jGSeEwk2efYdI6poLeaaSb
X-Google-Smtp-Source: AGHT+IG8o/j6bnKJ+zKrlKTnEYo13Y0X3dZZFejDWDKGBLT2LAuwWFwKmgOXvNqPPtyC3J1B7R4CZg==
X-Received: by 2002:a2e:a54b:0:b0:2fb:8777:7359 with SMTP id 38308e7fff4ca-2ffd611bf55mr110031081fa.39.1733136004456;
        Mon, 02 Dec 2024 02:40:04 -0800 (PST)
Received: from [192.168.210.26] (83.11.10.28.ipv4.supernova.orange.pl. [83.11.10.28])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfbef7a3sm12397121fa.45.2024.12.02.02.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 02:40:04 -0800 (PST)
Message-ID: <b50376c7-c5d5-41ae-95ea-e2d68c1cc809@linaro.org>
Date: Mon, 2 Dec 2024 11:40:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
To: Dragan Simic <dsimic@manjaro.org>, Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <a> <20241201234613.52322-1-pbrobinson@gmail.com>
 <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

W dniu 2.12.2024 o 04:55, Dragan Simic pisze:
 > On 2024-12-02 00:46, Peter Robinson wrote:
 >> The rk356x rng is available on both the rk3566 and rk3568
 >> parts, the IP is all self contained within the SoCs so
 >> it's enabled already by default on rk3568 so let's enable
 >> it in the base rk356x.dtsi so it's enabled consistently
 >> everywhere.
 >
 > Please, go through the mailing list threads [1][2] that have led us
 > to the current state.  To sum it up, it isn't about what's supported
 > in the two RK356x SoC variants, but about the RK3566's HWRNG being
 > disabled because the testing showed that it produces unacceptably
 > low quality of random data, for some yet unknown reason.

So maybe there should be a comment in rockchip/rk3568.dtsi so we would 
not get back to it again.

