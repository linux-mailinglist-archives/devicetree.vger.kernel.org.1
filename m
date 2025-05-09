Return-Path: <devicetree+bounces-175793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 39570AB1D7C
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 21:49:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE0551C453F4
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 19:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 083E525E831;
	Fri,  9 May 2025 19:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S+Evd/Ii"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925E625E47F
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 19:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746820173; cv=none; b=d08p4dObtB1+AOTlvZRs58mpXAfmx+m8Fw4LrF1wHEp0TF4uBmKxI8+vLojxLy/iAfd/Z9J2qpxAUlvgDl40/WAZ70J30oljpFGqTEIDSYxFBFklq8L8sOiZOTMuB5T3xjaGVUra/daiyVLr4PDJXUON+qRYsmi8ntWZH9wJkFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746820173; c=relaxed/simple;
	bh=ily75yK8xjS4x174faSzLC0rlvGeHE1RtwEY9NZzTgo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c6VRym8W/EgOXHlZnuHeLZjq78ehNNPEbds/1hsFj6Xs2g52PFmvQcxeBHxJ/SIMGtvmB0UHI1hTMPBtcvYIEmoFSGHmahNoKJkYRiEWjOUv7ZqMTxtqTurykY3vfjYAWA8dDjGmTGQqnnComHx7NzMwBqmknE0RBc5DuR9Ie3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S+Evd/Ii; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549HuOtr012343
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 19:49:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=q6twRJ5MGk2ljnr9shqLaEC/
	wfAfOzln6nkhsqQ2b/w=; b=S+Evd/IifCtsqJ/LX9eE6ot8dXL+KPd1RR9NaKc/
	7Z7/yXASz8+kq8SOyfJbw/oEt6glV1Ut74eIjZysFZ9bAYrhwUAF8179xGt/aKRx
	mUep2gQ8Q1DMGZmNEJ+q6wDOdotVr3XHPY4arBIrBEvKCLZPQJZZ9vGkSyE9KV9I
	ZmZGuB5IjNxADd4lRp40rPi94IApFqNw5UPZZ5i3Kk7sBBO4oPoBZ+epB+0i9J3H
	j1WJxXhidV8qjtzZKDZOwwWgEawm+PtzOP4glz87lcqyXBOBMYG1Ld76BxHzcs2e
	xjxFu/2mi1v6ELigc4dF6hjsTBmtV0uJ/EdPksAsqEgtPQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gt52vvtn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 19:49:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7caee988153so444799785a.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 12:49:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746820164; x=1747424964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q6twRJ5MGk2ljnr9shqLaEC/wfAfOzln6nkhsqQ2b/w=;
        b=lOlaWkvi3wyUYdW0xI+wrUUFMstmt+wc8/IAjUlEIfoSH898oe4+4mxtcebpG2mQYa
         KKhiIJSSyKNWpp8hEwtHlBYEXsJGesBQJkZyE1onpCWzFUUBYn9n0vmq5Dzycw61jGzk
         PqhJIPm/FESC9BrWPe3RB/aZzi/V3lbBheZvZ8qhCqsJAe0Xwb69eCZCUB4ffJ3WyKCs
         NNV8mE0cbxLLwJ9qFiteEO+rkcO15g/JMGr4GCczZtCZZTSgGqnP7jbfEzY6g7pHCnDA
         3E8GXoqc0whe3TmrViYc+Gpdh4bXzhOfAFbjQLJuz4AgWkKudakXaT3pRq4smwtM2it0
         ue2w==
X-Forwarded-Encrypted: i=1; AJvYcCW1y6wJEVWSZGytcNJnLuBLGBqdm/ncA8TZN7JSrVJUScNYTg7cHQBNV41riF+yQfoQExB/Vw3b5joc@vger.kernel.org
X-Gm-Message-State: AOJu0YzieHoUgq8uQEerNol8sM2KPgakyginOka0ll3Ksct5t4hGifkm
	u0jOKcVwbUcVz7VszByhZGfGTBzmlGKO1Vcdn56Do96KtzfWWlAoegaO/fJo8Eimgr/OSNJ3Z6e
	7ofEziyBMpr05tWdo3UNkw+5OQkd0bPJK3/ISfy+wJOPLgK7QPqHlZSk6bbPD
