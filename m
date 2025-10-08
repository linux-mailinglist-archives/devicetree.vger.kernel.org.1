Return-Path: <devicetree+bounces-224636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34539BC67D9
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 21:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2BE7404E8A
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 19:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BBAF26CE2E;
	Wed,  8 Oct 2025 19:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BrCoFU31"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62D425FA05
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 19:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759952449; cv=none; b=SoreFs+amZjBwUeBT2xQrGG/4MMyYuQALPqd5nD9TUT8kbdkJzo88jNmOb8PxOQjJ+rVdoMcwzR9eD5HA6UOZvScx7x8JHnLp0yjcavLKKjrfURO7GDLcM/2KJ1kqsPwyVHUz4tyECljvktmNwNxIjWKkv635FTXaw3oMXMhL+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759952449; c=relaxed/simple;
	bh=wQSVggMO9rRkpwuF0JE7Xv1Qwj36d37Nyd6py2yeaTc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=acFXzk68d6LA/HPGLLs5bWqvGy2pEKR6jBDkdGr/TJWyvPHFz36/xxT4TgVnyncFRyWVLmihpdcbO/bmfygDuvVbE3Qvao1Np+rOUsV2hBEYT7GE1fVGc1zrV930Ayj8T74VmhybHAcuaSFdneXQep+F4m6dSPVYONz+X7fyM+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BrCoFU31; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5N2x006858
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 19:40:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BtratBBxMg1ixyPYUlq5M5pLFBJ+PhbCyrjACUqLIOk=; b=BrCoFU31o/H/HOCY
	gZSZi5L6ppFxsWNzIeUXusGh3y3l8kXd8/QxbERrbWIWkNE0CwVg2bSKfTpNEw+1
	/01ESgWMGAvwj6LGFQYPp9AdFLhYuFmTwArKejT21JmOxFE321sRUhvxvdcFJ+nz
	Ms/mO1nQedwr3G43fb70NoZncfoeUFT6ZqCHd18wjHnCidPmlwL7WuBLVttZn5/W
	uS3yHVt43I00X47asnMibYrZkU4HNszypEo+BHK8nNq4025Yxsy/mu+PH2KNLDsr
	OibKYhVSPgiSEky2PcKzOsDRXs6XpnvpTMtihDpEkd2oAEj/FmErHe+O5O3kQU8K
	89Rc/A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ngds8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 19:40:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e5739a388bso5319951cf.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:40:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759952446; x=1760557246;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BtratBBxMg1ixyPYUlq5M5pLFBJ+PhbCyrjACUqLIOk=;
        b=EPGORO9mRUpyjt7lplp+wQ1Ta0q8Xef5im0Z6vUvMGtMOuTHPFtnVm+5icp9ahxtt/
         eHpV1XKaxOM0Y1nQnvVA8TU6Xm+VbW8lnNNuB6Eo2EdkvXAIwmZ5zr1abLrwEWhldwxu
         Dx+rfWbfykfdJAP1o2zSXnW7oxiU61GtjVM5MjP+b7I3yuDoa+AsQhQtxyc/p9za4iTB
         u2AiAxUiQpa7DRExHZTAqoljFOsKmjclacUaKT6EOoogLYmNNv8yxbcOlVk2xC1wG/IY
         pCrUHP3uwsCNcUAXPrTTM2lP3Lj11jtj9l3XPKxklMQ/aMNwmSuaqWwIICXSYUZnlNMS
         2BGw==
X-Forwarded-Encrypted: i=1; AJvYcCVlNYjZxnhwfTJbMPbAgQPRjBC1/KIFM73/AK4ao7Vf/WA1G4CzG5hM75b01Lcdds/4IqVVcjf+96Np@vger.kernel.org
X-Gm-Message-State: AOJu0YyaNnF98zJviDV2cAJ36amkv8K1AOURFJVL5fPRb8iPNHiHQ7CU
	+PPNJ1DQpN6klEGP9B1rmTTzeGpPMJef39n5wl2TEdy0gdaVCUh7uY6rbhZVRZ+HlqwUdqwA0iU
	PqEH82A9YwnprWV53PxomUJpXdC6FSYhM4sCTR272c0mRhvs9KzaihG4AZEmcXbgo
