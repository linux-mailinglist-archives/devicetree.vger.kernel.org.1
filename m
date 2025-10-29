Return-Path: <devicetree+bounces-232459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ED883C18289
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 04:20:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D0EB04E548D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 03:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 620BF2DC33F;
	Wed, 29 Oct 2025 03:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XbjZI9NM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bC/VxZsU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC7E286887
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 03:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761707992; cv=none; b=fm83YRJCOooMRw5aNGaJhyIUbWgHrjnqzIHYgCHLaQaQzwF6hJN8v6fgxd0FaKzuOiXQvLZbLOU666iIGOZCb8T9Dj+lGL0xAzK/0E22klbJ6m8G6bdsB820IiM+BL8H8isfOj1UMDdv8lZdmtqqw9Uc/i3/3cDgBHESAc2We/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761707992; c=relaxed/simple;
	bh=TDBNjpHbqgscAOvy2+GugorvShf4pjjc9+ahVVZmdE0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a+AR+rnRXbgTkN38biTspLvvT/2QQW9/GQPPeWnp+Ol8t1BRxEvPixsMzbDFiw+41rKGsA+1rvtwqPmde8hAgqhTalHP70ucwlFb96MhS1bfDLfeNAZIWRnGTk+hR4QC55clsA1wOHVbA/4VA+WVWYtzpkAdhIg5pmuh1LKOlec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XbjZI9NM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bC/VxZsU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlGMI2615895
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 03:19:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tfuOdHYPuBbRAFi2S3af3q0y
	P5GTo3VvO9e3ehC0+QY=; b=XbjZI9NMTCuvP0ON7ljI95ue2bFZ+B/HKFusXoAu
	qEkt+u/kwHbY8Nxkjzf2PRQWD1DuCUHonMVw5yzIiNiZmhfXP4vdbOAhjk1YiMIG
	zNTDt2EbSh50D7j1fYqcSFrRq98ideoANTkSqSxFp/e3b7oLxSNmJRvJoybnpeP3
	pCviYwjRMLsogwg3RyK2Z76CnbIfWBKVjjMGrg65qXMQ3taif6HPBANHFNWHdaYR
	Lte9dBJUcmzMsOr4ZVRduSwJ5/qxgCc7ppEgZvLXcyOs/NvaPjSStmiVG+lSsaAH
	SaAVA+G4HDXUtIRRgn2eN0Uu81mc0iArsSZc3/5EEFP1oQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a0h039-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 03:19:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8a0aa0df911so1135990585a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 20:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761707989; x=1762312789; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tfuOdHYPuBbRAFi2S3af3q0yP5GTo3VvO9e3ehC0+QY=;
        b=bC/VxZsUz+d+GRYO7j1qiOT3HJ6mfuGS9bv2mtirPz68IuDjwNSO/lyyMi1QcZgQ8p
         EHvErgfmnsut0Hy7eLFDLoW7J3mV2k0e/g4rBR9IGxevs1kJC1Klh89+LANCb/DXb4zj
         HNLn/0oCu5NHg2kHRME3UrJgv0h4kKXBvA2fK25z0yJrXYHXZgFeDcUvo7NWXVe3i2dU
         XYRB4Ge/Y1nijjyTkrrLyn2GVRJEarXQeYEsY0BvHd94YyAmQbk8tThbgNFhZG4aY+hu
         OANVBpo8DI+CvuDiV4tc+lP0Op1uvhqdhHJYTz9ZDf5i1YgcMz1SxtMIDomcIRAQ1c+L
         tj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761707989; x=1762312789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tfuOdHYPuBbRAFi2S3af3q0yP5GTo3VvO9e3ehC0+QY=;
        b=iSKic2KvtSh3A3RoUpNJaeBtm4GmSmlLEqqQg/WEFQXl2+510m/5VsgzDXJhPgbAvh
         U/aimW/2z88E4hBS3PZM0Gvez1WDu1NR2A1OZWHVhd1Jtb9HDJJ6w5lvBM70O+5mZoAi
         zwkxgcX86RZNNbk+BCsYwWC9r367JztMUQqd144/8lDz4d+uOAmecktl7yKxCRbAva5o
         +nGvt5hqDoBX7iU5Yaajus6BYayWngSNbTKSLG7tufqhixNNxSNrcF4J5ft2aGty5Ndc
         RCYIF9sniWsNIQmMu9ZqlWctKjIYVwKdC6+irqKmtbBkzFZqe4i7fdh7KecV79Myho8t
         2Q1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVr0huLRnBSeWlJ4NfBQN+yb70F2D7AGLAfJcj8dkJXOO4tecgDL8/bMVR2iT+dsFYxUMlwvVCuh840@vger.kernel.org