X-Gm-Gg: ASbGncuGFslj2whZW9HVAl1uDTtX2Hr/ewXHIghth4N+mjOw+oIKxaRYK41jAWiTO4/
	zLO2dQnOZiB8lTeYFNT1HR5uQJsSpX+ug8m1bI9Sr9Wi8gI5R7hCiWvQF0hhnqutLgHEJKojAW3
	iJdVo8rPjfJbXgwjihjw4nGqYDkACW9ENWHanLSmmwcLez/jLK+Tk0SfUhqGLXqEEDNjag4x5Lj
	wnpYFAf2Qy13zIM/PM/j/7NfTQencyG0DRHoS2QShMPh0/BRVscPD4Yil6RWCTbh+qdPgRWBZgm
	e0oq4oC6EoCnGpx8kBqhaG15wTmrJFAK21WRbeyZEd7RuJdFJ8zemRlINILBBBhKZkEki316s8I
	=
X-Received: by 2002:a05:620a:440c:b0:7c7:694e:1ba0 with SMTP id af79cd13be357-7cd01157d9bmr777998985a.44.1746820163795;
        Fri, 09 May 2025 12:49:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4SbNZ9mAxpct98JyjHGJQGPpYXjkLoNs4MOsUEaF/4x4x9oUNXOaY2cOSWncyzhmRx3b0Mg==
X-Received: by 2002:a05:620a:440c:b0:7c7:694e:1ba0 with SMTP id af79cd13be357-7cd01157d9bmr777996085a.44.1746820163421;
        Fri, 09 May 2025 12:49:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-326c339a241sm3385071fa.18.2025.05.09.12.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 12:49:22 -0700 (PDT)
Date: Fri, 9 May 2025 22:49:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Alexey Klimov <alexey.klimov@linaro.org>, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        quic_ekangupt@quicinc.com, krzysztof.kozlowski@linaro.org,
        "Bharath Kumar (QUIC)" <quic_bkumar@quicinc.com>,
        "Chenna Kesava Raju (QUIC)" <quic_chennak@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
Message-ID: <pzlsbznxpfsbdsxlzvcbdy7wwba4z5hoya7fyoacwjadtpl7y4@qajecdvs3bho>
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
 <10f69da3-6f94-4249-a8f3-459dc48fa5e1@oss.qualcomm.com>
 <D9R4NCKH46WP.14C8F7W4M58ZQ@linaro.org>
 <3c0fea8d-0715-40e6-bed9-e0961bf034e0@oss.qualcomm.com>
 <bb68da04-ef52-4172-8b6e-f4027bcc2786@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb68da04-ef52-4172-8b6e-f4027bcc2786@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDE5OCBTYWx0ZWRfX4KxDoNAvDdiw
 T7qLMkGNc5b+6MOZHKSGD5buTECXXMbXrvhB0VKubEgQtHKOjTqT7hMl95uue50kYE87BnDIiO/
 xuvb0KwMKQ90t9BLoc3svqNr31Joj9kQFCWoKacmFIYOLYbuaI34WYR4uyVdRd5+HC9EvfIl6y4
 aiTEy0mHVWYiKHgolllhYyy5ORvu5xAiNTtSQibicPQT4vMXSv28XuCbCxOJy2U4PkhP14ZIw+2
 oTrqj4un7ILnHUbJjFGn2dfZ8Cu2++xJ/YXetRunre6clzno/tvCKcZ/KkslgS0kSgzKYoQJypS
 //2dW09tAYZBigpBCJAbSdBdU+7pOkSiGkkmIIggpe2F3T4i68kfxh/vsbsJ3MfuYV7wnqq1Idv
 ZQojOlYaIL0wIYprkh/bRWqhkDUpOLs3mfHHiF+Ni2XFJ43uOO8unJR9hUs7vNDUf4cxi06h
