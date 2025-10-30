Return-Path: <devicetree+bounces-233384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE6EC21AAE
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:07:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E316189459B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E681B36CA9E;
	Thu, 30 Oct 2025 18:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C75Z2qjU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dAEOEJZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F308374AC6
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761847339; cv=none; b=iHpgv1PA+Z+9q8pnKoRZgY9ebldCoVD1KeIKE04DYpo2xmAgjohK1SLuoAK5BFTL+iOyOMbhr8ia2Ft7glrqGySqeqRcYWU7PriSG3FKIshObr2QB5n1cI4Zx4CzD8WIthCXpWK/N7IbOMxc9n3X2K7b46nXQnqD53BVoXk+3SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761847339; c=relaxed/simple;
	bh=ebYkUjTkInC6W+kEnq2zOzMCHyxPH/pnXbtdqaHTyik=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ngxkC51754ML5Vi3wUXtZ640ztEJb61hzqT8TA+u2Fv6Oek3KC9O6da6jnArMNi8jGMtkbPFnctgf4o1KOWchvRFb7uQrwkErhJOqhKKyelj7WBObDR8HKkE5mWBLfcNFhuGIrGJ02rRf91EgcnGEPwC6d6KovIAwmlIrluV1YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C75Z2qjU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dAEOEJZN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UFERdB084019
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:02:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RheHgo5pVuvCVdocn9ENbXAi
	PLiZAdlGRP3oP5F0h2E=; b=C75Z2qjUoMsGdoIq+At1x0n8FOS3Hrzy2R6drmju
	eNqHssKq+SuqRZeOGqSu57BLljrDLuBxYjeKsmD0dFqwlNSvzfdkfX8W9+tdbsEW
	ouK6mQDYttHoYvDvx0yx7T3sSLLXPhplvhCrPcKWuIhLLFPYjt7fpZrFHVepawsB
	omVIbrXJeqvvdJ4BV0H683ffQ1TuNJmdIoSNdmeBJcoDatyfP6lx+w47fZ76RrLI
	Hhs1GZA4zelYxuuM3xs7oS92TSNgIUWtXzVbrbI/9P+HKz/oP9nNcYPLRcNrPRk1
	Vkhc9RM9nf0ocH9ooR3sK5flM4VC/Q18+0v1vVohntiouQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ag38g26-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:02:17 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-54a939c158bso2346579e0c.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761847336; x=1762452136; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RheHgo5pVuvCVdocn9ENbXAiPLiZAdlGRP3oP5F0h2E=;
        b=dAEOEJZNezcTpnPcYdxi9t9eMZiSqk+F2g+hmMtwjhryI8asr8bhcf841BfI/lj6Iz
         6mO8q1uvkAtp7GPbXOGQNuGnd8eVCjBKxKg6UMXrUNutkdkl0eBjiczpGfnUjv7ytAFS
         3VxJixxOuNXFLj/5R86nxrZYwKbLopulhRMBo8XAIknSLkBMNGafj9oOjSHsozCW3+xw
         +pnpkjrum3zKsk5H9DanVH2FDBFvSJLZ7QGvb7syfcflim0y8RIXR9wt4qrDP9VZGAA5
         4oYllDkDi/o2Qz1QZLiGOg0EUxqa9icc/V6XLPLxyjcuKNZAn0vVBOFF7/VimfQ7eD6X
         Jzsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761847336; x=1762452136;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RheHgo5pVuvCVdocn9ENbXAiPLiZAdlGRP3oP5F0h2E=;
        b=h0mYE56Yq8cM3Expz3MiqLEN/3mzg4hSq4p3xru06+C1V9uupMfVjx+goah1qN9349
         ITLLTGOrjdtxPwoW7U+klizcAcLetGEEW+X/h16KMSsW25W0J5DQS5gC/t+OMH1vVYeO
         UJFvB3Af8orPm0YWdREpiHlzt8dluIp2DKEjJAbqrLBB+rNLyp7s9fu41hg/HhOqEdRz
         DrvwyxnB7Dc8rPs3uNqnxsDA5j6kEKRXb7IB4rJFT411NKyy3Hapd7gcq95REKPix6YR
         eyAgtH5EHftgBb+HZYMHbbpiMcyhUGbok7w+xfIV/jaQYt+TH0H5iYQ97l0wab59whWA
         FuLQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7ph+lJusf7WOzi2m73siSDTEExmVGntUmydoL9ic2uYVHddccUm38YUWsFGwcifs7MohqYWI+snGR@vger.kernel.org
X-Gm-Message-State: AOJu0YwJO1XY6ZRXKDO7Mu1fzgJIZhnUJFlyXEgyPay4O2ZwJrpbBELm
	VfbTdCG13VRtJg1Q4A1oAqxb5E0Uqiht+mFCDhLB3XDaO29LLFLcSPDAG9ljav79Ts0EP9NSSk6
	cuW93wPx67RMqcK4Mtf4agOA6YkRocbY5kTA0VeC85tqaOrrlxcneDbT05jY3vnaa
