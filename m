Return-Path: <devicetree+bounces-164880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEF6A829CC
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 17:17:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 758AD1BA00C9
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 15:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CB0F2620CD;
	Wed,  9 Apr 2025 15:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EfpnjdFK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBAF2550D8
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 15:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744211344; cv=none; b=ZQ2Y3ve3P12kCipIO1K6LYwKMKDATyIzxIC0zYTXwx6MMpc/ZT9j7CY7DcR0PssCVpfOci5u1+BL7DbSXx2Xie1GE97RQIH1tRAfraosYmS/E+0wf0+VZi9v6fF7DHqoSM5e8NXj7S3gyfSDvjymMQ/UDoI6NzaqRDzHQWHyFJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744211344; c=relaxed/simple;
	bh=zcGWZwy+nuORNV+F/ThZjfFW0lE2rDvhpV1x9HexZ5w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pzh6nci6wS0i/SIIJxBxQMzQOV4kfs05K2XirOqOdYwitkCNZvvWZcCGx1yjnB2oYiAXljdHfPi6A90zXswKiolHRro71YQQPM443bAFhFsn6gX7mVxYc8z9/Y0eHc9/7S3IY0mbJsuRbwh0RSX+RvkKsqOp6vfzEM4pxVBWzMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EfpnjdFK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5398L0W0027150
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 15:09:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZM49O2ioHcxPJFgz0BW7OWFv9D0F8HSwleBnH7gV14s=; b=EfpnjdFKzGCqHJEN
	Ma/mOBmSYSbE/oWDxhUGfjgKLsaLrT7haeMHc6DuaLFAaUTf1Rgmfr4kGnwJMNZp
	iIQxKlLT0tzeg8Qton673zuoj8X8AsnHcbwsDyXDdQG68/zAkephLqY/V1Yur2g+
	y1TBsGfnEznmvp/YydzaD0uxRqkpIiG7OG+qX/SPY3rXuoWCFbzky0bfRQBW8pfJ
	AJH327Xmon8PrmBGBoK0rLCOKaa9NDumDOv2TLVL8ipaiJQsWiWfx34CwiAvAgE2
	BPCcRA2Cbq9Bc/G7a4L00twnwaVQ93L2sLu4SQ2I0XSxMO67tiUMtBMC6PyuSJET
	0MTMeg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgkvkf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 15:09:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c53d5f85c9so162533885a.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 08:09:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744211341; x=1744816141;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZM49O2ioHcxPJFgz0BW7OWFv9D0F8HSwleBnH7gV14s=;
        b=rqZVj4YCaVjo0AN1UMazCon/RKPNZzTUelRkDZbYJ8FEMrDIlFGyyOMzyxsyUrrP6N
         Uc4/VFUim5/jaVUbHuFn4gHjbEHGETX5PL0uvMfQ5sxT0sGE0sEdaAfIssFiS4VDHsgt
         KfJaIicFqjaKxEM5+yZUmsVkBJ4BAFeCB1klUuOj26VkNvzW0un8/0XT8dvyY/Vvfcg1
         nNvNRx4z04Q+ABhK8i0iN4GY8i70z5nEaCrJF7r8+m/tVf1YMqS2lPRTOyildU8S/7Of
         9t0vUU5v/2og0//PmK04dMWHAUll0MxxjTPmGeHmVZ+pmWUN9CCGO2hQ4LdEwm72HjoR
         m2iQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxD/Ftka1O+Ij1mDjlXbSb3Kav8hBog8Rr9iCI73dMd4ddeFiu3eVnAk6E6VE4wqQ9TT5ionawcSXH@vger.kernel.org
X-Gm-Message-State: AOJu0YzrnpHNeHt6VqgLTm66YyAyaQCK8E5XvqhP1z9dHLsRR9sqJbnD
	cd3Pmv4ozy8tjxNQJE27qlEltDSFNj+0ydDZ+u/sbSer6wGDOsoc/LX7fiSDMBlDeB1P3m4n0ts
	VnWdf4co0JkcJerhDNIMcsJOUajdSJNifmPmM6Uct/tY7fhnCloSVsG1Lvmc+
