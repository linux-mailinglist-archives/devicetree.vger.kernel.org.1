Return-Path: <devicetree+bounces-211055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D85B3D738
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 05:23:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 041F93A257E
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 03:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F4821256C;
	Mon,  1 Sep 2025 03:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NTyDiR+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C618F7D
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 03:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756697020; cv=none; b=tXVMOgnp2oCjDEvBfz3xQFpv/gRkJeVGheG6Fact1NPvJ6CMhv9wtaz3n5iEb8kl36NMyM2AZLaNLn+xwjH95k5XPy+8JkrbVJ2hrOrZd2MHO0jc0si6KB3zdoLLYIaEPgMIpkLoqaa5ovo90QEmf6Bh7arfyX065DIdb1pFhKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756697020; c=relaxed/simple;
	bh=9u1Iyz9w4OoTFAcKVumHTocTm3/ljOLKuUAu2ftIz74=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=epALGRYZX/LIp2Zk2Cb3bWWAcEV811noVi1i/qI35jHNqf41+jzpM/vOUnezk5HmuZQobvftvgIlKYY8puKmQYQk039pAaoyJ4lrTEjwLJMUIgFQT0sp5hRIRxCp9OsPumnK1ZWFTI2wyhrCvbj0xHn84lPucowp6xBcrAKPpDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NTyDiR+z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57VMJr9K013100
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 03:23:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PjN1yLilRk397qA+PzJJvK6p0jC552oT6L++agGXKkk=; b=NTyDiR+zBfQX+ggj
	weKVzijsaqYqdMyryC177QQIwALpbjHf3dv5CcGy69gpnkaWDnWfwsVvO6Cpp9eG
	CV8XsMRhHCA40vdYUGAZtqAB8Mcnl9Ewdc2/Kyp9L/49n96Tt7CKEk24WZkYi8qx
	7cFJw6EiJ6b2UOjHu9I68sTlbcMudftKhZ4BQttKQQayMG1LzVepir3w8DoOs0K3
	H3Or2ltReoIcWM2+7aEYre5PvHOemBUBVc7SKkCWqyLDdfoEi80Sg4KIoKWFjwOz
	KfyCE4V/W07AWMh9UTrKPXY4B3u5VhNKOd7BqVaPJe2sCFQATmZ9M4T7LAGcvQF7
	Rr9KeQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0eb7n9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 03:23:37 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b47174c667aso3130804a12.2
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 20:23:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756697016; x=1757301816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PjN1yLilRk397qA+PzJJvK6p0jC552oT6L++agGXKkk=;
        b=M3iSdqPQTcc4Raabeevprfam3Iw5fpt6fWG4veGmiMV2rTAprhHHJkIK37eFRSjeMU
         pzoWPXH6M3OHoxpQe+LCm+A6HVvNHojvVLmuOQt2MuCfKcYLl0eBq1wAimKbD5R8xkTO
         GFOUEka5kDUF0M5S97Huz/2iLyFETzESBLfmky8bvXlPTjjGUKjEvxal0vLke9DQeI1I
         zkutjzXnDKSdZLPCxWth5f9Mt0jdh0vvGI4VtlRgGsJDG/kT2kd7k7Ko+Yusvv/otZY4
         bie5AhRDWCiGjvAIqcH3Xd18XwzxsKNMntGqeqxA8bpEXZueVerM9yHoAznGmXUGY29s
         McDA==
X-Forwarded-Encrypted: i=1; AJvYcCUjz62mulgdg44gRZU4MKcp9pXy4RfWUbgbsEarfOJbjBLlBZT4h0iJQs52RR3MAgaU7b789QM6OwXU@vger.kernel.org
X-Gm-Message-State: AOJu0YyDeIeOalkkNkOD0vkQtfwjNqq4For8gV0+fcrtkMmGKrZi0geo
	vO5FzHrni0FUDDGEDIWE343upf57ck0A1nHxIu45Jk44rFnUQZ7z9YBSvZkh1twbnNlv0kR6ocr
	xLVMCw59BwkhoIaMp8a/DYeLHSuj3dbr319SaRKz2uM+Go9c7plEHkm87T/bOMT33