X-Gm-Gg: ASbGncsHV/E8jVNg5el0o1AAaLqjrWT9vwQjQrM9sd55BWkgdMkrfOLaIaLJ02X7FpM
	c0SIew9cy6jjrqsWr4u170BscuEn4O2QR+mPpUXm+E0ORTy5PkWol/wYWf6LwPknZjAubQHB1sz
	nXARsT7eizhymbyJp+iNzlQuxPujjXKb4dPtNvPomUG6ln22NC0cXh5FXuwnmTYC13hAvjUdeg4
	XwUIue0dDX1nUJgcPJzjLVqfwFR04rvpGP35F8cVEHm7cGsUYjBPpkcEAzRagI03QphDW/78j6W
	jrkFm9YT7+xauqfjLpMZPdDr4rJV4od1tEEIUyoC6aO8JIGYq7CevuhZlj/sw/dI/w0dFSGQ9jd
	QeoEw+c+uhjyrecQYpoOlnmA3tYfy41A395DLYC+1xHJHtfBWeQVQHA++JQGF5EghKTfL6qcbx/
	nnNdrY+BGOXTlw
X-Received: by 2002:a05:6122:1b8f:b0:541:bf69:17ac with SMTP id 71dfb90a1353d-5593e47e35cmr384145e0c.16.1761847336556;
        Thu, 30 Oct 2025 11:02:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTUInpRsTJOc8SKFIzEahxJdQTKBRduSeEFhBOHHqnWR1cf+EOntfXk2b22CcXF3blRRpO5Q==
X-Received: by 2002:a05:6122:1b8f:b0:541:bf69:17ac with SMTP id 71dfb90a1353d-5593e47e35cmr384016e0c.16.1761847335762;
        Thu, 30 Oct 2025 11:02:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee092282sm44025471fa.5.2025.10.30.11.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 11:02:15 -0700 (PDT)
Date: Thu, 30 Oct 2025 20:02:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
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
Message-ID: <br3aukcmx3p2mtowqglcuf77s5xfnfv3eisjexabxhjzigkjno@wk7sqptjn43a>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
 <nfekr4vi34ftxzyyf5xv4tsb5cr3tokiyfkerypqjf26dos3uq@42wcn6ji7nnb>
 <aPrre+WXogSZIE7L@yuanjiey.ap.qualcomm.com>
 <st53uwtdow2rl6bvmfitro2dmodxtzfnhyzon4xeeetkkwekxh@ewlzkelq25wm>
 <aQGAvLFkH80Id3p3@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQGAvLFkH80Id3p3@yuanjiey.ap.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE1MCBTYWx0ZWRfX9EAKlzxsjYuZ
 fkvlsQapOSWMsW3ZsFcDD1B6uJKZagAA0KU5a7sr+h5v66mBUbs6PonZqqccjbSBp3QMgkKMk08
 xYj3lrXY895zPMf0QzhqTqVUaf+CY1Y0f25cf2j0rJ6cpS88P+75RHDNV0/y1jxss1RteT1ctf6
 aL3dpjDnQC6sXrrbHVOZkQfDbMr+5qoXff6HWDKvWlJqyDz3pegearIHfiuGn6+l7Y4shrgvY+q
 4Y78BCPmA8eZYAw/cds08Xsp0Pm+Wdx6A019TV9Ln7g42e+dulxPuk+zppu/A4uP4SzPyIJ6KwN
 ehPzEAk/KVx8Vw3336OiilpY4tBSipKxyrCN6g7jsM5dLoSF2ncQFj7bDMHHcV4QxbZU4s33INs
 jTxtqDmLAEXaGm1nYbeYedqC1Xxhaw==
X-Authority-Analysis: v=2.4 cv=TrnrRTXh c=1 sm=1 tr=0 ts=6903a829 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=4LvRZMndKBpg9nUHPPEA:9 a=CjuIK1q_8ugA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-ORIG-GUID: 8dRh5CRKXjlJV3v3QIltCZjfRvi_nGH5
X-Proofpoint-GUID: 8dRh5CRKXjlJV3v3QIltCZjfRvi_nGH5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300150

On Wed, Oct 29, 2025 at 10:49:32AM +0800, yuanjiey wrote:
> On Mon, Oct 27, 2025 at 03:21:33PM +0200, Dmitry Baryshkov wrote:
> > On Fri, Oct 24, 2025 at 10:59:07AM +0800, yuanjiey wrote:
> > > On Thu, Oct 23, 2025 at 02:59:12PM +0300, Dmitry Baryshkov wrote:
> > > > On Thu, Oct 23, 2025 at 03:53:52PM +0800, yuanjie yang wrote:
> > > > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > > 
> > > > > DPU version 13 introduces changes to the interrupt register
> > > > > layout. Update the driver to support these modifications for
> > > > > proper interrupt handling.
> > > > 
> > > > So... Previous patch enabled support for the platform and it has been
> > > > using wrong registers for interrupts? I think that's broken.
> > > 
> > > I want to express DPU 13 has different INTF register address, so need to add new
> > > interrupt array to let DPU 13 interrupt work fine. Maybe I should optimize my commit msg.
> > 
> > Make sure that patches are structured logically. You can not enable
> > support for the hardware if the interrupts are not (yet) handled.
> 
> Kaanapali Dpu interrupts: 
> INTR_IDX_VSYNC,
> INTR_IDX_PINGPONG,
> INTR_IDX_UNDERRUN,
> INTR_IDX_CTL_START,
> INTR_IDX_RDPTR,
> INTR_IDX_WB_DONE,
> 
> are handled by irq handler, so here enable dpu_intr_set_13xx. 

You have enabled DPU 13 in the previous commit. And only now you are
adding support for interrupt registers on DPU 13.x. No, that's not good.

-- 
With best wishes
Dmitry

