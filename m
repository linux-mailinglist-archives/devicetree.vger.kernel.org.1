Return-Path: <devicetree+bounces-211155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF4AB3DBA5
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:00:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FFE63B871F
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979B32E03F2;
	Mon,  1 Sep 2025 08:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f71gxjXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B61D376F1
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 08:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756713647; cv=none; b=TeVpIgVvXI/vQpQ2j1xwLafPgTmvza1eEJq4Ck2eeecjSQ2oe20VOhbG4l1aB4Ov2w10+Wsx8ONneYeQ+w+KYSogeF3cAwbDn3RaEgDuh0Am1eN92kdp4+Iz8X+7gNk+4YUUTvaTxBgMfH8bNEFLI1+1GSYZheB0R436WCOK/vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756713647; c=relaxed/simple;
	bh=WV0jKWlHfFl8DVLyZj//3pe4rq8eo4E4hj4SKoTm4i4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tyLfBuioRA+VnlKBNHVxVjhj7yab+4CRdwdkbffo/x0s6smOhiduDG54q/qOX8DZjYmHS/fM/SMf5KVh4RbRkezk4WgwepDCXgr+JFDwCqYMG9emJcuWfznqc4XlYu71zO520uJfA5eO7DV862qATPWtIAIcgOuNoZCOAF/Kxu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f71gxjXC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57VL0Jw6000844
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 08:00:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KYaRk7MoHtD3LVVRYkOuF+SpuJ/lbz4krp9ArV0SG+w=; b=f71gxjXCpYOC0MXa
	RisNz17lf4Qkivuu/0H8dSDowTewnbwkrrL0nbIZsAmtNBJmH8l3lKnFfWJGVL3s
	8tGdQN0d92DXiX1nDVJV12SEnRX38Dk8Idyu9mjOwj8TjJRs5ssKRwIJ1TTTOsr2
	5HhJibYB3in5faAyT76sVtpfTEyybRctMeEthSAaDb16MPuOBI0+ewA9HK+u4kug
	J6+e2tz0uYok8bRTk+Fb0CSba6k+UcL0hnKYXtU6aIfwsRGB7JnfOIVQMOSRc+i+
	WQeyhAitOdyuJk3fxKqcXTnBFFoXLL8wn3RDbeFlhdhgPgDFV3hJRIgHy7dpXHuf
	ubEWpQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fbt5d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 08:00:45 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32769224506so4114630a91.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 01:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756713644; x=1757318444;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KYaRk7MoHtD3LVVRYkOuF+SpuJ/lbz4krp9ArV0SG+w=;
        b=mAMLmDsbY/w4thVrKBHjnBHs8sIA9JhUNy+03Fe2xK8euJmigHG4gPK6KvzrDgmrdP
         7NkpCjxbBVd7unmypwVsdVXVwPMFaEw/EOeDl87ImxzLiHmfnxWBwCkXsI3oK0gdPQo5
         5dKY7c9FO4/31Dhr3tRNfAstejPYWfrs8p7fMNxQIeSq6KvG/hhoGTd1GZkob2/DwW35
         aHbGH6N8WxS2zmGEo8ne45KcHjomK75jz8ZdywcpzCAQ9iQRMT5/WOiQGWt7kGHcwQl/
         lA/9+5t8Qr5mhoSJFeEEnDZHpw8wjyFqD2LSyvtSBOyaKlpctccIvwvydxGtlA8ya9Rl
         GVbA==
X-Forwarded-Encrypted: i=1; AJvYcCUe/hvHWFFJngfYaoapDNoinUmUYN6gspkmDEksglbTj8y/2Epu74yn8VV38Xw1YHt9B8bxrpmHM0YN@vger.kernel.org
X-Gm-Message-State: AOJu0YycIRMrsLGJxx5/f+wcFSEk2WNxgLvqP2LILRFkJ8eUTwzw6L22
	CjpQiOoEyvoza24zQyfdoyDR2VyJhQ59AeW+WNykqf9LbNg2He/UdvdWIkuMoChmG1x1CDcQRYC
	XcnIeHDrJwmnfZ7nmJqifY8mnb+w52jYn4aB7cjYN8TAhTWTWEGBh7ymxIxXTQEvP
X-Gm-Gg: ASbGncufrkzCokHM015Z5xc49CM4LXh9nMKJH/IM1V2r4yiGThQQwgimiAyS0gsQk1v
	aigobXuBNJq+kb+rbNzWbSqNgIkYds9s7fvrkXVLt1E2syda7orjFiwZ8hZLQjDLFa8GxnxS/Mb
	P3JlAhDTnxRKpHIB6AxrCasl9iNcwLfxU/OKHY945EhVldFkNA5UWjvlEqYbLdzgHlWweeLiJdn
	mZjkcuLdeHjg+pUlYgiuFQIj7ZMdnCjT1SRQRth81wtfJklakJxbKUL/r4jRHtht7rRIfPmlheU
	wQTPxRg02ME4jXwEgk2ePdtQ5o6CJkuqwRSMxm0aovAysxAknHtswyr5D9XmByam+vRx9k3vJFm
	sh0vdAMlclyA883f3zO5yW7vKVLHzeFuK
X-Received: by 2002:a05:6a21:6daa:b0:243:95c4:e681 with SMTP id adf61e73a8af0-243d6dd5ab3mr10192538637.2.1756713644085;
        Mon, 01 Sep 2025 01:00:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5BErEL9P03p2C8xYTsnkLZIGbazwvxs3FLkuBdUYZU1o01hwahxzEjYjIG04iZH2UqHajoQ==
