Return-Path: <devicetree+bounces-143939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5084A2C466
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:02:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1287C3A4F1D
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:01:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7631020B817;
	Fri,  7 Feb 2025 13:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GUDzYYsV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FC21FDE08
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 13:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738936773; cv=none; b=rNk6lNRgJW99xFpGqzEjJIZhJ6BI9Q8IrPORp+sw2sECGjOXKXNrg95wZ2QCPgmWWMXSrYdQTcia+r7lUfEU7oKjftrS7Pmaa5H6KQt5TA/TAA0/aAPZWtgy0wBSSbailw2XXwaODgyqPe/CaKdWWAJBZC8J2O+CQdKFJVdnEWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738936773; c=relaxed/simple;
	bh=p8G/aUYuUCjMyJNrkYWYOuNMl6ZI+6nvf9k5rhYzVoc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Z7kTH8+RGnrP1qTEzXKDp3TCsssGFtQOmX2+jdT/gQJFVN0RnekTFVx7uAy6oDi5K7zfL2JFGIMfGKfGe5IwSsK/S6A9wbChDiDmEaRwB0+jhei46rXzvaZ7Z0yQg6J1h1teoGi+H0EN4BJPXwb6/MCNLvldDFi8cu7DBa0YyWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GUDzYYsV; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38dc73cc5acso641389f8f.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 05:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738936769; x=1739541569; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hkR9wNKJuVrn2xXLtp0xWMIVzcU5W5qY2aQJeG+PYo0=;
        b=GUDzYYsVz3c14Mj32SeSkILpPa+u39at/Vfqfp+roaR74XiYG8peNdtqIfDJ+AbMRQ
         VilT/62QxFdBRlKZ7e4tsTvyePvXbtwPdNUTonpY0X47rtx8Gjq0T8v9ABX9zA6jrZZw
         6yP/VuSZ/upLhPuvB0P/1fC6KFO2oRfyZj8TMGJJk6hRvYFRkmGmrcVTwA5VJXKZwHa7
         ISmWKTAPxtjoCBHNjK9ZW1vnmLk+73qZ2E0bjKbFsZiiwdSFU0vq+ztTl33JZ2U15Fl7
         QIkpU9Cu+q3bPQRNctC3nkNL0Ona9ASdpr/MsGVzAHz0oK7kLqBl696E7QVqXyBA+iSi
         frzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738936769; x=1739541569;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hkR9wNKJuVrn2xXLtp0xWMIVzcU5W5qY2aQJeG+PYo0=;
        b=nNjpT8KbfiXDAMFJ5wkjWUV4wfFdGBM4ccEcRcSzgEdUroXFW0IZ2CDG9sLRUlojJY
         qJOnGRa3n0ebTsxX0RWtqu/swRgQ7+9tba+og/37jOXsHxdmdT4a/xsUy3jENVXXqbBc
         VFn4gYHaBsC4jhV0zvx4MDZ9nJfnxE78BcIbodGTkyFPpcjrpNrBOMzbLIyxJM0z8bpb
         oBK7fXW63Ww/tjTSEEHMuBSAgGTpGCenvx++QL943V1e0F/rO90eCjjt0UfcWS3Fjbnt
         vbm5qng0xMdM6XGPZKrfK89YkDtndjI4/Trxx3WURykkGMIl00x5lVRZNOpeSfIrDFSG
         c1qg==
X-Forwarded-Encrypted: i=1; AJvYcCVsSoZLNPNLuLnlmyfWXyMp+lcOIOl7sU1g8oBDa1S0D3h8JzL9A1OJ7Abhr47AUP2MF/Ui+mHc64wq@vger.kernel.org
X-Gm-Message-State: AOJu0YxQyTxZuQoldZOHBUfu9ULj4KieKUGvjz56p8ZkLB3GL3KjUpjm
	xdkqxAnguITH5SzZF7zS3w06snJxdyOZUabvDuifyRJi5hkoXue6YlWKvFZK0M0=
X-Gm-Gg: ASbGnctb5kO3cMaJ1Lkxg5gNLzMbER2/vkF1J/XwN+GSzBpLqJJjHXqW4ILGF7dlYLK
	FjuTyhcP5b4p4OobS+k8bba+w0kXWaHpN/Z+i/H9t7rf9Lkp5cAvtj2lMdp6G33rdnc+0+rHWep
	IwfwlRunMSF1Zko9Aj1UPGg6HDjdaH8TVlbmSeRyiZ7OC6tCW7hJb5Fy+5Br4C9JyAzqL8/qfog
	lv9l7USYKTrQbOLMbwJG91R8R+ljsgx0fzPeD+dgv2yZyAtxBR7BLklcWXDMmGqVPjr6NM0QB0Y
	zr9j1Ox1kjjH5gD9/bjlHNqVR/RQ1vKVhm/J8Vesz4Jcgo/UIXHHDqnm5jiZ3gVeb4f7
X-Google-Smtp-Source: AGHT+IFaHTGIHzKLUvnWz9+Y5u7+raJr/5Kf7pvr1qGvrp3QDa8oLg2Fjp7WNSzvc3RsTpW1NE2RGg==
X-Received: by 2002:adf:e60b:0:b0:38d:b52d:e11c with SMTP id ffacd0b85a97d-38dc994edbfmr1754061f8f.15.1738936769612;
        Fri, 07 Feb 2025 05:59:29 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5b26:96be:712e:30cd? ([2a01:e0a:982:cbb0:5b26:96be:712e:30cd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbdd1af07sm4646491f8f.15.2025.02.07.05.59.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 05:59:29 -0800 (PST)
Message-ID: <ec30d033-f53b-4d71-8c36-b6448879b691@linaro.org>
Date: Fri, 7 Feb 2025 14:59:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/2] dt-bindings: display: qcom,sm8550-mdss: only document
 the mdp0-mem interconnect path
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Simona Vetter <simona@ffwll.ch>, Rob Clark <robdclark@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Dmitry Baryshkov
 <dmitry.baryshkov@linaro.org>, Maxime Ripard <mripard@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Sean Paul <sean@poorly.run>,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-0-852b1d6aee46@linaro.org>
 <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-1-852b1d6aee46@linaro.org>
 <173893208278.4072473.6097194764742914829.robh@kernel.org>
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
In-Reply-To: <173893208278.4072473.6097194764742914829.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/02/2025 13:41, Rob Herring (Arm) wrote:
> 
> On Fri, 07 Feb 2025 11:50:37 +0100, Neil Armstrong wrote:
>> The mdp1-mem is not supported on the SM8550 SoCs, so only support a single
>> mdp0-mem interconnect entry.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.example.dtb: display-subsystem@ae00000: interconnects: [[4294967295, 3, 0, 4294967295, 13, 0], [4294967295, 0, 0, 4294967295, 1, 0]] is too long
> 	from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8550-mdss.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.example.dtb: display-subsystem@ae00000: interconnect-names: ['mdp0-mem', 'mdp1-mem'] is too long
> 	from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8550-mdss.yaml#
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-1-852b1d6aee46@linaro.org
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

Damn example, went too fast...

Thanks,
Neil

