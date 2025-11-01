Return-Path: <devicetree+bounces-233965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CA8C276DB
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 04:38:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 071293ADE7B
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 03:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20FC425D1F5;
	Sat,  1 Nov 2025 03:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="boKYvFta";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C9J11lE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7383225C80E
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 03:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761968297; cv=none; b=EiNtBLgKohjMwSSBTJwF7wY5fh8Q5iSRNSc9PTsf4eCBsO8dngCIay3+mMxLmZF3t7Ue2MwuDodw45HMVYh85ElAIsWD0TTL288sewZlvdZoC10XPnOqi9JtDPunad3c6T12T325ceYpHcv4PtYUmIddj/WnoPQTVgbtyca8kVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761968297; c=relaxed/simple;
	bh=QOV4s441pUMcnd5W23H/g9SGPLto9keaiax99h+lJMk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q2T3Xctkk0aaWSTsD45vRL7Uug+PRvQ8oa2zJzlHRvurfAEZTCq3GlMlJdwBormLaMOd80JxC3tXNIvJJDw+CUQ9dK3jyZMReKpwjzVNH/8mwYFuZgQk/mK/NGEFpD17oN19K+1239UwnyyjRkwBQOfGSi5IH/9l4flNdwG9xSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=boKYvFta; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C9J11lE0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A13ZIJ0429879
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 03:38:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j+MSSJNAnzhdO1DSldaGMP+f7736jkHHfxLd+CmKemI=; b=boKYvFta7QfNPlSX
	a8XeodXvIm/ciqgQ6avwi0jcO6Y12EQAPWIG105GUhI6dXv5tlXeWeOopsmVYb36
	aUcdL49VKGbMMCD3YuiYixcNws712f0CNJpB8fz44w2khLY0XzUakC5RbeU0FUQW
	6jPI9PCRzZQ05q4JtOD7RMxUBJ2W2EaH8Y+APaEWUcpL1sxQFU+csg5rGjS4Bg86
	rP3g/5d9X88J+v56NtOhWx0JyJA8Wyj48Avw2Yodxkjcz9AaT9FWqczj/NtO8tWX
	LFqAf2UOl7Ad8AsYpLNy/A7FDJt0pOvg+L5lKNk7bu437bH1wig3PoJPH8DKkVSi
	s69Wuw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5ae3004a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 03:38:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-286a252bfbfso67521195ad.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 20:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761968294; x=1762573094; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j+MSSJNAnzhdO1DSldaGMP+f7736jkHHfxLd+CmKemI=;
        b=C9J11lE0jNeHoxoHsbyzm7xrJOqBJqIewKy9y/VpkeF6BR+9xpPLD/YfXeifnURADH
         b7j9cICvXLH71w077xHn+wEMBBJ1XgzGdg6gWrIUlZs+ydAyL++Fm8DwJSZvzF/CZPJl
         umcbOtvLKYefBqBQKOaKFhUwGGCbMg25zmbCPDEKTk2Qrr6ab9GFSF1GF19qsLXc1c1m
         Do4+UrP3xMorA101P2GDWc0fMZ43BlKlnMdquohv21typ9GO+mVxnwnB0gm4qwsUvDLI
         EW+g91xwroj8Zp7IUoK5gFZ9bCF2vD9uvC887ZwZ4kARoXd9oHbFM1GMyN0akYaS6MRi
         BR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761968294; x=1762573094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j+MSSJNAnzhdO1DSldaGMP+f7736jkHHfxLd+CmKemI=;
        b=XHyiU48eUy/frh1B0k4pp+BcFiFRs8OJNgbzw4bE5sM7OZ+gMLGEIHFlnTPAQRNxL4
         LxsYWNF6DbJQtpuTnjsVbtiyf3qOpJrTPDI1Gj7vKNrzpejCR0CvufwUaQRFgptZo+/l
         KC00UJS2RUNG81CYKIPBMY0dEpP6ZfMU+biWskJrCJ+ywffc/oruAAB4Xj5tl40Qig4n
         rEogMGff3RMMDdv2dvyLFPP4YvOc4jNzpNWX5gPeqq0VQdeiY6IE9lhIiIeAeXmmAuF+
         1MPAPDBIjeuyYmY91TaGvUpDWyb6C8/7IHQRuymX2Ouro/WxmfeQBNSnU3D7m928C8aj
         +nRA==
