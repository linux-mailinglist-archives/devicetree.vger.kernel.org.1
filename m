Return-Path: <devicetree+bounces-224348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADE6BC3315
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 05:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A371A4E9263
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 03:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198EB29D29D;
	Wed,  8 Oct 2025 03:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NLaiwFVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD3229D27A
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 03:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759893249; cv=none; b=Qa8tPd59aSMoNnwA4zQwukZvZ1JNgr8AMxNxt3X+kj6PqhE+15IoyMK4ZJpZ5SEV2kKyqB00HXnl0yctjXXDT0oD7cO01/l+5CwwkDsdiqzuvpNuGxvyJu8xBEGCIWsnniwQTQ96fe/EaqlOK7APOiXedwTxyNkXE5PUJPLS/zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759893249; c=relaxed/simple;
	bh=EYDzc0Ut0l+GI9wUjAa1aPUQ8uWs0g4z/m1BxODGh/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HI7L6HrjRhLl02TzMv14fTyriZUUHCLWgT5LItF60ORrtvXL2ZQ/D8oe4/+1Sqp32yE6scyC7j0TIVXEgYfw2tYCceX4QC9XxqkogKExBktaMFN/Ejyep6qx7NNk+4UyZt0lKbemKMMd6PLQgdD0c6dxA3tgaFpHJnMGeUnHkRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NLaiwFVP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59803hUL012466
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 03:14:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=80U+BEnC+XavCbbo4ruTpk8X
	0HxNU2LOw7lkXj3xDzM=; b=NLaiwFVPRVFljbihfs3tIsWZ/YgmaYgcCKyh10az
	d/G0gUUnBpNkboSKCgfhwVUBgYgJyBXzgfq/6leoj7iOoMJwLFdImQGRayecXa4M
	WO8ETvsi8AMf7jVch4kvpXu5jg7qttd+UnkfPlwKYS3zUtKWbN0B9gzd4d0tJZQS
	kfIN45agNBYN9osaMQd86HW5L63+1lnQ3O21NXuitx60vcGHSs0ctdHEWOiY1ksJ
	x9z8NVmEBum4Ds1PhjHVc5xmOHuPlFURNWqY1Y5IoRQoY8qWzlm1wTSJhzJNMG2z
	nbYFflJUKGusPsHW5z7ZEtozZKxb/eferTFkei9Ubtbp0w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu96p7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:14:04 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4de36c623f6so178121931cf.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 20:14:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759893243; x=1760498043;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=80U+BEnC+XavCbbo4ruTpk8X0HxNU2LOw7lkXj3xDzM=;
        b=hG+q4Bx+6UA5tRRQuwomjDqjyIE5++sh0C85RB8xA4yR9Qkosd2RPKzOwxZgMK1Yy9
         btcTtIpEVKnA3H8Q0CbMrySw7ppIf7ct7TDat5o0LLyjMg39pskhaUPEuUrz/q9z7u/u
         4Dx/FUiU2i/CNp8dwQKQHXfdeEO15MUhzAqDEGrhgOMW/JLJ3PwQRZ0e5WICKfix0w4f
         YeGDkpKCPxNkGccW6G69VUQVfkO8AwKji9z3QRyy3ritQgZ5tdPfYGNCwnfe/8dGhqjG
         /qJk9WRxwG47FLCl9VoAlYOH6Ugs5ZBQhE5XFL1BCavUPXer97Gc/cB45hpDDIjF6AZZ
         FXUg==
X-Forwarded-Encrypted: i=1; AJvYcCVkEzQWNlRQoI2M1kYMMV5oV9ObxZ2/FW5fN7UGlZKKTeOcOIqWDQaricc3dr9xS5pE1jy5vYLCxnTk@vger.kernel.org
X-Gm-Message-State: AOJu0YxLM/HlVQSkjwEIaafJX36bkvi5amFw3GjmpmFkBVX7VqD0L1WG
	FYZBbKd6pyMGxwyGTnCsdfYHxGCOA+FBiYSqS7WzIhzJL9X122KZY08E+5+Z1pgDGwWB9o8XrIp
	O9WkuQwUNfkcU6CtsmVW8O63d/8mulhYr8vplR3TcwmzVyz9yle6HKPf2mdhe9C7N
X-Gm-Gg: ASbGncvzAtnXb9/xBX1dgCeJ27pS9U0zoL6DznDorEOoiYE3gx4bRAnsd9EnJ0qMPwB
	nJfJiaOmcZqNNMhf4JtD9iXaIoRwoQwLSp6+cKpjykjHfE4Y1Q+Ko0VfNJ/a4NcFwV8w38nlwRC
	rQ8dzHMxpCv6P4rOS75Wk4jur8NIE1p2IEkcSVA5jzXXWLZXK12dBioWvk89uS4esO0an5I6tFE
	2BZCimBtNcRZ8bCO+S14t+TbfV7JtL01Yc24t7eWSmdXvtDngUJELOzRKy+1eK3DP9RWe+da/9S
	/Ua2dwvyT+ZYsy3FZF1/lPqReRlyPmEbaP73EspqwjCC9L0/IiB/bA5Q0xsoSd24UDbJJQ8OIYh
	zTndiZQ0tggLQMaWIRAvvMgXjGxNvhLyHLpL7c4Bd3umYWxMvMhKuhgh/rA==
