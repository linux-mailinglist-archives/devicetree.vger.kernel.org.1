Return-Path: <devicetree+bounces-211639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C60C2B3FC6E
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38CCF1B24CD0
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 10:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E79283146;
	Tue,  2 Sep 2025 10:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TLwH6srf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15A328137D
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 10:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756808940; cv=none; b=fHV1gcjyxCKpgf4zqBDJruII9nwW0jKUwtkE3B5ET5T/zXhsnoOuxEfNjj4zzDGteI3XoqY70YCC3HJxsvfyomSJXRL/11/zJWTw+iskNtv45QDl3WLWklB0bTKyM8/KnRWqQL5xWjIdXOrV0vPWMsXQDxgBIJCtouiGY/HQSio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756808940; c=relaxed/simple;
	bh=L82M7dFiH3/Cpk0L5yw06355VRt0Tec0z0oLTrV9hyA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cT3e72dbLE/+XwOIGf+WaaskGrLpLmI1W7Fz7u22qtoV5OiRTVxloT/gf3FUnf+RcpCH2Io3G180IGMu9mRD/g+HtUX9oHb0jc6Uwv4hCvOSdzWZqgMp8Pwt9YGzFPsklALI/BkHo5iFCPTuZLbzmture2iQ+3hGbN2/imgU9N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TLwH6srf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582AQAGE027558
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 10:28:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XLwV4MTrk2CPBgYEOsRH/mqT9xEEUCBdYMAW2O+ZTN4=; b=TLwH6srfdadgZ2V4
	argbbAp+p1vQ0nAqyQRJdbIhIdZJPDaJO+VFZ5MHkH7Xj5hEloe0Cu1n8ftNsrik
	cWsIwSzZfU6jCIPbR4rMGfRjyqS054I+rMHLPb+eP1CDqHeN47LP81N729CMl0J8
	bfoynS5H4jXVNgI1hh7LWnW+SAklqGNxoOs9tNvsV9gdSZo+lhQ7KIC6WVwjezDa
	x7B5ocKx6ZTSAzWXDZBU1MmjxgpsFIKxJHE8bM+PqFoNFGwCXHG0QnvaQFlhxP2n
	XDSVGQfu0vsq+Vv06zqMjTo4iHXlYvSB5zH+aZQZ6eo0j3W48IoxG7dHZHOd95uF
	CgIVgw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscuygcj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 10:28:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b10991e9c3so8717031cf.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 03:28:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756808937; x=1757413737;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XLwV4MTrk2CPBgYEOsRH/mqT9xEEUCBdYMAW2O+ZTN4=;
        b=eAU1Czyn4CZOjIluG0mriQUObvf/gIjSnUriJN9vjnXfoX5z3yNAlJebOaWTLyRjYt
         S2Vgf4HXuyRaESTRTl2D760He7wtIwbwtRoBxgw6TrUcI7V8OzorbDnaBqRCwxerHt55
         VJjx8QlzVCWnDFNx2ukOrUI6vXVvYFu5OKeZLhlQ5H3he+BvVWa+Nbkqf/xCaG1dzMUY
         XWyLBxqFz7Cn8K9U+akl0AmNQRGw/6KaNwa8KWyrZ8YzMB1VlFWyzc3pmO7QhOzSRWD+
         xjwSa6al3pJ+q/Ly/vpw0/xzL2x/0RGTlMW2cgbi1tcFNjSgcCtoMxMztiCIPakiwuOq
         I6wg==
X-Forwarded-Encrypted: i=1; AJvYcCWf8bMAu2xHhJv/SUX+4Sxb5iJfVr6wl9gdbXUtg1vyJy7HfRtBhltT6fZu6N9WiSCvVTG4Gw+Un8SL@vger.kernel.org
X-Gm-Message-State: AOJu0YwvJWReK6eWN44payVrC6s8K9vWMldMKo5d7x8UjvBGqK/kYvIK
	4XpY1KF3RnYKRlZG4Hd4RdfoeAjfwZ9hK3ps7TdmiS/rGJm3yeKw76cRTopRB9Y/v2Msp7JGLSN
	XFHvFfu7G+5H/zUz2M+LNK5hIgsRBEo1BlvX4I9vYxVOIyhouSe3cDtFqK1lCYdE5
