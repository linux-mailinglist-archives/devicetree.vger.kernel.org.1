Return-Path: <devicetree+bounces-252072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03314CFA496
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 19:48:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4E4C9304D36E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D0C34FF79;
	Tue,  6 Jan 2026 18:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m2ftelMR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LE5Iqfqu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1225034FF65
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724852; cv=none; b=QKORB7E5C5K05yHQCeK43J6R8pFuKNZsYhOGO7ylE62fV7kMo0RPQ93o0q2sO3ahbJbLfyH0dsbmysTp45G1yXavbS9/dpCf52rZFOsMepav8AVfss7JVQ54XKUbqn8y0DrVJ870SkHirthv+kma1C3eD3cBa6gIHPtt7IdJqQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724852; c=relaxed/simple;
	bh=++DQGKnOZXg8YlFGgSsaTnIuRLTvbA/gdMLcbw0EMEM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CBu6GYKp4khu8rG35HO42ddpa5eWuOrVIJjvmGE44jGi1WvpZiK4RRbJvBs+eVvlbCu7vDLthCMMM0Gr8/Lrw31aihISvMh/igIMw6oh0YIRRoYPBUpKgchxwX5zJT8R9GyELAJIbxeFOI90+en8KgqasLfeYP1BizgP+JAliLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m2ftelMR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LE5Iqfqu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606H1QHa822688
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 18:40:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5PxAPouMyA//31qIYJm+rklBoskPqlYIqSfK+Bd0RZ4=; b=m2ftelMRML/dFZvl
	ht2KIE6bYMfPbyV+j9Wm/WIqiBh6MuAaKMwUl8CnHzk5AkFvA4SoSohfNPfa2Thh
	rKDkMYCx7+vWS3QqsTbmHquAoIaMnj4mYeErzGEsa21OpVVSSpd8XxNyIDaMj97Y
	OfUdQpMIiQl7mwyVJJoTHH1ie+a9iYnVx1WDBAN/epH8rjuEYuW9saUtbPkOjkMP
	qdhrU14zP+6bTKqifZw54iBJIqOBtJ3wzyx6dBm5zk7ERYJzQ1L4DFu2/ZCGWvNc
	holB8CgEM6ZSAatXT2br+vup262IRixQILXlE82dV+3d7CVY4NxwUIgLGcSXcaK4
	fPohzw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh6e80ajr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 18:40:50 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-12055b90b7bso2460030c88.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767724850; x=1768329650; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5PxAPouMyA//31qIYJm+rklBoskPqlYIqSfK+Bd0RZ4=;
        b=LE5Iqfqu3CvAz97I/A/aVD5ymgxZ4fL8E1s+h9fW+nm9Sgq437VGjm21QTVjfbIk8q
         KhmF8jkzM09zCbA8GqAn44mI32X+NU4oIL4J8d5cXXWAvXzhYFSH5K5/qrVGPFenTBVE
         BvXwbHJCofprgHxyfZ9dZcpTKPKnPHaQgdMSIlIy/zha/biEIgrCW1LGHhiNLivFmkiw
         6ba0RYB5kU9GqOKrnWEwY6USNnk6TXUFXJcUs21pOlvZyWuujqrhMsP22dwQQ+4x7nCl
         7uD4OW3flv0DeYZKl/BD+gThuy6eBUiywvlA8JDxvQUVZ/erxW9pMAGFHmHPhRsSg7UK
         W6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767724850; x=1768329650;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5PxAPouMyA//31qIYJm+rklBoskPqlYIqSfK+Bd0RZ4=;
        b=qeMXBd0tz68dQaZAPcXnBME/AJf04wyYhTniLe1K7ATyn4pQ0gfgqk7a6MMRCM+PCr
         XDMtYk8TF05PulwGKENza3+5K/i3mKLKaSitLFv2CVuXOsuUdYKriyz/tZP61iguFL2J
         BGgfScxMlwUe7u5JRFQ0gexNQ/NhEcIir5Jwr1zlLrfjDnherMxUkvaFSfYTPWkaumLO
         x06TbV4V6fHbCognHPQP66/5fO/jjN0vkK75igB82pmjUADKW9hzTd0+f1yqNlr9myAE
         +EZMezCrJlqU7pgMpxm+gS4ERzjVLL+T4l9t41ckSL9Qk1m0yRjMWZ7R6x/nImaM3OiH
         1RaA==
