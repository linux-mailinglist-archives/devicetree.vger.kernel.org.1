Return-Path: <devicetree+bounces-252159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE4FCFBCBA
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 04:06:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B42373002D09
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 03:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699642459ED;
	Wed,  7 Jan 2026 03:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UHtNnG27";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jMFWdFvj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB65D23A98E
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 03:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767755159; cv=none; b=BwHjdfnuh/aNUMTOK6hV/2oERJ9AVZM5CPki6lt5uLxRFbI1UUROdBQymRB4kihZ1qnOWifldRISAR5ZAaJg3xA4b4ds32y7KMSOMFGwYHt4ul+QCtlVHZZn0J08SekGdmC5xxNsvHfyGcUJzSFgVWdJVvFzbwP421JRod9jhCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767755159; c=relaxed/simple;
	bh=rAQ06Z88Hwn2LryWnBTCSbjtOJsxXEV5IZvr0ON6Q3I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TdVcm0L/OLmrwuqtrWFtfrsw9rQteSIXGNHF8Ehvskz18ajxSaHnqRGVS8G9rr4e/h8+L0ryl6ue0gjNNQrCcK2rVWarimvYPKI5OHRl4YcAvfQn2xPUIQe8WjszW74vuv9uXG7BGiMSs8AFT212gcdx8eB528LmXqrpSnDARvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UHtNnG27; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jMFWdFvj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60703pXj322876
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 03:05:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AvGndKIb5N4XZL3A8Y51r+7DP7X343aP2AKboj3Jbl4=; b=UHtNnG272vmuOg7+
	rZ81zhv3ldQSaSchWeFiASIaYra+GN+z0DRAlot8wkUNcpwxcHyeWuQ81CMkVjhV
	kRdJjaSLbSnZt8cSErdraG4JJq4gKiBg1IJs093G/Xz6YXqdpr/b+ac4XAm8Y1Sj
	JOOcS8XLiR6Uw6phwbomNl2BNz69ZhBYqz5UbRYwlYhAoDpCYp8vDL5N9UNt3vrR
	GlyzjyKTb6XRPYsgDmZE1+G+83GbXESlTIeNPeY/k3c+9x6nSfPQVqyngOvTls2a
	TfNUaLYqzzJVkqswdftkY9MzQaquJO0SivMuXWqebBYqy+/HBq1c9iaK1sG/JF2q
	39pm6A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh4crhvxx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:05:56 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1d26abbd8so51339251cf.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 19:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767755156; x=1768359956; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AvGndKIb5N4XZL3A8Y51r+7DP7X343aP2AKboj3Jbl4=;
        b=jMFWdFvjZhW4O6yhcYS1yV8uhqYsO5vFUt7hjEJXgznsNMRLrZYG7B2Wp9aveW72rB
         VA3Hoy6awLwFLLYZw6xvkDKBgzm8PVaHMwI1z496fSiLXbEGrKyqgQY6mK4ZnfWJH+od
         aensz0DttT7yxAIPJJ/q6FbOx2GHGf9cK4W4NC9/CRl1vB8hsdBU/vEse0WRYo9DPs3s
         ymg/CQmejDMXC7Y/eGE3s0yTjXBzGHAzffD8aKsWqqsPXxEH9lN+mV3c+2eXxLZyPOKD
         XLBBLOTGAXrwJW3ResTE1yw1Z4Z0nKC1fEOokubeSt40/2GH9K78l3cjhYY9vlT5G/BW
         i4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767755156; x=1768359956;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AvGndKIb5N4XZL3A8Y51r+7DP7X343aP2AKboj3Jbl4=;
        b=XykqdRWoojVkWWFF9jQK1mmQcL1OiznI79ErJ/FeDE5bmbbpPsUBaS1J4ZuA1J3phT
         CuZKv2rmshfOMKU3Q0Nfxbtz0h1JzJfhTFmNgC6mP0ElL3vvD9tHHw3O2UbKsJJTISlj
         d/Plmvzi+wltJowECzJnxWMjI1RdK8FAVd0C3uFAvnbVJkIQOXaT4mmt9/NvcQJn0jGR
         ETC2mRSJo0a2+GOZO4CoUurFJbVG7U2ebQ1UP/5FIpcfGAXBVmUy7LZQrMkhuiIkO1sV
         AmSSvHjnnbo2fcwux3zNK8QH+cnlrQQ/8nQIxN2niwRbONKfZAsUHiZISKtr/yjCvFN1
         L2hQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKKL59KZ40u2SRTRbxoVomWVEoboNpYAZ7IGzCERKFhvaxz0T6o6uzxFF1nKQ94lSKlQ5C/kwFHNIP@vger.kernel.org
X-Gm-Message-State: AOJu0YwA4KgfnM8TAXkHf2I5M//eWK8VQgcTeE/Zb3I+KoTcbvrlQdYb
	4PkGzYv0Ga0lRFTBHfwfxBiJodPX2HG7yDLVMEMSuY2+Cg6eF5ZJbUEmzyYlMw35geiQVx6kf4N
	K1M8Uo7n9UZTtkJ3zIdc4RbjA4jKf1SyobvfKp6O1OHGujbA+6kN7BjbBbydKKXVd
