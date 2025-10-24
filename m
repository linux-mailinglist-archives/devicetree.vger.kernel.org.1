Return-Path: <devicetree+bounces-230654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E722C04C6E
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:41:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7BCDD4E0F4B
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 07:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B74E22E8B86;
	Fri, 24 Oct 2025 07:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OQDEc/i7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423352E7F1E
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761291650; cv=none; b=tHa0yzCHBKtCMEiAWrYR+2/picq05JrBuiqtW/TW1N7XYYAdu48dKb1XYNffPjd0i7M3mwZaIzg492flRY4t6zPhM3qQbQGWC2muTotyZpiKOuMr7HPb938I5VzV+E1eMS4ueR38CRLYu7SufQy3GzxoUTfbu8c5Z1nRM04sBMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761291650; c=relaxed/simple;
	bh=ODNMMA/CeetLO44Jfr4kg2t4fIza/eWGK/T+iCha1NQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qF8x7KE9kT5suMDaqnwHONsTa+mRWq7KC6AvMAvdGRMgeYFEp0wfTbHnK/nff5su38eBwVLsmbfkKKdoxx8A3EqcpFKDhAQRhSgvql7IsTvzNNVJaPm9UhspLuLyip1fTWel5CEfk26H64V3oDS76Xgu1Tb0aHPeUx2T0+6Jt54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OQDEc/i7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FKB5017639
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:40:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vPzIitDiH9otQXvVOFZwedMLZY4zXReFnc2YeCNbvik=; b=OQDEc/i7LR3QGwD+
	WXKCp8pGkLRwp/pN8ZnTAjtJxNw2KX2FMeLkaW8yH4nMTD7Z7i383DaLJIWI1ov5
	g8bO4ojQHm3WQc5ts7ZioegpPkUaesYEMrlmlc3ni+Zu2HsidjiH5BqjoxdoXkjT
	had6/f+oMvaOKOE94eHzGHEJEx6ss8Xg/VXWXLa931Pm4uqlp6jj+K7ywoNvFCMf
	E6jlY5bM5+gBpVEqhsklzpBfb8NN1bVKdV+PX8Abus+HLQ7798ZsEQ8o4nuPLf7y
	+a9Nl3Z3OrWnDtETKIf8mTVIcVt1+tCw5ejZUSp0bI8JP+WVm3Anh8W3nbgC1JkK
	zsMwdA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49yp6k2f6h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:40:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87bd2dececeso5973516d6.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 00:40:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761291647; x=1761896447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vPzIitDiH9otQXvVOFZwedMLZY4zXReFnc2YeCNbvik=;
        b=UHpjbI5hJGHs3ZhmrHeE510EJNReCSWs2GTUiXkcap74/WkQTF48xNWdOfHhF9xTcd
         vVmFHn2iKJOl2h1wPzLphKJWU01nQi9CZADNrEeiNspFmqs9+UDwdXlICgNVQFWoBLUL
         UHoASzK2syLkRqbLa6c9iDDFw5QIUSJ9WiwfkhC0fd9unSOqQ1hRHh9RCXaPgWpHoHQv
         P0tOrp5aXm9j0oZMrxQPRPS0Tnf6u6sENOzwvo3ayP6qyZASUnyDJ9vHtaHLQcYiulpY
         n4WxjHOk32Xbj1PpG/YxmhYL3pklYCujx9yN2xIGCXYHDyKVaIQ/D3cQwWetpsRPsbh/
         LVfg==
X-Forwarded-Encrypted: i=1; AJvYcCVS0dxfc/LMtDZh6febEGHTc8uYIUgBCmIM2FvYKZ9Oln0Jhqtqu9fkNNkP1gW7gE+rRlG3W87HdOhT@vger.kernel.org
X-Gm-Message-State: AOJu0YyRnIw3/Pp878DSyfUxaxnsxKThfelcQ36L32od04yUy/bZrSJb
	z6gkLCZdgs+DUb2Id3eX/e3OcOx+5SXQIMm0Tn/+9NrcTHJlm5h74fb1YmQbR97T6DQ5PnnhG0d
	EEPJh91OdvTB2BWHip44fD0qvI+E8JAsP4uLy5VMurUOqQnX49JrKOBbwJCl6hiPB
