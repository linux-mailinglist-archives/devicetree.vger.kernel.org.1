Return-Path: <devicetree+bounces-31102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 055F5829F76
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 18:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E08028AB80
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 17:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222BB4CB4E;
	Wed, 10 Jan 2024 17:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dvlAHQar"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC594D584
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 17:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2cd1ca52f31so50001031fa.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 09:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704908535; x=1705513335; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YjMoBaJslgOWw0PjOC5tF8h+iRVzEHZGeY/kRdR3+Yg=;
        b=dvlAHQar4GJFXERCWrckZBE+0/jIA/JuiPUZ+D9LYW/z8sjehVt5ikv2jAbFLfGWva
         Nok8C+TJGceViM8MV0U+lAhcfu8ynjsb6UQzAUDclqxhzf2ue4+IwRUVlOJKz62j1FZv
         +u4vX70sDB7DFWtd3Bbqy3Hr1A0sqfMO0tM0h1WxYqcV1oeEUVF1oA2yFmeKoiPl3jm8
         7SLgfCVkKzedKP3Gjzp5BR/5zRcEUd3qiWQh2vB+T7YG5oGyaTPE86ld9q35MymA7R92
         PvnIK5e1/ok7F630RQk3EKGYOgInhF0Ezc1s01209DIkeKpII+m3cdiMmUGxXPQfzKtz
         neuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704908535; x=1705513335;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YjMoBaJslgOWw0PjOC5tF8h+iRVzEHZGeY/kRdR3+Yg=;
        b=JUqeaTbvKL+my2M3JQ44dyvXcLpYhlYRg8jMMAuAsOoRoLltZWa8Tcm5GnMNX2UwJf
         0EX7nAAuvGrcKTTf9y0VcbkVldaykXR9EORTtfsdhhY7aydhFNcWNdBuNIJyYN//q7hH
         nomWVjWJJJ1QOrKYbGr4n3OvCX65AVCmYfC7Td1f2vTm88qFh9SFlA1YTdp/j0z1nkeZ
         Rn2LqxeTZekl+fTuQrzr+xDwmmPLbc7ZW8wq84u07EOt7PD3hoWAT2dzPD9a7smdgHlp
         CSw2lrCUtrr78vBf+3ZbXIS8ImluTIkYKEvKhk7qqZJ2nTDlhU7l1no+m0wbQkf6DASC
         c4nQ==
X-Gm-Message-State: AOJu0YzmioZMCdhpT2+7QtaTce59TjayJdFfp/pNLfAg/FAcDLXuRppX
	zyyMmUvlseA/5hgv7BpPMbaEG37zeQ6zNg==
X-Google-Smtp-Source: AGHT+IHT1prjATADHPcha+6hRVeVajAEKA9n2RxWsP2L6hY0yEyK/iXNVOuhwOgvmCbXJi+mqMHvqw==
X-Received: by 2002:a05:6512:128c:b0:50e:30a8:4c8e with SMTP id u12-20020a056512128c00b0050e30a84c8emr682347lfs.43.1704908535603;
        Wed, 10 Jan 2024 09:42:15 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a27-20020a195f5b000000b0050e8cd014d7sm741726lfj.16.2024.01.10.09.42.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 09:42:15 -0800 (PST)
Message-ID: <2d200f5f-37a5-408d-9ca9-3137ec717647@linaro.org>
Date: Wed, 10 Jan 2024 18:42:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm7225-fairphone-fp4: Enable
 display and GPU
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Andy Gross <agross@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20240110-fp4-panel-v2-0-8ad11174f65b@fairphone.com>
 <20240110-fp4-panel-v2-4-8ad11174f65b@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240110-fp4-panel-v2-4-8ad11174f65b@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/10/24 16:14, Luca Weiss wrote:
> Add the description for the display panel found on this phone.
> Unfortunately the LCDB module on PM6150L isn't yet supported upstream so
> we need to use a dummy regulator-fixed in the meantime.
> 
> And with this done we can also enable the GPU and set the zap shader
> firmware path.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