X-Forwarded-Encrypted: i=1; AJvYcCVngtIc30igvCy7VXrfGAmdL8v5p6S7R2/Ndk8kKEGhvTl4bSgEDdwL+dgJKzAbrEfebKOj2jfn9MfW@vger.kernel.org
X-Gm-Message-State: AOJu0Yysh8gx6BrDyz5vm4+2fgsMyEIGePismtagjCJ2GD1ncH+yXHa7
	WI7OP6350dsEc7LvxPGmC2IdBltWDYJQIydYuLWJeC97xKXgXMh8W+I9GLNGG7JMi/vTaRS696T
	U7TGWFJCq0ioVjQyT5tTzGx8nyFXq6pSIiF8vtICsT3Y7o+NsHgpI3IL+HbYZX5JJ
X-Gm-Gg: ASbGncufbFwnvgCU34xLl+7ZUoVP1nt4cO8jhFBzhPztwa7ccXBzvYMx1+bhWCObDm8
	x1Y+M5f76a+7e9BKaAImI0TbKDA9TZrK8Tml5f5Pu3eU/1EMoQ2gtVrQ6bGjP/DdqVdgwZ09wri
	HWEkAbjPU6gG+LBRKEoRnQjr+V/KnxZiHDLMcdCwuAmV9KqrCWyzY8tF5Zdv4x0E5ynbcJbJskn
	e03Eeg4DYT6MBBm1bVdZnZd03Hb+AoVRJ9UjP3IS2CWEKdQojVOzBiRJqe2NhHueBKMcOZAg7M9
	mjNg0/L2Jlrq92wmwBOCf/14XlhWYAT13wHNpBf4zSIy/vw1tv/DQZgkEJ/8tpOIhBXIsayoLd6
	zV46u5F++6Rta0Y2UYuhC0pSm2NwAwlbadw==
X-Received: by 2002:a17:902:e803:b0:295:5da6:600c with SMTP id d9443c01a7336-2955da66315mr875305ad.2.1761968293827;
        Fri, 31 Oct 2025 20:38:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhZKxQBBnG78bpCeGKL4Lw7oZMFbVF3Qy60/ZWNH7pX/qvw+SoCu2WjYCu2EsGiLa3sETv3Q==
X-Received: by 2002:a17:902:e803:b0:295:5da6:600c with SMTP id d9443c01a7336-2955da66315mr874975ad.2.1761968293290;
        Fri, 31 Oct 2025 20:38:13 -0700 (PDT)
