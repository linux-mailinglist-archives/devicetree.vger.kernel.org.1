Return-Path: <devicetree+bounces-224740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AD2BC7678
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 07:12:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3E0D64E684B
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 05:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB1225DB1C;
	Thu,  9 Oct 2025 05:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9xw5nlr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D3F214A64
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 05:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759986744; cv=none; b=DVW1a9QvgSFEZBRY0p+P4nvXuQGdyd6BA8MpAIrGSNESqzB/Sne2ubttfaOyttUdmP2EMTFEcD+CfTkzP4t666Ova8tTMu0zotTUZwNGPKAstEOwykU+ITwVfpZ6ECrUI6DU2duOcSZwO+vMO7PQYv+Oo3ZfWubYWinZnzZbXWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759986744; c=relaxed/simple;
	bh=k41Lfe5Dcn96f8gUJJ8sMLMPw6rwlMYlfzmlMxfn/64=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Arz0mvDn3s/icn1iqMQCCSMsNdI6Syzjm0T6cHCh9fKC1Im8/55vile+oY5Dt9x1tE+0thxkB1+zdZlfTvtCv8JiPS0SmG9Mfz/sHhdui5PI2sm8mWH11rmFlNuxYjb+swD24VtmnGW6nlArVuPZPLB2PmQ5a/MVIQWnBnLp7J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j9xw5nlr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5drO003321
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 05:12:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SpRCq5hxTIkMivPd9aj2d6SWJ/aa5OSoLIzqlFyOuX0=; b=j9xw5nlrS7w7Peha
	Yjcm2jg037QSz9Cdz0NkxcMdurxV8l15WkI2DLoINmJGBMqrJjuq1YeoZ8O1P8QC
	0YRkAQpo952xXGUVxcObNzFZOjcAnegJGWKaKD5NhGD+nR2wOiEXPvgSFxURvsn/
	dvnxrqAa6CnaOpzDy3lXVbEvxxRTDxVTnfUqCqYbVRr3o5F+/lpmQgpBd6yS93N4
	gOm/EDRRgXYZ4H6K15GO/1xbdjxQkyQfQDt1yxM7xHaDxq7anvIjs6LC/ZKXG7t9
	w3AEiDEeNa7emQrQTo32KO4DL9cN/iQVSX87scf/cALw1E+SImvvRAijYLHml9Oj
	Za5rmw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4m1j09-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:12:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-269af520712so10168135ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 22:12:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759986740; x=1760591540;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SpRCq5hxTIkMivPd9aj2d6SWJ/aa5OSoLIzqlFyOuX0=;
        b=llu0ceaTPeZsZVf8+MHVxogfGdxSa0136uLpjWsMaXN9EZuOSHrwJrA4EfYKULHtc4
         BsFkmGmuKVbxCp2/79WLyfUgf8yUxpR0Ah8iYVTMKYQ2duo/ayGTbR/El/fQm2WN93OK
         efFq9ENjd8vpYAiMuTch/E6mHJH0YSJUsVbtHbFVsNx+n0kgFdFmGSV4S4YpoJYyzSrt
         CqkJDF8TwqdUuha2MoselkhIDviMeKAamRmN5hjkwKExTRl0IHQWC16L/4z58MzYDmUK
         eRFsDEjOzAPM4KmkCYyE3+IKNMV5CY/+pEbdhDr3BhyTwBBWEprYWs2oWvFJOxbqtPIj
         Goxg==
X-Forwarded-Encrypted: i=1; AJvYcCWgll5Vqh6cMKa3ooLafKUdLkc8ndncxw7/VmTnnupB6gNsI1o1/CGh6w/fHiXtWnCSSHxnULEs+V8m@vger.kernel.org
X-Gm-Message-State: AOJu0YwplNlDpBZBWueZI06f2HWCeyN7fYakeqyb2T3wJB0q+g1kB3eA
	4IVN6FnbO41Kvd/I13ZXEJ+ouqyMj2Ti0PTxkS/fL0mBAfvQtEHLecXhbx2YuBKx8IEWvQbTO75
	kLbTmAANqP7yrGMXTvqeDw+YT7wv/0FpdMDo8s+YXHkfr/mNiXvLt8drEmoPHd+3b