X-Gm-Gg: ASbGncsJWWqkJemIEcGqX3YGBZ7JlX9OLclTWY/BWSz73nOCgh/oeJqrsCb5JImSRqo
	NazspbJhHM5lmzHEBZYHjA+h408h+w37q3ThXQw7Sx0VF1TFRKHbWYqj5nrFchlKV1Y82FO58yh
	E6UpKvxClUZFXISRUk9NaEECkkNbrLdxe093PCqmlC2gZE3lAKQ4D59SXG8XfmhH5xpvPK4GtD3
	7Rn5ovSYgQQc7Wstx0fzXpvL7UAnuMy2A75wjc0P+Fuh0yLSQ10bu5RdI5rzVCfjOqt5LiUx77f
	eKRmBIejrTmr+wdBWn7yr9mVvaRP9fNX46sTGVtOC0fHJMcin84AB0+H1YHGa+RfBqazWEFXZ1H
	ApMHo3FX+4cGXnU1oiy282HvODlP9OLvo/u2rVDwT3GqoFQZhWJj1tTQKfQ==
X-Received: by 2002:a05:622a:507:b0:4c9:3d38:1107 with SMTP id d75a77b69052e-4e6ead4a2abmr65665191cf.48.1759952445341;
        Wed, 08 Oct 2025 12:40:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFEJXDPLLxzLnybFXlAAWwjDEdwLt1QerezkvfofYClTYGZm1AnZl4wYTYnkBSsh86yJaleg==
X-Received: by 2002:a05:622a:507:b0:4c9:3d38:1107 with SMTP id d75a77b69052e-4e6ead4a2abmr65664301cf.48.1759952444493;
        Wed, 08 Oct 2025 12:40:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f39f93d6sm22669541fa.18.2025.10.08.12.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 12:40:42 -0700 (PDT)
Date: Wed, 8 Oct 2025 22:40:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 3/5] dt-bindings: display/msm: Document MDSS on
 QCS8300
Message-ID: <cwuecyparlinhtdqckff7vdqpkio2kk7dwemzfao6qkhnuzhul@mfyqdphfvbdg>
References: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
 <20250911-qcs8300_mdss-v12-3-5f7d076e2b81@oss.qualcomm.com>
 <20250918-spectral-seahorse-of-witchcraft-69553c@kuoka>
 <b745c515-2264-42aa-8d92-663efc7f6276@oss.qualcomm.com>
 <6c195b42-d994-4d24-9c40-48d8069304e3@kernel.org>
 <rkuihu3pmhexeahfch6j7bvwn5rn4ecccbhamluh7fas5qgaup@av2foeiwmcz3>
 <8a6861a0-f546-475b-907c-65b691d1d340@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8a6861a0-f546-475b-907c-65b691d1d340@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX8mb/Pl1ydkur
 gtPbOgr9NsSPjq7kbR6XXzQ/vJplcSFfOrpp2h/Wc38Ww2N0xhhxalbuRatxyiZy+PshC38O2Dx
 mT7ubqImE3VJRoAaYNqjnuuNxlR2rupJRDHwWVmyJDrfwCGPKT1t6ckFonTXKBe9T2fygHbrZVC
 II7smWW0Bf5DIiJAFA00tOjDDTkAqqx0LlOYMT+bHHn8UAPkaC5mutCxkhXw3NQcEUonI6XLSxQ
 foqbjFX/LxhMzO56JNqPILqfs6XfV8NAcFP/u9eWoRIoFkGWzI/18F9vSrq/F2VbWqbbrFoM7FA
 01GwwJymiS/RPj1aG79JjLbsAUMbjZ74Be1PPROgv0EL8Kd3ah++sBu7rwVTnLqJgr282eZ4dQx
 j7jTSSDB+uDwEVnSHLRNYC3KrZTrWA==