X-Received: by 2002:a05:6a21:6daa:b0:243:95c4:e681 with SMTP id adf61e73a8af0-243d6dd5ab3mr10192490637.2.1756713643609;
        Mon, 01 Sep 2025 01:00:43 -0700 (PDT)
Received: from [10.133.33.23] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd006ef70sm8770327a12.7.2025.09.01.01.00.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 01:00:42 -0700 (PDT)
Message-ID: <2de9fa44-0d77-4631-9d09-32c48a93a7f6@oss.qualcomm.com>
Date: Mon, 1 Sep 2025 16:00:35 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/3] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250828-hamoa_initial-v8-0-c9d173072a5c@oss.qualcomm.com>
 <20250828-hamoa_initial-v8-3-c9d173072a5c@oss.qualcomm.com>
 <qgirqibqvsld7n2ac4cvuvtqknhqkq535jkxnxjjqvss5wpm36@i3mbp7qgqxju>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <qgirqibqvsld7n2ac4cvuvtqknhqkq535jkxnxjjqvss5wpm36@i3mbp7qgqxju>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX/tljrv/9Sgv0
 z9ugP8Fys+sWgT8PyKhBVQT4FBXVWW2eVCfabW8V+lX6pb3Nddf6opECZSU1hm74nxyRc4CtZwq
 5fZmzd3j21axBS/ohdYXjMANQglMYMx+9DaHhVr/Mv26SuE5uS6r84l7uuxXC7KTipF2R0P6SZb
 2QmRG0zaI0wmAI+1WaV5emuoN9SaoQCbb1hXbdSLnBSI2GCaCWf8AtnJjTxk54XwBUxSiZ7aQgf
 E93CbUuG+bCIO9LffCzS2dfPW/l59m7ng2OG6WL/sWLBqa/Je34UtQCBKd8gToE5WUH2z7t4ALe
 QguXMEZQqkQwQ9nhUPNQe0r+rAfKCznyi7AfRYDGeA+mUOXRQpSe/666d3sG3fbzv+Md6YNSdHI
 yLqR890A
X-Proofpoint-ORIG-GUID: _p7n5rF3daZTvm70quM6xfQ2I3kei9b3
X-Proofpoint-GUID: _p7n5rF3daZTvm70quM6xfQ2I3kei9b3
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b552ad cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=sn0vIxX-2wHjl4zpZ4MA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038



On 2025-08-28 19:18, Dmitry Baryshkov wrote:
> On Thu, Aug 28, 2025 at 12:48:47PM +0800, Yijie Yang wrote:
>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>> embedded system capable of booting to UART.
>>
>> This change enables the following peripherals on the carrier board:
>> - UART
>> - On-board regulators
>> - USB Type-C mux
>> - Pinctrl
>> - Embedded USB (EUSB) repeaters
>> - NVMe
>> - pmic-glink
>> - USB DisplayPorts
>> - Bluetooth
>> - Graphic
>> - Audio
>>
>> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
>> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
>> <quic_shuaz@quicinc.com>, and Yongxing Mou (USB DisplayPorts)
>> <quic_yongmou@quicinc.com>.
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile          |    1 +
>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1247 ++++++++++++++++++++++++++++
>>   2 files changed, 1248 insertions(+)
>>
>> +
>> +	wcd938x: audio-codec {
>> +		compatible = "qcom,wcd9385-codec";
>> +
>> +		pinctrl-0 = <&wcd_default>;
>> +		pinctrl-names = "default";
>> +
>> +		reset-gpios = <&tlmm 191 GPIO_ACTIVE_LOW>;
>> +
>> +		qcom,micbias1-microvolt = <1800000>;
>> +		qcom,micbias2-microvolt = <1800000>;
>> +		qcom,micbias3-microvolt = <1800000>;
>> +		qcom,micbias4-microvolt = <1800000>;
>> +		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000
>> +		500000 500000 500000 500000>;
> 
> Other platforms use a single line here. If you don't want to do it,
> align data to start from the same column rather than restarting from the
> column 1.

I will update it to a single line.

> 
>> +		qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
>> +		qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
>> +		qcom,rx-device = <&wcd_rx>;
>> +		qcom,tx-device = <&wcd_tx>;
>> +
>> +		vdd-buck-supply = <&vreg_l15b_1p8>;
>> +		vdd-rxtx-supply = <&vreg_l15b_1p8>;
>> +		vdd-io-supply = <&vreg_l15b_1p8>;
>> +		vdd-mic-bias-supply = <&vreg_bob1>;
>> +
>> +		#sound-dai-cells = <1>;
>> +	};
>> +
>> +	wcn7850-pmu {
>> +		compatible = "qcom,wcn7850-pmu";
>> +
>> +		vdd-supply = <&vreg_wcn_0p95>;
>> +		vddio-supply = <&vreg_l15b_1p8>;
>> +		vddaon-supply = <&vreg_wcn_0p95>;
>> +		vdddig-supply = <&vreg_wcn_0p95>;
>> +		vddrfa1p2-supply = <&vreg_wcn_1p9>;
>> +		vddrfa1p8-supply = <&vreg_wcn_1p9>;
>> +
>> +		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
> 
> Okay, so how is WiFi controlled? Is there a GPIO? The DT should be
> describing the hardware, not the UEFI behaviour.
> 
>> +
>> +		pinctrl-0 = <&wcn_bt_en>;
>> +		pinctrl-names = "default";
>> +
> 

-- 
Best Regards,
Yijie