X-Gm-Message-State: AOJu0YweieXXzgOvLMvX797ViZPR7JFotm0P5f2X5Ph/hoTY14sv0GrQ
	hBzxmscgZ0NERL1OXImlPDZBW7WC9/Fo3WBjRMbn38oPl9cjyYjrlezVeZkndg0Z9ZbWwP3C4MC
	r8oy3Lm+308f/F4gPdyFuOyj5Kwi2umMiZWhGuIV+4+fZDiqGc+TbiRspuYggNT/+
X-Gm-Gg: ASbGncs2MZx/nYlwNbDVl4JCGU5x5FEiqTzZJfNJxF6ylKvmcYN6cwBtzG4MHR5hb4R
	upA3SeIdGjZDAWe5Ve3qNcd6drHHeOx1i2v/baLzSTbg0yDEY0cZUKjMYiLAU+mhTVwQvwRlw7f
	M7NmEBo+esJlQ+MohhDIY5tByFDbbkYWThKUd26v4xzlZ4rE9aPkjqxj1H67Vj2ffZUXVR8Uwz0
	apwxWzZci7j0JjSXamgc8rce8pcE9k4QryGMJx74tRUiHKVNSDygY06mTb/wwvio1tp8xkZSBdI
	zZhskgTf+RctH6YSahI9V7HM+UPuOW6bomqAz6XIwGWjerg1DJObTY5kVT8JnoCPU3HyAdHK8Rk
	h8ei8cq/r5epndor4IqeOqPJPEdK5Ejpd+Zh3H9lfMHjx0om+0QH5ZEU3EEeE7zhn
X-Received: by 2002:a05:620a:c47:b0:8a6:999f:df02 with SMTP id af79cd13be357-8a8ea5951e0mr221842885a.0.1761707988883;
        Tue, 28 Oct 2025 20:19:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPR1bnU91lCiITa3K23J2bvukY1QCUyEKr+SagA9SP4DVjvaGRLpGPgwIenuTxiRjw0NjoWg==
X-Received: by 2002:a05:620a:c47:b0:8a6:999f:df02 with SMTP id af79cd13be357-8a8ea5951e0mr221839085a.0.1761707988386;
        Tue, 28 Oct 2025 20:19:48 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f243142b5sm979056185a.8.2025.10.28.20.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 20:19:47 -0700 (PDT)
Date: Wed, 29 Oct 2025 11:19:36 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
Message-ID: <aQGHyN19/a/tl0BH@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
 <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
 <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
 <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
 <einog245dsbqtx3by2cojyzmyctk2fffpwndwoe24puwqq4fta@cu6iiidxqgr4>
 <0291d0f2-483f-48d8-8c75-f1bbcd1ab18f@oss.qualcomm.com>
 <ehgdx7av3jewowkvtsqrbnsphgxm5hryl6n5otnapi4xneldze@gcwvpssisv2x>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ehgdx7av3jewowkvtsqrbnsphgxm5hryl6n5otnapi4xneldze@gcwvpssisv2x>