Received: from [192.168.29.63] ([49.43.227.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2955615d720sm8247975ad.65.2025.10.31.20.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 20:38:12 -0700 (PDT)
Message-ID: <bc7732aa-6958-4028-a3b3-a0c2ba3b0252@oss.qualcomm.com>
Date: Sat, 1 Nov 2025 09:08:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/7] dt-bindings: PCI: Add binding for Toshiba TC9563
 PCIe switch
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20251031221238.GA1711866@bhelgaas>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20251031221238.GA1711866@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ezWwLDhPEvnfcz7Dt1z5NCwM3bhwnUCA
X-Proofpoint-GUID: ezWwLDhPEvnfcz7Dt1z5NCwM3bhwnUCA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDAyNiBTYWx0ZWRfX7C6C8R1Dn2jV
 Klg3evou0kOVd6QH5oXDCg1kaer7UbY9P6+Lar77fUjTpy/7zCKI4Zj9WXGnSnZAtwtphP8rpeG
 ifvI1R24LabZVWJpMQKAm+9+Z1tJfXl0X8ULjoymznAUEMoaDSxrPhrqq5FckVXtHKqni32Is3g
 r8L9PI3zhMO+OyGbpiJprOobgXsYQ5Sw8/gWrxFYSumLNf8jqA3PFu6806PrOZzUzmCO0R0UkZZ
 UZw37fXQw3pZb6oe7l9v255L3v/19+9dID51+LKtDa1kTcVoyHPMOxQyOL/pp3uQGPy0pF3tBJl
 f2P+670S/zrp9IYNacTd5QAr++xB0GqItE7GDeXwrz/i2cPEA82Ch+dv7LOsPAYsm4XP64P+3Bf
 Fz7vASCY1gc4Zv/j5f2aILNrvdxBFg==
X-Authority-Analysis: v=2.4 cv=CfUFJbrl c=1 sm=1 tr=0 ts=690580a6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ISmZZG41GQzdpg15mxjwIw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=BNVTMueYxggUNz7gLWUA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 bulkscore=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010026


On 11/1/2025 3:42 AM, Bjorn Helgaas wrote:
> On Fri, Oct 31, 2025 at 05:00:13PM -0500, Bjorn Helgaas wrote:
>> On Fri, Oct 31, 2025 at 04:41:58PM +0530, Krishna Chaitanya Chundru wrote:
>>> Add a device tree binding for the Toshiba TC9563 PCIe switch, which
>>> provides an Ethernet MAC integrated to the 3rd downstream port and
>>> two downstream PCIe ports.
>>> +                pcie@1,0 {
>>> +                    compatible = "pciclass,0604";
>>> +                    reg = <0x20800 0x0 0x0 0x0 0x0>;
>>> +                    #address-cells = <3>;
>>> +                    #size-cells = <2>;
>>> +                    device_type = "pci";
>>> +                    ranges;
>>> +                    bus-range = <0x03 0xff>;
>>> +
>>> +                    toshiba,no-dfe-support;
>> IIUC, there are two downstream ports available for external devices,
>> and pcie@1,0 is one of them.
>>
>>    1) Putting "toshiba,no-dfe-support" in the pcie@1,0 stanza suggests
>>    that it only applies to that port.
>>
>>    But from tc9563_pwrctrl_disable_dfe() in "[PATCH v8 6/7] PCI:
>>    pwrctrl: Add power control driver for tc9563", it looks like it's
>>    applied to the upstream port and both downstream ports.  So I guess
>>    my question is putting "toshiba,no-dfe-support" in just one
>>    downstream port is the right place for it.
> Oh, I see, never mind.  You keep track of ->disable_dfe on a per-port
> basis, so each port has the *possibility* of using it, and you skip
> programming it if the port doesn't have it.
>
> I would assume the two downstream ports for external devices would be
> identical, so I do still wonder why you would specify this for only
> one of them.

Hi Bjorn,

As this is just an example, we just added here. In actually use case we 
are free
to add it for any port.

For remaining comments, you are right I didn't notice I am still using 
older one's
I will fix in next series.

- Krishna Chaitanya.

>>    2) I see a lookup of "qcom,no-dfe-support" in [PATCH v8 6/7] PCI:
>>    pwrctrl: Add power control driver for tc9563; is that supposed to
>>    match this "toshiba,no-dfe-support"?
>>
>>> +                };
>>> +
>>> +                pcie@2,0 {
>>> +                    compatible = "pciclass,0604";
>>> +                    reg = <0x21000 0x0 0x0 0x0 0x0>;
>>> +                    #address-cells = <3>;
>>> +                    #size-cells = <2>;
>>> +                    device_type = "pci";
>>> +                    ranges;
>>> +                    bus-range = <0x04 0xff>;
>>> +                };
>>> +
>>> +                pcie@3,0 {
>>> +                    compatible = "pciclass,0604";
>>> +                    reg = <0x21800 0x0 0x0 0x0 0x0>;
>>> +                    #address-cells = <3>;
>>> +                    #size-cells = <2>;
>>> +                    device_type = "pci";
>>> +                    ranges;
>>> +                    bus-range = <0x05 0xff>;
>>> +
>>> +                    toshiba,tx-amplitude-microvolt = <10>;
> Same question here about whether "toshiba,tx-amplitude-microvolt" is
> supposed to match the "qcom,tx-amplitude-microvolt" in the driver.
>
>>> +                    ethernet@0,0 {
>>> +                        reg = <0x50000 0x0 0x0 0x0 0x0>;
>>> +                    };
>>> +
>>> +                    ethernet@0,1 {
>>> +                        reg = <0x50100 0x0 0x0 0x0 0x0>;
>>> +                    };
>>> +                };
>>> +            };
>>> +        };
>>> +    };
>>>
>>> -- 
>>> 2.34.1
>>>

