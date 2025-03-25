Return-Path: <devicetree+bounces-160721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC836A70C4B
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 22:43:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AD043BB003
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 21:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F2C1269B0C;
	Tue, 25 Mar 2025 21:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QrY6guO4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA9F269AE7
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 21:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742938749; cv=none; b=O3CvIBs49PqzOUD0RLiizOzxNFnYpmiHVWjBxXVHHlvoshRoGEjtD7g7AyNxbefZWp/WtZHveUHYFNIG8y99NQSToTX8Him321tRkFgiJOrKHFVogU3uWUsurcx4uQyyrnT22T+068ynIrkdtqmrztpvYB7NmezS7D16+mwVISY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742938749; c=relaxed/simple;
	bh=/Av7Cs+KayrhjqQVeFvAhc1FGTigGOhOF01svNTvIus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fTorhO/U07AttzXSP6rcV2aL6R8n1oUD5ilwQvDAczundfns+NyrcaouvjBh0MCn3VxjeOE2+01JHPYmz4d8P/BqZvlMC3j3na8i/sxB8PmUzjF4YLxwbmgu4S8H6EqqaA6p/LIvzU0ceot1iu8YzeVdxuk9ak3G8nXrqlXt3U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QrY6guO4; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4394345e4d5so39856185e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742938745; x=1743543545; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xnMQy1sIVhjqG8H+P2Ah/U7DzsWvzK3schCpJEGDS6w=;
        b=QrY6guO4MSCbhtUAsvnLTopZBN1hnxhvumdYrSzzhufCRIld1u4Kfeqy6uLt10OewQ
         TPYAl3cQ16TAsE2qxnmpMb/aZDbBDMW0K1V7AFkvgjDSBmHMqPbulTcXck6UI4YeiyuF
         fInFIWgAHwdidLH83pEU7sht+PCrC20dNuQ9U4hOdi8fH6cm1Lo2VjoUIsEg/3LJdhcH
         ocDM6MGsUJjAO8n1k4H/xU0e6ymGApVRs+oQQ1hRsuoYkQ+XA23C119iGk9BuRYcfQ3A
         KwW0dhtfnlYSJ2bH6jQUlocQvCTRKF35qdUkODREzNdcvqMfsWhZQYl8Qp3chcb4baKU
         zsPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742938745; x=1743543545;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xnMQy1sIVhjqG8H+P2Ah/U7DzsWvzK3schCpJEGDS6w=;
        b=xTMCPdSYYnDWaIzL+M3yS8uRZYIeo8SaToUXZyjJu1vOXcPqfM50O8HW/rlFe1hNnx
         1X7oZ9851aFGiniTeR4pSVQZA92XBDuCmrRNPVO2gbXKvRRMK9PBtSebeohL8fw97nUB
         VgTpmJ6uYEYSGG+ZomLnV1fHprdcU5A2x0b279YikCssQIbDlOMnkA2pdSNsR0sfIpzP
         AcPyaKyM4bh93JxFKkHdvZXUSKc2SVpBui67YyO7/dpL8rfbJlBBEF+a2zdNquxAjK2z
         LdHU2g34U3mpr5UdYWSaAPmvyt1l3JM9zjtvH1eeS4BogL8rv1aL+GQEb3K4bMv3L0fy
         ZHhg==
X-Forwarded-Encrypted: i=1; AJvYcCVrfY6UjuMQLy396u0QHH6nlkEeAU9OtUWhWUE/TOnELvUu5zNNg9SeqIbTlpDr4JSbLEiH93x/5XXP@vger.kernel.org
X-Gm-Message-State: AOJu0YxW4fYNLjTWG1WAfcfdmiiZ8X+nAqL66byxI0nmB3Eln4azMRGy
	i66IE2e0vbm5a1stMJAeiOdGudH9EXdMMvT3MWqHwJWbYxYN0D5WogjfRLBLrSE=