X-Gm-Gg: AY/fxX6uh22p623iGQT4bpHDWr4bzXYmyvBXVOMZ1Pl1yNq49NeAKtoWNpVQZN8Y13D
	D4rcifqxUroSUvjoa+GtPMYvfGYXzCEyNeKy2qpICXkp+JZICjLshmT5yGNnxcKp0bHg9U2Q+So
	LQXKioimWxoDrPLyqOx9wQFHb4Wm9AJZlCaJCUZlO8ZL8Cfv0Qm00a7ygHVPhhBMom/suHR7saa
	Cx7z/xgWRTBw3JV6TZ/NrBTXL6wa2D6rB83gmv7cMeXUcmAxVegj/MDGB79eKXTElpt1UfpMsRC
	d/r7XNoJtOqegnpNZsoqtftTAg8wTOKdCxDuJNmWMt6rrsIcj++OGrrO8aB6si5L6rSh71K6PdS
	k7oUck4A6TFDFtjtTZHBTSFDvwMHclR84zMuZ/h+RCchP/g/dWFUJS9l+gMXrWWTZaOG9jwEa
X-Received: by 2002:a05:622a:110b:b0:4ee:1ec9:f947 with SMTP id d75a77b69052e-4ffb48658a3mr13464611cf.3.1767755156034;
        Tue, 06 Jan 2026 19:05:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnvTM2P6VEISLeWEQbnH2/SIfYFi6hqR7SJ3jb/JPTEH7e8kWOEzE0kVLRufVXTQwxCso0Yg==
X-Received: by 2002:a05:622a:110b:b0:4ee:1ec9:f947 with SMTP id d75a77b69052e-4ffb48658a3mr13464361cf.3.1767755155568;
        Tue, 06 Jan 2026 19:05:55 -0800 (PST)
Received: from [10.38.247.225] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8d39230sm23060911cf.6.2026.01.06.19.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 19:05:55 -0800 (PST)
Message-ID: <f09670ed-1aba-4622-94b2-85ade831f7fa@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 11:05:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: talos-evk-camera: Add DT overlay
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-4-bb112cb83d74@oss.qualcomm.com>
 <ndexzb5bo2rxjsj7jkf3bevbb6vmtjpuuhxbonpf3v5csxnjtu@sotufkkvfc4r>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <ndexzb5bo2rxjsj7jkf3bevbb6vmtjpuuhxbonpf3v5csxnjtu@sotufkkvfc4r>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=V9FwEOni c=1 sm=1 tr=0 ts=695dcd95 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1lMvVU9yvT13_2MUe8YA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: QPttND4UuO8bzlE1sRqDAks-3zNuPh_M
X-Proofpoint-GUID: QPttND4UuO8bzlE1sRqDAks-3zNuPh_M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDAyNCBTYWx0ZWRfX7KYhSMKNuK4e
 Bmj1itcad/rSaxKGsLwlbp2U8G5LcRcJlzpqCmh+Bu0h6kGsZr/qk0Koh7LBPC6HtczEZzfxfgB
 itF1f7j7vTZ3tuLX/4+L/DS3TqrzvrRMCmpzPIR6g4VqQ3vqiuNYH+xFjk9nxhD1uBuVrnX8aWg
 ZyAzi1vV5K3B1CfJLnZoK5gM+ERsZK7sL47Wd+CAr9FmfodmZnwHqktuTJxOMAIKgz4QIj0eT+s
 V0IYbO4oAIfhepTMwUXUOfhM6oDXPtCMHWa0imBLdjKt71CkgJ66VLf6xUZDhu8wCovrFkH7kNc
 pOM3MZsrmzxO+BBd0QU0Ud6h9Wus/DBovwjyKGB2zGyovACZ6CPFrFxBedUwqx63jAfvNnSHg1F
 iN7EzM7+7+IMugAEwFOhEPm7GkWRRGycdggtVfle9jnwjRWl/BILTcvVqeWVB3d5+s9Srkamf3z
 qqPc498kl9EbDifV4cQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070024



On 1/7/2026 2:23 AM, Dmitry Baryshkov wrote:
> On Tue, Jan 06, 2026 at 05:39:56PM +0800, Wenmeng Liu wrote:
>> Enable IMX577 via CCI on Taloss EVK Core Kit.
>>
>> The Talos EVK board does not include a camera sensor
>> by default, this overlay reflects the possibility of
>> attaching an optional camera sensor.
>> For this reason, the camera sensor configuration is
>> placed in talos-evk-camera.dtso, rather than
>> modifying the base talos-evk.dts.
>>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile              |  2 +
>>   arch/arm64/boot/dts/qcom/talos-evk-camera.dtso | 63 ++++++++++++++++++++++++++
> 
> Is it possible to attach other sensors? If so, overlay name should
> depicit which sensors are attached (compare this to the RBn boards where
> specifying "vision kit" defines all sensors attached to the device).

Okay, we previously had a discussion on this. I will rename the file to 
talos-evk-camera-imx577.dtso.

Thanks,
Wenmeng

> 
>>   2 files changed, 65 insertions(+)
>>
> 