X-Gm-Gg: ASbGncv8IumOLHfVH/suEwrgyN2gW2EF+09ony/mdPGT6TAc31rcD0y67nXYy0lx1Nx
	d1tTr8zYMjYnLGJRzNd9kzawYMak5wEGj3P20Tc87vTGzQjqKPscNaak5cFcUEQ7iRfjRYlbfT8
	u6sI86pO/lnEo2V0ZkmZWMEoLUxyWV51vqenV/fOhfSPc8Pom5/uMmw2OCHD3oM/kUPL0cv3xJ+
	WylfWIzUR0YM9zUXjdRSb7CPRLg9a+D219F2k9gb51VaY9d0bJHb8dKxjqJYdR1mhtBwxpimILu
	KCldwfHWfr8VDqTarqg6MDaJ1NbuR1lTAz5nvVRBnXmZ4g70UWWxxLwh38lxGfLScX7wMH1xauy
	pPZzZbUV+ySV+9jf8SLWELFZiqZXXXQfLcAQ=
X-Received: by 2002:a05:6a20:938e:b0:243:b92d:72df with SMTP id adf61e73a8af0-243d6f3815amr8066487637.48.1756697016394;
        Sun, 31 Aug 2025 20:23:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0190mt0RVSuvwv1+iiVLncI1fqwJEIt6Vm9FOvlOeDiniWtCaJD2Ld9loVDCs2pzwhbc7RA==
X-Received: by 2002:a05:6a20:938e:b0:243:b92d:72df with SMTP id adf61e73a8af0-243d6f3815amr8066455637.48.1756697015915;
        Sun, 31 Aug 2025 20:23:35 -0700 (PDT)
Received: from [10.249.20.242] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4dad911628sm6507511a12.11.2025.08.31.20.23.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 Aug 2025 20:23:35 -0700 (PDT)
Message-ID: <ae4ef090-7edc-49f8-a964-090bb94ff097@oss.qualcomm.com>
Date: Mon, 1 Sep 2025 11:23:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add display support for QCS615
 RIDE board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>
References: <20250827-add-display-support-for-qcs615-platform-v7-0-917c3de8f9ca@oss.qualcomm.com>
 <20250827-add-display-support-for-qcs615-platform-v7-2-917c3de8f9ca@oss.qualcomm.com>
 <yutyrfb73wbxlweoq3mc6ezyqr56snzmznw3k6mcbc56fpfayg@3h5jwymlo3ol>
 <0c2a4877-d63b-4650-b7d4-a06a2730c73c@oss.qualcomm.com>
 <zoogyjua4l6e2bgsvxx7w26n6v2hwnp2pvkizzzsds3c6cgaag@2bvqdl2z5ds6>
 <4913e937-3892-42ac-8145-cc9c2364242c@oss.qualcomm.com>
 <snery6acisgvxtofsrbbqtpoirh5ffyha64lz4zekg3kvwrsyv@tfyydedc7ddm>
Content-Language: en-US
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
In-Reply-To: <snery6acisgvxtofsrbbqtpoirh5ffyha64lz4zekg3kvwrsyv@tfyydedc7ddm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: k8KslTR5aqKnTVePQaIeZLqo9XXfe9uF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX/8/mVmE4ayXy
 Vd38D3oCrgRuL+uOVgAQpc5l42qrXfW/4tVHHvnk8kmRWYd67LygoT1yRsdISNeL4FzpARyT3q2
 PZ1sSHjtmyCQgw6ToOFLqWyrOI1f603VYjV058MVG5ZBySR9Cw7j6emKAh0URofa2qzK8lhyBhm
 HM/h+JjVxtoFT6PWau3/9PMKW7oo7BT5Hh2eSAUDBvGNyJMSlzaZ9fJP+q2lTKdK+YZA4TIOV3Q
 E292xfvxSzNTeMXaYGEp8/et2XH4s86UEcAHvOSFfDePvnyviy+okZFtBuimWJ+S9CEeIh3V2zU
 JU135naZu81vn1rwjmFQ2WoNpJ340E13pJW73Ih2Bfa3zpe+N/dhlfsfBiylGb4J68Eiiee/mNy
 EtFaT1kc
X-Proofpoint-ORIG-GUID: k8KslTR5aqKnTVePQaIeZLqo9XXfe9uF
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b511b9 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=mg5Ue5vNRgZXP2P1fq8A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004



