Return-Path: <devicetree+bounces-14853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2385A7E70E7
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 18:53:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B193FB20CAE
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 17:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5613065D;
	Thu,  9 Nov 2023 17:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NRJOZmwW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A2830667
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 17:52:54 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D27F3A81
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 09:52:54 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32f78dcf036so1447600f8f.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 09:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699552371; x=1700157171; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UHCl7fRy9P2/hhE8qzcCbwsMlo9sARGUTH1RMXnIsr0=;
        b=NRJOZmwWgAoAm4OnK7Qk6BY6rL6aARG5wDXjTFO0aM00YeCXf3E+KNBWb4FVLXn/kw
         +s4J7Xo+7TGYJFC/pUUDiieo3AzlPA8xS6bnbZEbnp46V8sip3All6eWDQNSSpO5SkPz
         EeXu+FXeLf42TBGdN4Cjrf0SrgY9FMFg0vqviPy+MnpXoGD30Xtt0HWoXH6/JX+IW0vs
         A8p+GdilmTyxuxUaQBHtuGncVTmN66PdnZzEg0kMnzWJZo5JnDK/Z53PVgZCSiP5sUws
         4tGf4hIudKRLJDL+5HMkViTvgqLZpwNaz8WUHq2HzhbSzQcV44vwT5gpZZdxDytV2UOD
         6eUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699552371; x=1700157171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UHCl7fRy9P2/hhE8qzcCbwsMlo9sARGUTH1RMXnIsr0=;
        b=EMayWac7aPkgSx62Qm3J86DMDfmeK9RGLXQfINqA2j5+SdWv8OvcwZMKGMrgniL5DY
         8z63qB8eDmOEPjo2nRNRLaVUTcoeYrcg92oZaQ7T4piQ1wWK47JxeOhhNFSyB5EWnF2x
         HLcxvfAzj2VtS0WLNn48V/T6X2FfcjJGXebknaSHthpXI1XizTFWzPJ397yoUKOgoAxT
         n4IlSXp4KZ4NOsHNn26ggYIBft/Lxdxdfp3Gr6v1MXYftNRxWrsCTukJ/bNGWGBit2rq
         KkSDF771k+hzRevTA3a87oYrQnGTI7f12elEC4t0VPnMgssmJfWpP0dBPMMWHZgBkDPM
         Fq9w==
X-Gm-Message-State: AOJu0Yy+b0mPBlN1X/U0kcd231xZa1vTkKS5ncbn9wxs8PW4O9g5YjcT
	dSvBqZTUPnHUDxMnUk5JeSMB5g==
X-Google-Smtp-Source: AGHT+IFJ1N8tYwNkDbkx9yg1lKlLbxlT2TiktkOucPlZKYTUyt8DKOaQcgdhhDkmGokZ4M8S/i8v0Q==
X-Received: by 2002:a5d:588f:0:b0:32f:8a45:937f with SMTP id n15-20020a5d588f000000b0032f8a45937fmr7703371wrf.2.1699552370993;
        Thu, 09 Nov 2023 09:52:50 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id z14-20020a056000110e00b0032f7cc56509sm167305wrw.98.2023.11.09.09.52.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 09:52:50 -0800 (PST)
Message-ID: <a2ae92ad-63c0-42bf-8695-c7e3967c776a@linaro.org>
Date: Thu, 9 Nov 2023 17:52:49 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] media: qcom: camss: Add sc8280xp resource details
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231109-b4-camss-sc8280xp-v4-0-58a58bc200f9@linaro.org>
 <20231109-b4-camss-sc8280xp-v4-4-58a58bc200f9@linaro.org>
 <3e0958a9-4d1e-4d1b-a914-5da154caa11f@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <3e0958a9-4d1e-4d1b-a914-5da154caa11f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/11/2023 13:44, Konrad Dybcio wrote:
>> +        .clock_rate = { { 400000000, 400000000, 480000000, 600000000, 
>> 600000000, 600000000 },
> (why is it 400, 400, 480, 600, 600, 600 and not 400, 480, 600?)

Because I've listed every operating point clock instead of just the list 
of frequencies..

I will change.

---
bod