X-Gm-Gg: ASbGncsaheeSTNhlzy9+KP+oj1rK7kSl8hokHrPGGotns5kNhLKnBw/wvIYIwPu28ua
	i0g6u/TlhEzJli6+ZqIqQi8WpRDNYSMZb7yuo1GSgctCZctN5cXD97d+XuVzdFgkWmuWd9oj+wv
	30TQr3jjHhabL6CgDZuJrlPhalVLbLz61qD4+i/E7mvaUuALuXJtVTM0RB8g83EpqmcDoyCSSiY
	f+CIiRGRb18v6lHLbEfOmyjtXfKTs7IFCJlrQ0v2T5MT2UsnpkjXb0TJDdhllZBJJkujavUpUdX
	WjuNhkhlODYL5aAn4iEQQ0GJvIpsEa0y2bUCG3QZDTa70J5/GofyeUgTlN7TjhOWlbkpKp0skOW
	ADgs2sX/WWvemQ4fwH1iT0g==
X-Received: by 2002:a05:622a:164d:b0:4b3:d90:7b6f with SMTP id d75a77b69052e-4b313e6f3aamr102448591cf.6.1756808936722;
        Tue, 02 Sep 2025 03:28:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRfEclWp9+H13vGsDsxjPzHN/XU4Rv6g22xQOuu2R9ylSi4hDyLKWJOeJWbCxzsepW4L+3KA==
X-Received: by 2002:a05:622a:164d:b0:4b3:d90:7b6f with SMTP id d75a77b69052e-4b313e6f3aamr102448371cf.6.1756808936191;
        Tue, 02 Sep 2025 03:28:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0428f88a61sm491858966b.70.2025.09.02.03.28.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 03:28:55 -0700 (PDT)
Message-ID: <c79a4131-bc24-456b-a071-85ca4b17fd28@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 12:28:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: x1e80100-t14s: add EC
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Mark Pearson <mpearson-lenovo@squebb.ca>
Cc: "Derek J. Clark" <derekjohn.clark@gmail.com>,
        Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250831-thinkpad-t14s-ec-v1-0-6e06a07afe0f@collabora.com>
 <20250831-thinkpad-t14s-ec-v1-3-6e06a07afe0f@collabora.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250831-thinkpad-t14s-ec-v1-3-6e06a07afe0f@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX3N8umGqX9X4s
 +tDYJfMOMG/mbtU1CibZ3oRt3yhr7BT4N4NaXc0tHkpwiwlG69M9ONZ1x5JbdWoo6STRGj+aBr4
 MgFSHk7Q1cEpywvTEbG3+mfQVT8rSU8KjgUp2Zt/NcdZayXbnIIC6n6kuPBW5t8BNA1hc4DzJMy
 ipa9pzd6Nv8+SurJqLGCEJrEyzl7L1VIz8+gYymPZx9HVX7QsPXhQgyeHakJGGCwRIYFnV52uzP
 TekJDDgs8gPchjHfVtMGwlnpHd34TEXhieNhilcP4LXcKLhrbkjrxpHkn32k7zPdgRs9XWOZh3Z
 iAZqvXEYyDkdrNn/lTTXaznX170v4LFDNnTW14zsuEpJdlpuuqRTeDi6zmJB7fOGeHqUSur58S8
 Uy7HvnbM
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b6c6e9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=BYuMXoiSC8B881HoM0MA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 6Ig-ROc-eRo2VUb0hB1kL-KVdYHxnyoo
X-Proofpoint-GUID: 6Ig-ROc-eRo2VUb0hB1kL-KVdYHxnyoo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

On 8/31/25 11:28 PM, Sebastian Reichel wrote:
> Describe ThinkPad Embedded Controller in the T14s device tree,
> which adds LED and special key support.
> 
> Signed-off-by: Sebastian Reichel <sre@kernel.org>
> ---
>  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> index ac1dddf27da30e6a9f7e1d1ecbd5192bf2d0671e..7a9ec0c33b3ca847c5496e3ec145c70ccb7a3fe3 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -887,6 +887,23 @@ eusb6_repeater: redriver@4f {
>  	};
>  };
>  
> +&i2c6 {
> +	clock-frequency = <400000>;
> +	status = "okay";

a newline before 'status' is common practice> +
> +	ec@28 {

embedded-controller@

> +		compatible = "lenovo,thinkpad-t14s-ec";
> +		reg = <0x28>;
> +
> +		interrupts-extended = <&tlmm 66 IRQ_TYPE_LEVEL_LOW>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ec_int_n_default>;

property-n
property-names

in this order, please

Konrad


