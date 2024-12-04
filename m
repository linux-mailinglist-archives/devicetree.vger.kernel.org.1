Return-Path: <devicetree+bounces-126938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD09B9E3A2B
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 13:43:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 765E6B3484B
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 12:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454201B4135;
	Wed,  4 Dec 2024 12:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ou3bnwiV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457E718452C
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 12:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733315483; cv=none; b=i9/kvSkvbOIAN15otJUFbf/zvc0wlNYw8+creYatKEP51tzYyW6uPvZ254NpRek0Hj7miy/pnSpSsAsf1DmBenc2L6kGaxTiEW7oLq0AcjjI92IOwAWt8OIwjfgNGQ/bwAAg8A3OILiS/JfoUsvs3Eg98OJgK3cS8Jou67DS9Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733315483; c=relaxed/simple;
	bh=AqCXH3JLVIO2d5FcjwyUEOOgKwBIBl8MV2/t7UJiXr0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=jSIroKHLluT257qN/GAJcc7et36HHQsN+AiwYCaI8w/DiEbDAJgkRVgkostU6Mf+vKIRkCUh2k6ypxTZNd0KhB+pzMuskfauJWaBlPt9El97qUQvGSaHKxBly+eu6+wP1SUDSrpdfr4z6ittWdbenx3hE8vquDcH8tlDxYpzcsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ou3bnwiV; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-434aa222d96so82022555e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 04:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733315480; x=1733920280; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cbWwdT7tE9INHbs3KzJyjOSIJ8TmE2VppwJHxa8fgK0=;
        b=Ou3bnwiVYN1lAlL32xZh3CitOrSNKGpYvn8acBSSUag4dN8746QWkWW9KGACFVWuz0
         7hxKXQ0vVydlL51F9UcpLMFnLzehuh8UI2uWh032Kc9Knb8OTTcgZNBRYsAq22dmZIHo
         rMlQc+bU1MGZN6vO83r8Ih3YSPaUwWXkgzEyDAQJcsROmBipN3ZsIvlQUk6fE7FsOoKH
         4yKC+6sNSnhVwmsjSr3n8Gl7tT9hnlBe4ltVCQNalJpONZlIMo+a4Tny6klx23uXxkdP
         EQBG+aSxfUAVQDt1flUL1FXv4LWOgc7DbX5jVISMCxC42wOLAHNC0sC/oeFrfs2O8muI
         Fwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733315480; x=1733920280;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cbWwdT7tE9INHbs3KzJyjOSIJ8TmE2VppwJHxa8fgK0=;
        b=Z6lY6HuMXv8gUWYLzyq03u0QWHPiwNzPAXRQZfFsRTjYFc5VdO+n2fn05MlexDruFB
         zY2IhJ2WpdQwFLr/PizFPIRBKSQ513mnbq1Tc7mrG7gVJVr7I2gWR+J5fOGvrTPhEIts
         wIkOJIZSV8EnPBDOXE3zwzv5pyX4eLjj9VdBR/PIalBx8pqaI+fUfI9jnun9FhgAZf9N
         QwitprsGBE5Tot57iOK/9a09SjctHqyR7S8qb3THY3GjANfEaQnfnUPyoaVpqhCjvl2f
         oYteqFQb+HqBEa3Rph2GeD2saiwEYmX1cL3bBnQxFln282TtcfCc5Cb8c3+xCvZa9+Gn
         I2kg==
X-Forwarded-Encrypted: i=1; AJvYcCWLgkk0GHs+qs1TGatTTUHcQeJCbwAB6Uh64o0xG7qn/VrY8jTt0Sr7d+IyQBOKEpM9UroPSoAO9L6p@vger.kernel.org
X-Gm-Message-State: AOJu0YzUwv3KByErZc1oujBoZCXZM5suXceeAwnjLwyJNcTCdXUWiK7d
	Q22sW5bTfLZJoTmf+yaoYzXx2b8xneJjQdzs9aAbw0Wc44eGWXFsrlpSm9QCtiQ=
X-Gm-Gg: ASbGncsOk0i5DkoR3UEZJUiLRWVpUR0htyyzXkvRyO4tbSwT8y6351mOqkqTilaqvC/
	XuX8DpNP8vGwt3jS36ITynn80mp48XT6TQnMlgHvcBTiZ9fDN0ltZIgRrc+G7uB/1TOD7Aigdie
	OZJfo/nw48YB1vJh7oxgDGUHoEnDvV7nH5/9ZXuUIaI1Ze9Suh6PFI3ItVT/XudQOucFnf6VzYp
	pb+/3UxK75iJX0LUcRKUkJniOb014se8IIDKdLTqHAkY6Tlc20o6zpCs91bV4BAD3BjC4ddc91V
	RmJHozgjlxmpbx38ZsWRe6zR
X-Google-Smtp-Source: AGHT+IHlnaIAnJCdDW1tnpOh5zG5O4kkYOWjTdY1ooDYR2tXwky8ii+ehLuUnq0yb/fUFPuqeP2PTQ==
X-Received: by 2002:a5d:47cb:0:b0:385:eb7c:5d0f with SMTP id ffacd0b85a97d-385fd3f29dfmr7132352f8f.26.1733315479660;
        Wed, 04 Dec 2024 04:31:19 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:740:b323:3531:5c75? ([2a01:e0a:982:cbb0:740:b323:3531:5c75])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e5e3629fsm12188615f8f.93.2024.12.04.04.31.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 04:31:19 -0800 (PST)
Message-ID: <6e4f39c4-fe74-4b17-b333-47ce64d458fb@linaro.org>
Date: Wed, 4 Dec 2024 13:31:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: display: msm: sm8350-mdss: document the
 third interconnect path
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
References: <20241204-topic-misc-sm8350-mdss-bindings-fix-v1-1-aa492a306bdb@linaro.org>
 <173331176548.4095099.9767845657326548018.robh@kernel.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <173331176548.4095099.9767845657326548018.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2024 12:29, Rob Herring (Arm) wrote:
> 
> On Wed, 04 Dec 2024 11:36:37 +0100, Neil Armstrong wrote:
>> Document the missing third "cpu-cfg" interconnect path for the MDSS hardware
>> found on the Qualcomm SM8350 platform.
>>
>> This fixes:
>> display-subsystem@ae00000: interconnects: [[121, 7, 0, 77, 1, 0], [121, 8, 0, 77, 1, 0], [78, 2, 3, 79, 16, 3]] is too long
>> 	from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8350-mdss.yaml#
>> display-subsystem@ae00000: interconnect-names: ['mdp0-mem', 'mdp1-mem', 'cpu-cfg'] is too long
>> 	from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8350-mdss.yaml#
>>
>> Fixes: 430e11f42bff ("dt-bindings: display: msm: Add qcom, sm8350-mdss binding")
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.example.dtb: display-subsystem@ae00000: interconnects: [[4294967295, 7, 0, 4294967295, 1, 0], [4294967295, 8, 0, 4294967295, 1, 0]] is too short
> 	from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8350-mdss.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.example.dtb: display-subsystem@ae00000: interconnect-names: ['mdp0-mem', 'mdp1-mem'] is too short
> 	from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8350-mdss.yaml#

Oh, indeed, will fix in v2

Thanks,
Neil

> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241204-topic-misc-sm8350-mdss-bindings-fix-v1-1-aa492a306bdb@linaro.org
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 


