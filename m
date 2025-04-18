Return-Path: <devicetree+bounces-168681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D019A94058
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 01:41:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 938578E3596
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 23:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F75E254AE5;
	Fri, 18 Apr 2025 23:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mE6nSEC5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1673525484C
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745019679; cv=none; b=hi63fRHWDbPAprnXhnen4E/uue2S9fVjzHaST0LaoVC0FaXBjdBk0OaEFIKxHhcw2SIYMcr1+D+R0ecERCQqejvLCuHQXATGdMJqP+9wXQbWJTYWm+f/xrYakQU0wwP7NZl38c0N55+TaTH9nYJcN0WJBFK3aawX1xh6uUQBdZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745019679; c=relaxed/simple;
	bh=6C0vozgC31EMiPaikNIk3gz1e5iKRvGvdRxBSvzVylA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OQFyajNzKsgHrmoOp5zuKMklaJDWzPCrkoZijXM4MdH4+Xfb6fNvsgyIGqAIw4YLswsJlAWU98oSEgwXtLhEkrQfW1hPY6wv5JPjMwqfqHgadARz0TB4mXLqRAVoeDG83oEtPg+DpqoUXhFGkTacBeJ1twqbYsQssB+WQ/z2vKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mE6nSEC5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53IFL8CH008161
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:41:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QGWkrsI6bbJMRZrZKPu35wIq
	Uji9PLOWunitcRgxc4M=; b=mE6nSEC5ujtcc8FOu5n1qH0jOhzQscWdH2jBNdcf
	dBGmsntq4ab3ANwzCQMSw+sJcfj1/Eszp0KMV2XuhNgLtQfspSyTtmL8vnonxxRX
	qcNQyq71t7PaiXw63ryZzQeCZZph6waGNHHBRacOsgXbxbZG4Vh+f4fA9f3ygl7Q
	ipDdffRxIZuAaz+ANEG1ED4+lyRvNsZV0pBidyxT5oftz2SAnRjoL4ABb51op8lX
	qG5GJUa0heBfNELFOdQy6zHIHlA/owE1KqQunjbcZYr7gwZG9mnyOqMBmJFoe58P
	goKIHEHmMKzJr1J1QuRaNfo1oo9eZF0FNJKPQFqePKp4pg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxkb00e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:41:17 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c760637fe5so361826185a.0
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 16:41:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745019676; x=1745624476;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QGWkrsI6bbJMRZrZKPu35wIqUji9PLOWunitcRgxc4M=;
        b=K6TBLXfsFJskZl2kX9p3iiqHLMwkkEzozjZDC6bd7ICuLxiXvToilKQWK9wMMP9xH0
         stIACAYxYKnoicTD2OR8EBl3Df69r5vFiGxK5xZa3QtWgliB4/TXUSgqQqhQhi9aEFqV
         9tAWP02H1mbSK7H6TjQ3VDiyMbWo43uII3+Q6UUwkgOJe1ga3YGsVnQlANgN5GsOtDJ9
         rMeC0o5G2AxTj9zFZLdsvziH5VwxuHyTDbKj1zy0VNdTu0o9t7TSyGa7WNaBNSFju9Mu
         STWjZyOhQ1/bkP2+FVYOqZW4d3gtAB9i5xNSCeAgCZS78VZv+qx5Ei4yPu92VSIXLbsg
         DSJg==
X-Forwarded-Encrypted: i=1; AJvYcCX0QuUVIsgOjjNbFKpHZhWiuL+mTu/cgsm+t/pRunT0mnvzGQ85RNIIL03PG5+hioRBEDlXHrRITyd+@vger.kernel.org
X-Gm-Message-State: AOJu0Yylc2jZWNpEw+L/q/SY/LtRv6NYvAGyJcPSQeV3JiXfH8ZzCyeq
	oCWwkvzJd4wC4MYaeMboEdIXJoIUR12SC3UEaGGTVARSXo7O6wci5fZ78Iz6piwJb+vuL0GoBoT
	HM2eOh6RvxKAVEE6aRsEvXJUD7xGMDSYXJL3PguH9qInpCDmRZJu1uBwG+Ulw
X-Gm-Gg: ASbGnctaOfBPesJuOIX/WciePnpIcXwhdcG62T5UCEsdBFykQz4U4QKtjyiNILRG/SC
	B2VcW6QlVbhDGCyTZEyM5uBJ/vf1kwxJHRCl9l3eX3Y5eJuQSnSXtfoMFxEM+3H2dV4TflSuwLk
	vs2eyCKleD02tsci4TxGgmW8Kh7y4G+pVnJOop6p6fm3NX+rUIrQxl3+RVPhMJhocUq4ScuEQn4
	F0VwiQbmY0el4SYIE/GTaSO+V7pvcDlA7gx0StDXV0ghHWm3ouvKjReb61p5F8fvgEAzPhOX9By
	eu98Pw4+CSADxsIWf5Qe7QO5CFtLO7uw7UwxweC9T43CuPkIieteUeW+CEa0fAtZcvU170W+IAk
	=
X-Received: by 2002:a05:620a:2887:b0:7c5:5d13:f188 with SMTP id af79cd13be357-7c927fb9062mr570340785a.26.1745019675893;
        Fri, 18 Apr 2025 16:41:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNEOqCTwH7E7vLdne7Oh6e7Mb+h93X+PhMq8Qo+whymIytCNczG+rD7jrHK6N9QiZxVSL+pA==
X-Received: by 2002:a05:620a:2887:b0:7c5:5d13:f188 with SMTP id af79cd13be357-7c927fb9062mr570338685a.26.1745019675504;
        Fri, 18 Apr 2025 16:41:15 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5cf943sm305840e87.137.2025.04.18.16.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 16:41:14 -0700 (PDT)
Date: Sat, 19 Apr 2025 02:41:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 DisplayPort sound support
Message-ID: <q6eqlq4ltz6nnnqrja3obpv35qjbuqjqqj25ekcl5wgd4yubeq@gw3n6r44g32d>
References: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
 <20250418-fp5-dp-sound-v2-5-05d65f084b05@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250418-fp5-dp-sound-v2-5-05d65f084b05@fairphone.com>
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=6802e31d cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=CXSf308d6hWwThVqTUoA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: P-dGPbwHcM2UwS7MQUe4oFGl7539I_jI
X-Proofpoint-ORIG-GUID: P-dGPbwHcM2UwS7MQUe4oFGl7539I_jI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_09,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=982 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180181

On Fri, Apr 18, 2025 at 03:13:46PM +0200, Luca Weiss wrote:
> Add the required nodes for sound playback via a connected external
> display (DisplayPort over USB-C).
> 
> In user space just the following route needs to be set (e.g. using
> ALSA UCM):
> 
>   amixer -c0 cset name='DISPLAY_PORT_RX Audio Mixer MultiMedia1' 1
> 
> Afterwards one can play audio on the MultiMedia1 sound device, e.g.:
> 
>   aplay -D plughw:0,0 test.wav
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 31 ++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