X-Gm-Gg: ASbGncsBFDbdwcO09y7iMGs4FvqfM88nlWc22mGrGWlxr951JOWF8mWLo7dOaq83YFK
	O1gLMbjdIOc81dY/9Ia2k+TuvfvvPud5OfkkAyrSRscLydAAWirvj13OgS2hTVKWTapyf9mFYh4
	OA/uA7/6kTacOSxdjIe+/X1mX3NFtTiCl2NS5YSnwAvgBO5IYDUkKX8dHXmWTuvJuDUEkic1cft
	1D07wDNUYYCCGYRYEiQttj9xuybrVmPENDL09+3AIjhJWbXthpt+Y/4bIGwHtpcvW1ZcNwxtsP6
	aWo5MZ7q6p9OtlI/N9azjK1EYPMVDPgI2zBfCwPCbyWFG0GrtmUs244sOjMqmbDEQxI56RDZq9D
	VOorLm7zp7vX6BEJC6+cVEgv/VjDOML2ShPSOBPanBXtmCq6SZXJBHPkb
X-Received: by 2002:a05:622a:450:b0:4db:1bd:c21c with SMTP id d75a77b69052e-4ea117b0e6dmr115459811cf.12.1761291647195;
        Fri, 24 Oct 2025 00:40:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGDhrS58k/AxKuFVBR7BBI8Y+VWeS0MiqdM4N/c4mARISKSYsDHdoSUEHIWyNAZ4CQaEeDpw==
X-Received: by 2002:a05:622a:450:b0:4db:1bd:c21c with SMTP id d75a77b69052e-4ea117b0e6dmr115459641cf.12.1761291646690;
        Fri, 24 Oct 2025 00:40:46 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5144d565sm459794566b.58.2025.10.24.00.40.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 00:40:46 -0700 (PDT)
Message-ID: <853e7cb9-2a7d-445d-aacc-49e3a2f07a66@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 09:40:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcs615: Add gpu and rgmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
 <20251017-qcs615-spin-2-v1-5-0baa44f80905@oss.qualcomm.com>
 <fdec4bf0-6d88-4a9b-a81a-061476dd9e1b@oss.qualcomm.com>
 <25ad160b-b618-4ade-a978-e4ae56c79e32@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <25ad160b-b618-4ade-a978-e4ae56c79e32@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIzMDEzMSBTYWx0ZWRfX4tjTA4DXPx34
 yZB/kcBfcFLk+Y461wKU+qmebIQh8Kpxx7DLg2sLAJFCzZPAWQ4cZLIcvRJDFdcqM+8RCXYV3QE
 UmBozWapNNEewfR9rb8UNYTFdRLEaDqgC+VfoCT+zH3Kcw9bN+IAMJ3sW7ExudarXREIJvdz8Aw
 YSDmPJ+aMJnc4WvMZrkboY+R/Bampo0bAwzOK05HxvKhRY/fP8PBIuhFcd3/C0oKEYor5sbDsHB
 E+Yg2pX+aL0kt4fJgK2ptE9oibW2K13PZO+f1Y3e7iP/I62OAO7poEUVjdUV1LC6qB3xvo8yJob
 1grk5rvbmSB0idSSbEVCoZG2sr/ouD/yGiUyOW+ekCWDQC2ouPeyxUYYN10vtrmEghtyOrw3Tac
 PexdduPNq09cllbL9Kl83zhdgxfUmw==
X-Proofpoint-GUID: 5pyvVMsAhqFZYV93zbHi55l8iQkvqQ6g
X-Authority-Analysis: v=2.4 cv=bL8b4f+Z c=1 sm=1 tr=0 ts=68fb2d80 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=GWL_uKs5TFOXZ07RABcA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5pyvVMsAhqFZYV93zbHi55l8iQkvqQ6g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510230131

On 10/24/25 12:17 AM, Akhil P Oommen wrote:
> On 10/22/2025 8:57 PM, Konrad Dybcio wrote:
>> On 10/17/25 7:08 PM, Akhil P Oommen wrote:
>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>
>>> Add gpu and rgmu nodes for qcs615 chipset.
>>>
>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>> ---

[...]

>>> +		rgmu: rgmu@506a000 {
>>> +			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
>>> +			reg = <0x0 0x0506a000 0x0 0x34000>;
>>> +			reg-names = "gmu";
>>> +
>>> +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
>>> +				 <&gpucc GPU_CC_CXO_CLK>,
>>> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
>>> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
>>> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
>>> +			clock-names = "gmu",
>>> +				      "cxo",
>>> +				      "axi",
>>> +				      "memnoc",
>>> +				      "smmu_vote";
>>> +
>>> +			power-domains = <&gpucc CX_GDSC>,
>>> +					<&gpucc GX_GDSC>,
>>> +					<&rpmhpd RPMHPD_CX>;
>>> +			power-domain-names = "cx", "gx", "vdd_cx";
>>
>> I think the gpucc node should reference _CX directly instead,
>> then genpd/opp should trickle the requirements up the chain
> 
> Do you mean the CX rail scaling here should be handled by gpucc clk driver?

Yes, you can simply add .use_rpm = true to qcom_cc_desc in there and
add power-domains = <&rpmhpd RPMHPD_CX> to the node

Konrad

