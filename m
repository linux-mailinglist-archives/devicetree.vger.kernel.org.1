Return-Path: <devicetree+bounces-125745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 255579DF1AB
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 16:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 985A7B20D4C
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5866146A68;
	Sat, 30 Nov 2024 15:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L7eYjkzh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A39719F117
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732980256; cv=none; b=fZozk1GxR0rFVoRy7Ggh+bNloeQe+sraDWg08Bh56iAdqwzt2Rp9IQH48bSGiQURHRJpwSZwyFHhSuUgBQAQOqV969Z0rnGTNay8r+3X+R1/M7oAIj5vM2udgYIHaif7TzKsC2j+9Pc6HcBSytXn8kv25ZiVGNtUD2kxkHGBrvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732980256; c=relaxed/simple;
	bh=m3lG8tW8CBZNIBSk61k+jdR/rPxh5Hq4C2n+AVw/DRo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IBV7shYJUbPU+Fijm5kusWdP0Bfa1mkar1qbWGu/xmKFXv82kWBRdEEOzet9nf5yunHwRfLPbNLhm2A/jxxKJwlSjlupr0IQg9MjE2HKwOAkMnZTNhw3TuuxmlhcF7XTYlfpHyfrpnpsZWvKzdLPpVrCCiQINhEryOfhm1CBTk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L7eYjkzh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUCK6n9010728
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:24:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rkEBRyCKlCmlab4JaUyGSv/9Fn2CzlVl+RwfKcQPfLA=; b=L7eYjkzh0Fr2NDY3
	YtgQvpRIOQmsnKwRaYcQSR5XAfK7GZ4PLlNhE6NyXSsha6r2qyHgEfDysASyUbBf
	tEYikhekpRoU8JWWviEGVbNLdt7jXkSxvwiyxa8F0ud5Z5+9z8ygMHZ4PCm9UgjU
	NwcPJgz0+gY8PAPBFmBQjUIGC4Lm7lcHt/37UL1R05v0jS/OgIUmW5kwkvj/G2m1
	4wHapomIK9aoCEcI3n7ZvzHg+QiaigHP9ILQkFu4iSaAJOQhZvq/8/bq9hVAV6lx
	jNCVbaa09CVx6q3mZIKJJHn4wLBR5L7gB9YNJsQ6p49CvyQqAB7O4rQgKqpcsVBS
	GIc/DA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437r2ms52p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:24:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-466d3ec228bso2472071cf.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 07:24:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732980253; x=1733585053;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rkEBRyCKlCmlab4JaUyGSv/9Fn2CzlVl+RwfKcQPfLA=;
        b=IdlReZ57MwWdFZfbhz69Oi0wy0/oBUWSN76d8DXjLg5lhPSG6GPRYIcg6236XLUMS6
         2jRWSQOh7BEP0N3YKWb4+thyxxyJWAliQloHRnPWiXKmUCDOQrXwuVGix6sN0nWiuJlR
         hPg+w4iAryaqDPdTyI73U8lVV7yssia6ZgXZQrkKAkQCNX9tF5d1fcdxBj0AeOy/3P22
         wgO1cpzhRxZXXSx6B74XgZdZ2phDEhztAerQyHyqAiBMssyb8GDu1dsdf7dYEDHrQN3f
         zgZEWzwQSqHms2LFriG95FnouNZTsMmHRlkBZKonp0xJotHtuCThsMV8GHwJjc8nyMgp
         nJTg==
X-Forwarded-Encrypted: i=1; AJvYcCXI32Gj70KSFOxbPpFvVCX17l0JNMvt48vhtAj77wtiU2udneH9luRrtx33C7x3CVpKzPlZuThSHgWi@vger.kernel.org
X-Gm-Message-State: AOJu0Yw28sG5TMw7BptxbZV+BiD44tG65PF8IhBssAhjWjVeUtlomSV3
	4w0R1DBuhC2UbtajxX/m+lsWSP0YNxyWpt1Y4lHdTlAA5ekTjZW2XEWR3xDBJv5FZ0KNmXx3DDb
	HhQ+4wq45PVy37nKzi9UIuueGJU188ZtGkWzfqfaU3H4XZD+Hq1eni0ioK3+s
X-Gm-Gg: ASbGncsVnf5WnH0NMTfQirvTa8qGMkpDyLCKIaLjOQwRMcBoVNO8cMcDmK8AuhLQDdp
	OS0HoRB7R8M3EEUh8kt11ykBl2zDtwdk5NYXG25Y2NPRZPtyaXDnB6AMmfIJqAcGjyxrTDhhBsv
	vW22FW9AVLbmt3RBI86fmSD9PVatoqjyjV5WWB5CahaSEovfJqpcUBn2NLY9ODvMKY3/i7URsQH
	DqQVGsSYmB/vHjR0OoZBaULVaKCcQTQgAm1AjEG5vTxcGe/PkI7U4Evz4u55br6GIR71Ow1WRPW
	ZqFxpVES/wyXJwUwwXwRgU56xXhcLB0=
X-Received: by 2002:a05:622a:1213:b0:460:3a41:a9e5 with SMTP id d75a77b69052e-466b36596c8mr98367061cf.13.1732980253159;
        Sat, 30 Nov 2024 07:24:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFepOWEbY18jP8Cq0UeF7mqpNdItekaNeFgBiNWvyl0FW8Isi7txtuCVVamfHjC0C5D8vj/ww==
X-Received: by 2002:a05:622a:1213:b0:460:3a41:a9e5 with SMTP id d75a77b69052e-466b36596c8mr98366591cf.13.1732980251658;
        Sat, 30 Nov 2024 07:24:11 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa599953d53sm290277766b.181.2024.11.30.07.24.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 07:24:11 -0800 (PST)
Message-ID: <9f65c354-910b-4515-9323-e61e31567aaa@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 16:24:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e78100-qcp: Enable Type-A USB
 ports labeled 3 and 4/6
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241105-x1e80100-qcp-t14-enable-usb-type-a-ports-v1-0-b4386def91d8@linaro.org>
 <20241105-x1e80100-qcp-t14-enable-usb-type-a-ports-v1-2-b4386def91d8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241105-x1e80100-qcp-t14-enable-usb-type-a-ports-v1-2-b4386def91d8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Me4qVmcc6h-Z-fI_W90cnxbHiklLOQfv
X-Proofpoint-GUID: Me4qVmcc6h-Z-fI_W90cnxbHiklLOQfv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=483 clxscore=1015 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300128

On 5.11.2024 12:37 PM, Abel Vesa wrote:
> The X Elite QCP board has 3 USB-A ports. The ones labed as USB3 and
> USB4/6 are both connected to the multiport controller, each one via a
> separate NXP PTN3222 eUSB2-to-USB2 redriver to the eUSB2 PHY for
> High-Speed support, with a dedicated QMP PHY for SuperSpeed support.
> 
> Describe these two redrivers and enable each pair of PHYs along with the
> USB controller, all in order to enable support for these 2 USB-A ports.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---


> +&usb_mp_hsphy0 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	phys = <&eusb6_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3c_0p8>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy1 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	phys = <&eusb3_repeater>;
> +
> +	status = "okay";
> +};

Similarly

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

