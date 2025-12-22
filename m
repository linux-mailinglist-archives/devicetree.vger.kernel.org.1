Return-Path: <devicetree+bounces-248763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DE6CD5872
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8511E3010A93
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A7F3370F3;
	Mon, 22 Dec 2025 10:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S4OuRlQ/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CoZ4ToKi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09326335553
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398761; cv=none; b=XdTRMDon01ZWRYyziVHSg4kFA+jpqImKaRb43T47KYWdEH192F/miVX/KOoJiigVTaVf90G5CYAOxI/QecUgHp6vu1D3mjfHaj0Hv8cD7ti0e3gfQcBmmBOZcn47gXetTiub7KEXhuevKr8Rf7t7X5xpd56m9Ii+UrIERXZ0Nik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398761; c=relaxed/simple;
	bh=VRAY1JBsyzbUa7+i5+3R/KjvZyuZRKwtLOmHcHqT5zg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sD9WuRAAHpA/wmmWSFRcMBZStnFbaTtFI8NZXMnyjy62k1EKAyzUJ1WBdnUT5lgjgMc+5dsS+WjES2wJMEOCuTG9A11GAUw7WqHc6gVsEul2/2u0wVdCnb97iIOKFInplmms6Aw5S+xIi54UTkGu9xBMLg1UgY763yMuWdc/4Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S4OuRlQ/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CoZ4ToKi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7pGXL3935865
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:19:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LUTq3ggrBqFfZJlGq9yjwOSaf+F7Ej3hj/HcEnNQ6SQ=; b=S4OuRlQ/ZsadcW51
	wA7sYqB9b/01i5kE1PGZwYBo7WwE2/QWdJuW0RBxg9KCSQNGIjxI4re2HlPGmgIS
	0YhOdO3bl1vu/FXxx/xVPqbH2fS45kSEeAJaT33cQanxd7fCiWjyZUV/JmKSgF41
	n0AJq3RT1bnshp9Bdj6hh7GqWPqmWqvQk/guJrcXMqdte2rc/gk2Y9Tmm7pSKzGh
	Ib5En+eyHhuLGRii61dRGkJWPRaAlC2WDEKjizVOtNz2E9CZ/eOzkexsmBvpkM2J
	puujciCyDA0SZMTxRtynX/4eHuTm2tuUXBAF7TN1zvCQ8NiyvDGP6fa9muFVwOXR
	i5meQQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mvfmmdy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:19:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2ea2b51cfso111436485a.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766398758; x=1767003558; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LUTq3ggrBqFfZJlGq9yjwOSaf+F7Ej3hj/HcEnNQ6SQ=;
        b=CoZ4ToKirZi/c3lFZWsxTnBdYUTJtVD6r+turY8fcki0XP+KunZe7fEBsLjLV4ClE2
         HeUn6Kdsp8/LLnZltmEdADiqkgtfLByHkBsKdPUNCyuUBiLHqUwuaRvEj7W30lXDCPvl
         lLBUld+NsJ+B6ja+SLT7ccD+cOc2WkQ2iCcIGoQ7jP3YkBHmQG67Qqf1OCpcvQz+/GBN
         XCLqw/kDbd8wPXPONKiBHfbiAfYQV1x1O2Ed/dkHqfWN46z1yVst+vTuT2UvvSesqOel
         8gOQdLNW4jQtVJphtAHhQ5tBNPb9+WabthT00MQG/I2CPyL/TMmoP3mYzVPjNNSMq1Yy
         eE1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398758; x=1767003558;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LUTq3ggrBqFfZJlGq9yjwOSaf+F7Ej3hj/HcEnNQ6SQ=;
        b=R1ntdoQVt/X04vcr+ioEH0ZdiF6zPDyakOiViCcF+8EEC5tadJzCS7LYAEx35BniTC
         tqq1j3ZBJHoj0+7O9pFgkS/OMsfsuIMkOi7DzhHdyg4298E5ZLO7f2/cLzaLpmBfSmSl
         PdZ23N9u3UOVdCKTmstoThI8O+aDbAEuLEDn2OL1gh+ocFyzufiDZGnvFkeEATvibVVF
         3BUNSIdVbRzPRNMg1rTrc/7yCz7fl4L8sAPHywN3qVIT/VRtYlKi+1kAUCRoVsLMVS3h
         BbjBWzUlZ4ucvhQ+DWq4qRJrht2VvahgmJ9BImh7uW45XrFAxkLeFy3BAalyWHJJibeb
         SaQg==
X-Forwarded-Encrypted: i=1; AJvYcCV1yV4AwZdJrxDbSwHYmlDZUhC0+eSrcuN2bCg33vKWXLebL95PWqL1C/XUmkHfoMhyAaBRhuPg147O@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1H9+z/lG1R9rq39FiVIeaFYAbuvbZrBLRrx/8bHFqZp2RXagq
	5zSgnDZxIRbPM2C5BfkhXY9V03TC4hDr8CEjDt/v50vX55qDxQ8eTUAgOcZb7u/D4hAx16Mf4Rr
	248N/0ifWgSw89VZ2pD3t5ukrV4PTgPBm4Ej38q7x+KaSzh7a4I9g7VIFWitzI2N8
