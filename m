Return-Path: <devicetree+bounces-238632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAB4C5CC5B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:10:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 659AF3AD633
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E143128D4;
	Fri, 14 Nov 2025 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aghzwQbg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D+M9TUyl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A702FB0A0
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118634; cv=none; b=HE6VmF0Pr1/8fK1jGFUWXhR8naeS6m6FeOZcoKfYCiE4booN0O++214SNMMqfGP2x1VJPafHswT4dnxd2TguL0HMrmpG8y35GT/OZsnL9s5u4t+5PifJ6VmsrapdL8RjLDCC5r5L46aVgIyZBF3UoDglC+reBg106Zy+APBq5ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118634; c=relaxed/simple;
	bh=1u/88aZEkYnOHobNaJAku5jCR7tdg9UiWQJnsk0/MpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P73HfYbzvRoDqIc08rNtrxMKMOgrx3JQ4P7mQYz8MmQbtkK6SRCcDaglJAyRjx61t/7cvscohnZExlWB/D5E5jSDIgB2RoKqtqITkfVkhZ3sZRjjQdDBAo3ZGxt+pj02B/8vPfofCWi/YmuJzrrdIJtNwQPHSCIq+OOAB5zDWF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aghzwQbg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D+M9TUyl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8MF851585454
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8LtvBIz7uXrsDF0GFSJSBjqW
	FQe++2p+MCy95jT0PIo=; b=aghzwQbgVd7YbNYn45vsteO4jSkRX3uQr7AoVcjy
	pEWhOFYo9Ppqfx7ZwkW9Dk5/P80kwEmcos1XuCimXy9B5D3+7HOIc6fHYW7VU3XZ
	tzi1cDrKKqS/FV0MnjFTqUgrsYLeli5xIeLdhrAPc//RI6c/+7CPlcSQxfK4zjIG
	zztx2BotX8jj9tUjAYAr6T1tkNtBktykf1py14rA2hRFHCbMPlFZ4rDNb4bJBLqu
	NJxAY6uyTD9iLH7y1Pgb0PXoNLYrCyGtoN7X+IcxDM5zRLCePJd9kvp0SHSyid5N
	GghPK9S3w7sEfWPkfgqPsBDJRQo+WrZSiYDtteEbBt5Uug==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9fsy0q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:10:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edd678b2a3so29610621cf.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763118630; x=1763723430; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8LtvBIz7uXrsDF0GFSJSBjqWFQe++2p+MCy95jT0PIo=;
        b=D+M9TUyldW3nqjGkY34bAHqWBS0yJE5zx3dnhLsezIanBm4mQp2VoI1tTNF49cpIFo
         /6DVJ06U0GXI9uUZbYvtuEBmb59iXfID1egmS3Br6OwgJ4GfeU2i7I4yaGwBv0NEVX+Q
         LrerxqiiNYhORw6DSW9qDA1Y19iCsLcWoMqWXe1hIeKW4vxt6ymE/d199yS1AVbnKk8O
         dbkrudWQHcpgTLAv+6fGsZ/fyWPWPLxj7uimsQOYz6cpZIio0BAUSfF0S27B1Z7D5vIC
         tjb7ZQ4j5etboa+3DjwrQ2CO8UaaAqyA4Epss1RHju5PFIRlDv4ZgdXuVscrRft3QAub
         SsWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763118630; x=1763723430;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8LtvBIz7uXrsDF0GFSJSBjqWFQe++2p+MCy95jT0PIo=;
        b=jJLNo6pB5iTYWq1ki0zezIM3yBBgUgh72PjALAg0Nz8pE0OSubf1MvJRv5Cio+qcQe
         jswRa65ZCZwlEk9CPyExlrVqKbXhLE82z0229jFcij7Qlu7jf2Y0l67fIaNPl5oT7Eya
         Z8lkSir0VXdo/kWiKGEPXjkWCFfATeeH7w5TLePVcbTPLgDVKemvlVlOU4Drlbj6KzLv
         BZ+imM02Y6X0tZ40/MatQmAU7DuDIBsVEYUmRz4QV84jbFzPAe1YxzshjKPXL+kxFhHj
         FbWkfcOqLfGQiltrQj0doE1ObmqH8XwleoWt6DT54NvcndAJfUTBeI0rvZmmFO+x4jxr
         pJMA==
X-Forwarded-Encrypted: i=1; AJvYcCUdHwF+Pab1TcQx7nVJtJLYbN+aSRQQVZFSgxg+UZaOYhtpCFQ+8eM4V/VINbrE3jC6VkhQlOq2ZlDx@vger.kernel.org
X-Gm-Message-State: AOJu0YzN6wanhEW2wlbliidvNf+V2uq/p+2WrXz8pZOCCBHSte8FdZkO
	vE6ZIOyf6sL1cuuzM0/pqJivYfVorx/RBEfEBlGnJmRSZIM2hWlPeEB2FxO9Nj9dC/eu22S8pnw
	dQK1uqosaU3gscUf/47/GFPWwuB32OPDSk61E9hesZA9tRB1tToKI2qT5l8MJnzGo