On 8/28/2025 7:02 PM, Dmitry Baryshkov wrote:
> On Thu, Aug 28, 2025 at 01:12:14PM +0800, Fange Zhang wrote:
>>
>>
>> On 8/28/2025 12:41 PM, Dmitry Baryshkov wrote:
>>> On Thu, Aug 28, 2025 at 10:57:41AM +0800, Fange Zhang wrote:
>>>>
>>>>
>>>> On 8/28/2025 4:01 AM, Dmitry Baryshkov wrote:
>>>>> On Wed, Aug 27, 2025 at 09:08:39PM +0800, Fange Zhang wrote:
>>>>>> From: Li Liu <li.liu@oss.qualcomm.com>
>>>>>>
>>>>>> Add display MDSS and DSI configuration for QCS615 RIDE board.
>>>>>> QCS615 has a DP port, and DP support will be added in a later patch.
>>>>>>
>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>>>> Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
>>>>>> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
>>>>>> ---
>>>>>>     arch/arm64/boot/dts/qcom/qcs615-ride.dts | 150 +++++++++++++++++++++++++++++++
>>>>>>     1 file changed, 150 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>>>> index e663343df75d59481786192cde647017a83c4191..f6e0c82cf85459d8989332497ded8b6ea3670c76 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>>>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>>>> @@ -39,6 +39,76 @@ xo_board_clk: xo-board-clk {
>>>>>>     		};
>>>>>>     	};
>>>>>> +	dp-dsi0-connector {
>>>>>> +		compatible = "dp-connector";
>>>>>> +		label = "DSI0";
>>>>>> +		type = "mini";
>>>>>> +
>>>>>> +		port {
>>>>>> +			dp_dsi0_connector_in: endpoint {
>>>>>> +				remote-endpoint = <&dsi2dp_bridge_out>;
>>>>>> +			};
>>>>>> +		};
>>>>>> +	};
>>>>>> +
>>>>>> +	vreg_12p0: vreg-12p0-regulator {
>>>>>
>>>>> I should be more carefull when doing reviews. I thought that it was
>>>>> pointed out already and didn't some of the obvious things...
>>>>>
>>>>> First of all, the nodes are sorted. By the name, not by the label.
>>>>> Second, there are already regulators in this file. Why are the new nodes
>>>>> not following the existing pattern and why are they not placed at a
>>>>> proper place?
>>>>
>>>> Initially, we referred to https://patchwork.kernel.org/project/linux-arm-msm/patch/20250604071851.1438612-3-quic_amakhija@quicinc.com/
>>>> as a reference, but its node ordering seems a bit unconventional.
>>>>
>>>> Would this revised ordering be acceptable?
>>>>
>>>> ...
>>>> + dp-dsi0-connector
>>>>
>>>> vreg_conn_1p8: regulator-conn-1p8
>>>> vreg_conn_pa: regulator-conn-pa
>>>> regulator-usb2-vbus
>>>
>>> So... Existing regulator nodes have the name of 'regulator-foo-bar'.
>>>
>>>>
>>>> + vreg_12p0: vreg-12p0-regulator
>>>> + vreg_1p0: vreg-1p0-regulator
>>>> + vreg_1p8: vreg-1p8-regulator
>>>> + vreg_3p0: vreg-3p0-regulator
>>>> + vreg_5p0: vreg-5p0-regulator
>>>
>>> While yours use 'vreg-baz-regulator'. Why? Don't blindly c&p data from
>>> other platforms.
>>
>> Got it, The revised format will be:
>>
>> + vreg_12p0: regulator-vreg-12p0
>> + vreg_1p0: regulator-vreg-1p0
>> + vreg_1p8: regulator-vreg-1p8
>> + vreg_3p0: regulator-vreg-3p0
>> + vreg_5p0: regulator-vreg-5p0
>>
>> Let me know if you have any further suggestions.
> 
> What's the name of power rail in the schematics? vreg-Np0?

I reviewed the Ride board schematics and found the following power rail 
mappings:

VREG_1P0 -> DSI0_DVDD10 / DSI0_AVDD10 -> ANX7625 AVDD10 / DVDD10
VREG_1P8 -> DSI0_AVDD18 -> ANX7625 AVDD18
VREG_S4A_1P8 -> DSI0_DVDD18 -> ANX7625 DVDD18
VIDEO_OUT_VREG_3P3 -> DSI0_AVDD30 -> ANX7625 AVDD30

would the current approach also be acceptable?
or we need configure the power supplies strictly according to this mapping.
Appreciate your guidance.

> 
> 


