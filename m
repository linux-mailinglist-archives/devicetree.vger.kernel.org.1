Return-Path: <devicetree+bounces-245443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E18F2CB0FE5
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 21:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B6DD9301A71B
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 20:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B292FFDE1;
	Tue,  9 Dec 2025 20:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S7mo91fo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dk1ERJDn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850802D9ED1
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 20:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765310706; cv=none; b=FwyF5iODnsxZc/0l2AVRhyKgQ9dnvdUMo2UxnpJAWAYoj26AdXNcETZYTdqEKCDgWkn3Ov1BY/qeeiXOYBvsT5DGISMdke+tDHIuuy+NBpPFSxZbkV6Uh/YF5T0/nNGlP3VIYNfYwl3C/ZO49QlULs2E5xYZxJiP5MrZU+XSUMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765310706; c=relaxed/simple;
	bh=ejXY9qkcfYiiBA2jlNqE1PLszyFbfXQeFd13v4ybFRE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tQ1KkMzGV/0+kkgjM9QmSa6c8JkBpgRIZWUEVC0wDGJ8yhjwbky5KaMoQX7LGkQIpIYFupfzJXmlGScnMFfY/35BIUFEPUGBAJG2IiL0rqislnyYLjrlL7jdBzUuoIqYunsUG2jlmXuS5k0d9vJKJrlo1ZhcShrXMQX0fZRnQwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S7mo91fo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dk1ERJDn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9GiaWI474436
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 20:05:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AaUoS367PS82i4ffAxkDidXw
	K+3jS8e9PS5K6YsjNPE=; b=S7mo91fowkEggx/75aGsedQDQreptUwkAFq/0sTR
	/hsbJa27LyqmHFiK3cU8pjKVZDkECzWe/gF2LlnmZvRbm2eH0jhr2jCvD2IQOTHm
	h2RFKFqt+j9itxNXtU+U3+DAC8+l3nuWuj0pxHxPMcenysNi3iDvqJHOjAruoAm7
	z86Kugjyl4th9vafNwwsYQtWFOgcBvBiVFEJdiW4xyZSZSBChSZhw2pd0aIflDlc
	8RZWPUs5wp5OsWyT1rcc8gFoe67ThW49a7tVdopxkYZuvmU/srt7JwLmwvcuou2F
	6R1q0CCFm06YubHwk4OAhMNBMcSPJfd7sRThW50WOFNIUw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axm9c9dvp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 20:05:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ff3de05so137159071cf.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 12:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765310704; x=1765915504; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AaUoS367PS82i4ffAxkDidXwK+3jS8e9PS5K6YsjNPE=;
        b=Dk1ERJDnwkGvKqheO3jyTnsE1QCdECZ6j/rCWzrkQO/O1vrX0LXwgZHAmwsMGuA7xJ
         q+IeNV99qEc53lu481RVVPrwAmTg00BNNW9ZTMWBc9DYJeOnpYnsWMGg2kFQODGFqMed
         vl/4R6q3alCddFNTDoeobUbZhRrkHh2ySVbyZHJvJLk+VCvxzpF78Z9sUnl+KNoq6C/s
         p6KkHutJT/mq6CTGMmo6Fdq0gFJO62jGxtGh7oYT56C6DedkJ2J3JyrfBKvqmV7Yas6d
         CKwJUHPRejcqVeqvY2UN1ZrNlGVq5Q4kiFwS4uzzCJCR9ubZVR5RS3I091b7dPxDEY/M
         rqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765310704; x=1765915504;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AaUoS367PS82i4ffAxkDidXwK+3jS8e9PS5K6YsjNPE=;
        b=b1zQ+v3SEOBfFc7wxnFz8MAgmCPcnTswqPuC2MQeuxE4QxlB4xij2h66I80TC6qsQB
         BAvFDdWEY+zku3MXLbSRKhMxcYb64wOVyiUlLnexfPGzyOK70niPbEUOY6ye/+jB44jg
         U1MObVaXEuWYs9LBy1UNntAyAH6aw2JCVjjwsCC38VP12J+6H1HQPwjDoEK6siJNXWu+
         MwQq5tLKqLmZtm9CCEWLlwRzuMArDYXIIBFDmOGdHfcoJ+5f8J8VVfQOUbpI4y+GfmGJ
         2cc6H0wFoRbMa2fcqpfSU7av24L4FBQ+VyjlpCyLHUB7lV7qgnigp0J3k+geKX++y0ID
         Kllg==
