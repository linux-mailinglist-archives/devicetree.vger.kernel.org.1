Return-Path: <devicetree+bounces-224346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE0CBC32FA
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 05:11:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 763EA3B14C3
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 03:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AAAE29C327;
	Wed,  8 Oct 2025 03:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R6XgONKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD57829A309
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 03:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759893100; cv=none; b=lW7SpqJ2dr4CSJXJpeEWgLPa6sgzXxAs2sP6TeN1j0afoCmTSWrwm7rKK4VSAolVL1u6gL6NbECvO0mzGQMuTiMalWz20mrw+cGF5Nv9QFNxzeyD9QVD9FiXc8Ry5GPq6XiWjRy2y3teb6BUQ5JTa1jLkFcB4IDwzSUVvvLDRTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759893100; c=relaxed/simple;
	bh=HiXDieK7e7Pyh8O43mqXjGQ34eLmxa3A/CZzcAsnCD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IW3Jb8y/9XLsxNV+iXnKJq8k+kvbRsGvLS6v8hV/tvBPHJLF10+NsUolPag/3UFNqYNZb4wmSn4Ln53Kp2DBFIMxU3k5HT80ytj4mIMDOjW4CKFH7drW64BhNfje+RZ6vyxcTWsbXqKUnlSvmDVbAwu/PYy5oCg7e481keYKhrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R6XgONKF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598043pJ006383
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 03:11:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=j7ZgKtSpSqXDvaETVdzjIPmF
	kUOdgWMnn3nd6TOrku4=; b=R6XgONKF5u9x6niewIFqqZ/7DJeZp4qn5Al4WUeF
	g1H/tGo6JUYj5+IhqWZ/nhuR/PkCFVsuTEvO2+wDqnbDQDivK6o/9StS21c9hMRW
	A9wZP536niWtR3YUlCwMvpMQjW0Dg85q2CnvyVc3rS10HTRZPMvZORfG8gcPZwhY
	FFxH2D6m/+iB11BxCvpfyAo/64XW3indPpuybxc3fJXjp85vC6EI/z6OwZGjF2FS
	ybs/FGi9jaurDi8TmUsWmLVhBvBlmEzyU7yanW3FEt0FmxWdrcWt1CFfYPQ70nGY
	rHcRkPSwK6IVFlsFDo/WaQWwLDAbwJ6C1QXJGpRyDRQ/2w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9e1byf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:11:37 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-79a3c16b276so133211306d6.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 20:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759893096; x=1760497896;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j7ZgKtSpSqXDvaETVdzjIPmFkUOdgWMnn3nd6TOrku4=;
        b=kDiFVNy4gs1uJ2fZIewRRYRn76VkFYrN7RgxO8iea0fxhwy/lBQc0U4ykd0lKm+6eu
         AgkgFggoN0PWBEqCNMxy7PixxL2qI8avM/YDQ+0pOXZqIG721qICsZnFkb/yiAnNsmAp
         WHFid0N9mFRhBpIjSWC3/Q0DOKNANEnwx9cDpbDOyUg/lh0q8ewT6CfDSV1NbsrBoM27
         E1J7jeoMkbROOr62DASKSMYsreNK136uxNbj45D1jHDNx6YC+z116BlkaWA9GvfXa9RE
         MEWKTz88QfFJ2mHTrGg1IUhwF3ikG/hp8AQYIC0/aJ7m4wEinvQXfeAdRZvyOf6HOVAd
         oIPA==
X-Forwarded-Encrypted: i=1; AJvYcCXGtYmvoZVBCvN1nEhfBfPCGudkeXfyGgmF3Il3Pepg12Qwkbcj2SH00XlxHPm+KC+a5EB9L+q8FE5S@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf93SgP+OARhSsouSjXvPbJ2G2KFK7EwCPgqWfrAwO/scfdfRp
	DujUHRpgm6Qgj6vOXdrLbLfzyikhKjKi87+cPZ1iNjhqjYy6Cq0vae9YmQIjGPRAs/HEe8iALUw
	BcnciWQbg6IdbOkJ7g1TzX77FUx4x+wbLWUaCrYlVlzNiSdDEcwgzMg4nqnz0tAO0
X-Gm-Gg: ASbGncvaEb9vzpyYOyI8kiHztDdC/dq+0WNo2Knyi+wMwkDCD4br6oTz0W5K2VwbqYW
	ylhsdHD/BtwbzQyUWw7dINf5T5YQPhh9+rJ91/hYgX+hjQdQgAq7amWTlbkad44sltCCUDHq0md
	nzfOBr569ZoQRq0RX+zwt6ghitn7if0USdV4TrigwhcX+mS6h1iM1whBYgGo0YIBe01r3XthUyM
	Ifc2JCx25yNqib6cqFXkrlub1FK0dsf1hb4Uv616hlBMtkOfug9Vc6irCSUsRkQRGOofAYUp+tr
	n8c+RPISik0XoCb8Kk92xxdxj7qt/nzUsjPI4g3GtHasUmJ8lxagOcL5+dC1S0AgNG58eR45nNI
	A0awssOJvI+0uZ3E3docxQ9GHehloe+JToYn5f/hqGsGNi0t52fN6ym+ikw==
