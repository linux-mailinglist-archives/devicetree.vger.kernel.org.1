Return-Path: <devicetree+bounces-35180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA5783C80F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 17:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FEF6B25490
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE1512FF81;
	Thu, 25 Jan 2024 16:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mMt0/VGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2635B12FF7B
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 16:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706200308; cv=none; b=d98Op20ry94/FJ9JNDWHOubQ8TgT+iBTqQwWmaTZ18t9S8bIdv68Vk3NUEqDlZXVYNgceHnW8008G4AfdYA8MA4GlFpShg1t8iF8PJh3ny3SXoEpr+Lqt6J8SNf64PfbCmsq26VyiTR+Mo1ycQEOV614FaXB22n5YfqVuoazLts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706200308; c=relaxed/simple;
	bh=MZKWkX75/WD66NsinU0R8DD7Gnp8wiXbU1Jb0hyFr+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KpyKIIRJt16z6Idb8SzSuZjqEnrDtolc5V0dFuroTD96bBOA3JpBPNrvMuyksXa5siqChF+w0xr++Vi89HmpYL4bvnDk2sR9cxixXbCNEuABKSh49V3BYSy9XdMlHqWsiEG1N9TlvJAJIV63nfLUeYJP0Olv7J8dAWrwbCZMS3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mMt0/VGy; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51022133a84so323663e87.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706200305; x=1706805105; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NHt9cw9hi+emNh71kc/Y1SwsbEiHyqR1F+qFgT8zHaI=;
        b=mMt0/VGy8hcd01n5ZwINxofsG1T38YlxvBHfnzw2vKMv0ZTUhGFEA03oTxvZxWfA7S
         8lxvrb+Ri1c8TAAzf+QLBXrEHqZacEcJRbjN2siU9uy7IGdZfSwxGuNMtfDWGPS4IWj5
         z8UpQWqofHmild1/CINxWyiXLv0mBQ1udLLub9mJQCdDkJjKHMUcYVbqMgSHYbUWwdJ0
         6ODl2MR5NyYAwXbwW+ocdi9dNQ9rgRfhqFGH3u87QCR5lL6mghQf3mh7g/elKmXTK9eW
         tfbRZXk1JoGhG+Tp5Cl92omwWR7D4ByCugZqSj46KJlotIU44gxMvfQKU+p58Glg4bRL
         xAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706200305; x=1706805105;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NHt9cw9hi+emNh71kc/Y1SwsbEiHyqR1F+qFgT8zHaI=;
        b=eM7GVzlp5rA6QOhUOsK0kXwl/S1PTkOwO9mfIb7law//HxWJSsFKxZyiQjaJukRCsV
         sX3Sj/QdkkQ0ttcM/UIccaBO9ryxHqoEZnqcRygXQYpG6fZW8/LLGip9bkbdqrg6Aj1i
         45FJHbyLEDH6rdc2dUH93sDmENpi19IDphwr/0BEjCeq2g0Kd3nG74FFun3fBebp64BA
         2fV6t1w6SkedFwIC8Ui1fX7nO3wodGIDgqoMa/wNnRCsNvqBO/qOQ3iZT5ED4AP6Y58Z
         Epou18mnXPdIBevIWSJxVp9vSRkJOUfPEjg6fgueDvOMv6dXu8/y1EuStJhdQv73HTbj
         fbRg==
X-Gm-Message-State: AOJu0YyNK2N17ZO6oM52t7BgD7ugzx4pFt5J6+4Kr7FQ3KGoatOz/Fid
	neNysdNK977wyPg+ycwCFPiPvLoBrYfsWEGVN/J1gFnt/DHr0tng0l0ZMmU0tzA=
X-Google-Smtp-Source: AGHT+IEIxBsCNyRypg+gLOgOnR1oEjXMKLRsv11AIrGxHqtyz4LYV+aOkVm+21pMQfUYxcNuLGfUJQ==
X-Received: by 2002:a05:6512:3a8d:b0:510:146a:a122 with SMTP id q13-20020a0565123a8d00b00510146aa122mr63068lfu.46.1706200305167;
        Thu, 25 Jan 2024 08:31:45 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h4-20020a056512350400b0050eebe0b7d2sm2931938lfs.183.2024.01.25.08.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 08:31:44 -0800 (PST)
Message-ID: <e018d258-6503-471f-9aaf-88d8eae112ee@linaro.org>
Date: Thu, 25 Jan 2024 17:31:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: apq8026-lg-lenok: Add vibrator support
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240121-lenok-vibrator-v1-1-d4703ff92021@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240121-lenok-vibrator-v1-1-d4703ff92021@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/21/24 11:09, Luca Weiss wrote:
> This device has a vibrator attached to the CAMSS_GP0_CLK, use clk-pwm
> and pwm-vibrator to make the vibrator work.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

now your mainlined smartwatch can wake you up!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

