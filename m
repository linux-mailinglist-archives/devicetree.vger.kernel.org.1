Return-Path: <devicetree+bounces-77619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C426E90F6CE
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 21:16:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C075284B71
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 19:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D381586CF;
	Wed, 19 Jun 2024 19:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xnPJP2aC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6EBB1BF37
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 19:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718824614; cv=none; b=jRau2+tpxZa9Lfo26Yg0AuL7Kp6xhvwdL9R67n8QcTD+Z+6VgVupTzkuadXrqsX8o9P73JTTiCpMs9OjmuefYJC1T/2FHImEBsG8Nyf8wOxhup9nlvmyYKpEOsX6GbOp9TK/68wD39LNOMt8j08Q3Uwu/8b4+F9JxzcHo5d2aQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718824614; c=relaxed/simple;
	bh=bGrAT0XuX6HIRNqdaF1eFEFv7sX4k+pappk3LlTHjpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uNYZgtDUKuoJx2VE1izf0HHpv/WZF3RmMPseG/gXyqy7GwOZubHCvle1fvTnQsoXnXZvtpl28wuW5Y9DCVq+RneOLPTHHnFaeXc6pLrwyFmHoFkF32klLCq+CFB13cIE5l2BhcSpiW/s5GshP+NmLFVSR/MQL6rMS5wlxQVPM2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xnPJP2aC; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-57cbc2a2496so75437a12.0
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 12:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718824611; x=1719429411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xW27As3CyhfzKxmc2us+WS7TrU6cHg0Z4tjRes0sYro=;
        b=xnPJP2aCDh2MMIGK+izEkA5UWO4CLVd5mTLPlKoPTP/34HHjI/IWKpQE+l6qQdUnt2
         XIikaR6voKPDNObpX4hrWAVRBJ2v/FVhsyRDvukg/VZ9p+37qFD+syDdBJAcTu/HuQeD
         y6hnMLLlDO3tF9R3aqFOjq07gNR5B3v3Px61LPimNpdVp1NxPvqfRSHH3dgI3YxxYBJO
         Jr2ujzZQuHAwZfZLGLSLUupNYtqDlNBchgQa3ek5nP6jEen6Ess2kVpkFnNNYbgnWHWt
         yTYZgiZyhJxUHMHaQT1HG9qH11h6PY9+ao9+k61mtrpZ9rPWdqdXKDMvOJv0H2DTM4nz
         wm7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718824611; x=1719429411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xW27As3CyhfzKxmc2us+WS7TrU6cHg0Z4tjRes0sYro=;
        b=VeK3Ys/s2LKA3zjL7tW+v+xECf5H8FxsfEjOVOHBSvSj6uMYucJQeWqoSG5EBFN2xO
         dLc6JvzSKlKRDnlddR7ulW6+bPOggoBT1UdFpumT8TgBQvB8hHQV3hwnN0XLA/0WdnRd
         T60g0Zj+89+U4Vh/CFtCjjxe+cB4TcrIC3bgLwge+uGiV5KIp8XyZbFodzTqlNe53oG6
         nnOkwsrLAJcqmigi73y80kCKC+EwW4ajGBAGR3fa20ahkMiH510++czXwhC9PSLu6L2z
         tKZK6e6lPF3qlZud1TAhXHg1h9vUrVXPOCTKJPEWfBkFN3Mr/5MKjI1JOomcVcHcoMMP
         Dn4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXU7hDq5SeZZEykwtTwz2GNNEllYlsZMSFpK3vC1q7sIyVTucgAehEcy5eFr6giKVxjKjU7wbPdCFku4H+W9ZXmHmQOlzhAAF1Hkw==
X-Gm-Message-State: AOJu0YytZWFGCejymRyfBh7mTSDcR/MiBb9SHCVljuYy/h2wX+kF84s4
	L0+CXdzRl9eQdZNjKAlM0lV97dlT0/6phlt3chZaYjJs3Md/tk7MZRvA51bvCjk=
X-Google-Smtp-Source: AGHT+IFwU14UM0dtxkXha3cXVSm5zW59OPajkJoXmZPv7v7qen57UTQtx+vhLPPHRqijWQnwtuQjeQ==
X-Received: by 2002:a50:ee92:0:b0:57c:6d9a:914e with SMTP id 4fb4d7f45d1cf-57d0bff1a34mr2084327a12.30.1718824610830;
        Wed, 19 Jun 2024 12:16:50 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4dba:9578:7545:6874? ([2a00:f41:9028:9df3:4dba:9578:7545:6874])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cbbb5576csm8108656a12.89.2024.06.19.12.16.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 12:16:50 -0700 (PDT)
Message-ID: <58025447-b916-43e6-ad07-0b11710edc3c@linaro.org>
Date: Wed, 19 Jun 2024 21:16:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8916-gplus-fl8005a: Add sound and
 modem
To: "Lin, Meng-Bo" <linmengbo06890@proton.me>, linux-kernel@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
 Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20240619111523.54301-1-linmengbo06890@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240619111523.54301-1-linmengbo06890@proton.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/19/24 13:15, Lin, Meng-Bo wrote:
> Enable sound and modem for the GPLUS FL8005A.
> The setup is similar to most MSM8916 devices, i.e.:
> 
>   - QDSP6 audio
>   - Earpiece/headphones/microphones via digital/analog codec in
>     MSM8916/PM8916
>   - WWAN Internet via BAM-DMUX
> 
> Signed-off-by: "Lin, Meng-Bo" <linmengbo06890@proton.me>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