X-Received: by 2002:a05:622a:2617:b0:4db:5202:d4c with SMTP id d75a77b69052e-4e6eacd239cmr28895791cf.23.1759893096246;
        Tue, 07 Oct 2025 20:11:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkh+CUWhF0CTGgfG3gncI91QsL3S9Zc4aMcT04GYrRnHpO6emXxDg64/ZXWJGcI0TQhlaahA==
X-Received: by 2002:a05:622a:2617:b0:4db:5202:d4c with SMTP id d75a77b69052e-4e6eacd239cmr28895511cf.23.1759893095699;
        Tue, 07 Oct 2025 20:11:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d836sm6729700e87.88.2025.10.07.20.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 20:11:34 -0700 (PDT)
Date: Wed, 8 Oct 2025 06:11:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
Message-ID: <ogslvjglnz56lz6nria7py6i4ccp6zvcd4ujpiusrq6xutydsm@xb72os5wk67r>
References: <f5ebf0d6-2f0b-45cc-b99a-b786e5df9edc@linaro.org>
 <5qsgbqml367yq6g5vb4lotrzulojqhi5zlwwribze373a63qrn@rxi4kwyt66m2>
 <4f38058d-a2f1-4ac5-b234-228cfb2e85ff@kernel.org>
 <1ad2ca1e-1d57-4ad8-a057-ab0d804f1d49@oss.qualcomm.com>
 <7da769b4-88e9-401f-bb21-0ff123818b9c@kernel.org>
 <6840d462-8269-4359-a6e5-d154842b62db@oss.qualcomm.com>
 <af0da28c-3ca0-41dc-aaa4-572723ea74bf@linaro.org>
 <klhvgzizub33f46buqsog54wqksqp24a5tijwyv355l2ao2imo@wdkojfebc6s2>
 <e1a6e75a-2a5d-44a2-8bbc-140eb86d1806@linaro.org>
 <85f62a4b-cec8-48a1-a232-7f904371e390@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85f62a4b-cec8-48a1-a232-7f904371e390@quicinc.com>
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e5d669 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=P-IC7800AAAA:8 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=C_jdFXG4BxRmYhdSDkEA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=d3PnA9EDa4IxuAV0gXij:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: mjx7UzZ2dBwi4D6hr0wqnJCyjdQkzV7G
X-Proofpoint-ORIG-GUID: mjx7UzZ2dBwi4D6hr0wqnJCyjdQkzV7G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX3ANOUbkupIwN
 Xaq/1MENtmGHEAKHLXkVn/jpxkiUe4jn2qUePwBIzIxsHaLBihGtQNe6B8Y9FxlXj2sk06WMTKZ
 tI5P4E6vlC2KiQBEYaBTz01VvDYp0A9Qn/a29iJBZ12al9nqp1nA3H80PoS+3z917tfU9K/xJMe
 4eJ/Uh+7OBVUqMiSB7CGHfhsFrGRSn1dTFWJh92DuQdIlxT3K8lQ8ApHKA1aWWqK/lnOBLIWLeI
 fiAPQsoZJPFYcVSw5LWN1pjLFdFlZtb/9H3G8OGT4XZB2PhkdJq50XlykL9wt7LqPbLxk/e958y
 3OKE1iUs4dtTLO3sZn9x416oyGrIQfnjtIi7tsoOiXeI4Cu0NE7Z6HmhO58X8LMl3dVachT1Kol
 B4cT/qnN4l9Klbc1XEPoY0g66/PYIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

On Sat, Jul 05, 2025 at 12:45:10AM +0530, Vikash Garodia wrote:
> 
> On 7/4/2025 1:53 PM, Bryan O'Donoghue wrote:
> > On 03/07/2025 22:23, Dmitry Baryshkov wrote:
> >>> I still give my RB for the series.
> >>>
> >>> To me the only question is should it be applied to sm8550 or to new SoCs
> >>> from now on, sa8775p, x1e and derivatives.
> >> I think we need to apply it to_all_ SoCs, maybe starting from MSM8x26
> >> and MSM8x16. Likewise, we need to think bout secure buffers usecase. And
> >> once we do that, we will realize that it also changes the ABI for all
> >> SoCs that support either Venus or Iris.
> > 
> > I think a dts change is a non-starter as its an ABI break.
> > 
> > So if ABI break is out and reworking future dts to allow for a new device is
> > out, then some API change is needed to allow the driver to stop the kernel
> > automatically setting up the IOMMUs, create the new device as a platform device
> > not dependent on DT change and have the probe() of the relevant drivers setup
> > their own IOMMU extents based on - probably indexes we have in the driver
> > configuration parameters.
> 
> The concept of sub device is nothing new, it has been there for firmware iommus
> on venus bindings [1] and i am just extending it for non-pixel on iris. So
> instead of complicating the driver, pls relook into the existing solution which
> looks much simpler.

We should not be using sub-devices. They don't describe any actual block
or device in the hardware, as such they are frowned upon by DT bindings
maintainers.

> 
> The proposal to dis-associate from DT would certainly bite us in future when we
> have more and more iommu configurations, lets say "qcom,iommu-vmid" [2], comes
> in for managing secure stream-ids.
> 
> [1]
> https://elixir.bootlin.com/linux/v6.16-rc4/source/Documentation/devicetree/bindings/media/qcom,venus-common.yaml#L50
> 
> [2] https://lore.kernel.org/all/20231101071144.16309-2-quic_gkohli@quicinc.com/

-- 
With best wishes
Dmitry

