Return-Path: <devicetree+bounces-173718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C70AA955C
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 16:19:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B11F9189BE30
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DBE925C6FC;
	Mon,  5 May 2025 14:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b4PAbizK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9BC2376F8
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 14:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746454738; cv=none; b=MUcv/bL20yz7VxSD4P50isFdiHVL5OMbmpoqiwv0zySDgpshdsEGpzfFbxWg4WmcBKAH7J9DyIPQ0gPtadBFS95JzKoFqbXW9cieo9GoYBXjSInnc44n8fV75xAEnIYDVXoYWniYdccuzB8k04K0WQURyGtAsOCk+hgLTPAWcP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746454738; c=relaxed/simple;
	bh=3Vf+AaQhANAKR4iErxV8pfkN6oisAXDi42nAcHc040E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RhkSnVydVa/E/jgXNT3yKX0uN3mhEKJ5Y1gTdkYaW1WKSSFjKBWaUpimA0un2G5ZgT+6Aay+qIlTLqsOkpM41V5K3P8HRorgqtPNnqaBC1dNdqg2uZtrDY44bT9BX3brjt5W6C/xKbAUE4nQ2iup3DnPWH8VzwI431mWV/r9IOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b4PAbizK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545CLBUx030086
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 14:18:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4OMp8lVlfqOS6nQjtVYiy+vsTT7GaERnrIvMt0I4OI8=; b=b4PAbizKQdgKo4Sz
	hAnB7gq3XzspJ7yxkI0rAfW/7gt8MI6H80NV0PqEJqNV3uxySOCpIdYv4a0kcI2M
	g1H+XyC3/zZ8nd+XzuT6p7yv5WQH3G5GZtwy8+MHRWRMP7nTsg1OhRLVB8Ao2Q2x
	LkOtxTrcjQC+ePkmFGRmr3CN7it78qUDiXOhLLNJydEezJTaB/wbSUgoAEn3EOEG
	rKFYA+c7uVYVYrRyokY177Tx7LL2A80L42El0vWjD1xeGlYr1oHgT2qD08MrheoD
	BeqGEQ6MFyy3CrqaZ4pB2puT0olee4bxczYriQ4HokKGlV5XmOK/jOHNeDjjVuKv
	NniVyQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbwfm5y9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 14:18:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c760637fe5so200681985a.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 07:18:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746454734; x=1747059534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4OMp8lVlfqOS6nQjtVYiy+vsTT7GaERnrIvMt0I4OI8=;
        b=eVTcfH0lyb7AWDQxjywtcCqAq5Bne109jG4Axp3WLDHsDo3dPmDq3F9phh6+hsYEI8
         37aMh6MhGLWElwEC3vOQsg0QcLXBUdlwphQUocTjkAjyVuSkUAS58l6dKwO2dXuXIbiP
         TKiOLeamRZN5MB7413PKBtLLwuyBh0azCpTdxTgMEM8WqfGDzDRnuHtHciMdf0fKb7Sr
         mnJ4xH7lwV+NzpM2xaFPffEClnGznEXKHOK4p0A1cly4y0UhtNUwy0/CtzH7xwopwu3R
         DuPJWhPfVUez1atJ5eAOjXQg2D8uAnQwP0hs+V7jGbMdB6MX5wd0h3VpmbUX/vJ7lLVf
         xvsw==
X-Forwarded-Encrypted: i=1; AJvYcCU4ZVTudwSsiqtczRVCJc+QO/kJcV8BeEcDyZ+l70CndG2thjfhvFseM+0qzXsw8IqMtaC3tKYW0Dbj@vger.kernel.org
X-Gm-Message-State: AOJu0YwHs4anZ+r5WBIsrpgQatU7j2bZv1aeZc5knnq2uaGDEQRJdZb1
	GP1S2RiPHnf66kb3AAjoBkMQq7lgZ+1WWKYqkmRWz6kagtndRRejffDLEpHfxZDqNzFvixihuSL
	eojstiJIDDDL/h3nwkioCfEwgVCWgZnHOiONYzPBc7kbkXN8P67PdEmezwBiQ
X-Gm-Gg: ASbGncsbSqajA3VHoICt5zhWSeD09GV/AlkXkAOChnsuZN3YHnsdGta75oJRtg2oNQk
	GoTbfF4Jjay0pIGWp3pH+DY6Fw93GMNOmlYElrSOcZwqDfveAKQOwmssMMfBXWNL0U9uZ534gnx
	bsIkgp4qDPcGh0Cb8XmYQUwoAogaNG9jzMAd30CznIxy5BHVJyYgrjPICZCou5Vl4SSubtRGLWr
	8Y2waNol93gM+ata10/AFfLyWtru4y3KwPU7u6yndNTAtOobhp3G68POcaIRtHmbJzipBn531C3
	OmXyBAcwkUOmD9i1weyidPEABP63RZjCLzB56ttMM3fo8lb4F2ahvLrL81PHkvB7sYAr+EtxGuM
	PMz78ba5oPjCYgTvcyvv65PdqKBS2rvIn/YubNSq8kgGtLZFpbCk4c68gc9duW3aNh8IS