X-Received: by 2002:ac8:584c:0:b0:4df:acb4:2f60 with SMTP id d75a77b69052e-4e6ead631e2mr26660951cf.57.1759893243180;
        Tue, 07 Oct 2025 20:14:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYrLPwwKS/KhGIeJB/ialCQXXZq2J67mFWSwiwPV4pHrI0Ie8iG4bCj0RI6DvA6Bif71ncSg==
X-Received: by 2002:ac8:584c:0:b0:4df:acb4:2f60 with SMTP id d75a77b69052e-4e6ead631e2mr26660561cf.57.1759893242575;
        Tue, 07 Oct 2025 20:14:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b011a261csm6690140e87.109.2025.10.07.20.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 20:14:00 -0700 (PDT)
Date: Wed, 8 Oct 2025 06:13:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Bryan O'Donoghue <bod.linux@nxsw.ie>,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
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
Message-ID: <zoe23ugsqyqqz5edpxa6nsppqocwrxq56ekpd76r4ptnz2p5aq@iwnrpjuu47pk>
References: <Ujyoj3HGLVFhS2b0XzcYAMjSiCAuO-lSJ8PMEQLOaaX83tk_0D5zjrL0VDyZAmD3i4zLB3ElKSZBltISb5jJHA==@protonmail.internalid>
 <4a32bbec-2baf-4210-a7c1-1ddcd45d30c8@oss.qualcomm.com>
 <SuwJuCIcLVJwN3YeN1il6tB9wO9OH6bYcnbRpxpuI9Dl7piYLN-hVdnyv0Mal6N-W5pi2aCZI8MxHZDEkoE63A==@protonmail.internalid>
 <4d87d1ca-55b2-426e-aa73-e3fd8c6fe7bd@kernel.org>
 <10a8ccda-4e27-4b06-9a0e-608d6ade5354@nxsw.ie>
 <4cb4a92d-2f20-47c7-881e-aadcc6f83aa0@kernel.org>
 <I1DbPl0-zSS8tu3k8v0O-6DQdXnwza-Y3Os6GXsSDbOOhVbi3-F8jfL4q7QdkYo2zLv_s8Hy9v1PI3SiGCuDdQ==@protonmail.internalid>
 <CAO9ioeXqx4MoHNDiM4Pbp_evxEAACP0HhJ+8Fgqhhq60sCThdg@mail.gmail.com>
 <1481129e-3803-498b-bfe5-003c194f629c@kernel.org>
 <aocpjjk5zpdjdo33l3orq65r2q4t7v3lwbyl7rgkhzjceiseem@bfdk3t5dgwea>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aocpjjk5zpdjdo33l3orq65r2q4t7v3lwbyl7rgkhzjceiseem@bfdk3t5dgwea>
X-Proofpoint-ORIG-GUID: n_N7hNJez3BiSDbwLdfwC5Mi2QhXg22L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX2gyR8HQ8+aJR
 E/wsxfqLkS5KlpxQegmidjID8ueizlUFSBXtdEOVeWiSOVTh30flfmmnze8af5cuL4aksvvA1rn
 rz4PKYYErCLC3tovWCSPkJqor95VdwQr/Sex8KMaj27cR70/yCKpDoIy7KhidBEV6vuWX0LpMMb
 qHKAOzkKP5YcSZSHi5p6KX2X61X2tFZ5ZxXmLUgMhSAV9ocPJki6TZ497tWmZl/ndEeNBtpBwVE
 xuZTGRlhf5/jAAGtMjZxZKbMwaNNiD7BkGPY89pWl8y0o4fBSctHslmpy4ZXWFYoCb+3peD/qyz
 GZBfIOsYRkNd+R6061A7qmp7rrtKnVjY+4V0BMnTnSjzTnuYaK6xXJ5k6dMjjmXLdGF/yv70JOR
 0ZdXp0J9LqQVjUVgRE6/dy691Wq8+A==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e5d6fc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=YnPbhknI7qQ32hHCO4IA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: n_N7hNJez3BiSDbwLdfwC5Mi2QhXg22L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On Wed, Oct 08, 2025 at 06:10:26AM +0300, Dmitry Baryshkov wrote:
> On Tue, Oct 07, 2025 at 11:10:28PM +0100, Bryan O'Donoghue wrote:
> > On 07/10/2025 20:40, Dmitry Baryshkov wrote:
> > > > Surely we could do
> > > > 
> > > >       #iommu-cells = <4>;
> > > Because #iommu-cells is a part of the apps_smmu: device rather than a
> > > part ofthe iris/venus/GPU/display/etc.
> > 
> > What's to stop us extending the definition for qcom platforms ?
> > 
> > Rather than jumping through hoops in drivers, we can just encode the data in
> > the DT.
> 
> The IOMMU driver or a ARM SMMU device itself has nothing to do with the
> way individual devices use it. As such, I don't think we should be
> extending #iommu-cells in the SMMU device.

... and I don't think that we should be encoding IOMMUs or other
definitions inside the driver, if we can express them clearly in DT.

-- 
With best wishes
Dmitry

