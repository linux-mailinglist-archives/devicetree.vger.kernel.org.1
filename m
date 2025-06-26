Return-Path: <devicetree+bounces-190036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 693AEAEA600
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 21:00:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 808DE164CCF
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 19:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E611DED7B;
	Thu, 26 Jun 2025 19:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bBqPUJvB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789DD21348
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 19:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750964421; cv=none; b=Quzv9zhTjk0G/45WlZ1ZpT0svzlWGkkVfq6MjNVOtzoUFO35wW0hshroL2hZYsb2SxmhIzxsioI1cualzfUNVaNwYaIowROotxNlrPnAKK4lLcLrGHXhnPcXK0AZp1NpBkWU2QvwYY01h2bEv8Vy5q72kfkz4TuB09LIOnG9/JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750964421; c=relaxed/simple;
	bh=cgW2/0GcD+8/Xjq6KPCjePfx9B2N7GArAsp7JHCiCt4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uhKbB0oFGhiEr/bO+c1pv8jcC3PW9mJtk2zs9XhpTVD13s1TJCEV29dAb3g8Cp63Nb8oGHz0FxD+HrsuJ7xOvuZXH2QAWPBGG8BG21rqDLGPiJ9fNOec01OrrIYs1JOu+qVriRqlgco9XEUSxP1Nil4mY9U6+m/P5lv5kXtTwC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bBqPUJvB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QIs3Yl018890
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 19:00:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SS9xc2aX1hgyRpQbo/UFT04KNBAkslTcigFYKQmcTfE=; b=bBqPUJvBbl3v4dPN
	n/ms21tFLtiAK3US+E/Q7+L4Rkw8JG1n87FdwCx11dcfx7vq9jnzBai/0/m7P1os
	0x8fZHpDx4P+ggY3pQl7reLaB9yLbbw5/WpfwX0T50D4CMj4EOTbD3d0VrGRI9OF
	IyNIQq01umLyjRgsQj4c+UktZNZ0iR971xmz2dWIDD3bUZpGT3kxFG6cADoH/3af
	c0jHpaFSZb6VKc5pwseKL9icwiN+OBWCI0/bGpTWRhIRsMpvMqdfVO3Qhc1fWsJa
	R3ToIL10bz2cFBDaMT4QBYWJw1QPgjfCra03JOoT/WDhM7BLJj2vH74+c1VptqvM
	6P0CJw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tdeaty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 19:00:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d0979c176eso29239785a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 12:00:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750964418; x=1751569218;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SS9xc2aX1hgyRpQbo/UFT04KNBAkslTcigFYKQmcTfE=;
        b=EGl7PF5/JzDPJ/YLeWpmk60CpDUCuF79J3nkUe2kLltUOgvPp6iApUU4Lw+R9F4hXq
         frYRLbGOt0YCOQr2yikxJjco4dyyEd97DyOF48+J6ILvjbd9Igb9Wa+LKWpi9G6OHimR
         J3JF/7F69Vv6StEHrDaEfvzZzgyBVooTtWUdy9ukUYKM//Emi2FwWaX73rb9MAThjfVv
         7lwXiVAHbR6LKTeJHiuhrVxh+TJbjomluNVQyeYeNix2j3X3DntuK9vQhz/m9VCXf7go
         XsBZJJIhH0yDkgaf9CU7UCE+AV8AL7Dcs+4DFzf8Sre73g7eMXISuW5z/M3KOAABuE3i
         XZrA==
X-Forwarded-Encrypted: i=1; AJvYcCW6tJPheni8E1kGoCf9waPcjLzhAkI2oaMZIdDpq0NsitP7omLpeCbNm6Tw2UJ4ISyB7u4V0FqCDsMj@vger.kernel.org
X-Gm-Message-State: AOJu0YwKo3kK2cTZqVCJXMCjj8nBW5ie+TATOd/CuX1LCcqWWVZPpzHO
	YUWJiHKG11yS7D71QDBGFhoTlHNN6dxXOMdXmFEIa2Ttu1TSlZstlPMOYoiuXHu/cq45QAfg2DK
	qzQVVyQKJ8+o4OS8gX6C2rXV1iEUc6MnQPSkhxBzUvgOBNDYA21eTsueQGGaRcoNj