X-Authority-Analysis: v=2.4 cv=LKFmQIW9 c=1 sm=1 tr=0 ts=681e5c45 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=yetcnpw8gU3TWa0XJlAA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: xInHh5-dUtW_4Gnjo3cvFGFXrVr9T4zo
X-Proofpoint-GUID: xInHh5-dUtW_4Gnjo3cvFGFXrVr9T4zo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_08,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 lowpriorityscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 spamscore=0 phishscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090198

On Fri, May 09, 2025 at 09:12:30AM +0530, Ekansh Gupta wrote:
> 
> 
> On 5/9/2025 4:27 AM, Konrad Dybcio wrote:
> > On 5/9/25 12:20 AM, Alexey Klimov wrote:
> >> On Fri May 2, 2025 at 10:38 AM BST, Konrad Dybcio wrote:
> >>> On 5/2/25 3:15 AM, Alexey Klimov wrote:
> >>>> While at this, also add required memory region for fastrpc.
> >>>>
> >>>> Tested on sm8750-mtp device with adsprpdcd.
> >>>>
> >>>> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
> >>>> Cc: Srinivas Kandagatla <srini@kernel.org>
> >>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> >>>> ---
> >>>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
> >>>>  1 file changed, 70 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> >>>> index 149d2ed17641..48ee66125a89 100644
> >>>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> >>>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> >>>> @@ -7,6 +7,7 @@
> >>>>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
> >>>>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
> >>>>  #include <dt-bindings/dma/qcom-gpi.h>
> >>>> +#include <dt-bindings/firmware/qcom,scm.h>
> >>>>  #include <dt-bindings/interconnect/qcom,icc.h>
> >>>>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
> >>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> >>>> @@ -523,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
> >>>>  			reg = <0x0 0xff800000 0x0 0x800000>;
> >>>>  			no-map;
> >>>>  		};
> >>>> +
> >>>> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
> >>>> +			compatible = "shared-dma-pool";
> >>>> +			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;
> >>>> +			alignment = <0x0 0x400000>;
> >>>> +			size = <0x0 0xc00000>;
> >>>> +			reusable;
> >>>> +		};
> >>>>  	};
> >>>>  
> >>>>  	smp2p-adsp {
> >>>> @@ -2237,6 +2246,67 @@ q6prmcc: clock-controller {
> >>>>  						};
> >>>>  					};
> >>>>  				};
> >>>> +
> >>>> +				fastrpc {
> >>>> +					compatible = "qcom,fastrpc";
> >>>> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> >>>> +					label = "adsp";
> >>>> +					memory-region = <&adsp_rpc_remote_heap_mem>;
> >>> IIUC the driver only considers this on the sensor DSP
> >> Memory region is required for audio protection domain + adsprpdcd as far as I know.
> > next-20250508
> >
> > rmem_node = of_parse_phandle(rdev->of_node, "memory-region", 0);
> > if (domain_id == SDSP_DOMAIN_ID && rmem_node) {
> > 	// ...
> > }
> >
> > maybe some driver changes are still pending?
> 
> Would like to add some more details here:
> 
> Memory region is required for audio PD for dynamic loading and remote heap memory
> requirements. Some initial memory(~2MB) is allocated initially when audio daemon
> is getting attached[1] and this memory is added to audio PD memory pool.

How is being handled for the audio PD case? Could you please point it
out in? Currently, as Konrad pointed out, it is only being used for
Sensors domain (unless I miss some obvious usage handled by the core).

> 
> Additionally, if there is some additional memory requirement from audio PD, the
> PD can request for more memory using remote heap request[2]
> 
> The support for SDSP was added sometime back[3] to support SDSP usecases on some old
> platform as there were no dedicated context banks for SDSP there. On recent platforms,
> context banks are available wherever SDSP is supported. 
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1273
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1884
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/misc/fastrpc.c?id=c3c0363bc72d4d0907a6d446d7424b3f022ce82a
> 
> //Ekansh
> 
> >
> > Konrad
> >
> 

-- 
With best wishes
Dmitry

