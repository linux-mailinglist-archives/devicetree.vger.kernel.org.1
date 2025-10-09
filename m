Return-Path: <devicetree+bounces-224796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B23D3BC80CD
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 936FD1A609DA
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29F12848BB;
	Thu,  9 Oct 2025 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j6qfo6vi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3301F25EFBE
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759998634; cv=none; b=iSmMD+g+FnQjmMUamA+E5dNA25lb4MoqIPEJ2cbnSvg04yb0vIzjSFLTeGEgoeXtiSmX/6CDYe+FxPHdAT+c0rY25/vMTJsY1tRVPTmfPkn69HBz0WoqnqAL7oeiuE0gn1v/MbZXjXxXZ4QendnabHl7imcIDAc18KZs80p4kvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759998634; c=relaxed/simple;
	bh=Yik1lCD+6pysTAtwdHRwwvFfBNMr818rNdMLqahUX4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TWJL+F6LQagI1yy+1pKyBM6wdIiEK+Q++Ukhk7AA+hq1kHDSpprjlLlrkLEsQZ+ZrrN5MY1gz7Ressck0vgLvdQ9cRw9T/YjTrMaZ16aXPwKNFqG03PnV6QD11D/HIBDeWRSQ3hhuUQZDNIfEePvmKX6HV9Fw8N54bDXm9U5XHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j6qfo6vi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EX3Z029906
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 08:30:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7HTgaT4ZswdTpx8zdvGpuveahmBL/mFIrkaXl3UDcPo=; b=j6qfo6viKW2KIP+Z
	91nAc1f1Tbqingi58MPXav6NVX262j0KkFyMcSryctzY8COqSJti8ml80odhdg1f
	BVSHKA8gZUqXR1tnsI3vM77Oz4L/FUhgxQMtByFQVUb4SZRBjpmLYXQp2Y3KGv3c
	FzZLOrb++esxWDmzJ3I7dFNS14DuICil83ouIRVV32DTi3HFl1UpI8aivzN7HHM5
	SzdN8ht+6cLBu1yU7ZByTZ4+6i/CKifgrYJmJZxQpv5NgytFMgb0NNz8b0PW7oov
	XImmKEv22dShRyyI+zmlwV9OPwYL+1kwfjj5D1xgi2CF1OdfwbdET95cglT5d+Xs
	sv9IZw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kt2rp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:30:32 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87bb67409e1so1984326d6.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:30:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759998631; x=1760603431;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7HTgaT4ZswdTpx8zdvGpuveahmBL/mFIrkaXl3UDcPo=;
        b=jqWjFR/hNrtxT6nI6gq9gcQ5vIBjed4TgAFb4g2QDlOo24UPadjGQLiknlhScOClBA
         7ZqW1YhMDtCdnZ+p3pqM64RB+B/h6Og/jdJsOexsVq3yT30FtCJ1RL7G5+DHbfcKJGHW
         UQiE6fy1I0zjMkWIy71olkiFAle3Ub8NFngzdiyKecuaOzlmqHccWDLC7AiPhZhkWjRY
         yrugMZihdD+rgEIsOuaALUAXJUS5s1ryYPa6kAZjOBVNPviaAGZ2oRrcp+sniE87PaTq
         BpLHbxMHL7g3Htsr6gDc69WI/Jlq2zp2DWHXVeKyFfVFxmRMD0Jj5tP0+7xsDKqg7ee2
         mQSw==
X-Forwarded-Encrypted: i=1; AJvYcCVH+PmwvNNdaJNujuNVvb0T1z6KTrqElGgG9H4DorxC7zGiZX+V0RaqFQjaY3KRUNCfeZ8n/VCIPLZE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvkfep8q2TUR7ugyY2cbsSM9Azy4TTmK83k9trI4+zGzacqzUR
	3ot6thnmZuTxzTsFhI4LaV3PmzDrIh97Fbh7F0L+xuProvMtms9ua4uMhQuAWY75WFglbL8twwh
	hQmLiPsFt7y++Lrh8V3yCObEOPtSq5/k+3kiBiZMaM0h6qiZ3ieJIazSee48E6c/W
