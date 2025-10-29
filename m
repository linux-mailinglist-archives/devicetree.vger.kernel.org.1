Return-Path: <devicetree+bounces-232458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 273F7C18181
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 03:50:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 204374F00FE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 02:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EEB2E8E06;
	Wed, 29 Oct 2025 02:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ut/oCb8h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c6p8hIuk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27842EB5A9
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761706188; cv=none; b=oa8m1P0r/dmYxubj9JXB3PnWFGHHros5ihFDJmuHLskPSPJzlLgL6ZK4s4CNiVmXdAQ9BbEbacjbQwZaHCAYHmZRHrQZ0Q2LDwPvuG0plMrjTb/TencUaCj7wGcDUL38Fu8cSTqx4MDVJVfNJcaSqdOR9Can3MeLEWZdCqdG3/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761706188; c=relaxed/simple;
	bh=wvRS8VPUuvKAreHwF1pR5TrD0CYRn4BR4E1ITJN738s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hRubzq0lmfos0sxDHDq8pBHV5lV+zeJSNKDe+zYZS33JiclIhvfssNOBcw0iqMWs0HDuxJdl9pytd36wWoK4RLQdXSMyYPjy+fXTsVi571/VGn/2b+PWTlHJNfqD/szfyyOhrQgFaIww7VHw1+xMAa7OteqHWRzmRUTpZjbeHF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ut/oCb8h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c6p8hIuk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlPpL2554360
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:49:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+IF6cvldBL9/Hg1NTLulnIyX
	YhW7ryKIv8gV0TonztQ=; b=Ut/oCb8hisq9FyFWEkT0jllUIZYdbai2V+ps1h0k
	aGtXDkRhVsBxB/mDmyd+tQmyp/nd1l7Xw5+DHlng12DW22mW/Xgay6H23BNq9Z1T
	dWsdAWrzIRHpR+CbZkIGphG34TDVgWKLU1ft3ibaaFgch1WGK3dW6Mz9O0f052wa
	ovT0GjPPO0wPK2AdRdGFKoBDSVmrXpc7KRbF4+tNE/lss+bl21Y4+vVG30cfo1qu
	RCmA0Rh+mkCC4Xz2nr1VB5RXFpbEMuU0iu1G8Y3uCHCl7ekbY7dsvjPBlQfRlGVM
	vGblmYFPjP6EoXsJk2xJCd5WZMeMjx1TgIBQGu+OE2gdhw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a10xeu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:49:46 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87fb496e4d1so248769746d6.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761706185; x=1762310985; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+IF6cvldBL9/Hg1NTLulnIyXYhW7ryKIv8gV0TonztQ=;
        b=c6p8hIukrzPkarcRdCLVV4TR5+g8DtxPjaYz/1U/pmG0T43NXIA2i3VK35NvMwV1f7
         2P9QZGmRDMN0l1LgVFBtkVflrrOGyY2nZgfO8lWnANQPg2LHswp01PtM5gVIDHKcmzsb
         yRTXDVNIsqhWkiczjAfRqK8yWmlxbJCnHdtQSJmUsda8McNd7CnfQayU2E3Ku/PToYqx
         B4CWkz3bsCqesA6jFxsZeVEOPeB2RNuLVgV3VOV1B55RWmlbANp03vGyAMCh4/+4jN5P
         o2VvreRJm/vggsMGmayzEe+yoEtf9e1CZAVCFjnJKdhFG+8N+fo8fpiHfZudPSHYqzy0
         g2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761706185; x=1762310985;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+IF6cvldBL9/Hg1NTLulnIyXYhW7ryKIv8gV0TonztQ=;
        b=eeQiZhzHnwqM+UKfH02nSHf+HYntGLaG9EdxiFDqGSmDm/6co35ooUFFKYVb8utG5t
         JFg2AN0RFpCe7ec8+0Ts1nhkDF1lm0Bst0OWSUuzcUiZ3AHsny4NlfeDHy9gm93OMD2N
         PWnkQU56OAA/KrNDvdrG1Hnz/8l9A3zRg16RphFuW+irfKaGhKSyY8dUcvEkNIkdBc9q
         3QY1HSU5Wi8sGElUBF6kSrrPd/NYRux04Fou8Z2gwrOOse42GY7saUxGI5xjk6oxhE10
         91aTPVR/oezkKBFGULVtzNvDn8oAVFPoyc9XBGGOZXmqnxR3WEHEQuVeuW0tXsI7KK1u
         NY/w==
X-Forwarded-Encrypted: i=1; AJvYcCUsVvlKPxez11h8RCSF9pJ9XxPAZLwWwq+MzWYJN9+35rKnDBkHq2eUvn5U3vedqP4FSCR4d40UWoRg@vger.kernel.org
X-Gm-Message-State: AOJu0YzjpjtEcllBdazKVOrieMbFrVrnr4+z2NJEYdHZHysqOHVyp2XN
	hV8FYCgLAQjLpXUVyAt2K2ONNNT604T+noLn+UmnGaFj9WbnrQhEPRYsQDPkZcY7uLQ533E3MKU
	+QOchpICoMdxVPD/VtUiiTINRGLPrl6kt++zzVQzre0n0vff8YpfH3EwOYZkdxTrN
