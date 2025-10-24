Return-Path: <devicetree+bounces-230739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE973C05560
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2F0E1B84698
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512E730AAC4;
	Fri, 24 Oct 2025 09:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QguF7XEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936CF824A3
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761298111; cv=none; b=JL40C2sJ55/pUWHS5txNX59JgqRZ/UjB9up/1h/5DzTw1lHbos+HgLUZu8Pt9h1cAqt9cRBNZus7ZpgFgvZem9maF2TyMu6yJzRYothpRzbleL5IaHxUYOUAQpcPzH3HFxCv8QFuDAzHvmx6byDYi4o+7SHNm5t368DizII3GIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761298111; c=relaxed/simple;
	bh=TFs+uVk9VsisYkzT24JB2Gdh5pdgQe8tuorJAcqAzXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bG0kiuBhk+IMIV1bQiLyzD1u0fMQexK+Z0+Dijp7orRjeDxdxObYy3uDb+6RmF30PArKPGQyVMFn7qwI4n0drbwWQJyuo8LDm0FcOFCoAgNFTWWy5YBmnWnDWd62ARX952ASWfZqeTFJIYQe2Rx8IFFC0doNWeuTkkC/HGvKVVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QguF7XEk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FOCn014906
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:28:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zGkcT0F5HdfRvmdgOmrFrIfL
	DkdtJXkgEZhfMIxuKyA=; b=QguF7XEkUeOh2E3pknh1RhOE8KhIQT1c2uP+IQ0G
	zX/1juHpOOEgEAb2n5P9kAUK8s7h/r/ztfyqrAjbkoZDG/QlE2jUapvWcUZ7+01k
	IpUUGvjz7ZBKuL/vEafSBXLPqVZcft/UJlDHrY8ogrgd3k31WJtotb9RXel5w+Nt
	0crZWgRXZMURhLZDg0xZO/c80EjdibmbPGGwqO2U6xm/OYF+YCV7jsFsFGDsE0y1
	Sd5iNhe+3glckfGyogGvxX912c1IsECwYnzbfIdVZ5jeiv5/5N9uZFl1zWzeRAQi
	OCxz2WyWH1NVxvk9mdU6hMl5AP8n8YOg7e4YzonE6ynTCQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08purwy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:28:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e894937010so46956101cf.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:28:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761298108; x=1761902908;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zGkcT0F5HdfRvmdgOmrFrIfLDkdtJXkgEZhfMIxuKyA=;
        b=hilygDMt7nULs87RcPFdbBlOKmiuiu67crhjAGP4JWQqK7TdDxesVUDK0XDDzpCNF3
         eRJnPeeIBIehu308RWS5T/5FNGQgVpVNMURVCzVZmiTuIw+nEurom82R6A7D8OvGj9a7
         t9OMBvSw5ASWFqtMVlUeTKgSqvkKF7WtmdFmVa2OvK1oXGeWyyKr7UZvf53QCmhqpY3G
         hLnctY1jVELQRUlJKtAT1s920kYNiX9tO47T9qJbNWAm2cP7Bt/NLBTrtK8pdVbd5pLf
         HC7XoePfK8URD+Y0WF451ZqrKe2eY1ngqD585FOQB0e+8+kLNI5jzA4vt6Nw4zCpRLNp
         /C3A==
X-Forwarded-Encrypted: i=1; AJvYcCUStTuQ9GUPKgF3WJVcy3IBb2yasRF5s+Mel9xCPUcB+GMPrTSzuAgr06GjI9RIiC6htLfCqONrV014@vger.kernel.org
X-Gm-Message-State: AOJu0YyS7Pi67wt9eNZx70jfCFr3eq4UwdTCtKzaZmm0LT7vwE5fWKqu
	nwPVi6Mg+AtkatlHMK1lNKPs5VVPHdR8a+dgSE0tEUac3qCZJyakegkLEyvs2JsKjHN+WlrSLl+
	qy6ne6K5l7TB60L4/NgwQmnRSQnzcfxUACqT2UmzAUYtCP53w5guCD7cvFZAvRjkq
X-Gm-Gg: ASbGnculr65uk7atoxFg/ppo6WiJSvbvepdKKDqKuomxbZbxNfS//wMd9HhXj8cVuMA
	t9mTVwjio+DEQ5Fu+gtKAyFZWf1sFx7YGhuATvPkcnkJh69w3IPjvMSiVC4F/D87AtXla/7oMbi
	d9zjGtnSqqllzEsh1XHon5fqHz6DRWP5xrt48/VimndgDLCglN9JODb2Hk4Vf4e9DW5jxDJz2C+
	ru8Oz6XmWvdrFu4DD/x5TRREL+H5L4b6ARjCfeuFnvFxPyHHdUTJHCIuEgXFlLBJNXWnuPAKbAA
	Dd4wzQVHr2Ni1ghrlxFGLGOmXcDqb3BNfTn5DG2JK+NPshOtB99cwXcnrH9gxuairdQ50hgjlWc
	3+e2c3i6o5z2xgXWBx2+Md00z3U/0hAYBBCiqEucv9B9gxik1S0L7l/m14dinPhKT0gj28DVLXf
	nXMKAhT0t6Fu1d
X-Received: by 2002:ac8:5881:0:b0:4e7:28c4:6492 with SMTP id d75a77b69052e-4e89d2e9159mr345062041cf.35.1761298107581;
        Fri, 24 Oct 2025 02:28:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGg7yl9p+wm1YmrVjaFh115CT4BHZ4Az1ybfHc7KF6ROWYFgbMv01hIcBHSAkMse1hgWxSIKg==