X-Gm-Gg: ASbGncu7Vtp06gPatgng8Lj9fdvIal5I/w2WxOEHK5WPt2Z+IaN54RFZm1T65/jT6d+
	eEVbZD9IzsXnN000jXr95Mj+3jAiZgb2ltAQYTow1mLt95HDR9KL6j/xe81M9o8AwZXcJXgm2mA
	0RvtGSL35xHTOBXSsTHtpjyBfzz+9Bul20NMK7gozeArR+NkaVkpgGEkyYCEx2YObunXd9jGPYo
	L51dYuc49t8jeXtJXUzbSpOrMZ4RZabQKuisfONjgU4N5Je38jLGqctCMi85D57b5sUDFs9KQWg
	zWJgO0IePpW+8EyB/TfD9a0DfL+1DWBpkJgdvTYxNF3rJOKP0zkQJPDbX3QFd8Vn+bLSgTHMuGB
	X0XPpSJOAG00KD6ixUENNc3hZsJY=
X-Received: by 2002:a05:6214:1044:b0:87b:b675:c079 with SMTP id 6a1803df08f44-87bb675c186mr12246836d6.3.1759998631041;
        Thu, 09 Oct 2025 01:30:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxlPJRCpbLQ6ivOfg2hVAFykebyx7Vvi70Xjr7c1nZL6mafrBDfwdqfN+PARl4iBAAaoCM1w==
X-Received: by 2002:a05:6214:1044:b0:87b:b675:c079 with SMTP id 6a1803df08f44-87bb675c186mr12246586d6.3.1759998630513;
        Thu, 09 Oct 2025 01:30:30 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f3cdbe65sm1852980a12.21.2025.10.09.01.30.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 01:30:30 -0700 (PDT)
Message-ID: <5b46bf0e-f91d-4b65-9365-059c33b54661@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 10:30:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/24] arm64: dts: qcom: glymur: Add display clock
 controller device
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-22-24b601bbecc0@oss.qualcomm.com>
 <3c886104-937f-4d2e-ade0-fd525d56dabc@oss.qualcomm.com>
 <a0a70337-6474-4568-9006-dda66371fe7e@oss.qualcomm.com>
 <8465759d-8d50-48c6-b5e9-26e08045304c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8465759d-8d50-48c6-b5e9-26e08045304c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXyj4md7axS02d
 XyInJPax5H+bHOX56UZa0gGb8f6ckMfd9kTWQS/IQzICrOjVRaMFE5mcOpjW3aLkww+9uhioW9b
 KHPRWloVcou0Kbh5hQqyA1ITUe66qxTY46X2MIN+VM0A0wPWpdXxWqB2i2iynv8PmVfFsOoS+54
 EzNXNaP9WUsBo5IwDrpLROVCkbLZSQ29UVH2MpJZuaZjFnGA7TjDKlKqyRlAqPoKKSExTB1HX00
 4sD0FmIzr9gd1MxvwbMmFZpNjCA/fAquLDWVtcHt4ufbimx3gP4AZun9r2VqI/zz6RV8WzoDWXR
 qjjUNGvEJvH+DvaeKazF86Nt+Z2HiLQmTZu60UGYTMHpodjr0sFCwHXSxCrTRCHmfe8ubJJqISL
 dg5XeSVJe4Ao4DZyp7TpqtmSgTMAhQ==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e772a8 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=TbWexrlifh4ZZoSOPjcA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: e-GxH0O7aMeq4RMDVJAQ1N117Mtpior8
X-Proofpoint-ORIG-GUID: e-GxH0O7aMeq4RMDVJAQ1N117Mtpior8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 7:12 AM, Taniya Das wrote:
> 
> 
> On 9/29/2025 9:24 AM, Taniya Das wrote:
>>
>>
>> On 9/25/2025 4:03 PM, Konrad Dybcio wrote:
>>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>>>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>>>
>>>> Support the display clock controller for GLYMUR SoC.
>>>>
>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>> +		dispcc: clock-controller@af00000 {
>>>> +			compatible = "qcom,glymur-dispcc";
>>>> +			reg = <0 0x0af00000 0 0x20000>;
>>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>>> +				 <&sleep_clk>,
>>>> +				 <0>, /* dp0 */
>>>> +				 <0>,
>>>> +				 <0>, /* dp1 */
>>>> +				 <0>,
>>>> +				 <0>, /* dp2 */
>>>> +				 <0>,
>>>> +				 <0>, /* dp3 */
>>>> +				 <0>,
>>>> +				 <0>, /* dsi0 */
>>>> +				 <0>,
>>>> +				 <0>, /* dsi1 */
>>>> +				 <0>,
>>>> +				 <0>,
>>>> +				 <0>,
>>>> +				 <0>,
>>>> +				 <0>;
>>>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>>>> +			required-opps = <&rpmhpd_opp_turbo>;
>>
>> The SVS level didn't work when Abel tried out. I will check with Abel again.
>>
> 
> Abel offline confirmed LOW SVS level worked for him and I will update
> the level to use "rpmhpd_opp_low_svs".

Thanks!

Konrad