X-Proofpoint-ORIG-GUID: rdg6-lVGsmCF98Q9xBz66bcXAXOqA5Je
X-Proofpoint-GUID: rdg6-lVGsmCF98Q9xBz66bcXAXOqA5Je
X-Authority-Analysis: v=2.4 cv=VK3QXtPX c=1 sm=1 tr=0 ts=68e6be3e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=C8UiGOM6HYQv_yXpghgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=d3PnA9EDa4IxuAV0gXij:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Tue, Oct 07, 2025 at 03:43:56PM +0900, Krzysztof Kozlowski wrote:
> On 27/09/2025 08:26, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 01:34:39PM +0900, Krzysztof Kozlowski wrote:
> >> On 18/09/2025 13:14, Yongxing Mou wrote:
> >>>
> >>>
> >>> On 9/18/2025 9:01 AM, Krzysztof Kozlowski wrote:
> >>>> On Thu, Sep 11, 2025 at 07:24:03PM +0800, Yongxing Mou wrote:
> >>>>> Document the MDSS hardware found on the Qualcomm QCS8300 platform.
> >>>>>
> >>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> >>>>
> >>>> Patch v11 and still basic issues. I am very dissapointed.
> >>>>
> >>>> <form letter>
> >>>> This is a friendly reminder during the review process.
> >>>>
> >>>> It looks like you received a tag and forgot to add it.
> >>>>
> >>>> If you do not know the process, here is a short explanation:
> >>>> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> >>>> versions of patchset, under or above your Signed-off-by tag, unless
> >>>> patch changed significantly (e.g. new properties added to the DT
> >>>> bindings). Tag is "received", when provided in a message replied to you
> >>>> on the mailing list. Tools like b4 can help here. However, there's no
> >>>> need to repost patches *only* to add the tags. The upstream maintainer
> >>>> will do that for tags received on the version they apply.
> >>>>
> >>>> Please read:
> >>>> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> >>>>
> >>>> If a tag was not added on purpose, please state why and what changed.
> >>>> </form letter>
> >>>>
> >>>> Best regards,
> >>>> Krzysztof
> >>>>
> >>> Hi,
> >>> Sorry for the confusion. I did intend to remove the Reviewed-by tag, and 
> >>> I mentioned this in the cover letter, but maybe explanation in 
> >>> cover-letter was probe not clear at all.
> >>>
> >>> This patch includes three changes:
> >>>
> >>> 1.In the displayport-controller compatible property, "items" was changed 
> >>> to "contains".
> >>> 2.Use "qcom,sa8775p-dp" as fallback.
> >>>
> >>> These changes might not be considered significant. So I’ll be more 
> >>> careful next time. Thanks~
> >>
> >>
> >> I really do not expect v12 to receive so significant changes in the
> >> first place. If you keep sending us buggy code, which then you keep
> >> changing after review, I will just not do the review. It's easier for me
> >> to wait for v20...
> > 
> > I'm not sure how to react to this missage. The changes reflect the
> 
> 
> This message represents my annoyance with low quality submissions from
> Qualcomm, which needs multiple iterations and often apply tag, then
> change significantly thus drop the tag or completely ignore the review
> tag. And I review again.. and tag is dropped again because patch was
> again seriously reworked. Or even without serious rework - Qualcomm
> authors drop the tags, just "because".
> 
> ~2 months ago simple patch from Qualcomm required three involvements
> from DT maintainers, because even trivial patch was being continuously
> changed and author was dropping or ignoring review tags.

Well... 'Simple' DP MST bindings also required several authors and more
than enough revisions because the hardware is not that simple. Gaining
more understanding of the hardware caused changes to this patchset too.

> 
> 
> 
> > process in other patchsets and in my understanding on how to describe
> > the particular hardware block. The changes were reflected in the
> > changelog. If you plan to review this patchset once you get back from
> > your vacation, that's fine. If you don't plan to, I can ask Yongxing to
> > send v20 just for that number.
> 
> Solution for me could be to ignore Qualcomm patches till they reach some
> sort of maturity.
> 
> I am not planning to review this patch, because:
> 1. I already reviewed it, so not really necessary, but even if I wanted:
> 2. It is gone from my inbox...

So... Should it be resent to get it back to your inbox or should
Yongxing just restore your tag on the grounds that the changes were not
significant enough to drop it?

-- 
With best wishes
Dmitry

