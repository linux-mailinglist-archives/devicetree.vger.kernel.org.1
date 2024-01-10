Return-Path: <devicetree+bounces-30944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F22D82990C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 12:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A44531C22082
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 11:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3464147A73;
	Wed, 10 Jan 2024 11:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uw3d5qUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721FA47A5F
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 11:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50e7d6565b5so4496042e87.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 03:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704886188; x=1705490988; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HAkF12kWNFoMruhw1tXFopfrZD7wBVUFQgsn7muBhX8=;
        b=Uw3d5qUDuqpbjoKUyOJbCGl8R1ZmhTGzqWWEJ2adYLgKNmWphj8Go5t/kxof9ZM3iE
         W4wbSJ3S4uW94wu/MiVjDxeb5GAVkdPhLMpldSk98WkStWoXYTki69leXKMQOzgzvV5c
         d3xrV7mJWv9byb723R4OFOXCwEYK5H2yNW7vUSfESisJPJifpKi6joyPYzoleMXu2Gqr
         Sgj+YBSzkoxqe0oFXx5AStGD2OARC9TtBy1kc7Ya5Pb/4o4c8VjyiudfF2/V5iWvroiG
         xuFEbwd0O8klkLABG8nAAdkdtlRrVCIMzCPgWzlzIOsaLI42EGis1gUFC4zDckPZp2je
         3Wbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704886188; x=1705490988;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HAkF12kWNFoMruhw1tXFopfrZD7wBVUFQgsn7muBhX8=;
        b=aCdr/hek3PJTGqPlLcDkyR2eQpzOAlS1LQJ7gtS2VNDCKN9AWgCjWH4K3rA/fcGzLn
         SVvOu4fNhIAjSEyNZpgwXf4w5HTYfrW/J4vwuZMworCOGplDQFADKHn/Reo6g3EBGYvC
         A6kpQ6/S+pSYr9JcGRxZxyIHGpVzsXApzDtbhrYB+0ZJjSBjrybzJpY/qdJZgYU2oCVu
         joSc2M25xJppshgaWHwDGPCUIN8Vxy/qoykgLxdjd+DZcoVyz6iX3puPHMt6GB50XVJD
         Uis3m2LdMxF/q+8gWKXgEzMkBK/ODC/WgJbfA9s+zsBjL0Idk/y76z68SUK5xHxIBKKe
         X6yg==
X-Gm-Message-State: AOJu0YwHB3uu8c9M0fKeCA6ANSI38XOxT1F5bXiIsCbCBdTUGW40Qd+L
	E97TZup1zKXOKiQTkz+NRyyWQ5AkPtQG5A==
X-Google-Smtp-Source: AGHT+IEeyrVbvmxHPlptn1HDzewfBjNsVi4jhGnvJVBqvIurtb0y+etCYo4xX4fGB6JzAXSi8Ds8mA==
X-Received: by 2002:ac2:490e:0:b0:50e:5448:3316 with SMTP id n14-20020ac2490e000000b0050e54483316mr280029lfi.137.1704886188452;
        Wed, 10 Jan 2024 03:29:48 -0800 (PST)
Received: from [172.30.205.119] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f15-20020a19380f000000b0050ea902d191sm640405lfa.153.2024.01.10.03.29.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 03:29:48 -0800 (PST)
Message-ID: <9ba86081-1484-4d1d-9555-317d10e1617f@linaro.org>
Date: Wed, 10 Jan 2024 12:29:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm7225-fairphone-fp4: Enable
 display and GPU
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20240105-fp4-panel-v1-0-1afbabc55276@fairphone.com>
 <20240105-fp4-panel-v1-3-1afbabc55276@fairphone.com>
 <3fdc6e74-d817-4341-bf64-9096608990d6@linaro.org>
 <CYAZ37LBKG4E.2096GKVUXN8Y2@fairphone.com>
 <2zkiop7xg7w4vkpjpol25qna5wwbq4ja5o6iwuqh25m34k6mgd@aemrbzqgx2oe>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <2zkiop7xg7w4vkpjpol25qna5wwbq4ja5o6iwuqh25m34k6mgd@aemrbzqgx2oe>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/10/24 12:23, Maxime Ripard wrote:
> On Wed, Jan 10, 2024 at 12:00:23PM +0100, Luca Weiss wrote:
>> On Wed Jan 10, 2024 at 11:58 AM CET, Konrad Dybcio wrote:
>>>
>>>
>>> On 1/5/24 15:29, Luca Weiss wrote:
>>>> Add the description for the display panel found on this phone and remove
>>>> the simple-framebuffer that was in place until now
>>>
>>> Why? They should be able to coexist with a smooth-ish handoff
>>
>> Does that work upstream? I'm aware that downstream can do this but
>> thought this was still missing upstream.
> 
> It depends what you call smooth-ish I guess, but KMS handles the
> handover just fine. You're likely to get a flicker during the transition
> though.

Yes, the panel driver will assert the reset pin to get the hw
into a predictable state, so there will likely be a split
second of black or black+garbage.

Konrad

