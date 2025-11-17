Return-Path: <devicetree+bounces-239403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4213CC648B2
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 481B034B449
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB30B335BBB;
	Mon, 17 Nov 2025 13:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mFtFuGK1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mb6NoPxs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42659333436
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763387586; cv=none; b=g+j5IUG4g9JCCYLqcKDmX/l+Z/FSxhSD4Uzh33+lIvzIWipEKXeio33a8eBJF8dVtMhdLbFSk/90t5Uph9OeoAhhPLG4WZfnXcoO7U/8Mr7rUcBEzdp4TMF6gcEY7oMMcXc8e/HGZxP03CSZJbdYfYLZiYWM9NR22KFcvX9ta7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763387586; c=relaxed/simple;
	bh=CksVbEKpF9SAjJut1xXJbBDF9TPaRuhoGlNshSKhwtQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LWSyYp7mDpNc2zDg8rXAHl0R24ezf8bbCZBqtbDemLxx7VF0mhraLHUORweDr0Jjr+2QIOA+Xu5mtRzV9uoJ7puEZkhkQyobU7a/+cB7TVNCKAjCqmFB2SvGh1alR3fy5UNZ2gCM2FAA1+ZbztFZHmZ5GMVYIBbmllxhb+TZj3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mFtFuGK1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mb6NoPxs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB3gIZ3517274
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:53:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yi+BdGPgnrk+oNWxD1uiFb+dRMmL82ThS7ds7IVksSw=; b=mFtFuGK1MCuVmr12
	f9haVzaVKOz32O1RSgy/Q2GSQLp0IWB6W1rgvDBTRR86RSit5e/+gL7U9Xf4xY8P
	PpvZb8gQE910myLphQRL2OWHai4slaABAa+akYYX6cdEGm0iZinbzoeouP3lFqwB
	FiE7ADx79zOF4EWoLQio/1MMQ/F9Ipft88DUbf8M2q+dpOgrluXfim46yIfXD+Vl
	LGgURcg40mLjKu/qRRbcCHsAuhQRpz/dcSqa8Vl0cBZ6skK2SqI7rHe9TqHvZr9m
	RYZdThUlTtssyPSjrI4YTIolsb6e73tn3hD+UU+sLtYBVCq7O/CxnI8efXt0ataz
	og8aZw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2gg8eur-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:53:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed9122dce9so4641791cf.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763387583; x=1763992383; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yi+BdGPgnrk+oNWxD1uiFb+dRMmL82ThS7ds7IVksSw=;
        b=Mb6NoPxs08L9v2K+VUDCN84qJVkngLTzG1QS3ua3WkGTzEXgeqf1ZcfYpyv16ychtt
         qs79AnvqQi+rH6IxyQru9HormPPDROBMivVpG9E96E8b9JExVwAHGyxUrZ21wx4WIOFT
         8zbn53uRF2AlTfH7qY9ErqhB84bp+A690rTWlG7WfimDV89d9ahSJ+dZgA/uc87GofE1
         HAIqn8cfsHkCQ/Gt3IxsSgcEu7oKN3X/X0qfpMmyQNp8mddLFMpIzGaWIsv59VQGYGku
         Q8scLIAuhCY2m10T88JxAm7FC2gs1hOFuhOAbinTIh5OcYt8ZlherSPYV8tLGUFxhwoU
         LYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763387583; x=1763992383;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yi+BdGPgnrk+oNWxD1uiFb+dRMmL82ThS7ds7IVksSw=;
        b=ZvR8bLY0AR6UEwhYKtj2r6tLcucsFkUc6QLZI9wzuKinYb1K2Rledxg/cXi4cRBV49
         2QuScZ2XCTEUbvVHnLsRpUxzWyiENYErxsxfDrrY37oxIHwdjzZVMgH2QahXUdyE4IpU
         GZoIJxsGLI6oiVlXhBYozJGdZ+XGXi74ZKw1Ff9+npJEkJIYj8DT7bv+BsgFfxGaHkUN
         z0xE7AhaP5vAhxbBd9jyIuNqPayoBcZ3f64PC3k4rSvdA8fPDp8uagBT1VsMNmyP3mU4
         8wDjzVVeMBxDsWjZcV1I3trIzQrxnpAKhHoSK/76Lg4+cAY9GU99r/U4VswrSNmX5iZz
         Y1KA==
