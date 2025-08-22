Return-Path: <devicetree+bounces-208031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D4DB3160E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 084747B59E4
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0723E2BEFFD;
	Fri, 22 Aug 2025 11:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d8DfVnKr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F072C029E
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755860580; cv=none; b=sf8FumwgWTb+cqklmI/XwTzjKVm1GyK5Ph2nuumYvOIQWxn8rZbML0Lc0bbsq6E4TbtE+pLIT6Mj5YbHYkIOv4mC/2XwX8pf2Uo+LVcP1W7ifeGtQ9N0pm+sydZjER+CqDxRQDUSKpM3c6pgaiOxK4I4CCEtWwadC1xBXzlIIxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755860580; c=relaxed/simple;
	bh=wEg0i8ljpxKTk+ox+KSaAg2bJ9cNagorHHhQEBmrDtU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZYdO9qQbnPHHNd4vAd7kMLPRweB0eWmOtsEWgN30fNJXmiF3GfIYEp/CTEDtxVhimah9o/xo05iJLDOfPkPNw1RGlNWX7MTgZnDwxnWiijBeYCjaqpzciwPpecW9E93/YUj83aFPejjyyUFGreBpmb5C0IcGTctlPuuSP9jbhbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d8DfVnKr; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45b55ed86b9so1219825e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 04:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755860577; x=1756465377; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSPNDRQEXSByP3k9ud61Mdrc8MbERDVLg0jj88ZjWgE=;
        b=d8DfVnKrAvg6QVFmg9IlUIrbXthKUUTiQSyIbp9xRyNDyv97l5hEPKm2bUY1RahPTu
         tvCr/IMMLskmrkIMBC5z4kKcv4MqwH1QPgnAHtdHQNCdkXKVunDqobsqpkf3CETLDnnw
         mR6VKBNbMSHeKhyZl4PVQw0fh1NZbOEKLUj9TiM2NAvwTLPk6CkUIduRn99xYk1l+SNS
         +sCVcFdLZZs4zXd1DCWoHxrvMBPaH4BXecD5KsOpGHGd54iUybngpC7FLGh9OqfjCkZZ
         HpQ0p9TGeJkefyHd06FOYZk0mh31V8/I+BhKkX1F7HKn0xGzATyteVcvK4YAFk5JZW2+
         Cg3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755860577; x=1756465377;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cSPNDRQEXSByP3k9ud61Mdrc8MbERDVLg0jj88ZjWgE=;
        b=ctAs8i4Og7ai6mpaDZ/7pJmPFr/yFiacVPXhwtgmB9yaGltornzLWn2wUuNDhEGQmt
         kCcGcY4Icg0flfnLQnpahH30/Hbfi9VEdu0Z66xq/U+RTBRY3uuDTh/5SA2BD+OOY5xJ
         VxzMgo7vFuWhSu7J/cdafXOoZUps0E/vll7w4US6I0dALr++AR/AXQaHqNwANF61Iy6E
         b3GEQnrDvSX34TOhw/nfhy7iMNK0hxKLZ5DrtjhnPp3emens7VvRg6Rsn+OhfBL/rIkV
         wfTqel6PLKw3QKuUIHPnioysVxzq+VBWwpleiGlu6GJeCIxz/pHpBZj9PWfaFYD50Wj8
         ua1A==
X-Forwarded-Encrypted: i=1; AJvYcCVbUg59rmaSnQuLpe4TJiwwtLTeOkVWHaQpxbdUoOxWDvJeCotUOUOahOFz6lV91BVcICsyrRIldeEJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7xQVVqDgpbOA6F49SQJmCVB2/kGS8x0HKGusQDDxIyew3PAKr
	qzUgUoqUG8Ha362TOmQhS79QRXhyXH260JNh1F4yckFTRU9ZVLxxriPzYjODvCkTkkQ=
X-Gm-Gg: ASbGncuKd6jXZ5l0n+ko06LAWCud+ZXS6zI2qFH3ZuyVSwQ/G7UF6lDpJsh0VXsM6dQ
	YGgGUxiuh8NwNrrEpI6oLWT1IRexFezK+yeEInQOD9vvqY4vh4iXcpZ0QYTJqZ/19iV4+EOUbAE
	DEqwtdojaQFxtPSyHVLNCY/tlpEh6FEXYyAXI6GEmYMxT4GhAsM29lfpzF7v8Rtj02Y2qdy/5/M
	QhJ/9dMFh+74zClF1Gdtvy5qdVGrpE6sOhsEWLiafjUENFhkvabD/MLhowT+55hUOJvq++yAH3b
	OQwHL08SwpHfdO/mbvOePBVF8iWGQ7KHY6DBHngPIcCCAIgoSRrZVErGDm5IETvn3WT696L6R/c
	b6PixP9mvuepfBe25p6px8SF6fIKnjsDu1svDD5ie4PnImdrz64Mkid4ER8ClEomaUhEfkMm9SW
	U=
