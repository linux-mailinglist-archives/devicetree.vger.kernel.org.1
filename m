Return-Path: <devicetree+bounces-201913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FB1B1B35B
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 14:27:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6587016E042
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 12:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC50D270ECF;
	Tue,  5 Aug 2025 12:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PfGnsAWw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9BE256C91
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 12:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754396799; cv=none; b=pIC+JNn2K/BtF2xqfIqRoYU9RSjBHpu4ba14CxJofAllb6q6fqXs59cZ/l77e7NhAt0LpRhrzowz22YZUImZrgsrG3LNMFDq5lAl1ouXSG4NYTTvwldmhw8vsif34n67OfKzTHdlzyhgTYeB7yVtckV417nHX8VxJGDrWAkWyCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754396799; c=relaxed/simple;
	bh=ljY9GgX/i79FhFLesLpbCq8C8FNyRyDzkOq04/esudg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KVGrQx6OVMS+0xzW69dxa2XWtAtoq69fCCjl+KagIfto+bmfr8gwe+ilqveRX/ZCsHLM1+7MIDTn19MENG/VWhtqQgYxqAnqmJ1FzJ0h0SLaUf9pqRSdmKKzvQIjbPsi4nhzCmyuYbxua63MIJkSpuEMieXCbtX7qq9lH8UqN2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PfGnsAWw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 575Bi3Zp026093
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 12:26:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	czu/NJl1TSk2ux1ztbgQmXFWRXTjEbgvSc5lgIlAp6k=; b=PfGnsAWwjxFVvuQT
	xQywcKw6H21EiUrZf0wnqGK0l7ppANpNEuef4mg04aDRdV8rbfwjwExO8MGrkpIq
	exXNMUw76Xd+JAAqO/Dapfsh/EIkSuZV6oJPz9nZaoo09V1VCfeWMLKOkGZtVmd7
	OFeGE7bgJZM3BeaFkEbtjLDHey+ccN6NnnX7TkorlaieHHoF5ekISPye2cABWByO
	zfKBNqCW3+bQLb7QNOqQBTk47Eu59AhdqpflotoLIiJRX+OEeakKKToc0S249go9
	AjLSwGj8eWset1sKHYK793uWzD5zfLsYgdZxrbeePcdd/Yz8e+QjNCIn0QInCMFC
	BCsnjw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48avvubdw9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 12:26:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e7fe59cffdso10589085a.0
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 05:26:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396796; x=1755001596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=czu/NJl1TSk2ux1ztbgQmXFWRXTjEbgvSc5lgIlAp6k=;
        b=wfiK3nYSk5fRYvnp8okkYLFis91tXTropbrYbCcCOD0LXfHJdDK/D3eVIozDWxm4JV
         uEG3oyNUsbD/ZeAqq3/6FANVgXp534GPdcQ7rMDSzcKpO9EVMIW1Le4nF63JIy6JkPDm
         QNNUB3Gb4tw7IfYFvMowEo5p+wLojty3fTunig4Zb+btbqs/fAwySH1DMXSPevFr4/Mc
         x3sAm6w+U/YMVEy/VCEbz47phwI+yRAwPkLbcTo+jaYKsV1I5dtBjAalPEff03g93Jno
         2CS0sZRwqnKE5ULU7CeurYpiILpbI5p2lwKCODC+dLKZtey4FGVidQ3ovYW7u6vtH3I/
         JcIA==
X-Forwarded-Encrypted: i=1; AJvYcCUVs10KuwqwYCVOgIzWeNAE3WC18b86rbjH6SpfRzGfn9fwUqlltxff+e7Rsz6BpmWiOQqrrKVra1kz@vger.kernel.org
X-Gm-Message-State: AOJu0YyhN66s45r/lbWGqGY7192u6kMKRblRuBPHYQTNsUpG5NoVIeup
	zLhJe6O1L7ON8YdIhGw3zyTLzcermNf0eRdis8DC3KdS/MFdksFEWiDS/SBpy648W6xr99Fx0wU
	oGu0GECQE+Kg0InzvaN6YvfkUcLrVuOZmL1a406SQFRkJNc/WFMBtNQR8h6BgGRUP
X-Gm-Gg: ASbGncudw0Fjg+v/IG6nmOCSw+RXQf1CmELof6KDxftP5wVxfQ7pt05jZ72vs0lVwbj
	zfMTaSukgaqrhkyQshtl6asA+9lkOF2xvupbkZzHFfjcvvNTy6+z/bIMsBEDnFXW+N5YjN9bQGt
	b9QHvzsOxgFhGHfTCqQadj+GzMqEsoZFQnY8Mf5AHbY+kanyKHapfeWMhK1XNUv3+urYTAoPEof
	hjTM/QVaxaeePOQjoIapBD9SaaIpE5bshhUhWQbmWsGYJWBoiBDEp5j6A/VxpVJGM/bvxq68i02
	lS+XWCEaNvN7qjLsk5yESTAudXCyNvdw0oep8Mn/CVgA1FC5OCv7IbNkYEww4YFIzNoRvkCw8It
	GC1fsknHIRyJoMpk2cQ==
