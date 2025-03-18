Return-Path: <devicetree+bounces-158639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0E9A678C2
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 17:11:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC765177CBC
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 16:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA69210191;
	Tue, 18 Mar 2025 16:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RjgqsM2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4BFB20FAA0
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 16:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742314296; cv=none; b=E88PrdcU4PZ+PTqBU0Al+Lcg9RH/VBNU9P77C5RwxBrvcWExEW+/4AOTz9ip2bZ1NvZrrbopM2UDejklD5FI3vmXWdTx8BWui4Nxi2XABMgGkNvEbcM+pVDYy33bBob8Ep7k4OSFeSaKvyvc/QVFpbWHQibe90ie1OluW/lYx/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742314296; c=relaxed/simple;
	bh=eyFDJE4YRl3b2EEj6y8xT7rbh/9hzJ7Y5/dRWTDk1b8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IlMgx+Gf/GFpGtNdJJSfmMo5NXBr5N4OQXPDjSjzKsX6Y1hRzZ5aJlkC822U6pvz1WK9qeOPTqONxsYPPRdVGlb1XKoPGtElKd5as2QJPJZjgsAoNKmHAsJ1aAdCYoyIRLErWZTVFNFHED/YuugxyIrey2qDCj1/FSFOmvSLTpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RjgqsM2r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IB3D7B022723
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 16:11:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cM8AZCQm2iZ9HJ9wuCI4b2L0bxljhZ1yX+T89jHuzZQ=; b=RjgqsM2rFGN8p1tD
	DxdRLIoVkkaqG6ZgaIm2Mh7xMj8shM0hA75hwi6vy5Zh6Q9PIoCoyf/9PA6aBw3l
	eawJVpn/KwKbQpTcAwiWXxjAgLSnPJ8260Q07KKzl1JQNH+sHgE4sAIBgGwu86RD
	OJIHUwI1ZapnnJHgMXadRiXYTZSpN1nuVaY5US2eXSEMzEt/ftAN9VUN/0jvsg6i
	nRTI1Wwy00/zNY3vnz/uWB00eyJwY0B/TMB5rqn6aLcvPv8JbPQiLOeOcdsMTvLI
	5qbn+8ZCfG9zkOn3/VS8Igzr4nAisFqW1UXQ7QToFXyB+X9JezysHhcmp5B/KNFA
	hA/CPA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwx2dsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 16:11:33 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-225107fbdc7so93413285ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 09:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742314293; x=1742919093;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cM8AZCQm2iZ9HJ9wuCI4b2L0bxljhZ1yX+T89jHuzZQ=;
        b=g6IRwsHaoj4EpDYRLlESni8QllACbrWTuPKMklw3aZcsJHO6I+YWyMGR4LdcPVDPar
         9TogMiR57uSwiTFJ2QjEzFI7Et/dY9BZVFykZKVPYQjjDJue4YjeGVFckvGV2jrq2XeS
         H4iekieWaz6tQVrO9jmFJCwiYoOAfInpbUiuTg4izEVWR8k3/swjFdDGTdRp2lSEplG9
         5JOO2V7SosWJAVnZWvjvT91eLoHmhpq15N3tBz9jnMQKdHZCsmt2lRAWa1r2DIKrKoYb
         IHnmvSzlCKXZnskmH8hJHOXKNBpNbjX4oOuNCSTVqh7YDuGlFDLeTxYmfZLFQhTgxVQ6
         Xz9g==
X-Forwarded-Encrypted: i=1; AJvYcCUdMaOtDN8e8xDVEpEsqm96P1ILHhtVqtyYcE0lv4aonA4mYTfHYmuKdJ+tPE+Ob+H7F0sVsL8EK39j@vger.kernel.org
X-Gm-Message-State: AOJu0YyO8G+5LmkIp0tauL9nLoXFlbDu6i77GuVYiOPtXXTKNXdoZnZx
	wXBLYsYyrinVMpohuOb5W/oRoSieLeXDCP+dQPZkahvEOYsnV1JhClHmjI46chEVnn1yFgS0zkN
	hxxrVccBTNSvNyyU08rC+uL9Nq7TWQi7nnAV/uh1sMxbCl4jycQkSLVYgvAT9Ttbwy85w