X-Gm-Gg: ASbGncvDpswYvOgLITqkYtVo7faPRG6zmK2Jr9bOhoxFTH5JLi1k0maxJeSIooNLozQ
	IONBaz3REC35VcFI3awPsgrPpFESB14E7y7kZwWr8DtHGK+x+TwhhF8N+Ro+yP4wkd7eDswJk+R
	ARjnTMiHIcwGX1VYB6vwwCKRrbtmJUK65IrmxFAyey5DKQfoJaf4SH6+JSS66hTMUN8Zh9XNhVy
	JFFoqmAF2VhXUS4gJenPEmZn1xBNZhx6ZmH0efiCJE8s5Pqd/gqTKYtVQb1A2N1y6iRXQeXGjzR
	tsQ9L4V9FfS7wJQTWOzM9KXcGFETEdFxH7Rhrk8dET7DrmFvy7sGOth+Lny5nHbfwfs9DWHscKR
	kX/0=
X-Received: by 2002:a05:620a:4251:b0:7d0:9ded:31e0 with SMTP id af79cd13be357-7d44388a2c1mr34018985a.0.1750964417636;
        Thu, 26 Jun 2025 12:00:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSxTq00cRCINqzwitl+zzIt72e0Yn8UwFVvdcPcObxnLLYMaqJZWvj2ssieb4NoIKfzFtvNg==
X-Received: by 2002:a05:620a:4251:b0:7d0:9ded:31e0 with SMTP id af79cd13be357-7d44388a2c1mr34014185a.0.1750964416934;
        Thu, 26 Jun 2025 12:00:16 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae202026e0fsm41259666b.14.2025.06.26.12.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 12:00:16 -0700 (PDT)
Message-ID: <78b8a1fb-a584-4547-b6cf-1320d40186f5@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 21:00:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
To: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com>
 <20250625-qcs615-v2-2-0f1899647b36@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-qcs615-v2-2-0f1899647b36@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685d98c3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=0ryZ_V9OgMW2RYKJuugA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDE2MiBTYWx0ZWRfX51CnX4vrOGtR
 IfyODgBLDSFQgDdWeQOwaQzcxBA+a/oOhGEKTD7oKl5uahZGo7e3yy4x5YNnhh+VmegKFXDIA/M
 tS/c8hRlHBXDoSzTaCeCw9B3gSFcgkH7SBeSIjvdTfUsjw3PoSdmEnV5j3GDo6By4V3spwaO3Ox
 ZFA3lElQidxLGCP0jgjbfClncIKAKfgChXgNPdgGVZctO5hi26PZVcOzfex0WEQ9kgZ1CQhfN6w
 izS/haxlHjneyURQmjbl5qG50oo35EFxf37HZi0e2v8NW2CWG3j8r6aqafU96xiuz6q58r5wVBi
 uvjvLB1ueUI0JFLXry92Om6+VFb3ss4S3rmZbtX47jlbW/EDfVf15enSvlHRW1bJ7XsARrpV5xX
 ulW7Nva4dNSajVTV97Hb/c1ah2MqvG4y9lJChHjgIV0tEyQ9OQhotQ1t/BfA25y61pdx/c0e
X-Proofpoint-GUID: Bpm4T-1x87eq6Vanc5rU9mHszH8qWcux
X-Proofpoint-ORIG-GUID: Bpm4T-1x87eq6Vanc5rU9mHszH8qWcux
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_06,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260162

On 6/25/25 9:55 AM, Yu Zhang(Yuriy) wrote:
> Add a node for the PMU module of the WCN6855 present on the qcs615 ride
> board. Assign its LDO power outputs to the existing WiFi/BT module.
> 
> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
> ---

[...]

> +	wcn6855-pmu {
> +		compatible = "qcom,wcn6855-pmu";
> +
> +		pinctrl-0 = <&bt_en_state>, <&wlan_en_state>;
> +		pinctrl-names = "default";
> +
> +		bt-enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
> +		wlan-enable-gpios = <&tlmm 98 GPIO_ACTIVE_HIGH>;
> +
> +		vddio-supply = <&vreg_conn_pa>;
> +		vddaon-supply = <&vreg_s5a>;
> +		vddpmu-supply = <&vreg_conn_1p8>;
> +		vddrfa0p95-supply = <&vreg_s5a>;
> +		vddrfa1p3-supply = <&vreg_s6a>;
> +		vddrfa1p9-supply = <&vreg_l15a>;
> +		vddpcie1p3-supply = <&vreg_s6a>;
> +		vddpcie1p9-supply = <&vreg_l15a>;

You're missing some supplies (in a couple nodes), as the bot pointed out 

[...]

> +&pcieport0 {
> +	wifi@0 {
> +		compatible = "pci17cb,1103";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +		qcom,ath11k-calibration-variant = "QC_QCS615_Ride";

Use 'qcom,calibration-variant' instead

[...]

>  &tlmm {
> +	bt_en_state: bt-en-state {
> +		pins = "gpio85";
> +		function = "gpio";
> +		output-low;
> +		bias-pull-down;

Please put output properties below bias (for consistency)

Konrad