X-Received: by 2002:a05:620a:1a0e:b0:7c5:e283:7d0a with SMTP id af79cd13be357-7cadfe15ab6mr1528031485a.30.1746454733849;
        Mon, 05 May 2025 07:18:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxLIuDmlMk0BDjjG/jcKroZx3ooAtnxfCFD86oCFhHuF1R3mpWcw+w7OoB3Ift4T6LrXoRzw==
X-Received: by 2002:a05:620a:1a0e:b0:7c5:e283:7d0a with SMTP id af79cd13be357-7cadfe15ab6mr1528024685a.30.1746454733441;
        Mon, 05 May 2025 07:18:53 -0700 (PDT)
Received: from ?IPV6:2001:14bb:671:42db:147e:6740:cd7c:7688? (2001-14bb-671-42db-147e-6740-cd7c-7688.rev.dnainternet.fi. [2001:14bb:671:42db:147e:6740:cd7c:7688])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f2043sm1707308e87.179.2025.05.05.07.18.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 07:18:52 -0700 (PDT)
Message-ID: <4a186d4f-9966-4569-bee2-77e237cf0c54@oss.qualcomm.com>
Date: Mon, 5 May 2025 17:18:49 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/11] Various dt-bindings fixes
To: Rob Herring <robh@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Robert Foss <rfoss@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Rohit Agarwal <quic_rohiagar@quicinc.com>,
        Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-usb@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <174637445759.1385605.15383087742490646226.b4-ty@oss.qualcomm.com>
 <CAL_JsqKr8Xd8uxFzE0YJTyD+V6N++VV8SX-GB5Xt0_BKkeoGUQ@mail.gmail.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <CAL_JsqKr8Xd8uxFzE0YJTyD+V6N++VV8SX-GB5Xt0_BKkeoGUQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: gz4gbXo5AiLd59UOKgDkEyoK10mQfIAt
X-Proofpoint-GUID: gz4gbXo5AiLd59UOKgDkEyoK10mQfIAt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEzOCBTYWx0ZWRfX1TzxVwP/Xjdz
 moTnvuRDvr2vmTH0naEmxZKODqelY+dOGN3CwVTJGtx3KnNKJD7U5Mgegj753QZtg6VDBEoQdN9
 xM88AFrfG18mBRsYW6UxiXVMyxSmLjE3p7RMa3phwnmpi+LqeHdbFaAGzubEoEcBNiUnp8D7o4a
 ImaRUn0bacRrzonevdn1m0t6inoqT2v0daa++0R6mydlp24x9SUhr9wBg3O+q72JR/XF6n1fZyE
 HXhpvf2FhNIpOnCVwtyfBXgLqFUBYN4SJyeBVc2mH1pWKSU6JREdKTnOdAu/uzTjfzDxgE6IH3Q
 OzM3UH+q5YT7pe6obO1uEoDtUM+pJ0sBh9XT1rm/qh/+R5bEYmYEGikdGbbQYM6eMHEnb9Ud1BO
 9NXwdl08t0TE5cZ8lBxm1wkl7MwDJwhBUP7eBmKbKH8NG8HeO54vFXKvQdTCkCdFfTMkZfBn
X-Authority-Analysis: v=2.4 cv=AfqxH2XG c=1 sm=1 tr=0 ts=6818c8cf cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=Y8Lu5Vov3j2QtJBI0v0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Vxmtnl_E_bksehYqCbjh:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=999
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050138

On 05/05/2025 14:56, Rob Herring wrote:
> On Sun, May 4, 2025 at 11:13 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>
>>
>> On Thu, 06 Mar 2025 19:11:12 +0100, Konrad Dybcio wrote:
>>> A set of not quite related bindings warnings fixes.
>>>
>>>
>>
>> Applied, thanks!
>>
>> [02/11] dt-bindings: display: msm: sm8350-mdss: Describe the CPU-CFG icc path
>>          https://gitlab.freedesktop.org/lumag/msm/-/commit/60b8d3a2365a
> 
> And now there's a warning in linux-next:
> 
> /builds/robherring/linux-dt/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.example.dtb:
> display-subsystem@ae00000 (qcom,sm8350-mdss): interconnect-names:
> ['mdp0-mem', 'mdp1-mem'] is too short
>          from schema $id:
> http://devicetree.org/schemas/display/msm/qcom,sm8350-mdss.yaml#
> /builds/robherring/linux-dt/Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.example.dtb:
> display-subsystem@ae00000 (qcom,sm8350-mdss): interconnects:
> [[4294967295, 7, 0, 4294967295, 1, 0], [4294967295, 8, 0, 4294967295,
> 1, 0]] is too short
>          from schema $id:
> http://devicetree.org/schemas/display/msm/qcom,sm8350-mdss.yaml#

I've sent a patch fixing the issue, 
https://lore.kernel.org/linux-arm-msm/20250505-sm8350-fix-example-v1-1-36d5d9ccba66@oss.qualcomm.com/

-- 
With best wishes
Dmitry