X-Gm-Gg: ASbGncvn3stCSrqOCipQB3mGCCMRacyupFylwGDfSbE5qFU1uSHgJUk8C8UTCtZrQmb
	d/GUAn71JHY1S3LEuTZTm8xjcTbK+D5CoKskETi7LyKQnP2N3tzJQTLt6IFosKP6sF9qKqqRVu/
	Yc6OAIVd+Rdt6ErDWrCRbMh+5cB/qLgwMI3wQz67F86mFON1YEHRUBekkGnKFkWKPD583Tuo4gy
	tNV4C4THSbLKqckcFEkgi0HYiGfY8UkW/PqDYlEpWXKslQkRMPLyZkRM1V0JLSeAthKkrhvvtvX
	zWJJvEsOrKa7Kmr0WSp2+nYOvXsx9fNoM13GkB0LeKwjwA==
X-Received: by 2002:a17:903:40cb:b0:224:a74:28cd with SMTP id d9443c01a7336-225e0ab5216mr226833815ad.31.1742314292630;
        Tue, 18 Mar 2025 09:11:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDWxl7Dn7VJ/dGBJeY8Nm/beDoadgREWVQ+bpzZHWe/2JguBoReZYgna/7NMPu2dIQzrTEQA==
X-Received: by 2002:a17:903:40cb:b0:224:a74:28cd with SMTP id d9443c01a7336-225e0ab5216mr226833365ad.31.1742314292246;
        Tue, 18 Mar 2025 09:11:32 -0700 (PDT)
Received: from [192.168.29.92] ([49.43.228.40])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6ba6d0asm96645755ad.130.2025.03.18.09.11.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 09:11:31 -0700 (PDT)
Message-ID: <8a2bce29-95dc-53b0-0516-25a380d94532@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 21:41:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 02/10] arm64: dts: qcom: qcs6490-rb3gen2: Add TC956x
 PCIe switch node
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-2-e08633a7bdf8@oss.qualcomm.com>
 <kao2wccsiflgrvq7vj22cffbxeessfz5lc2o2hml54kfuv2mpn@2bf2qkdozzjq>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <kao2wccsiflgrvq7vj22cffbxeessfz5lc2o2hml54kfuv2mpn@2bf2qkdozzjq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: cZudJekQTjb14l4HWmCOX9H-2ihulcS3
X-Authority-Analysis: v=2.4 cv=INICChvG c=1 sm=1 tr=0 ts=67d99b35 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=gzHQz5DndFXDghOZWxpFUA==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=WTmwj_6TxTBwwd-b0B4A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: cZudJekQTjb14l4HWmCOX9H-2ihulcS3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 impostorscore=0 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180118



On 3/17/2025 4:57 PM, Dmitry Baryshkov wrote:
> On Tue, Feb 25, 2025 at 03:03:59PM +0530, Krishna Chaitanya Chundru wrote:
>> Add a node for the TC956x PCIe switch, which has three downstream ports.
>> Two embedded Ethernet devices are present on one of the downstream ports.
>>
>> Power to the TC956x is supplied through two LDO regulators, controlled by
>> two GPIOs, which are added as fixed regulators. Configure the TC956x
>> through I2C.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
>> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 116 +++++++++++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/sc7280.dtsi         |   2 +-
>>   2 files changed, 117 insertions(+), 1 deletion(-)
>>
>> @@ -735,6 +760,75 @@ &pcie1_phy {
>>   	status = "okay";
>>   };
>>   
>> +&pcie1_port {
>> +	pcie@0,0 {
>> +		compatible = "pci1179,0623", "pciclass,0604";
>> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
>> +		#address-cells = <3>;
>> +		#size-cells = <2>;
>> +
>> +		device_type = "pci";
>> +		ranges;
>> +		bus-range = <0x2 0xff>;
>> +
>> +		vddc-supply = <&vdd_ntn_0p9>;
>> +		vdd18-supply = <&vdd_ntn_1p8>;
>> +		vdd09-supply = <&vdd_ntn_0p9>;
>> +		vddio1-supply = <&vdd_ntn_1p8>;
>> +		vddio2-supply = <&vdd_ntn_1p8>;
>> +		vddio18-supply = <&vdd_ntn_1p8>;
>> +
>> +		i2c-parent = <&i2c0 0x77>;
>> +
>> +		reset-gpios = <&pm8350c_gpios 1 GPIO_ACTIVE_LOW>;
>> +
> 
> I think I've responded here, but I'm not sure where the message went:
> please add pinctrl entry for this pin.
>
Do we need to also add pinctrl property for this node and refer the
pinctrl entry for this pin?

- Krishna Chaitanya.