X-Forwarded-Encrypted: i=1; AJvYcCXyvrByz6Tywn4jTFt3xYnX9OyPqdt+17+Mqx1tw45YNP3IJ1bxdK8+cwdCfVZqbNOqbJ7EA5oDyFNJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwwWa6hnnfl0k0+vuEB0l5Qf4jAEZ/dF+7+cbtnHiv3EqE83twl
	0s1lQ8TTbXHmM07xZkYymAxvSvTnPSOVxAl5hmRJC7qhsFgX9tHG24Zc06grIfabeCEfRFio6N6
	XxAxAhJL8Zt9hOdaMKjPDJ4Q2N6Nn0OrWtKsMq+YtveCBDmG9A7/Jid0B3KswR9K2
X-Gm-Gg: ASbGncuX78Y9f7AT6XurlCzMO3exFO2x9cqvii1jIBEqOJ+NH0SE1t6EP0tcEXjFeX9
	byOojYf2jbzfTKWsNy5QFVbaI6KudowZFt8o/zqvMTSpIZlMm64J/fhi1bTK3JGQ5vNekUAZA6M
	fFP6lhC4hnRoteXg9NL8YnPUZYUtweFj+n8W+JR8GIz5LNuLlP8udjc6uswHL8fDKfmIHvQkOe8
	mAzpH8VwqqHxG9yBtmf28vOd/m5wqUWn2A7KsxNRfRHLWPonNeZFNN77OGdcTA3xGR8FSPbHA+m
	7vdvrIMkHuC6xaHYitc+/DAvRp+Qz3iSKmHVLgxkFS1K3nDZgW6j/Qc2f8xaqnvlR5Db+oZdWcz
	pRQ7yyDHmlR7E5mvslAWJT3UaOggHyV9r3mngrX3EwQnhrE95A30r7E/c
X-Received: by 2002:ac8:6f08:0:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4ee1063d7d8mr73608811cf.11.1763387583411;
        Mon, 17 Nov 2025 05:53:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFP6/ieJt0wbfNJVaOx0h7m7+0k3hS0h1MhOub3nCOiBuEQbZ7V+KAM8rQUI0q8j+iY7BfrDw==
X-Received: by 2002:ac8:6f08:0:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4ee1063d7d8mr73608341cf.11.1763387582843;
        Mon, 17 Nov 2025 05:53:02 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad43dfsm1089481766b.20.2025.11.17.05.52.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 05:53:02 -0800 (PST)
Message-ID: <73c3de56-5c60-492f-8b1a-209b5b06e7e1@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 14:52:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/20] drm/msm/a6xx: Fix the gemnoc workaround
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
 <20251114-kaana-gpu-support-v3-2-92300c7ec8ff@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-kaana-gpu-support-v3-2-92300c7ec8ff@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZK8_q8AmZOgAsKMlaXd4LnJdoDfrL6V3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExOCBTYWx0ZWRfX+ZlooQgBEAkp
 rmXbpRkvqbb0wqGmtovTEtgGyeawpWKTYNUpRtrgbQl20EghfBaa3aB63zH0WhH5aDuQEs8jhsn
 TJ9s4dkFhPF2jhFZZOHIkBToSY6/3rWdJ1yVdmqwUqD197h5KY6Wf0XpWyS6FKOWJrP91VD9noy
 505IvsnP2Xg0pK4+RmFLv72h1jpmDTw8NsvVNhhgQY9mhOR/yKKRUhfkf+Mr5Se4mTRP2DM00yY
 2RPUHAbYUnyGx8CLZfIuXmsqhoeVnJt+P5qL7ebuCr247d1as/+cpEmMAi9AaptBWV5W5oWW342
 k6LoUwJlhOAJJH5ZKFGs+ANn02JmuBirvS5GH2f/QKghuwprCjBn6rfymm9zWoGOM0dRiTJVFXb
 IHUNvDnDkDUE/6aQlZqo47Ema59z/g==
X-Authority-Analysis: v=2.4 cv=Cryys34D c=1 sm=1 tr=0 ts=691b28c0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ws8SwQwlQu7ULn3ZA60A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: ZK8_q8AmZOgAsKMlaXd4LnJdoDfrL6V3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511170118

On 11/14/25 12:28 AM, Akhil P Oommen wrote:
> Correct the register offset and enable this workaround for all A7x
> and newer GPUs to match the recommendation. Also, downstream does this
> w/a after moving the fence to allow mode. So do the same.
> 
> Fixes: dbfbb376b50c ("drm/msm/a6xx: Add A621 support")
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