X-Gm-Gg: AY/fxX54qv1C4hBjkc0P7M5KeDtxjizW90DUS+Ya00/ujfUmPFIzAr3jS1ODT/CEEvf
	Rk4lr8l6VRrgFpwkAnczzgkmuEO1IEX1AdrmtI4oGBmiObGJzIrLdj/Kx5CUCzYrPrkhkouxjHe
	al3cO3yGupFFkgA9FnsmxmE2kYikc1tbLNeDbR/ucgTWzrjmsnW/cP3VP1jluVUKRU8uIgRCUdT
	gfUTKHMuLRE03w5oETmywz0kgAFG+pY60F9EXv6icPVq8jvjnI220Oufm9mTAUE+lRoYTsYiG6E
	oGKR33YMTp14vUdeMFU8HM1qNXUpnDqI/blHJ3qIroChkMokXnlAMVnTeI7Mm6DXfTGxShw5wtf
	bOPVgy1L/MOwOfGTNeQ/Jja0u2e3XycKWiMNIHJ4buZRGO+kqTtXORWtTQ2fZ2+tFUQ==
X-Received: by 2002:ac8:5d07:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4f4b4600b59mr100718221cf.9.1766398758324;
        Mon, 22 Dec 2025 02:19:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCqPBLPUNP0VjGE4Mfb41jy44P5jdKMLuXCQX6YohTJW18W8qxY9YnVGhNWdnIl2BNdzFrPw==
X-Received: by 2002:ac8:5d07:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4f4b4600b59mr100718051cf.9.1766398757881;
        Mon, 22 Dec 2025 02:19:17 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0b7bcsm1077906766b.49.2025.12.22.02.19.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:19:17 -0800 (PST)
Message-ID: <95f8a16b-5f29-46d3-bb3e-f12b5d3e4fe2@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 11:19:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB
 controller in host mode
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?=
 <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H8rWAuYi c=1 sm=1 tr=0 ts=69491b26 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XEuYRhZFooMHjHqTHxAA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: d9cHDh84DYrMz8pKsEhZrcTDIZifqH1s
X-Proofpoint-GUID: d9cHDh84DYrMz8pKsEhZrcTDIZifqH1s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5MyBTYWx0ZWRfX0qW4elWxgMCh
 bBluyFmFThuDzlYcgtvXau9Fg8F564xzx9KLI0gjRWUOtpE6Wk7zJ7CfOfL+WwgKQssOemkMAqX
 jXRSC20wsJTD5O7SORcgzjJfPOih7TlEM002M1CoV3tP+w2Rp3RD6KNYTw35AOYTfXKeJ22X1DR
 W0OzvsPiALwonLfifiN3U/WKp2YXb01VoGDOvAhWqBtNL6qlVRsCn3lSGzdwm/T4K0/Zi9xfYil
 6miIVKs5ZscWVRISfmhS4bJThNv3lK/+ZyL6rFhOdH2xkQ2YP3rQkyfNbasW1SFPmIJK1hAVdf+
 ymDAwJDK2g5iTDBQV6J7mR+u75ujXsrh4725eoRRSTOsZkpYnSg2qD7qQPKkftW150QXNrVJ/up
 lw0yPS1wVpD+uXTqOpl4X1y6rY+fjisHrjTzeVLkc6VeXph910hXJor+tZvh+R+aZw3DXz076MF
 +YC/wW7f9YMRDr9L8jQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220093

On 12/20/25 7:35 AM, Swati Agarwal wrote:
> Enable secondary USB controller in host mode on lemans EVK Platform.
> 
> For secondary USB Typec port, there is a genesys USB HUB GL3590 having 4
> ports sitting in between SOC and HD3SS3220 Type-C port controller and SS
> lines run from the SoC through the hub to the Port controller. Mark the
> second USB controller as host only capable.
> 
> Add HD3SS3220 Type-C port controller along with Type-c connector for
> controlling vbus supply.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---

[...]

> +	connector-1 {
> +		compatible = "usb-c-connector";
> +		label = "USB1-Type-C";
> +		data-role = "host";
> +		power-role = "dual";
> +		try-power-role = "source";

Is this port actually capable of receiving power (i.e. won't that
fry the hub)?

[...]

> +			port@2 {
> +				reg = <2>;
> +
> +				usb1_ss_in: endpoint {
> +					remote-endpoint = <&usb_hub_3_1>;
> +				};
> +
> +			};

Stray \n above

[...]

> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				hd3ss3220_1_in_ep: endpoint {
> +					remote-endpoint = <&usb1_con_ss_ep>;
> +				};
> +			};
> +
> +		};

Stray \n above

[...]

> +				usb_hub_3_1: endpoint {
> +					remote-endpoint = <&usb1_ss_in>;
> +				};
> +			};
> +
> +		};

Stray \n above

Konrad

