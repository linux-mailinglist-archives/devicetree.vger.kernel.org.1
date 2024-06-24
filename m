Return-Path: <devicetree+bounces-79178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2740D914465
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:16:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3B991F23052
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0B249645;
	Mon, 24 Jun 2024 08:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pzH1uAQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0355027F
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 08:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719217009; cv=none; b=He+W1y0xM5X/1/L5/UXkM2B/KabkJCEwZIJ37fw8exdqFWQshm0tAubiKbzi7CM2wnPEu5IMhN0O5YHWIHX1P29cDLHNyusvkck4Ao0HLg5/fQ+1cBxKu+sSnF13n1IkbGrdzChOajtnKYxdzpHAAElzmcPEJN8dAVYid1T3ehg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719217009; c=relaxed/simple;
	bh=hFRLAB3p7iRVqvgg60dGABp7FuRqhy6ia9zfd+8UKr0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=gFN8rCkhXZ1XKxIMOV/e1fr1BDEy2eD0A72mtLvuhYBhtXA/uOAYRMDnq1k7PqgeD1v4GTbdPdrrLi5k9zAC8FU0alELHRh3FIC7Joc3PN0vDKr5NQ50T6LEx/cw3GDQ+jHr+UW+6Kz/WNEsV5y10WEGUqnETZ9Bn5yHix1psPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pzH1uAQF; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-362f62ae4c5so2258219f8f.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 01:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719217006; x=1719821806; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tXrTSK6bVTTPMRrTWn1jiwS0BgSLK4DHIpn4IueFd94=;
        b=pzH1uAQFUtJ1OavgSxqLDhZPCGY1YU8XFh+/SB8cNrAQUabSPl23i1qMy3IrdxW1/z
         Ep9zAS4tu5T2ci+/ofTWM3BI3CNQVBYuR5Zx9W4M/0sxpft+yob6bzJbaKTzVm5hpi/k
         k+Wdbg8WKSwnTmfJGkK5b0cwe0wNyjM8+9LGSy+OBMwLzH9R6rWR5TsPR7nJ8wIZ3Qjr
         oyMC7sNUUhPtk46c4r/C1xSxi3GYW/EHas53azdNFkKGLqrVm8K2VNJz//bAveXSOurj
         orRwjRCusi5puf/3BThtuV8txmjQyAvaTqsgpUrC0KyAhLxCDRTSd2jxu1oDGG97jsms
         oseQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719217006; x=1719821806;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tXrTSK6bVTTPMRrTWn1jiwS0BgSLK4DHIpn4IueFd94=;
        b=ktw9SPWrxJKBCvDmGz7BHbdgqOYM6HP7osCVLojEOI/uWDCHMasuD3TKwOItUHVngl
         bYyKSpWvfxHDnPAFg6ygXldxhvdjrL0TT/akZfY3dyb5yNKE3d8EPM/6tpmt+UJP4vSC
         CCuceWa9Ctc4BfyiDCHDBK9ESZQ+fZPwKf+hAr1damsNHWy0ywIzSzEHc5lJDrjnB9V3
         0rbuJAvWrKdtslLpQ0b+G9d2rkQ7HX0JQ4Eb3pL21O79GW7FjbNebAHxg61533LiGWk6
         8SSCrf1+QYOt0mDkuZw3eXdXR/AzKGEk+HKT7e9eFTZ1gbWaInE7KvEbZ6tgtIjXQv8g
         0A4A==
X-Forwarded-Encrypted: i=1; AJvYcCVv9gM/T+PcAWXqOvH2RUsUw3K5S9JtJKiIBF3HdpZl47gPzkBixWP2hNRREbI5X5yilqYGDXXN6FW9iDS/IYVoEmlikAnJ2m01sw==
X-Gm-Message-State: AOJu0YzWZq/G9zgkmDCFAoB6/w8begI3Q7y4SzsGC5tNwlkWdpPMNhCO
	L6xqPf7VQ43sylm/BLCUcsjFOP0WVgPlT0/4OUKU4JjPRLUk0iTItJaznM1ck0Q=
X-Google-Smtp-Source: AGHT+IEo+12j/9T1nVgqzN9xgRI7usrHUa83kh+pyoH5xJqWRauCSS3MRB/w6TAmFp7e97EFCmj/bw==
X-Received: by 2002:adf:eac8:0:b0:363:337a:3e0 with SMTP id ffacd0b85a97d-366e325ba0cmr4438059f8f.1.1719217005218;
        Mon, 24 Jun 2024 01:16:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:cf01:774b:55fd:ab74? ([2a01:e0a:982:cbb0:cf01:774b:55fd:ab74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0c54e4sm167163005e9.23.2024.06.24.01.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 01:16:44 -0700 (PDT)
Message-ID: <344a7c55-fee2-482b-88dd-4827422f7ed0@linaro.org>
Date: Mon, 24 Jun 2024 10:16:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/2] dt-bindings: media: amlogic,gx-vdec: add the GXLX SoC
 family and update GXL
To: Christian Hewitt <christianshewitt@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240604051533.3312944-1-christianshewitt@gmail.com>
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
In-Reply-To: <20240604051533.3312944-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear media maintainers,

On 04/06/2024 07:15, Christian Hewitt wrote:
> The GXLX SoC is a GXL variant that omits VP9 codec support. Also add S905W
> and S905Y as GXL chips and sort the GXL comment.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> index 55930f6107c9..47dce75aeae6 100644
> --- a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> @@ -31,7 +31,8 @@ properties:
>         - items:
>             - enum:
>                 - amlogic,gxbb-vdec # GXBB (S905)
> -              - amlogic,gxl-vdec # GXL (S905X, S905D)
> +              - amlogic,gxl-vdec # GXL (S905D, S905W, S905X, S905Y)
> +              - amlogic,gxlx-vdec # GXLX (S905L)
>                 - amlogic,gxm-vdec # GXM (S912)
>             - const: amlogic,gx-vdec
>         - enum:

Gentle ping, could this patchset be part of v6.11 ?

Thanks,
Neil