X-Forwarded-Encrypted: i=1; AJvYcCUkqyvcz+ZU0TthJ0y3X266DUG4T7lQ9diaPYKsaNJr44ijSSYVMODyc4rUe5pcHi8Pa68Alyte0Etc@vger.kernel.org
X-Gm-Message-State: AOJu0YxCbRsdrWlaRVvePkcQMqoThbOGVEIqvysmAHdqn/Z7dWoVV7T9
	RyeGREB97029cW33FWNuNWTn5X7uxKb0Om0WQlTqUDJQuKQIwfNMpdHADNl7yltSZgt8vZZmusX
	FIY7zjBwB8F9q7qNWpiekubdr2FArgJmnPJZe07NeyxKF+XRa/9UdeMmSCH0DRyqp
X-Gm-Gg: AY/fxX4a2pM0CKcVjLPYtFOqNndROIAYZI8BqZqk5lPka2Pv00z2X75chhvaqNfIJuY
	KAcqTeNf5Lkwb5WUoG4McNgI9VLczdJu2mgztbpaVz9dgsremdoy0RoTbQJEa90YACyC/NGd9UT
	BlWb2qQcLBD0RO3bNRtGzJ7ElEQBGyVr8DPCUNRVZHe3s/k4NX3O7Q37GcaSDn/mUkukRVVXiPk
	n22+6G1ziXgKyd3QgPNfcpADVIOWwzEDYn+FZHfSFdilBLScBs7PaFx7VwWCWXmd6dqMpjXYSw2
	Cd+Av14upYPna6KcKWVVrp7Dg1IV5XDF5I+BgChrlFXhGcNwcUayjETIW8yJPOCuI7VxM5QUdmf
	Vyb8Dwi91uWVoYGdeoGClTtcItNagN4tuuDmqkYj2/dWwS+x/AUhEBUuKoDc6VGx1wQ==
X-Received: by 2002:a05:7022:418a:b0:11e:70d8:5dbb with SMTP id a92af1059eb24-121f188e0a6mr3234852c88.7.1767724849591;
        Tue, 06 Jan 2026 10:40:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSlzX+i3g8MbsJ2Eno/vHUKFXWMpqLnsUNOpaetZ9ZfpcQ9g/t+UHkyP6dmuOdvPwPx2CiQA==
X-Received: by 2002:a05:7022:418a:b0:11e:70d8:5dbb with SMTP id a92af1059eb24-121f188e0a6mr3234816c88.7.1767724848999;
        Tue, 06 Jan 2026 10:40:48 -0800 (PST)
Received: from [10.62.37.112] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f243ed62sm6788547c88.5.2026.01.06.10.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 10:40:48 -0800 (PST)
Message-ID: <6aa8ffc4-2fe5-44ad-8ac8-581e0697360f@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 10:40:46 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm8750: Add support for camss
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com
References: <20251126-add-support-for-camss-on-sm8750-v1-0-646fee2eb720@oss.qualcomm.com>
 <20251126-add-support-for-camss-on-sm8750-v1-7-646fee2eb720@oss.qualcomm.com>
 <20251127-steadfast-red-koel-8c9bc8@kuoka>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <20251127-steadfast-red-koel-8c9bc8@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE2MiBTYWx0ZWRfX1Y1qLYsldYru
 R1cZZB2irfaG6kp9JXF64vIaji3Iou2vO3tJiM6qd12yPIb26xU69RDs2ZxEwob0cSk1QtcV65g
 7Yzk1j7PG9u/hWfsX3BS1bdr80KJXb2OftIa9ub63AHkK5XfGzo7TLe7aoQHlpuosw9wsPWAF0b
 uKBL0wsXpeBm6JdoxerSGYOUiNaDaEJimvCyrjzqOxxqGtHEyy7iPdVBFNK5za/a24VXuXjEPnb
 LX+f/YqpNPiasC9Ey2RbTQs4qGn1Bx0weq2x+o2ARwOwc6wZ94YWUKU44HsYz7yXzvflUjMbhPD
 SBYjNOqiQgbNzV7J6yZvO86jVipf7rhc4qNiw5aaQRINNEb0W7Ci8m9606vom75lcDSYqNOmepE
 0jBH3sljOLtZXar9h63l40PEZIe4vrrCN2W615tRHZ7dibUA2x2CUfc6Z10wE9VWuObPlJq3UDt
 VL7KA9DIhmYm9znoYkQ==