X-Received: by 2002:ac8:5881:0:b0:4e7:28c4:6492 with SMTP id d75a77b69052e-4e89d2e9159mr345061771cf.35.1761298107121;
        Fri, 24 Oct 2025 02:28:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4aded51sm1489790e87.23.2025.10.24.02.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 02:28:26 -0700 (PDT)
Date: Fri, 24 Oct 2025 12:28:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
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
Subject: Re: [PATCH 3/6] dt-bindings: display/msm/gmu: Document A612 RGMU
Message-ID: <qcs6y22hozfmb2ipmahfw25m2xti2gr5kjn43c2woiueqe4xmd@ovnrhwibhhe2>
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
 <20251017-qcs615-spin-2-v1-3-0baa44f80905@oss.qualcomm.com>
 <8f3f4874-2e82-473e-87bd-e3bd58089b90@kernel.org>
 <181af756-09a1-4694-98c4-53cea556e172@oss.qualcomm.com>
 <ff37b635-b3dc-4180-8eae-e798ef6ce55a@kernel.org>
 <f677f8ee-d635-4131-8ee2-8ca6ead43095@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f677f8ee-d635-4131-8ee2-8ca6ead43095@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfX04xyhSb5yaau
 3hjY0YgsdpivvUT/hD4hQgt0zrDCbXkE6fKCvD7FEohGj4CcLExhmwKUgXAhTfGlxdbqZ4oYqMc
 Ca7sBWTQrFZjopMiHDaF3sulLxhlYmHAZoJhi8Tu7mjh6a7fV+nlbQEZNV98lZ54CIZvlsEyzgf
 5Hc+fR+6l/H4AhFOqJ0Gf7I37A69rwt/4eDghO5e+Havn0FU/D2MfBdGjnjMDbuv9YhtJ0BFlf1
 8id7WYfRsFK33B+yZY0MlewBublwgEcjeNYDxIR/6NZ/9YeqTx6Y9SjGR09tZSo5qLFOE0+bamx
 SXGJ7bIpYPsvw7Wx0aJK/iwEALguVUL4BrKer8oo3HT4mG6OvUHgkb8xI/CNjXlfTKnl1mXqKYz
 +X9oAhW1ovhZeqllZ+MnT7p5dIfxPA==
X-Proofpoint-GUID: f0RE_-kWKbpFfGyO0YrK_7Y4w3ARXLES
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68fb46bc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=QZfYkoQWqmGXo21g0SUA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: f0RE_-kWKbpFfGyO0YrK_7Y4w3ARXLES
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

On Fri, Oct 24, 2025 at 04:33:28AM +0530, Akhil P Oommen wrote:
> On 10/22/2025 12:49 AM, Krzysztof Kozlowski wrote:
> > On 21/10/2025 17:51, Akhil P Oommen wrote:
> >> On 10/19/2025 2:43 PM, Krzysztof Kozlowski wrote:
> >>> On 17/10/2025 19:08, Akhil P Oommen wrote:
> >>>> RGMU a.k.a Reduced Graphics Management Unit is a small state machine
> >>>> with the sole purpose of providing IFPC (Inter Frame Power Collapse)
> >>>> support. Compared to GMU, it doesn't manage GPU clock, voltage
> >>>> scaling, bw voting or any other functionalities. All it does is detect
> >>>> an idle GPU and toggle the GDSC switch. As it doesn't access DDR space,
> >>>> it doesn't require iommu.
> >>>>
> >>>> So far, only Adreno 612 GPU has an RGMU core. Document RGMU in the GMU's
> >>>> schema.
> >>>>
> >>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>>> ---
> >>>>  .../devicetree/bindings/display/msm/gmu.yaml       | 98 +++++++++++++++++-----
> >>>>  1 file changed, 79 insertions(+), 19 deletions(-)
> >>>>
> >>>> @@ -313,13 +360,26 @@ allOf:
> >>>>            items:
> >>>>              - const: gmu
> >>>>      else:
> >>>> -      required:
> >>>> -        - clocks
> >>>> -        - clock-names
> >>>> -        - interrupts
> >>>> -        - interrupt-names
> >>>> -        - iommus
> >>>> -        - operating-points-v2
> >>>> +      if:
> >>>> +        properties:
> >>>> +          compatible:
> >>>> +            contains:
> >>>> +              const: qcom,adreno-rgmu
> >>>> +      then:
> >>>> +        required:
> >>>> +          - clocks
> >>>> +          - clock-names
> >>>> +          - interrupts
> >>>> +          - interrupt-names
> >>>> +          - operating-points-v2
> >>>> +      else:
> >>>
> >>> No. Don't nest multiple ifs.
> >>
> >> I guess we should split this. I will add a 'required' constraint to the
> >> rgmu constraints above. And apply the below 'required' constraint
> >> specifically to 'qcom,adreno-gmu' instead of the 'else' fallback case.
> >>
> >> Please let me know if you have any suggestion.
> > 
> > Maybe the binding is getting to complicated and RGMU should have its own.
> 
> There is just a single chipset with RGMU and we haven't seen another one
> in the last 8 yrs. So it is very unlikely we will see another one again.
> So I feel it is not worth splitting this file just for RGMU.

I'd second the suggestion to split the RGMU schema. It's not about the
number of platforms supported by the file. It's about the clarity. I
think it would make the file easier to read.

> 
> Let me send another revision and let's take a call after that.

-- 
With best wishes
Dmitry

