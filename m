Return-Path: <devicetree+bounces-197454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52596B0957C
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 22:10:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F8D1173D18
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4084224220;
	Thu, 17 Jul 2025 20:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yvs+WD0v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC9F1DE4E1
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752783014; cv=none; b=q+4yQVkMCEYT85CkUZ91xudBZYIAOCFYk7BXPhZWYK8OKD2Zn256tM8GUTjK1fADx8zykTZgWtq8f08tJPuLYhatsCkk9CvCy+tYz/+SKenSRk81wMQD0LxUrxIIUrlmkMWpwwziPfqLOFV9dz0RrbybvMUt38uuQUDapUT989M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752783014; c=relaxed/simple;
	bh=EKPy52oDvGVZSqhCAVKk47J2X7s3CsyNooGD7tK/m/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CtIBNy+Ugfy0o19U7f0/GosGQPtz/mmFjzQCE7+4Vn9u/MkZEf15Xt9W7ZaHOR5JagXeHR09dBe3WtGzogap7jXvN8WllXYjhKgRcU1CyeeYPKYXCiCQAjiukFK8hiyv88q6VVbxX5re6szM29vD09QY5a5hKNs4eyZ12Z8zr3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yvs+WD0v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HChcE5021699
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:10:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cYmO1GfNb8ToOrGv1oJJtmJMYTy9sY9g5g+UCjbEQSU=; b=Yvs+WD0v1Vs9fhxP
	s7ASfobm5K0SuvMJSVGkgoYSVHCxiLbwnbtxNcg7zfXi0TS8fHRn/GDgRO+CZlUE
	mOaFAMkkY3nSor2LSpwysqq15d8SpeOSUQX9KFjijN0o6qe8dZdjefshrEFhJko2
	cYhumOKdSSdlneojGuYX4/c9lg++JgogmhXp9s4U9GnOPNftpnlkHw15RgFBWAbu
	tohdak3Ttze7/EtERgpE3AlbMA+xWLuRVw0ck906PA4Ueri55u5MDt8cSgqDLd37
	RifYOUr8S/GAIParP+ZSaMUMubdmxyRFP6A3X+6CsF5LfojaElqWUkVNXC4pIf40
	1SSRZQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8gw3d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:10:11 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb030f541bso4818166d6.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:10:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752783011; x=1753387811;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cYmO1GfNb8ToOrGv1oJJtmJMYTy9sY9g5g+UCjbEQSU=;
        b=Jl1wz7WdJpaLLwaZGOJFf5dWV5UnpgGnRI5Ovu9B/rfKyavX4mVaSK7KTZi0mCZ5XU
         DSAivgc4keNUxmOhTZwK7znoFVzEVGj0HtyJvODUatKSjzzcsFJpelSyybM+0HXKlvV1
         N5adJMbu9mmdmrHjBPxbxlaTR6gqr+o+18ersS4wt0NV+yYkUi57Q8Cyzkoeww0hgDXa
         R9XFTNoN5pd27c+03uhIcqAag3p953CdcVR5g9Eb6HPtdKCvc6Uedg1o37YE4jaCgvAP
         PcuSlGz3896ER+l35XRrT8htwCCN6gPMJWymu4uBrmZC2UGFpiHOdAKdJhS7UxHn4XkK
         GPYw==
X-Forwarded-Encrypted: i=1; AJvYcCWcUShPaD1H6ME8SecQBJilvh22sWpVcz8VlYuJ09spHwp+aHbPPjEIvYl+B7Qq5dDgsQ+llAZpiwAc@vger.kernel.org
X-Gm-Message-State: AOJu0YwmW4EVgEQhg4+wdAebbMT7/0JZkpd3moDYvCN6ZxTQjY/xgpiN
	WlCZF5VWsvo+ENQUx/61U/resm6V/5CDl9JWybUn5qzdpzvY/yCg/7j65xOcKbZA53xNOexVC+I
	lIzGkfYv0Fysl8Q9y3biPyvNTM6ZvDo6/Z9nm7+rwJWyPsHBLyc/uUhugMdC3mbKf
X-Gm-Gg: ASbGncvIfMEECC+GYTJu3eyGe5wlYvWfojVjeSKp8maXgO+1U8FXyg7bw4MpIFO7rif
	m1S8pckCEh497G1maC0KaKb04QIMXJh8n+zR0SKKDJHfSwKK2rXwD1ujCt4UO9Dxh0OrOkL88D9
	dAqJSn34ZbPhd/LVLhu1S0vhhboAWcX9uGHluReR/nnWkafpEZ3rP1WJnSwmGo/B54W8qUQQf0u
	D34FYZw8/H5qb0pVHbQrJvMwIJMz6/iOwfyO/m4BjjJ9U1I4ifPPdWd4tAUS+Boils3nRHXIJUZ
	3oToxBszk6meo+5LgIwJCpvEXQ/9O+Z+rTJ5U7fi4D5/VwBK44Sc2kcQP1F3Vlufre98hGU+2LA
	w4s1CtpRv8FKAZFM/yuuo