X-Google-Smtp-Source: AGHT+IE9PTwlyQ2HBsXoeltYN2/3zplP7/7veKdqNUYfYAOzMFeQKW/6u0My0eAnWH9Eypu5kHR5qw==
X-Received: by 2002:a05:600c:3b22:b0:458:c002:6888 with SMTP id 5b1f17b1804b1-45b517d9ef7mr18067295e9.32.1755860576998;
        Fri, 22 Aug 2025 04:02:56 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3dd7:7361:c101:6a77? ([2a01:e0a:3d9:2080:3dd7:7361:c101:6a77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b50e3a587sm35232305e9.18.2025.08.22.04.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 04:02:56 -0700 (PDT)
Message-ID: <431de5f8-2dca-4ec0-9b94-fcc12480e8c9@linaro.org>
Date: Fri, 22 Aug 2025 13:02:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
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
In-Reply-To: <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/08/2025 13:01, Dmitry Baryshkov wrote:
> On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
>> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
>> connected to the third QMP Combo PHY 4 lanes.
>>
>> Add all the data routing, disable mode switching and specify the
>> QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
>> the underlying DP phy.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
>>   1 file changed, 44 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> @@ -62,6 +62,20 @@ switch-lid {
>>   		};
>>   	};
>>   
>> +
>> +	hdmi-connector {
>> +		compatible = "hdmi-connector";
>> +		type = "a";
>> +		pinctrl-0 = <&hdmi_hpd_default>;
>> +		pinctrl-names = "default";
> 
> If this is a DP HPD signal, it should be a part of the DP device.
> 
>> +
>> +		port {
>> +			hdmi_con: endpoint {
>> +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> 
> Please describe the transparent bridge too. It can be covered by the
> simple-bridge.yaml / simple-bridge.c

Ack, indeed it could take the pinctrl thing.

Neil

> 
> 
>> +			};
>> +		};
>> +	};
>> +
>>   	pmic-glink {
>>   		compatible = "qcom,x1e80100-pmic-glink",
>>   			     "qcom,sm8550-pmic-glink",
>> @@ -1007,6 +1021,14 @@ &mdss_dp1_out {
>>   	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>>   };
>>   
>> +&mdss_dp2 {
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dp2_out {
>> +	data-lanes = <0 1 2 3>;
>> +};
>> +
>>   &mdss_dp3 {
>>   	/delete-property/ #sound-dai-cells;
>>   
>> @@ -1263,6 +1285,12 @@ &tlmm {
>>   			       <72 2>, /* Secure EC I2C connection (?) */
>>   			       <238 1>; /* UFS Reset */
>>   
>> +	hdmi_hpd_default: hdmi-hpd-default-state {
>> +		pins = "gpio126";
>> +		function = "usb2_dp";
>> +		bias-disable;
>> +	};
>> +
>>   	eusb3_reset_n: eusb3-reset-n-state {
>>   		pins = "gpio6";
>>   		function = "gpio";
>> @@ -1486,6 +1514,22 @@ &usb_1_ss0_qmpphy_out {
>>   	remote-endpoint = <&retimer_ss0_ss_in>;
>>   };
>>   
>> +&usb_1_ss2_qmpphy {
>> +	vdda-phy-supply = <&vreg_l2j_1p2>;
>> +	vdda-pll-supply = <&vreg_l2d_0p9>;
>> +
>> +	qcom,combo-initial-mode = "dp";
>> +
>> +	/delete-property/ mode-switch;
>> +	/delete-property/ orientation-switch;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_1_ss2_qmpphy_out {
>> +	remote-endpoint = <&hdmi_con>;
>> +};
>> +
>>   &usb_1_ss1_hsphy {
>>   	vdd-supply = <&vreg_l3j_0p8>;
>>   	vdda12-supply = <&vreg_l2j_1p2>;
>>
>> -- 
>> 2.34.1
>>
> 


