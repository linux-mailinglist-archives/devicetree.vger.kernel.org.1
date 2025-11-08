Return-Path: <devicetree+bounces-236330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 392E0C42FEA
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 17:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E69023B0003
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 16:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 838C823C38C;
	Sat,  8 Nov 2025 16:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CWe9C4cs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g0Ol+GVJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7C2233D85
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 16:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762619500; cv=none; b=lWPxJX/uUSLZitN2eF+Z+xZVom1OiZPFruuuo6LWItwDChnaf0Eu/SS/pHSlYhev1LboHVxWdXfBL7XMUNTrh4RX7lpjPXZbTGB6HdS9somOLLACMmskBOTh1e783/jB1k29fVacbzuiNZXVqWHQtjK2MyOPTpyYPsant4dkokM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762619500; c=relaxed/simple;
	bh=H0QqqNPKQDNyF8C9ufQMizCo3v9IgWGrDAhlmIpUCl4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UZTSLMnYt3fLALmHWTWtPIIA93Dus9JyMAofdSXkRGyyeJG1BoXfClRCh/s9UpVYg7AHYFbqZEkG/vl+oJFY3/tX8mwyf+KMMOEXo79E9Vre9Sc+EGQbzP8jNK29X+ZwRHb7tfOTuoBoMbuz+tuOeuHdN03yVNVy08leBEso2ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CWe9C4cs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g0Ol+GVJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A8Ek9lH2220318
	for <devicetree@vger.kernel.org>; Sat, 8 Nov 2025 16:31:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qaEKEmzWL9qXI7IZRxJYbaoC
	kmFZEQ/8DgRsPMFUVT0=; b=CWe9C4cs3jKG0Nm3cV6U/ZoZxA+aAiX7lQw9tHbe
	LAtLeIBRz+o78IMHwOqWAD3U4DsOYdVh4iXio27OwY6pnXIXf94XDmhynUtsSM9G
	knpgmgzQv1vgtwNHiq+UN39vHCCE7IxtvHt9QTL4m+vF72VCNFgTnttbXcwP2NMF
	OFjQDsmsuGD5vNm1ywpkGKSr2HRgWN26M5ZxLGMMJuZaksWsVuLQmHU6B5TrLJ1A
	M2jh3iqJiOj41HSZvcsOaFlpuXD6WR35XL+IriaXCaUSr5TsR//iFolZFuHjdDsr
	Z6UT7empqlqJlUPgJfmNLYs+PacRjn+UqRNkuTH4gvb5Cw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xu2rugf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 16:31:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e8916e8d4aso73041501cf.2
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 08:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762619497; x=1763224297; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qaEKEmzWL9qXI7IZRxJYbaoCkmFZEQ/8DgRsPMFUVT0=;
        b=g0Ol+GVJXf4gxAVXKXpL+kcbxvnycPpracUG7bK0XT5cxZaJ4Ftfse3TrUMHlMC/Yp
         s5+rPMQCJ05vHs/WWrzN5RJ5F5qk7utXmdkF17rnn2jFmrFa0HIKM4BAs3Lrj4b/3rsr
         nmq7BcRI4FXpM7szwLQJsmsv1UlFunn5OR0fS424mWKQ20aZePmSiWA7RL2PX3SqAqnb
         7Aaw99xVHIa+IJbMw2YdjcgTLqu1pUvhD7CQDRfCz3Wi84NioGpJziS0tJIDvfTQd6cN
         DjNMdpDz8U9Lu1WsjqmXIeb/4IPHFxpcqQgC2kd2wljs/J3UvDvUt6mi1P5T1fym7tjK
         kkhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762619497; x=1763224297;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qaEKEmzWL9qXI7IZRxJYbaoCkmFZEQ/8DgRsPMFUVT0=;
        b=IIgm60637OKbZbiG3B9U4pU5dtElCqNtKkOxduSYVbV3jEybwOGSHbwXzcK2F6zS/3
         Zbhv4J7j9poWDMZ/vzLhw4FJwBj+na2GCjICGmereJZhyQt6hHMbItY30x14Wwd7/JBJ
         BunrjIKJPCT7BB04dLIGDZVyv3Aj/xdppqBm1bC4OR4i8mdK/YbI0mj6KPeb4SqzNu5O
         Ys5qaIlAH/z07EAD3BfFT2e6plejWmypS4dUvR3QpmRsvTTaNCD6MNtubB0PVImuzZZo
         +kCL45kXeetlabCTZibHeNE2gNOSAX8klRpNtFKOCLj9sLAVoNvmQBH5N4u+/Bzo3dyv
         RNHA==
