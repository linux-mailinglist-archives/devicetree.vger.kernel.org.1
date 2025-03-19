Return-Path: <devicetree+bounces-159060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F797A69757
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 19:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5683F8A51B7
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 18:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CEF320966B;
	Wed, 19 Mar 2025 18:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IaVVn3EJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E98204F65
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742407257; cv=none; b=AiG18XE/oGM/iG2Gj6gjQBSgajgLTfHGoQNuJWDp9EX0rOcn9iUGM4c0cJfaXbOttaEY7glhlbghbq9fOKtnAyAR6pIoklqW+U8V0H+Wl5Yw8ETj0B+wCyfQH7LRr3opTN/x1T2deF/fT2lkNzVxk8cSq0mp557o6h+viniAm8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742407257; c=relaxed/simple;
	bh=MyGuRyQlDt+foSD6CeJddJn3OL0fjbCOG+6NlRxWHHg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U4E1HDEd2Z8sL6ZRiT6cERF/88L78sTlTOTfjidkLgSKOrTsOkNDPe/JHmNx/BkT478l6gkP5toTTBxiDEYK738hNq24C5pfuGl6qqm8N3uxF0YjG6IT3XZXIZjckiH50c6kONdfu9KfBShtREChPGtars3f2FxwDiRmjDUNHUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IaVVn3EJ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cef035a3bso35174585e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 11:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742407253; x=1743012053; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/rEfxvBCDj+OUf6/+Bbrxfwwkqzx6X/wza22OdnfwyY=;
        b=IaVVn3EJ07saxjGiHiWtvGjXIF/qaa3WjClDBp6ylHibk4GkapEP+mybG6d1sDf6Dx
         KxPmFfnTzHnbrW8rGvo4LTexhNVDI1MR5FPvcg5Auxike2KywKBf3nuA/kREU7L84fk5
         6l+sy9jDzedPo/5ghDrqZNNVCwEb04nF3lyZXv1d3M6PqXBwXeS4/9JzU+2aSa9/258e
         TQhNAFFNs9ClowK7BRpJ7yjcOGh3YhL5OjJQW2BQLK/44maAkkt9zrGXb3bYlOZeRPOg
         C5GxSCoa2OMpiN70ZY5H5KO4tB+E99z/wO/vi2h7Xwv9+cmCLmYSm3HSqr5YGG8LM5IE
         m6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742407253; x=1743012053;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rEfxvBCDj+OUf6/+Bbrxfwwkqzx6X/wza22OdnfwyY=;
        b=MILGGhkIW8MAV0F5hXXGCHgErDeekTV+nQchjZFviHWjavWOpyBjBbd74x4PgBD0sy
         K/8rIRI1VwKHzyCI2cByJ8QmLellJXt8FVGI7BQYzUjS8Ix2VG3v9GvkXztGzfdGUMQr
         VVI2IL3++WcrUUpi5NK3iJ8WSLjNEnWKzgEoSKKxVm0p1vnNnrglW35L9sob5ix89Udp
         l9avU3el6c7btE6r2Dkvu6c7LNbwgttoBo9mb/Ok3t8fYQIKe2mCgfBixlKD3G1r/2RQ
         Lx8hRbbJKBzNs4jr/QV8hf8lmJf+mqE8b6wXIfTk+hbf7O/dsLQjTt2Xc5VUi3/zHn6f
         +ZpQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0l5XmV7tRzLPBuSqC9wV5EF+EbXNiWQp2BU/DRi206BkMlNVB8REfkZqvkkJYGjQDqYrom/fVWy0O@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6RqLz1YPr5gNP4OPu4uw32N2CUPL4lATr5wjxqXhi1Mr15rvp
	Ttu4dwim559AGv6kVDFRnAPjMZ3Bmz6p7XZpJvXCkN0lOjTlsjP/Oi3KWSKRXmE=
X-Gm-Gg: ASbGnctkUhz4FveJvV8SHKFdvtkL5D2UHfpW7Nmk9sIpvo5n8N97Ls1LCQ+RUWzhIxl
	bOUTc6Lx+E52XGB6nf3We6tyhV9+NstGAu9XMNN40VKdXWNLZfJvrmQRsYoU/+WhPShe61I9u2a
	zjCtQwruGlTZyz55YYSFGZJ1kKfJ/2FhOOyheOg9P4YWjITtZGP9LLZMjAKEFyAEz7kxd6f8x16
	YQVYl3YUPKHxaeBx0P7/7mdx9JOE8Lb75Mt0RVkSwjZ4FOmggwXpw+WkakGphuRrrRt3sXFW+io
	rvSfzrCvU7lH1nWTUJXiBpA88hbXqMsMGAZ5SsUzBmNgPU6kgQKUc3gvxynV3mI=
X-Google-Smtp-Source: AGHT+IFbFV/3Qs4DOHIi0NIjAkZVN8cQrhEL50TvwHlsiVaJpE49IvMubk5v6WpuWc3f92V/RIBWeA==
X-Received: by 2002:a05:600c:4208:b0:43d:46de:b0eb with SMTP id 5b1f17b1804b1-43d46deb26dmr19657885e9.12.1742407252904;
        Wed, 19 Mar 2025 11:00:52 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-395cb7ebbb7sm22140437f8f.92.2025.03.19.11.00.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 11:00:52 -0700 (PDT)
Message-ID: <938cb09f-3fb1-4daf-802d-2d95222f30db@linaro.org>
Date: Wed, 19 Mar 2025 18:00:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: wcd93xx: add bindings for audio
 switch controlling hp
To: Mark Brown <broonie@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 andersson@kernel.org, lgirdwood@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, dmitry.baryshkov@linaro.org,
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 johan+linaro@kernel.org
References: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
 <20250319091637.4505-2-srinivas.kandagatla@linaro.org>
 <4ie22uuz5tpg77jto3c3hec6lhonr44hrjda7jk655axlaxvba@u3atd4gcyghn>
 <660115f1-d1fb-4fd7-a453-e8c177be9eed@linaro.org>
 <51dd7cb2-0c22-4043-b3a1-fa8410903cbd@sirena.org.uk>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <51dd7cb2-0c22-4043-b3a1-fa8410903cbd@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 19/03/2025 16:03, Mark Brown wrote:
> On Wed, Mar 19, 2025 at 03:59:23PM +0000, Srinivas Kandagatla wrote:
>> On 19/03/2025 10:01, Dmitry Baryshkov wrote:
> 
>>> Is this regulator supplying the codec or some external component? In the
>>> latter case it's likely that it should not be a part of WCD bindings.
> 
>> This is regulator powering a mux that is driven by gpio which is part of
>> codec binding. So I would assume this will fall into the codec.
> 
>> Where would we fit this if not part of codec?
> 
>> Unless we mark this regulator as always on.
> 
> I would expect that the mux would appear in the DT and consume both the
> GPIO and the regulator.
Yes, its doable, so we would endup with a mux driver consuming regulator 
and gpio and move the gpio handling in codec to move to use mux control.

Let met try that and see how it looks like.

--srini


