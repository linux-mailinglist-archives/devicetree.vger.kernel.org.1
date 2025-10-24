Return-Path: <devicetree+bounces-230593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09458C04413
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 05:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F8613A4D00
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 03:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC88A270EBA;
	Fri, 24 Oct 2025 03:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kSkLe2wE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AF026F462
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761276490; cv=none; b=S4qs5HpP76sgJf1F1qs/YOltIsAUOAuDpOsoia2/Qv0noAjkLWHTcD1AjTkuPmeQTtHLDwy2Ef9cTJwjV5sH3kcIxQWk0FSUF3dkdfFkcYVH0D4a9m8JD8aIuKimKQBi/xxP2cfIkFKbtiW7Y+hwyYzMjEGaoG32LpZn+sY+x6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761276490; c=relaxed/simple;
	bh=URfQXCT0Oo1XzPB6UUfoeOejCbgTclqtEEluHABIaUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=inscYrjFc5lO8lHcHUQcl2WWf0dw75q53aQIWVxk6qDdwVcdPHNchIczmHCludQOomX2MxbfQ/QJeKyVbw8Z4/uDcCN93+qaPJG79luW0TAa9dKDSHA8SsZ3a1FJatumJF2bBtu8xep3B0nTLEd8QSAh6gBi9Zx9t6/0aB4FKEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kSkLe2wE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3Fd5X022422
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:28:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hZRKGHf5eiS7medbsEc1yTLg
	vLooHsK/MU89hBujSiA=; b=kSkLe2wEBX6htBZhmJddfIpPgH8+2BOgJcKUnTPn
	LA7b3rz7bThHoqr5R3H4BHfAnHL75uEabGJ7D7mR1QR+Ns3xXgWtrugaiV4V6gNF
	5KRbQ+cavGnM4Od0PZUl9GIBFuedmlbwW8DOJnE6jW0H7ugjPcZ1t6LgmM605il4
	qqhHDdV/3qZNooHaCR0TteVcp3JaVzPKYRaVEsCWVeqwGZSbX9LIlAXM098HszX5
	9tll+BVOkuhWRdEU7yFPdzRkhZJQNkdLk9Q1Ml1YAe/mddkZzUrBrfcBsx+ZlROm
	FAX7Ju381ZYHpsYyJOxhel9T4MY4IFug5XCl57pHafLXEQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y67qmmf5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:28:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-891504015e5so455088485a.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 20:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761276486; x=1761881286;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hZRKGHf5eiS7medbsEc1yTLgvLooHsK/MU89hBujSiA=;
        b=YJs0O0ynUbjOZ/L/TO8S8ktP/qRqnf59ut8Bmj8GXkxBUIhuRJ1gQrX3QW2CLz27r5
         1ZqpEsBSpd3wF4fvuQREkD7iTMQ+dNJMWCm6ZY5pLKNCzu+hWJFcUUkRoh817vq9C3b7
         0vhQmarIjTI2uJE21EeTWAMmCQstKy9TuIeoQhUT0aiM5lHwEefacfQTmstOUHm8NuXR
         pTBbFLR3vYFUUIAUnxWRlJssgHsUg46PCeybV6B7wJ1PHRoAkqZM4muya8xRA98FITLV
         16GBb9SPZQ+kQFM4EpL1qSzJsnpQsed3jn8fDUahhzmi4tdEihpEFzI4NSCoA0pxbNHe
         UCWA==
X-Forwarded-Encrypted: i=1; AJvYcCX+j+OgiRFZCr5CIw1U1AUiM1suMIZK5EpymToN8kznBmcoE8x5rULOiZKFr+qhoshyO6DaYE5TfO+2@vger.kernel.org
X-Gm-Message-State: AOJu0YyIYQDTb9trNxwqiBk9Mr3AagJVKqzj+y3W+Rjywbmh2kTuHejo
	tl0g8/t62RrmHs2vD7W2gOca0aTLrD9jzQlsnPSmHTKx9UBRUsPg8AcBsotewBgu1S7v0Q//hdo
	i3JvgSrjnb/eN2VoxaiZGcIY9S0VA2XzPwXWJs3oi7aY59/zX6xqmmvJUsq0hI//h