X-Forwarded-Encrypted: i=1; AJvYcCX1+/RFjZmfX23OJi/Nh1IcWUnkErM5TE78BduU3B/bmkCnCSuqiSBOYMZNCQerChKZ+Sk6gSoArD6U@vger.kernel.org
X-Gm-Message-State: AOJu0YwIOSNn9msU2fZK4FitNUXSlRiJazsj9hI5pTSItVeg90LkZMDk
	EVx3ln9FenocdXeU/yLxlG0RJzPiic/l3FMb+NTLGCeDIntiM+2HLiF8HnSIlb5yKfcNWGsMdAv
	Lh9RPExXzfbNmXpUicmKVJ6Q1bfjmMAgoFmZcheTKHF4wemWgAiL58+Mzt98Nst9u
X-Gm-Gg: ASbGncvtrFiykUl1vS8OSvEkKbyukttr5NTXBSQDdvaLJhh0K60oyXfZd1XJG1FLOoS
	dtMG9dQwo/9TUpkDkvaIbUsyq8co68HbNuaxqZF8jbu9bPUJNlxIxDI3o6jYnrfmrDLB9xM+s/T
	6t5zm4F6jH663zQWpGb/RWnlbYgHN+WMTY41zGmUQqHcaBKbdd+AFnG6hOJ6M7qMeQqeqL5ybAd
	TOA5IFsPrYRVH3t5B/zJ7hytyIrPjTY8m+d0e1f9+hvDdXMQ9elZbT7xp7hxJHEZfBM2Fubfsg2
	dizmzG7xxaLjN3WJXEZyGZwpQ1YLXiRPa2smecLB9xfS3/R4Lo1G9uCN+yP6jREGuHCexHjUcju
	iyGTQ46P1dFSTIauuXYge9HwBrkHZ0rVv79n8N06DW/EInJRjaDrDHIlsr0lxx4WkcDhzf1PFF4
	IA4I3vcE74Kx2A
X-Received: by 2002:a05:622a:1f17:b0:4ed:aa2b:169c with SMTP id d75a77b69052e-4edaa2b18ebmr20361441cf.71.1762619496787;
        Sat, 08 Nov 2025 08:31:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFMbAkZ6c57mJjncJ5Chm4Lvy91cRVZxys7XrDWkXTtLF+qaSCIgluuFHJVziOeJ/04eYI5Vg==
X-Received: by 2002:a05:622a:1f17:b0:4ed:aa2b:169c with SMTP id d75a77b69052e-4edaa2b18ebmr20360911cf.71.1762619496330;
        Sat, 08 Nov 2025 08:31:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59452a25ed7sm1847724e87.80.2025.11.08.08.31.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 08:31:34 -0800 (PST)
Date: Sat, 8 Nov 2025 18:31:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        linux-tegra@vger.kernel.org
Subject: Re: [PATCH 11/13] soc: qcom: Simplify with
 of_machine_get_match_data()
Message-ID: <3q5bpkktogs3pxjboihynjduabqrcuayyexjqdv3cgp5krjaxo@afnknyguuzxl>
References: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org>
 <20251106-b4-of-match-matchine-data-v1-11-d780ea1780c2@linaro.org>
 <odmsib3dsxzzggq4gcx7gmh6vq3crlv25fz4z2l2ntezvx6gbi@uelqojwjjait>
 <a8952b46-94b6-4fe5-a5be-d69aa41d44cd@kernel.org>
 <a06ed143-c497-4141-8b4d-98fcb322e130@linaro.org>
 <rxhmiudlnrn2pexqtwuuv2jrenrl2ezepknvrc3o34gaap247u@2tsfw6g33rmr>
 <8fc8c945-ae67-4c58-837d-40bdf4d60035@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8fc8c945-ae67-4c58-837d-40bdf4d60035@kernel.org>
X-Authority-Analysis: v=2.4 cv=dMWrWeZb c=1 sm=1 tr=0 ts=690f7069 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=J7bR4seyIF3FtxC4LtQA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: u3vpM1uIlYVTY80vpHFgAmdZGr0IC4HT
X-Proofpoint-ORIG-GUID: u3vpM1uIlYVTY80vpHFgAmdZGr0IC4HT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA4MDEzMyBTYWx0ZWRfX1V2yauzwXlU5
 huk90p/M6yl1j0fwOj4CgQngoJ4O3LcI09fza0gBQoFv4ANhBAj+Sbus7IaycOSt/ECYKbuqS8w
 jHpcvQxY8ZhbwqPM1LYdMBEludyfAzbHdVnKqKK57AtPSWM1zOib3VPKbh1igYWTxaSf0/YcjUh
 /KV+cvYPJVxfQBpu2jd+DrIV3ErkU3ZH/xBvcwd+O9pxqhzzNdKRQjuXtsbbFd8fcQ620mBbCQU
 1OZlf0pkUspzW0vK7O5pbn92N7ONUnWerCDjKM0wSFX6+RjhQGC5MGhH4VMfltM+s2oRG0Trhvr
 DzETTIV+v+LWsOJpSD5y4I8aK4dRBfZKZgL8IXjrW0XLpaFDaA00Q5E3Q9tUriqzA1GiQk7VMHj
 aev4T9XuDec4zoS/bJiifAeE9sSPNA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-08_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511080133

