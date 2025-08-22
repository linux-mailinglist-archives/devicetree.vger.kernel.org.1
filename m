Return-Path: <devicetree+bounces-207964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D9CB313EA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:47:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 269FD1C83B06
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486442F361C;
	Fri, 22 Aug 2025 09:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M9SsYYFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B182F0C5E
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855364; cv=none; b=amvpbVI6d3y4jpUSPO+adfQYwXds53A2cF3h1BbSonP6Z0R+gFEvFh2SWlpVpftvwIUfo38gxMGz+jb7Lzi594dIcF8guU6ld0iDcflc5DaOP9zGkcZto/EprxUeK7STzrm3v5hio2Ry+xAcRMPwQ7r8yXdQrmskwbdqGH4okg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855364; c=relaxed/simple;
	bh=MTlchUltgi318NL8GEvOv45DVuKXV+5fSlbX4wr8Va8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MrRklDSD0pRi0PpX31BGuie433B3LIgzuigwXifAUDO/2wF+f2sFRqHfBzSrysF5kqV2Crn4UvU9z6lG59J/ySK/3kNvJmmtZMxWxtgrWPWP/arReow8qBzsH+jCPcgHwsz+4bYno+2mvlQfOmiWSnGVAObPiPIB7ENOlj89WUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M9SsYYFh; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45a1b0d231eso10380365e9.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855359; x=1756460159; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZxLpTKOOWK60iUyTwkthGNDuDdK23AvQqmpjQR3hIsQ=;
        b=M9SsYYFhoiU6GBPExsU90Qmm074iO7z8uPKWdCQwyB0EjROSR55fqemQ3glhZhwRd2
         i9N7p28BYTVLxIEiDkCWDzOlTxYyYi3t8+ghEqLeaFoRPJ4YAk4TRYz7CL2C2o0lQake
         6cavriNqS3jeWbJiAhlVCsKULCO4xrzQ67acb8Li5vYRQjBr3e1Q+YtvilCF6rMP8R3k
         2afQOo/PH0X+zLA9uZJdJshwtzy9D4LykTDhH9fhW50GsjlvlwydLKp2/jkmulIXjdfV
         iLAPcnBMGyhrvmxlE4A65eiK6kUKM5ouinxnvqLld5HfMmxHN7uCIo+yF+hRGBq7UQq5
         rOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855359; x=1756460159;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZxLpTKOOWK60iUyTwkthGNDuDdK23AvQqmpjQR3hIsQ=;
        b=sz8OzsUbBdhUN7AKztbBWUMiK2mqJS7IRT0YAZQ7jnNi6nkMjNrfddkGOKRKgvpaUu
         M0C1J1YIWoILALONjmj46ZrUWoph6Wc/tzuVaKeruMFDkbSiV58aJTYRxlkYa3DMO1yg
         u/TNyXaMnLfuBeThyu/QpPdbeGb+37C5ECWrEdpEjnW0w+81i7uSmkG4aUQBHWXvujct
         821b4mRMizdb88kQjpDUZ0YLyjNyI3DhMGDKxgkaJudTFt4UQ2CPHa8v235d8BlYtphH
         Nxg+SgmcEXLAp3VNvcUK4NVJ/DdAEHHXF1V/fFDiTa7/qHR1WznQOserqAo06OW6yxeS
         YcvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3CuJMbF8zvXp5fwkydUSDpmBomYW9Ml2T8fHCC6xMvrRt4dvw+K79yHK+B1f4gJcQBwPOfmmV3WLH@vger.kernel.org
X-Gm-Message-State: AOJu0YymRG5vHL17ODrhDD823qFJa7+z7tKm+EohgiDh4qzhSjYE1/D9
	LJviAg6ynVT8RaiF6aAxpvEpaJxDc7TvxybeXH91OXNo5zd+Dv765FjgxikJh/NqGR4=
X-Gm-Gg: ASbGncsS7QIuSiNBDCjdKiHA7tRgzIiXfugkYHYcBRdlW81EJwH5C0BWO4z4ss6wYs7
	DJQG+1QuXrhbBWhMdxoiG2De+P+r5i+1UwjfnevW2BVEDoliNV+m61R5uLF2asIMPlfQ9NIBYoZ
	THFH6uNriwgFnRComrMZTCETihK/M+yNyY9D3nb1fCLkQUi/TeyzfPej9a2zqaRfIWdE8fgaN8K
	x+x9uyAVYuZatTwTdQOH5qVelYj3uJUlQ8yFVxpQvYfy3XKytV5F7vw47RGJFBeB6eQIkfdca+o
	aBpi8rULgZTbBfpj4ghPRvBxEh5wOiNePGfEk/BG+Yg82VbGYnWb6e45+pRWqkMYT0dZJ5v4oRv
	BYmhiTOJSor541GFxqBjRy1EfjOE067c+VklA+w/prGdcy0S4gpV/Cp8rN3XvA/IaIoYWyb/bj/
	c=
X-Google-Smtp-Source: AGHT+IFovM2SabCJH2b5MRiF8TjGggfusVSGcoBGMzu394048iNqTSwG6Bm7+5IKEuykg1H96jwtJA==
X-Received: by 2002:a05:600c:5491:b0:459:db80:c2d0 with SMTP id 5b1f17b1804b1-45b517954ddmr17227815e9.7.1755855359262;
        Fri, 22 Aug 2025 02:35:59 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3dd7:7361:c101:6a77? ([2a01:e0a:3d9:2080:3dd7:7361:c101:6a77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b50e42433sm28546625e9.23.2025.08.22.02.35.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 02:35:58 -0700 (PDT)
Message-ID: <cae41451-39ca-4538-a74c-39701d30073f@linaro.org>
Date: Fri, 22 Aug 2025 11:35:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 04/10] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 Add missing pinctrl for eDP HPD
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
 Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>,
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
 Srinivas Kandagatla <srini@kernel.org>, Sibi Sankar
 <quic_sibis@quicinc.com>, Rajendra Nayak <quic_rjendra@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Christopher Obbard <christopher.obbard@linaro.org>
References: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
 <20250822-x1e80100-add-edp-hpd-v2-4-6310176239a6@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20250822-x1e80100-add-edp-hpd-v2-4-6310176239a6@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/08/2025 11:28, Stephan Gerhold wrote:
> At the moment, we indirectly rely on the boot firmware to set up the
> pinctrl for the eDP HPD line coming from the internal display. If the boot
> firmware does not configure the display (e.g. because a different display
> is selected for output in the UEFI settings), then the display fails to
> come up and there are several errors in the kernel log:
> 
>   [drm:dpu_encoder_phys_vid_wait_for_commit_done:544] [dpu error]vblank timeout: 80020041
>   [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
>   [drm:dpu_encoder_frame_done_timeout:2715] [dpu error]enc40 frame done timeout
>   ...
> 
> Fix this by adding the missing pinctrl for gpio119 (func1/edp0_hot and
> bias-disable according to the ACPI DSDT), which is defined as
> &edp0_hpd_default template in x1e80100.dtsi.
> 
> Fixes: 7d1cbe2f4985 ("arm64: dts: qcom: Add X1E78100 ThinkPad T14s Gen 6")
> Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
> Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..76d491f085db2eb6ba8c8358063882611446ae72 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -1010,6 +1010,9 @@ &mdss_dp1_out {
>   &mdss_dp3 {
>   	/delete-property/ #sound-dai-cells;
>   
> +	pinctrl-0 = <&edp0_hpd_default>;
> +	pinctrl-names = "default";
> +
>   	status = "okay";
>   
>   	aux-bus {
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Lenovo Thinkpad T14s OLED