X-Gm-Gg: ASbGncuEKys/PmuyPC94ONgOLwyCAkailCc9IUyDGo7rv9fqeTXN5FC2CLuWGNrI6oG
	pMBSsuy3SmfCadcTbPsF/tNPys2Zn9p7GHDUbiiVh1D+uik/+2rRwQbr8/QZqf0gI5dhydJoqHo
	TeAkCZPsxgXZ3gMz7NyZn8ehN0xIRI2WOGf+c2TJiM47mOaFQ8ejO7gs6YZ2uXDFqpEIdJbCnP8
	RXje2zH4g0nYR1rZK6in1VO5Ww9z990Mttjmo9Gg9j66fqnjwLbw14WukfT3D1ghnidHmNWEBth
	QWupgIqJLZJzTHzl3OwiKfPig5OerV3v3FoRtdTvHmxqhN4aQ9n9AV6w4l0Ocbeu9srlGU+nDYW
	W4+0pu4jbrkj0yUidc5hoC/htox1aHycegccHRSfu7/F02OqM/rWlfV+zFMHM
X-Received: by 2002:a05:620a:6884:b0:868:1899:b3c4 with SMTP id af79cd13be357-89070115826mr3155292885a.48.1761276486140;
        Thu, 23 Oct 2025 20:28:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnIyfQMj4mmjccKB+vbnKu6/RWvsqjZb5kPuk+y1TdkZQGLJl3cVSm65rC7YNEyAuhfj8+ig==
X-Received: by 2002:a05:620a:6884:b0:868:1899:b3c4 with SMTP id af79cd13be357-89070115826mr3155290385a.48.1761276485620;
        Thu, 23 Oct 2025 20:28:05 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89c1169a47esm299748285a.37.2025.10.23.20.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 20:28:05 -0700 (PDT)
Date: Fri, 24 Oct 2025 11:27:53 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
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
Message-ID: <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
 <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
 <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2OCBTYWx0ZWRfXwmP+UZ7cDmRy
 2CEkc007T7Y/U3Ny1u5y+Bsp1JgrR/kHxquVQg1LFeQsW9WpzGG/f4GgnyyE2QX+WkiR6XwEWRM
 63mJTm8cglveq+aoh8apyKrFEkQ+OlWU0PnboXX1fJmvr3u4aJs2qobi3JicRfK3oKwZH0GGHJj
 JxRzbpAg5xOcjmn60cigz9MoCYb8zniOPtDandAV8vQ/KgXo+XiITr0WmLgkfU5uPrpXzcwpEwP
 cZcwzjciFNZgpa+OgyeD+ZYUwkB9oQNFjEn5OtOb4B/T/DeheaUw5FGRI+qsxwp749xQJ9z0gFs
 L1fxmFFkYeDOZtWTF73dbbFWW0gNzTsPa/yygUpsbGUGY27GmZitgA5WJpyC91HkjjshqP9NLhN
 a0hg60jfaZfa2JQNiHbd5L57nu7Jcw==
X-Authority-Analysis: v=2.4 cv=LMRrgZW9 c=1 sm=1 tr=0 ts=68faf247 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=w-wrxfCwE3y99oquOGQA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: uweWUMwWvEUhHLfY4y2PDSkZotWvzhpP
X-Proofpoint-ORIG-GUID: uweWUMwWvEUhHLfY4y2PDSkZotWvzhpP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220168

On Thu, Oct 23, 2025 at 02:02:45PM +0200, Konrad Dybcio wrote:
> On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
> > On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
> >> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >>
> >> Add DSI PHY support for the Kaanapali platform.
> >>
> >> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> >> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >> ---
> 
> [...]
> 
> >> +	.io_start = { 0x9ac1000, 0xae97000 },
> > 
> > These two addresses are very strange. Would you care to explain? Other
> > than that there is no difference from SM8750 entry.
> 
> They're correct.
> Although they correspond to DSI_0 and DSI_2..
> 
> Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
> new features. Please provide some more context and how that impacts
> the hw description.

Thanks for your reminder.

Correct here:
io_start = { 0x9ac1000, 0x9ac4000 }  DSI_Phy0 DSI_phy1

And v2.10.0 no clearly meaningful changes compared to v2.9.0.
just some register address change.

Thanks,
Yuanjie
 
> Konrad