X-Gm-Gg: ASbGncs4Zn56aHIeFMy31Ng+mDH/I5Ll3ZQMNuRK66y7FJkjkDWBoDnVkw6Aozws9fi
	6aZt5oeUcOu7oHnlLPNEOauGDGSHN6LufulSj8hPzppMw6SNokF9LQbFo2lmi8t3hnwtr0nyaco
	dpEfmiCOJtX/vXVKBy/9biPxpWl/Vt9L/A4xYX465Eb5Pdk6MPf57OXYisV5arcHSr1v2evHipE
	GS9yUtNEU3/OUOaanwdaV9L6cPJTg4iYlXgFPWQ25N/BifYCTyvUHfBDI6wUn/G9e5G/CGDMLZG
	oMw112NRWzu1e1uSWbyxMFne97/po2IxOU3KMIlf4GPPFpkWNSluqUn1qF/wJzqL9w==
X-Received: by 2002:a05:620a:2805:b0:7c0:bb63:536c with SMTP id af79cd13be357-7c79cbd8ad2mr156919985a.4.1744211340668;
        Wed, 09 Apr 2025 08:09:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKqxp7rcrINyn8M6wMLr3P4dzZIUo2PduztsqFYTGLMrH5xZk1qXZ1BhuOXgUr9MLv4mhnXA==
X-Received: by 2002:a05:620a:2805:b0:7c0:bb63:536c with SMTP id af79cd13be357-7c79cbd8ad2mr156916885a.4.1744211340304;
        Wed, 09 Apr 2025 08:09:00 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb425csm110988066b.104.2025.04.09.08.08.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 08:08:59 -0700 (PDT)
Message-ID: <0d1aaba8-7736-497e-8424-84489c637914@oss.qualcomm.com>
Date: Wed, 9 Apr 2025 17:08:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/7] Support for GPU ACD feature on Adreno X1-85
To: Anthony Ruhier <aruhier@mailbox.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250109-gpu-acd-v4-0-08a5efaf4a23@quicinc.com>
 <dj256lrkc4s5ylqkqdrak6a6p3v62ckkd3orsg7ykz2w6ugllg@rbfkojacklvx>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dj256lrkc4s5ylqkqdrak6a6p3v62ckkd3orsg7ykz2w6ugllg@rbfkojacklvx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f68d8d cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=vjlbkFh1sCUApBijkyAA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: aIKo2BRK98CrMa8YhxqoJx8tX8MmS1iF
X-Proofpoint-GUID: aIKo2BRK98CrMa8YhxqoJx8tX8MmS1iF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_05,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=862 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090095

On 3/18/25 2:12 PM, Anthony Ruhier wrote:
> Using this patch serie on 6.14-rc (tested over multiple RCs, up to rc7) on a
> Yoga Slim 7x (x1e80100), I often get a video output freeze a few seconds after
> my wayland compositor loads. I can still ssh into the laptop. I get these
> kernel errors in loop:
> 
> 	msm_dpu ae01000.display-controller: [drm:hangcheck_handler [msm]] *ERROR* 67.5.12.1: hangcheck detected gpu lockup rb 0!
> 	msm_dpu ae01000.display-controller: [drm:hangcheck_handler [msm]] *ERROR* 67.5.12.1:     completed fence: 777
> 	msm_dpu ae01000.display-controller: [drm:hangcheck_handler [msm]] *ERROR* 67.5.12.1:     submitted fence: 778
> 
> Rob Clark recommended to me to remove the higher GPU frequencies added by this
> patch (1.25Ghz and 1.175 Ghz). The lockups happen then less often, but are
> still present. It is easily reproducible.
> 
> A way to mitigate the problem is by constantly moving my cursor during a few
> seconds after my wayland session starts, then no freeze happens. Reverting this
> patch serie fixes the problem.

What firmware files are you using? ZAP surely comes from the Windows
package, but what about GMU and SQE? Linux-firmware?

Specifically, please provide the GMU version which is printed to dmesg
on first GPU open

Konrad