X-Received: by 2002:a05:620a:172a:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7e342b416b3mr491272485a.10.1752783011004;
        Thu, 17 Jul 2025 13:10:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOAfee9N81jpOmhQ5PZ3hk1t3eQcHZyJcOmJC48exwPfVSuJeo/nSdRV/0obqjOo192WJTNA==
X-Received: by 2002:a05:620a:172a:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7e342b416b3mr491269985a.10.1752783010505;
        Thu, 17 Jul 2025 13:10:10 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7c09dfdsm1407562266b.0.2025.07.17.13.10.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 13:10:09 -0700 (PDT)
Message-ID: <3a381014-cfe4-4b3c-a3c7-df688c1e87cc@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 22:10:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
 <aHkhcUVBnrwadKfa@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aHkhcUVBnrwadKfa@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE3OCBTYWx0ZWRfX+OrO0pny1SqQ
 TG5F+a+gb16rAOGB9HyJeNQXxaQT0hmaxQkRdolWSGppXNAttbvuXs8J3zt4tTIkOU3pk7cMbJQ
 WUA5oYUR89OR522idNXAgTxZqCScUWfPldDMgaAlPNP+l/xes+MxUl3TqTnaWvTjsn9H9nsyFwR
 ivWPxqfvdgROGPQf+c/yJNQYo5XDtxaI0dS8FWwDwsAJ1oEy/zFI3RPSxfTPgGNVgp1JfLIpWki
 N3y06XxK4jWcbcVznhjJIOzmXhcWz7picbamRU3WMCu8/vQRB92z/zn7CXBN4SYAgbWroLFdS56
 ChAdLQ2HAgjMrtYlVb5k1Uh4qomjDgG/5oR2QzFJRca5ClZTf6N547jbfaJiyyvAE6XV3bbxuIZ
 Ln54XKICOI7C5kGiMzgiSeylpiX0fBPj9iIbuGOK4one4VTbri93+ZRub1dBwa9qpDI5GfXB
X-Proofpoint-ORIG-GUID: meK3pKyy_2D4a9vgYYFJLV-bf8s_32k1
X-Proofpoint-GUID: meK3pKyy_2D4a9vgYYFJLV-bf8s_32k1
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=687958a3 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=DGOirDVRF9kFrzJQLnUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170178

On 7/17/25 6:14 PM, Stephan Gerhold wrote:
> On Wed, Jul 16, 2025 at 05:08:41PM +0800, Yijie Yang wrote:
>> The HAMOA-IOT-SOM is a compact computing module that integrates a System
>> on Chip (SoC) — specifically the x1e80100 — along with essential
>> components optimized for IoT applications. It is designed to be mounted on
>> carrier boards, enabling the development of complete embedded systems.
>>
>> This change enables and overlays the following components:
>> - Regulators on the SOM
>> - Reserved memory regions
>> - PCIe6a and its PHY
>> - PCIe4 and its PHY
>> - USB0 through USB6 and their PHYs
>> - ADSP, CDSP
>> - WLAN, Bluetooth (M.2 interface)

[...]

>> +&usb_mp_hsphy0 {
>> +	vdd-supply = <&vreg_l2e_0p8>;
>> +	vdda12-supply = <&vreg_l3e_1p2>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_mp_hsphy1 {
>> +	vdd-supply = <&vreg_l2e_0p8>;
>> +	vdda12-supply = <&vreg_l3e_1p2>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_mp_qmpphy0 {
>> +	vdda-phy-supply = <&vreg_l3e_1p2>;
>> +	vdda-pll-supply = <&vreg_l3c_0p8>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_mp_qmpphy1 {
>> +	vdda-phy-supply = <&vreg_l3e_1p2>;
>> +	vdda-pll-supply = <&vreg_l3c_0p8>;
>> +
>> +	status = "okay";
>> +};
>>
> 
> Assuming the USB ports are located on the carrier board and not the
> SoM(?):
> 
> Are carrier boards required to make use of all these USB
> ports/interfaces? In my experience it's not unusual that embedded
> carrier boards use only the functionality that they need. Maybe this
> should just set the common properties and enabling individual ports for
> PCIe and USB should be up to the carrier boards.

The PHYs are on the SoC and if the kernel is told they're "disabled",
they may possibly be left dangling from the bootloader

Konrad