X-Gm-Gg: ASbGncus6qLYeSNxlykn6gRUIQ/wNnnPFDEs4N8jeCxxHCVA3E27Y3Od4rjwFnUWlZA
	d/kUyXQ2/Mw6sYXkYatf7nEl67ClPI5/W3VmTpd2xu6eabIWbkTr0BRmL1kWmDaJemjCy9C3xIg
	NZV9lM2yHIpW4sDWgaAlOBmyFyDujKfOWmkhfCsN/5/RdEcm+1XKGrL/N9aoNZJcw/hM/DUrVIk
	uVfiD6QVimpd0g8oy2n0YzOjjJyjlq/jAibkVLD4/bhNZQIjYYcXEUjEIVrsbyHujaHC4LMryJJ
	XG4NLYMEk0FPwmA/47vG8ozkesFl6TT5OOGFzQ/pY9GoZcUdhl2CelAm6TBg8Y4=
X-Google-Smtp-Source: AGHT+IEyyd8PC7FCDHlQIj4U+vOvGRq0sCf16YMi7BW8ixBJXbdk2VE9H7MgdgqHwWDw9UD6p4dY2Q==
X-Received: by 2002:a05:600c:1ca4:b0:43c:ec28:d301 with SMTP id 5b1f17b1804b1-43d50a3c7b5mr147764445e9.26.1742938745377;
        Tue, 25 Mar 2025 14:39:05 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43d43f332cfsm216861645e9.6.2025.03.25.14.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 14:39:04 -0700 (PDT)
Message-ID: <b993c7a4-ff3e-4e79-bde8-2b5bdf3f2fff@linaro.org>
Date: Tue, 25 Mar 2025 21:39:04 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/6] ASoC: codecs: wcd938x: add mux control support for
 hp audio mux
To: Peter Rosin <peda@axentia.se>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: broonie@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 ivprusov@salutedevices.com, luca.ceresoli@bootlin.com,
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, johan+linaro@kernel.org,
 Christopher Obbard <christopher.obbard@linaro.org>
References: <20250325114058.12083-1-srinivas.kandagatla@linaro.org>
 <20250325114058.12083-6-srinivas.kandagatla@linaro.org>
 <vmhrs62ygu2xozcabc6tgy37ta5qskeyks5j3ldponzfijicl4@nudcmxonq7qj>
 <4654f21b-bf61-4b41-b073-407fab4bff6a@linaro.org>
 <14b7f2cb-6f40-f8b8-b3de-fe99080e6e40@axentia.se>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <14b7f2cb-6f40-f8b8-b3de-fe99080e6e40@axentia.se>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks Peter,

On 25/03/2025 20:13, Peter Rosin wrote:
> Hi!
> 
> 2025-03-25 at 19:04, Srinivas Kandagatla wrote:
>> I wish we could be taken care in mux-core or even in the deselect api
> 
> It is not easily done. A mux is a shared resource. How can the mux core
> know if it is consumer A or consumer B that deselects the mux if both
> ignore failures when calling select? Mux select is backed by a semaphore
> and there is no guarantee that a consumer selects/deselects from the
> same thread or anything like that. The onus is on the consumer to get
> this right and only deselect when select is successful.

Should deselect fail if there was no previous mux selected?

> 
> I believe the documentation is clear on this topic: "do not call
> mux_control_deselect() if mux_control_select() fails".

True, the documentation is pretty clear about this behavior.
> 
> One thing can be done from the mux core, and that is to provide a new
> API where consumers get a mux that is exclusive so that the consumer
> can call select/deselect without involving a lock in the core. There
> need not even be a requirement to call deselect between selects in that
> case. Such an API is what many consumers want, I think, but it is of
> course not really compatible with the existing API, which is totally
> focused on the need to share a mux among multiple consumers.
> 
exclusive apis would simplify the consumer side of code for sure.

> And, of course, someone has to do it.

Yes, I can give it a go and see how it will turn out.

--srini
> 
> Cheers,
> Peter