On Fri, Nov 07, 2025 at 03:58:26PM +0100, Krzysztof Kozlowski wrote:
> On 07/11/2025 15:23, Dmitry Baryshkov wrote:
> > On Fri, Nov 07, 2025 at 08:08:28AM +0100, Krzysztof Kozlowski wrote:
> >> On 07/11/2025 08:02, Krzysztof Kozlowski wrote:
> >>> On 07/11/2025 04:19, Dmitry Baryshkov wrote:
> >>>> On Thu, Nov 06, 2025 at 08:07:18PM +0100, Krzysztof Kozlowski wrote:
> >>>>> Replace open-coded getting root OF node, matching against it and getting
> >>>>> the match data with new of_machine_get_match_data() helper.
> >>>>>
> >>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>>>
> >>>>> ---
> >>>>>
> >>>>> Depends on the first OF patch.
> >>>>> ---
> >>>>>  drivers/soc/qcom/qcom_pd_mapper.c | 17 ++---------------
> >>>>>  1 file changed, 2 insertions(+), 15 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/soc/qcom/qcom_pd_mapper.c b/drivers/soc/qcom/qcom_pd_mapper.c
> >>>>> index 1bcbe69688d2..07198d44b559 100644
> >>>>> --- a/drivers/soc/qcom/qcom_pd_mapper.c
> >>>>> +++ b/drivers/soc/qcom/qcom_pd_mapper.c
> >>>>> @@ -613,25 +613,12 @@ static void qcom_pdm_stop(struct qcom_pdm_data *data)
> >>>>>  static struct qcom_pdm_data *qcom_pdm_start(void)
> >>>>>  {
> >>>>>  	const struct qcom_pdm_domain_data * const *domains;
> >>>>> -	const struct of_device_id *match;
> >>>>>  	struct qcom_pdm_data *data;
> >>>>> -	struct device_node *root;
> >>>>>  	int ret, i;
> >>>>>  
> >>>>> -	root = of_find_node_by_path("/");
> >>>>> -	if (!root)
> >>>>> -		return ERR_PTR(-ENODEV);
> >>>>> -
> >>>>> -	match = of_match_node(qcom_pdm_domains, root);
> >>>>> -	of_node_put(root);
> >>>>> -	if (!match) {
> >>>>> -		pr_notice("PDM: no support for the platform, userspace daemon might be required.\n");
> >>>>> -		return ERR_PTR(-ENODEV);
> >>>>> -	}
> >>>>> -
> >>>>> -	domains = match->data;
> >>>>> +	domains = of_machine_get_match_data(qcom_pdm_domains);
> >>>>>  	if (!domains) {
> >>>>> -		pr_debug("PDM: no domains\n");
> >>>>> +		pr_notice("PDM: no support for the platform or no domains, userspace daemon might be required.\n");
> >>>>>  		return ERR_PTR(-ENODEV);
> >>>>>  	}
> >>>>
> >>>> Here you are mixing two cases:
> >>>> - There is not match in the table (in which case the driver should print
> >>>>   a notice)
> >>>>
> >>>> - There is a match in the table, but the data is NULL (the platform
> >>>>   doesn't have PDM domains). In this case there should be no notice.
> >>>
> >>>
> >>> Why? Existing code printed notice in both cases. Why refactoring which
> >>> tries to keep code functionally equivalent should change it?
> >>
> >> Ah, you mean there was a debug before. Well, then I am a bit confused
> >> because table has entries without data (so expected condition) but old
> >> code returned ERRNO in such case - so unexpected condition.
> >>
> >> Wail failing the probe on expected condition?
> >>
> >> Unless it is not really expected and notice in second case is valid as well.
> > 
> > If we know that there are no domains on the platform, then the notice
> > definitely doesn't apply. Failing the probe is a separate topic. The
> > rest of the code expects that _qcom_pdm_data is not NULL.
> 
> I hoped that separate topic would be the reason, after commit msg
> adjustments, to keep this change, but if you insist that this must stay
> debug, then this patch should be just dropped because it is impossible
> to achieve with current helpers.

Having the same pr_notice would be misleading: we point users to running
userspace daemon, while we _know_ that the daemon is useless because
there are no PDs. One of the ways to solve it would be to add extra
wrapping, so that the data in the match table is never NULL.

-- 
With best wishes
Dmitry