X-Received: by 2002:a05:620a:3192:b0:7e1:79eb:18a3 with SMTP id af79cd13be357-7e696361ef6mr807807385a.10.1754396796119;
        Tue, 05 Aug 2025 05:26:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTqvg7PKrg7RvP+PrWNatruiQOsWWUKhTaUzQtAhQa7cxHfsXBhsvWzXAfiPrDug+//SFE+g==
X-Received: by 2002:a05:620a:3192:b0:7e1:79eb:18a3 with SMTP id af79cd13be357-7e696361ef6mr807804985a.10.1754396795667;
        Tue, 05 Aug 2025 05:26:35 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a3b6csm896707866b.48.2025.08.05.05.26.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 05:26:35 -0700 (PDT)
Message-ID: <c93ab714-93e0-4b4b-b059-c48d4c689c1d@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 14:26:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] arm64: dts: qcom: Add display support for QCS615
To: Fange Zhang <fange.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Li Liu <quic_lliu6@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com>
 <20250718-add-display-support-for-qcs615-platform-v5-1-8579788ea195@oss.qualcomm.com>
 <1f6fc7ce-5826-4f59-89d7-ac691a3ae785@oss.qualcomm.com>
 <7e4d9dfe-428f-4374-9be7-97123cf36e5a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7e4d9dfe-428f-4374-9be7-97123cf36e5a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA5MCBTYWx0ZWRfX/iEhLoIwMemQ
 rtUAHFeKaQPV1YTx/gn/8H3c79Kg19CI668m3pO/R4Yk+du7Zb5pq9bvk69eklm6vg/DuOA3our
 8mKTv45lo3rhQbmGja5aYXWVKna7yiCdn1k3qRcYudAl7nuRryTGl0lsq4JV/Yn8T2e6Udeq63B
 OsRdkFqiV21ITuVLbHDTTAidxqVxoMFF/GL9HHKiCNYwn/noxYG3PCG8Fnp0Jl7nzqhVto7iOGK
 bTR0XWqP/jOLPtycC/AOdajHYRL4GoNrSfh861HmgLZqz7FZAy26sdb9GDcY+NYtRskSCxMeQJV
 9jR5FpPO7n7VLRAMSmeSTePN4VYV1+fG8DxoiKm4gpIpy/xItX8daePNMD25kMvWXJ+1pOjRK75
 WNTRztR+sP6tC8HEyi4RKyVAIlEvuUzX9h6000BkLIdb0S69S9mXIQDvjQcMTyLOLRZgcOeb
X-Proofpoint-GUID: Q77M4DR0e5J93Oy262IiElUIdrSzf9z0
X-Authority-Analysis: v=2.4 cv=OYKYDgTY c=1 sm=1 tr=0 ts=6891f87d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=lxqpRv2xsAHkpo9PiOsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Q77M4DR0e5J93Oy262IiElUIdrSzf9z0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 malwarescore=0 adultscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050090

On 8/5/25 2:24 PM, Fange Zhang wrote:
> 
> 
> On 7/29/2025 7:17 PM, Konrad Dybcio wrote:
>> On 7/18/25 2:56 PM, Fange Zhang wrote:
>>> From: Li Liu <quic_lliu6@quicinc.com>
>>>
>>> Add display MDSS and DSI configuration for QCS615 platform.
>>> QCS615 has a DP port, and DP support will be added in a later patch.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
>>> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +
>>> +            mdss_mdp: display-controller@ae01000 {
>>> +                compatible = "qcom,sm6150-dpu";
>>> +                reg = <0x0 0x0ae01000 0x0 0x8f000>,
>>> +                      <0x0 0x0aeb0000 0x0 0x2008>;
>>> +                reg-names = "mdp", "vbif";
>>> +
>>> +                clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>>> +                     <&gcc GCC_DISP_HF_AXI_CLK>,
>>> +                     <&dispcc DISP_CC_MDSS_MDP_CLK>,
>>> +                     <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
>>> +                clock-names = "iface", "bus", "core", "vsync";
>>
>> 1 per line please, everywhere> +
> Got it will fix it in next patch>> +                assigned-clocks = <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
>>> +                assigned-clock-rates = <19200000>;
>>
>> Is this necessary?
> test pass without this, so will remove them in next patch>

You need to leave a \n before you start typing your reply, otherwise
the email text gets messed up (like above)

Konrad

