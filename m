Return-Path: <devicetree+bounces-23002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AB8809E19
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 09:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09D08281694
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 08:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07E0E1119A;
	Fri,  8 Dec 2023 08:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FcSuAn1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E1F010E6
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 00:28:38 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3316c6e299eso1834935f8f.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 00:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702024116; x=1702628916; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tvDaevsK7/OdtIN4ZZ92+SBkN0d/AhKeYYJWkWcCFcM=;
        b=FcSuAn1KrqbYDw4xiCZ7uXhkbxkynTINBzFrevNjcT7Tci9S0wuBnX4+ZQCEzqQxWq
         RQYguPoCXRUec4vdbVkJyGzKnknpUEgTwN5QZUTXqgESSIyswiimIcWkimUZ9IFXcCIj
         Ex8jB30v5/U3aY5Vy61J4y0PgTXArWNxT0Qm2JC3NzeLPuUktTIOll0NGDEzywUnOVow
         F6DaELHBbR5qH57X6qGU5gkSsR2DdL1nO/OhN2/NxX/vCnTQcpgZG5XbDLVrwkKK+5tB
         rdEtYEc8A7FkLf713NH8W3A4PprDxAnV31nHZRbCAAmRh3AXNYg5aa+u2RGxg1edjKV3
         9eCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702024116; x=1702628916;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tvDaevsK7/OdtIN4ZZ92+SBkN0d/AhKeYYJWkWcCFcM=;
        b=Fskol5MNkPLRSc/qjsaxGGr6N41lCDBkaFYskgP8T1rbpBTnlsLnnIgGgSQ4Lya9+g
         qzcqUd1LXL3dOOigwM7Akt6Iljaw44fAB9DRgiupojDe6oWlO5g9+I5Z7zf4RzwBK4Ng
         MZHb3r1denwvMtviIYVJrvAFnBlL/UAIzkF8C/IekX6q0yFHCmnjfNw0V5qeFW00JOmM
         3DgUfHDbKUhzl3R9to8PNaEfBvnWU5jrvw3YcmHTDhphQUxKOZQR2dF1gTVHJZJdNFcn
         IvQcrcMgkF53SMmCR2F1naSpMKNEB+onVSaAUtHzclQbOSzXw5YtEYQLPBmcMo6eJ+g9
         EHIg==
X-Gm-Message-State: AOJu0Yw9xx+YW7mBl0WFV6p6xrID3pOT/vGQtF84s9trA6MrckkrL4uo
	O8dvu1SQOAHAT5mNpt8D2btTRw==
X-Google-Smtp-Source: AGHT+IEBO5Hb/8bJQCK/Qq3DsVqqs4n08jSKkaq3CCjQjLLptybMAMNqJbrR+mF21o23C48+AF1EzQ==
X-Received: by 2002:adf:f752:0:b0:333:2fd2:3be2 with SMTP id z18-20020adff752000000b003332fd23be2mr1651859wrp.155.1702024116507;
        Fri, 08 Dec 2023 00:28:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8ada:86ec:5358:ef2a? ([2a01:e0a:982:cbb0:8ada:86ec:5358:ef2a])
        by smtp.gmail.com with ESMTPSA id o10-20020a5d58ca000000b0033338c3ba42sm1483097wrf.111.2023.12.08.00.28.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 00:28:36 -0800 (PST)
Message-ID: <a0e0e803-47a6-4b66-bc14-7a9f7db696fd@linaro.org>
Date: Fri, 8 Dec 2023 09:28:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8650: Add DisplayPort device
 nodes
Content-Language: en-US, fr
To: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231207-topic-sm8650-upstream-dp-v1-0-b762c06965bb@linaro.org>
 <20231207-topic-sm8650-upstream-dp-v1-3-b762c06965bb@linaro.org>
 <bcecxzpogq6pndwmhgrl52ia3orni2q5brg6mpc6fkn5widigb@v6dy4minwajx>
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
Organization: Linaro Developer Services
In-Reply-To: <bcecxzpogq6pndwmhgrl52ia3orni2q5brg6mpc6fkn5widigb@v6dy4minwajx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/12/2023 04:38, Bjorn Andersson wrote:
> On Thu, Dec 07, 2023 at 05:37:19PM +0100, Neil Armstrong wrote:
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> [..]
>> +
>> +			mdss_dp0: displayport-controller@af54000 {
>> +				compatible = "qcom,sm8650-dp";
>> +				reg = <0 0xaf54000 0 0x200>,
>> +				      <0 0xaf54200 0 0x200>,
>> +				      <0 0xaf55000 0 0xc00>,
>> +				      <0 0xaf56000 0 0x400>,
>> +				      <0 0xaf57000 0 0x400>;
>> +
>> +				interrupts-extended = <&mdss 12>;
>> +
>> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>> +					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
>> +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
>> +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
>> +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
>> +				clock-names = "core_iface",
>> +					      "core_aux",
>> +					      "ctrl_link",
>> +					      "ctrl_link_iface",
>> +					      "stream_pixel";
>> +
>> +				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
>> +						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
>> +				assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
>> +							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>> +
>> +				operating-points-v2 = <&dp_opp_table>;
>> +
>> +				power-domains = <&rpmhpd RPMHPD_MX>;
> 
> Are you sure the DP TX block sits in MX? I'd expect this to be
> RPMHPD_MMCX, and then the PHY partially in MX...

Hmm, yeah probably, will switch to MMCX

> 
>> +
>> +				phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
>> +				phy-names = "dp";
>> +
>> +				#sound-dai-cells = <0>;
>> +
>> +				status = "disabled";
>> +
>> +				ports {
>> +					#address-cells = <1>;
>> +					#size-cells = <0>;
>> +
>> +					port@0 {
>> +						reg = <0>;
>> +
>> +						mdss_dp0_in: endpoint {
>> +							remote-endpoint = <&dpu_intf0_out>;
>> +						};
>> +					};
>> +
>> +					port@1 {
>> +						reg = <1>;
>> +
>> +						mdss_dp0_out: endpoint {
>> +						};
>> +					};
>> +				};
>> +
>> +				dp_opp_table: opp-table {
> 
> Is there any reason why we keep sorting 'o' after 'p' in these nodes?

No, seems it's a copy-paste issue, will fix

Thanks,
Neil

> 
> Regards,
> Bjorn