X-Gm-Gg: ASbGnctuclKbPxaD0sJu8RpyAGVk51k0LDuw9ke2Lap+QU5V+XHIJqzYvbRDKA8ztyN
	7DpUViTmvSaT1x4HKvsx7cDzgh60beW+1m2HsqyuOKOIP58sic9zDJdOBoS4lhMOG4IdRzVs+fH
	+ziF2D8JhmM+wMvOW90gMADxfmpvaTqLOhGWeEVB4Q7zFub3pslXAAWMZdFZuqOQ3Etl+FG33SM
	j92G2s03poSxdkECo+hrNWopY9IeYc7kASuTTnIOsfraZnqetDZllBBT62GQYp9/KopF8kFDp4E
	X+jHuriqFsz1GS+qlg/sJuymuFOumX4fvBkX7efBzTubGz7yKJ9dKiLQGLZBpl55IoZdJLOU4g=
	=
X-Received: by 2002:a17:902:e952:b0:262:4878:9dff with SMTP id d9443c01a7336-290273567a8mr83058935ad.12.1759986739926;
        Wed, 08 Oct 2025 22:12:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHoy6wYSRGBBV1JSmS3QPASPTJ1tUJOiLp062epi1A7qQiWfVzluYaEiSDgNYaPZafLI0kcg==
X-Received: by 2002:a17:902:e952:b0:262:4878:9dff with SMTP id d9443c01a7336-290273567a8mr83058595ad.12.1759986739410;
        Wed, 08 Oct 2025 22:12:19 -0700 (PDT)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de6c7bsm14950135ad.3.2025.10.08.22.12.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 22:12:19 -0700 (PDT)
Message-ID: <8465759d-8d50-48c6-b5e9-26e08045304c@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 10:42:14 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/24] arm64: dts: qcom: glymur: Add display clock
 controller device
From: Taniya Das <taniya.das@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
Content-Language: en-US
In-Reply-To: <a0a70337-6474-4568-9006-dda66371fe7e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX/gWFiofycXoW
 n3FY6oXnqPSV6DsQ+l7bScmnheHL9R9e6P3Eme0y+B2lzuUOeQz/ubh/GaE3U2vVKtROsCqoIOf
 daL10wZfaoZalSboz4eZ+VmEonPL2A4fXSZtOvuHsLQ/Py8Xs+B6w5/N9e/1BSVBZIifPcY51ku
 KrknD/lVLXCn5OuuH8TnDURfyU1lcTA0OVSON67jK7VNifckVlpkEZCozlja4Nb8vrKyBiTIKi3
 Z2H1ZX91Gt+9Vgk0+fnskyxdosM5f16fnmgdD3BjEg+ncTcYVies5QUgKh5yJYN3HJO/1N9e+zL
 5mQj6hI6UAHNAKmaR0N7LecFv8o7rTOkDVi0pUgjFJSE3AwreQKhrrcEHCAaorYqewnMWl90reB
 njss8EW1EtxW2i2tXb5IOMpcXRn5vA==
X-Authority-Analysis: v=2.4 cv=B6G0EetM c=1 sm=1 tr=0 ts=68e74435 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=Rl_jRUjo-d1ZQ1p_6G4A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: ViCU6kNYc84ro8zM8A2PP6RgKWWb3d38
X-Proofpoint-ORIG-GUID: ViCU6kNYc84ro8zM8A2PP6RgKWWb3d38
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121



On 9/29/2025 9:24 AM, Taniya Das wrote:
> 
> 
> On 9/25/2025 4:03 PM, Konrad Dybcio wrote:
>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>>
>>> Support the display clock controller for GLYMUR SoC.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +		dispcc: clock-controller@af00000 {
>>> +			compatible = "qcom,glymur-dispcc";
>>> +			reg = <0 0x0af00000 0 0x20000>;
>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>> +				 <&sleep_clk>,
>>> +				 <0>, /* dp0 */
>>> +				 <0>,
>>> +				 <0>, /* dp1 */
>>> +				 <0>,
>>> +				 <0>, /* dp2 */
>>> +				 <0>,
>>> +				 <0>, /* dp3 */
>>> +				 <0>,
>>> +				 <0>, /* dsi0 */
>>> +				 <0>,
>>> +				 <0>, /* dsi1 */
>>> +				 <0>,
>>> +				 <0>,
>>> +				 <0>,
>>> +				 <0>,
>>> +				 <0>;
>>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>>> +			required-opps = <&rpmhpd_opp_turbo>;
> 
> The SVS level didn't work when Abel tried out. I will check with Abel again.
> 

Abel offline confirmed LOW SVS level worked for him and I will update
the level to use "rpmhpd_opp_low_svs".

>>
>> Really odd!
>>
>> Konrad
> 

-- 
Thanks,
Taniya Das