X-Forwarded-Encrypted: i=1; AJvYcCVPx6eoluwqPWpTfoWftU3l2qjTNzCWLAZEO1anObukiEXjqzVfi8d1+d6OVL2Bzd7RteR1UzXJsvq0@vger.kernel.org
X-Gm-Message-State: AOJu0YzjrdFAxPJbb/NdFN7cNbSZGOfoygLsMIBFXywxvTHYmruBcwLm
	UUdyvbbLFl3DpV9l/iOMRjX2OGtMC/BZ+f/9KWIWcRs3jrmZNvzGYajkFZOZLGnWVTkwR2gh+UZ
	/emjWmnUum53k1as6QA3+4y8fus6hnsVpqaCRjEh4Vtkm9uRr9qzzty++STAZD/Ab
X-Gm-Gg: ASbGnctVGdcBDLuckHHTNpVE0u8v0t8Jx+V8WsXbQZVL67twqLRZZwAUjJ6KR9z1CJj
	S/PzHzwtNQAbpxRNngB+rxNBodD7xGwZzECPlt1l+hBIOZA5JLLs3ao95kGzbdRLd4Le2tf/+7Q
	xsVBdAyNCyKnqEQ53I4kC/jmQubsbWgMpa/UycBSiYYlkhGVlLtk3YTD3krsVcDJGMPdF6g4pQv
	r07LAkVNN8z0zy+S5eyrse4x7hGiC0Uw4gYR+gV6gYVSlklAewJzABstsxWjO8kjz17HYsmFwQI
	iDAgSSLN4HintQjPluCXvpNQx+Fs15Ucj8Dt2CCr2z3yCExTgQABJb4vYFpqTKUrFpnZ2h3IKVF
	CkDB4hY6IT1OtJDgH18Ts7jMZVwftX1/1eyl/VHy5p2NibedNIfGF+rz9co+VELH6elrY0XQVWr
	cDV1QVRaK5wRMu5urOOpkAMCQ=
X-Received: by 2002:a05:622a:148d:b0:4eb:a4fc:6095 with SMTP id d75a77b69052e-4f03ff2055emr185688521cf.68.1765310703766;
        Tue, 09 Dec 2025 12:05:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWdU83n8r3+pF7hBLbvlPVS2hulqvwWJVcQX9Oy4tft3zu2KPJ8Yznes+5bnxCDzeZS63rBw==
X-Received: by 2002:a05:622a:148d:b0:4eb:a4fc:6095 with SMTP id d75a77b69052e-4f03ff2055emr185688011cf.68.1765310703323;
        Tue, 09 Dec 2025 12:05:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b2eecbsm5381148e87.43.2025.12.09.12.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 12:05:02 -0800 (PST)
Date: Tue, 9 Dec 2025 22:05:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v6 5/8] arm64: dts: qcom: ipq5018: add nodes to bring up
 q6
Message-ID: <mnriqymdonsqjmoyy7wtrfi2lr3ievgzisf4fhotvaejitck7e@gcjldnhw2tme>
References: <20251208-ipq5018-wifi-v6-0-d0ce2facaa5f@outlook.com>
 <20251208-ipq5018-wifi-v6-5-d0ce2facaa5f@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208-ipq5018-wifi-v6-5-d0ce2facaa5f@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE1MyBTYWx0ZWRfX3C8VpQW3XufA
 2tjgy2xJyLT+daPWgO91r0NzZRD0wSI6fbn2q59kjX9NWbLn+yUHmLzHEY+xmG7c2IPc5amZTEQ
 d+1c4TBoJTjj4NZM/hb3Awe78zB4RqAoviOKVyiI8oqxCqMyEAVDcJ8xIGufeHpjHWdPd5w3SlH
 SqyagQRBIFMuSVIEvg4fXAPi6qrW6WsAW0LwcM8cdcVm0xFqWUXYzNoiabz4Fdw0Q+i7rjlrQ3Y
 xWxk59SKftNyGKN4K3KdzN39Cj1fARCQI/LVaSUaC4ziwlVDTL1GyGvxCqp439sReiBppLzYDUI
 5Mo1tMaKNjCY7wUQ8OWat85qsvDXX3GyX+8GDCH42diyxxMt+cjk29OKbLflYfev8QaPvIv61PR
 1+rOTZXecUggDzFajzhJfj6CX4s4gg==
X-Proofpoint-ORIG-GUID: IUyRJ_BjsAFmKuxtbeDYuzubmKhJzBOj
X-Authority-Analysis: v=2.4 cv=Vcj6/Vp9 c=1 sm=1 tr=0 ts=693880f0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=OCM-LVnu836T4zQjxcQA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: IUyRJ_BjsAFmKuxtbeDYuzubmKhJzBOj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_04,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090153

On Mon, Dec 08, 2025 at 04:25:37PM +0400, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 64 +++++++++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

