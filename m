Return-Path: <devicetree+bounces-50082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B07568796ED
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 15:54:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E22A51C216DA
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 14:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C11B7BAEB;
	Tue, 12 Mar 2024 14:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vmebt6rN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334D77B3F5
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 14:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710255236; cv=none; b=tuQW8IbL//pqG8YWamf45J5IDnhy9nAtYPBiBOvTa3hiOFMo+N9Wr3xujDmSQ5XLRe6TuG4ff0nnxUkkK4qQuldafHGJApnilVphyzCsmptFQjb7M6rlM95UjbiD7hCIzkWcgbWk/pdTBTgJnYUkdsV5ymK9ocBT7Z72g0P+2G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710255236; c=relaxed/simple;
	bh=bGGHbUurf8z2aahIEBEQAO22P5jFwd8to0iY7TOjxHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ev2cldeX1O9eM9ReYNMBUyVYnKZP32MyIS01Ab+nfgvB10O8tYmg1GyBoEvXJD94ZLwgUjJzNEDY8BWgq3FNB6TJ1CAdkSt2dO+0O40D9UOW0kIx40jO2hIPhOrmUutqxHyLENvyG6EeiEbq+kOyuvMN0ICRX9nRfseIfNLUYpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vmebt6rN; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-513173e8191so5886518e87.1
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 07:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710255232; x=1710860032; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=keCLG9SnPqnp4c4TkDEyJxwdSrYn/phlS9CwfE8jy2w=;
        b=vmebt6rNs76/YHosCZ/9QU/lg0PfyTRk0cYnyAcI2ZvRBqdEtslHdvlpQH8dh3syQD
         2QqO87DsPD2AEJBLvGp/f4W3Kpl0eJCD+rk2eOGtJkc5nMzJ/pX1u8oxqrCGMA+qXwpq
         YwD8xzvIMjsHTjnf5PH4SlMQgNk4p4HcSYkJv24Ax2h9CG7U4zf36grq2rfX3NIwCkHg
         LSftkcS5uDlmc3aOz7EzgO9nE5eqxE/TLDjLrCXiwhW1hOp6ISG4bP6Zp336D55gpkiV
         S9e9g6dX/TYaWulRY9/SvUdjMG+1u/tOcqw0owQi8Fo0bF+OxiDVz8x9pQlnblWqcwmo
         tB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710255232; x=1710860032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=keCLG9SnPqnp4c4TkDEyJxwdSrYn/phlS9CwfE8jy2w=;
        b=R4+F5QjYi27pu9ngQ6f9q4CUW4otglPMV06SkLRlOj7LSA5brhJvh+8RPA6A4Rrb/c
         2Vq6ksaJPOIv//08Pi//wHKyIs+ayxfufpTcj8DloVnmpaJdNHOxiEzgN3EbR7xU0pvt
         CAe1rtPDhzivWi8i1909XMbQZNsvvkBq7pSNvVk2afNaZ/hQtaxH4XJd8/VWYIJEZRDE
         qSC/BumRfi8C+waRNG3sy+Sg+FMo76PMVhQCCI214wsAQ8ufM7qgUsksHHqJrkAaAsiF
         f7q7JDM0kEnFQhB50JCJWMm7la8SFvUk049W6pfYSnJUvZXKpUym4TcCOkzZ49IMsGjj
         bNTw==
X-Forwarded-Encrypted: i=1; AJvYcCVRTKYzv6HRkD/EIWQmOMPuM3hvydm+/l9WGnGFKhs8H+gpWVM/ZECqoWPpIchHMnhCMWXbgwQhtNESCw9G/5RLBKszO4i7nVtspA==
X-Gm-Message-State: AOJu0Yzzh50lqrFldvH88YPSk+rOVDTzVdkykV+LeCllYoJJR2f2QKcB
	irUWCAuwmzik+zUFhSs3pLF3xgJOLTpCtuPvlipM6gyjvNeFGxkRMT6yO264jMQ=
X-Google-Smtp-Source: AGHT+IHWscraXWfl9i2ubcI6WwPw3EVwwdQh9J4Hzv7X4J9wenpjW8/dzOuu7lN6Ggow35umWvP/Ag==
X-Received: by 2002:ac2:4da7:0:b0:513:b062:98bf with SMTP id h7-20020ac24da7000000b00513b06298bfmr246742lfe.20.1710255232372;
        Tue, 12 Mar 2024 07:53:52 -0700 (PDT)
Received: from [172.30.205.61] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id 2-20020ac24822000000b00513c58e7601sm66644lft.284.2024.03.12.07.53.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 07:53:51 -0700 (PDT)
Message-ID: <5046cdf6-8111-477b-9724-c68183e5f357@linaro.org>
Date: Tue, 12 Mar 2024 15:53:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: qcom: Add Sony Xperia Z3 smartphone
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240310-shinano-common-v1-0-d64cd322ebca@z3ntu.xyz>
 <20240310-shinano-common-v1-3-d64cd322ebca@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240310-shinano-common-v1-3-d64cd322ebca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/10/24 12:41, Luca Weiss wrote:
> Add the dts for the Xperia Z3 smartphone which is based on Sony's
> shinano platform, so at the moment there's little device-specific dts to
> add on top of the common parts.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

modulo missing makfile, this looks good