X-Gm-Gg: ASbGncut24eKdoUzFH4t/zqeNbFzDBSyEMJ/PRdi7D3aIYPnHImhcMRYCveTTzjxEaa
	86dX1s3GFnxqRQ9mTDGaTFys85lQPwuuA9RkmOUaBqIkt6dDCmbFuquzpc1DcEbW67mtBHNHUPN
	Md+aLo3Mzq9CdXa0/dWH3KkSH3U9IJI2w0a1gWrMEUlCDt1rT8XLoRKDuOHfk8T+TItx4T6VEE2
	qpKA/BDEfCEkzJEknYYnV4bNGvHyU0hkyh2hE5vVms9nQ8VU6gPkVoJBKGV5VdWeZD546cdfPxi
	nPRz1Ehij+19Es5q4MPuKrtNfe+cFxAmJDpHGmg80/XXpzD9MyFBvcSOIHyJags8rhtMkCiLbER
	s6acNKP/tiK7+pYakWkkOodWFWTKJ7OMP7UYLNvGlp4Wn+h+Dy+1W6Cf6uyEtRClT
X-Received: by 2002:ad4:4ea8:0:b0:87c:2282:993e with SMTP id 6a1803df08f44-88009aee75amr19409896d6.2.1761706185136;
        Tue, 28 Oct 2025 19:49:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxLVn+gGv7wMn67kYf9uALNr3Oz46eoit5eH5w2JkzMEJGDyTOwUBUpSX+Ha8pY+Y9GCwLJg==
X-Received: by 2002:ad4:4ea8:0:b0:87c:2282:993e with SMTP id 6a1803df08f44-88009aee75amr19409646d6.2.1761706184710;
        Tue, 28 Oct 2025 19:49:44 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48a8812sm93936406d6.11.2025.10.28.19.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 19:49:44 -0700 (PDT)
Date: Wed, 29 Oct 2025 10:49:32 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 03/12] drm/msm/dpu: Compatible with Kaanapali interrupt
 register
Message-ID: <aQGAvLFkH80Id3p3@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
 <nfekr4vi34ftxzyyf5xv4tsb5cr3tokiyfkerypqjf26dos3uq@42wcn6ji7nnb>
 <aPrre+WXogSZIE7L@yuanjiey.ap.qualcomm.com>
 <st53uwtdow2rl6bvmfitro2dmodxtzfnhyzon4xeeetkkwekxh@ewlzkelq25wm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <st53uwtdow2rl6bvmfitro2dmodxtzfnhyzon4xeeetkkwekxh@ewlzkelq25wm>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDAyMSBTYWx0ZWRfX4FzlvS3N1MJz
 +aAVuWiHjCOFECkd7bpAzUhk8F21a3ISSb6qJzFHM93WzRqocFHjHoXosKL2mG4fiKXOVvd7kkb
 X7rlB/+B1Odz3p9ljoRYATZNGyxndPMCykQXB68NyEGsb5bU9SvBMRRQHFyOcxg1p49fQ10R3B4
 /i8uSVqFmnFg71lkhysesfT1fFwNJZefdnfG3r5LTnBu9Fil0NqPNTeDUT9a4IiBLkDiTvi+Q+7
 ritvOM/BaPsrB6D0acYba1sVPtoxOIuQELL3mWgfTnfNpubXsLj9jeSPhU4z1XXZFSHaOfGgsMc
 Y55gDEp7wYjE8eSOO/BWgBDUznwoQ0a7xFdSDlJSU57QBK5WDrhAXap9jsg9WuEq0c5/JOMx631
 XWExEzvuixiV9hQPEiVVwMLoZ847+A==
X-Proofpoint-ORIG-GUID: qK-uFFHL1ylr6fc-tD0IyFS7RHl5ryBt
X-Authority-Analysis: v=2.4 cv=EKULElZC c=1 sm=1 tr=0 ts=690180ca cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6MqEXzQhl84AYe3cEQYA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: qK-uFFHL1ylr6fc-tD0IyFS7RHl5ryBt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 phishscore=0 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290021

On Mon, Oct 27, 2025 at 03:21:33PM +0200, Dmitry Baryshkov wrote:
> On Fri, Oct 24, 2025 at 10:59:07AM +0800, yuanjiey wrote:
> > On Thu, Oct 23, 2025 at 02:59:12PM +0300, Dmitry Baryshkov wrote:
> > > On Thu, Oct 23, 2025 at 03:53:52PM +0800, yuanjie yang wrote:
> > > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > 
> > > > DPU version 13 introduces changes to the interrupt register
> > > > layout. Update the driver to support these modifications for
> > > > proper interrupt handling.
> > > 
> > > So... Previous patch enabled support for the platform and it has been
> > > using wrong registers for interrupts? I think that's broken.
> > 
> > I want to express DPU 13 has different INTF register address, so need to add new
> > interrupt array to let DPU 13 interrupt work fine. Maybe I should optimize my commit msg.
> 
> Make sure that patches are structured logically. You can not enable
> support for the hardware if the interrupts are not (yet) handled.

Kaanapali Dpu interrupts: 
INTR_IDX_VSYNC,
INTR_IDX_PINGPONG,
INTR_IDX_UNDERRUN,
INTR_IDX_CTL_START,
INTR_IDX_RDPTR,
INTR_IDX_WB_DONE,

are handled by irq handler, so here enable dpu_intr_set_13xx. 


Thanks,
Yuanjie
 
> 
> -- 
> With best wishes
> Dmitry