X-Authority-Analysis: v=2.4 cv=HvZ72kTS c=1 sm=1 tr=0 ts=690187d5 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=dRtYTIcgi1dzbadgoRkA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: r-Q8g6JdKLao2_cbI99I99Vp_mtj6bTk
X-Proofpoint-ORIG-GUID: r-Q8g6JdKLao2_cbI99I99Vp_mtj6bTk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDAyNCBTYWx0ZWRfXwY/tC2IwzDOC
 0eoUuh2FWI5vKVGqYVOYYRA9ej8nxpJeae2OLl99mMTUzFD9m5EbtbduXobplYUFljDJ7qcXMuE
 Pxra21+sHJQh67pM7vUlSj9+HD+T+5EHWNyOkyI4JRZ2zdqJiwYBjIcQAqXv4bOE/Pj/jXWetpf
 ZvqruQ798sQ4UfCcnTq5o1g5dqwKxl6G6RuZ1sPpAnp+KC3HxUFRZNX7Tp4BeTNevSQ/8X2r3qZ
 APLKeTBsmo5iSXx/oo6FSPohXCphzc1fOwdXUB4zw92eT+4Mhxhd3Em/z1mdsZkuCdG++raEJRG
 wHCy1cxCITVdOazSNSeGemv6nJU4iRzuXSc6W5nvqyNAF6aZeQFChgyvrjccyXCy9W8kbzUyH4a
 b8geFx4RCnOUCyKQ8/qkFuMV3asT9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290024

On Mon, Oct 27, 2025 at 03:29:40PM +0200, Dmitry Baryshkov wrote:
> On Mon, Oct 27, 2025 at 02:20:26PM +0100, Konrad Dybcio wrote:
> > On 10/27/25 2:14 PM, Dmitry Baryshkov wrote:
> > > On Fri, Oct 24, 2025 at 11:27:53AM +0800, yuanjiey wrote:
> > >> On Thu, Oct 23, 2025 at 02:02:45PM +0200, Konrad Dybcio wrote:
> > >>> On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
> > >>>> On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
> > >>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > >>>>>
> > >>>>> Add DSI PHY support for the Kaanapali platform.
> > >>>>>
> > >>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > >>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > >>>>> ---
> > >>>
> > >>> [...]
> > >>>
> > >>>>> +	.io_start = { 0x9ac1000, 0xae97000 },
> > >>>>
> > >>>> These two addresses are very strange. Would you care to explain? Other
> > >>>> than that there is no difference from SM8750 entry.
> > >>>
> > >>> They're correct.
> > >>> Although they correspond to DSI_0 and DSI_2..
> > >>>
> > >>> Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
> > >>> new features. Please provide some more context and how that impacts
> > >>> the hw description.
> > >>
> > >> Thanks for your reminder.
> > >>
> > >> Correct here:
> > >> io_start = { 0x9ac1000, 0x9ac4000 }  DSI_Phy0 DSI_phy1
> > >>
> > >> And v2.10.0 no clearly meaningful changes compared to v2.9.0.
> > >> just some register address change.
> > > 
> > > Addition of DSI2 is a meaningful change, which needs to be handled both
> > > in the core and in the DSI / DSI PHY drivers.
> > 
> > DSI2 was introduced in 8750 already, but it was done without any
> > fanfare..
> > 
> > I see a diagram that shows an XBAR with inputs from DSI0 and DSI2,
> > and an output to DSI0_PHY (same thing on kaanapali - meaning this
> > patch is potentially wrong and should ref DSI1_PHY instead?)
> 
Yes, I check ipcata Doc, I see DSI0\DSI0_PHY DSI1\DSI1_PHY DSI2\DSI2_PHY in Kaanapali, 
addition of DSI2\DSI2_PHY compared to SM8650.

look like I should add: config io_start = {DSI0_PHY, DSI1_PHY, DSI2_PHY},

Do you thinks this fix is OK?

Thanks,
Yuanjie

> Most likely.


> 
> -- 
> With best wishes
> Dmitry