X-Authority-Analysis: v=2.4 cv=F45at6hN c=1 sm=1 tr=0 ts=695d5732 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=jRZ_Em-5SMcKJbQpHL4A:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-ORIG-GUID: exjTvQu613qq1fJEewzt6ESNch2a9pHa
X-Proofpoint-GUID: exjTvQu613qq1fJEewzt6ESNch2a9pHa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060162


On 11/27/2025 12:12 AM, Krzysztof Kozlowski wrote:
> On Wed, Nov 26, 2025 at 01:38:40AM -0800, Hangxiang Ma wrote:
>   +
>> +			cci1_1_default: cci1-1-default-state {
>> +				sda-pins {
>> +					pins = "gpio111";
>> +					function = "cci_i2c_sda";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +
>> +				scl-pins {
>> +					pins = "gpio164";
>> +					function = "cci_i2c_scl";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +			};
>> +
>> +			cci1_1_sleep: cci1-1-sleep-state {
>> +				sda-pins {
>> +					pins = "gpio111";
>> +					function = "cci_i2c_sda";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +
>> +				scl-pins {
>> +					pins = "gpio164";
>> +					function = "cci_i2c_scl";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +			};
>> +
>> +			cci2_0_default: cci2-0-default-state {
>> +				sda-pins {
>> +					pins = "gpio112";
>> +					function = "cci_i2c_sda";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +
>> +				scl-pins {
>> +					pins = "gpio153";
>> +					function = "cci_i2c_scl";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +			};
>> +
>> +			cci2_0_sleep: cci2-0-sleep-state {
>> +				sda-pins {
>> +					pins = "gpio112";
>> +					function = "cci_i2c_sda";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +
>> +				scl-pins {
>> +					pins = "gpio153";
>> +					function = "cci_i2c_scl";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +			};
>> +
>> +			cci2_1_default: cci2-1-default-state {
>> +				sda-pins {
>> +					pins = "gpio119";
>> +					function = "cci_i2c_sda";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +
>> +				scl-pins {
>> +					pins = "gpio120";
>> +					function = "cci_i2c_scl";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +			};
>> +
>> +			cci2_1_sleep: cci2-1-sleep-state {
>> +				sda-pins {
>> +					pins = "gpio119";
>> +					function = "cci_i2c_sda";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +
>> +				scl-pins {
>> +					pins = "gpio120";
>> +					function = "cci_i2c_scl";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +			};
>> +		};
>> +
>> +		cci0: cci@ac7b000 {
> Looks completely mis-ordered/sorted. What are the nodes above and below?
Hi Krzysztof, sorry, not sure how you mean exactly. The ones above are 
the pinctrl nodes. Each CCI has two masters using two GPIOs each, one 
for clk and one for data. The ones below are the actual CCI HW nodes 
that make use of the pinctrls. I believe this is inline with previous 
generations. Have I missed something? Thanks.
>
>
>> +			compatible = "qcom,sm8750-cci", "qcom,msm8996-cci";
>> +			reg = <0x0 0x0ac7b000 0x0 0x1000>;
> Best regards,
> Krzysztof
>