X-Gm-Gg: ASbGncu01KKQ1Lpz77Ug9QgolAJE16K2F03ggxUJKa5H9av/haBP1x1kdq2H5yREKxG
	9gSyq+PVbHPCkZ/qkmB55AnzlaLJqskT99nqRVnMPw1fXa7YT7b2I/oC/iBwlD+Y2GazFbcWH4F
	SkdNnvWbOW1Z9Js3eoLGmdO/fAF9ltn+QGWfezm/9SJuduUOPnkkRoNEmK/lqbOJDPqMt5KvLv6
	RxQS3Un6lXIqjpRCewcEjJ6AseV4F7B/MMlF59wrwqTK9P74XALbHFZ8j95r47Lu5UGwRkdvYLD
	BXRzEYlgsaB9dcXr1Lmj8tahz4oYV3LRlmDlNMgHGkkdPR/TWlUFErydI9A4PCNaumW4JTxLGAK
	SKKMSNKEWCGuZaL0Dl+xKzBMUYxMOjwVfNoG0LaeH5MhtIzxqsMpPy8d/NRwdjFgP+Svbay9Hk6
	N+D3PemYkXvfzA
X-Received: by 2002:ac8:5d05:0:b0:4eb:a3fb:2864 with SMTP id d75a77b69052e-4edf21369c2mr35563691cf.69.1763118629568;
        Fri, 14 Nov 2025 03:10:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIXQ9h0ZcSZlAXsW1jowVrI+xWvjDN8XhdTK/MeV7rPhtP5nNmOWKML7enJxk3NyGMdXK0pA==
X-Received: by 2002:ac8:5d05:0:b0:4eb:a3fb:2864 with SMTP id d75a77b69052e-4edf21369c2mr35563251cf.69.1763118629013;
        Fri, 14 Nov 2025 03:10:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804004b5sm990934e87.64.2025.11.14.03.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:10:28 -0800 (PST)
Date: Fri, 14 Nov 2025 13:10:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: hrishabh.rajput@oss.qualcomm.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v7 1/2] firmware: qcom: scm: Register gunyah watchdog
 device
Message-ID: <tidx5vumsk2vnofoy6cp6unfn34kb4prmkh35xocbzafj55pxb@x2x5cqynofs6>
References: <20251114-gunyah_watchdog-v7-0-f5c155b941d5@oss.qualcomm.com>
 <20251114-gunyah_watchdog-v7-1-f5c155b941d5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114-gunyah_watchdog-v7-1-f5c155b941d5@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=69170e26 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vhl0b9cZdAc7jHreLUQA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: CC8a42MMTEi0SCLVzvjhI5SAG5bM57gs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4NyBTYWx0ZWRfX/IjPRM5QqCT6
 vLKiInSHu5Hi9BL2vFelY9eqeLfHZd7xf78dENmCUpU9NiR38UXLc5pp1SWNKqj++NiVEOIzOHV
 nto0KEWfBIT6O0Ue9BDB1MpV+t78gu9bCLmUXZqLkD4LyPOjxx9oT2G5yzAQ1wdtDrsxoc907P1
 hq97XIPRvDsUXu2KJXZ2enfS0R7Mr27v+Eq0mIxnfDO4kxIpfxCeU2QiGUkauoZFjl3qPkW6pWM
 woDsxqSojA1cJSqdWiRVrUcwtJogewz5u6dCmKEIKR2LcFHYZX9r5FIlD7QA01MVaUYTPd8LWvz
 s9Y4pe/M5VlBL7XDgWkJsg9p0evO6IfctvPxjt4/DEdbnATba5z3SKUVtJGsFQ9/B4o/lrl/bhO
 CEzLaE1mpoJi1hc/GdtmukiuCquJ2g==
X-Proofpoint-ORIG-GUID: CC8a42MMTEi0SCLVzvjhI5SAG5bM57gs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140087

On Fri, Nov 14, 2025 at 07:57:09AM +0000, Hrishabh Rajput via B4 Relay wrote:
> From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> 
> To restrict Gunyah watchdog initialization to Qualcomm platforms running
> under the Gunyah Hypervisor, register the watchdog device in the QCOM
> SCM driver.
> 
> When Gunyah is not present or Gunyah emulates MMIO-based watchdog, we
> expect Qualcomm watchdog or ARM SBSA watchdog device to be present in
> the devicetree. First, we make sure we're running under the Gunyah
> Hypervisor. Then we move to check if any of the above mentioned
> watchdog device nodes are present, if not then we proceed to register
> the SMC-based Gunyah watchdog device.
> 
> Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 53 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

