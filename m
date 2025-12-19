Return-Path: <devicetree+bounces-248096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFD6CCED75
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:50:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92DC4301738D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1CD72FE56F;
	Fri, 19 Dec 2025 07:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jZxJbtS1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FAfFlGiL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8880127B4FA
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766130598; cv=none; b=Q4oDrYVS/+XGLX1uUxNdek6qQlZRytHSt4XtnvnDQbhyraVo7Mim0MR5/auQXCJln1EcC4Zn1u72xiK1fIC/y0c02Ut4kmn7eR6GYsshpeV912d9/mfPP9TG/qykn0on+uHVIz6AtcBvQbmj9roZAVPv9FlRdmzxicrfegqZNHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766130598; c=relaxed/simple;
	bh=u1nqXpoKUqnz91oo4RRHaJ6BqI0Bn3Yn9+6jh/B4hfc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZGALel9ksMdTHW6zeI6cZ8zu4Elzg5h9CX7sDQahnnEoIr2Q164KPUtrv0TyTDwQDaf9O/Q+23ny2xd3tOrBRdr7dijR/rsuQiCdZkJH4TdBn1KoBwnB5I6YGNUCjGx3FiSa6hJRZqDfrn/mKT1NvX2up+PF+OMchBQ0tg3jlQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jZxJbtS1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FAfFlGiL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4bxJx3939127
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:49:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HZlzaaEJ6wxrrcHssXM1jJEht5vIfXbpqNRS80n6cZ8=; b=jZxJbtS1W6GgHqih
	mSQIj+D1ySnkzbLM9dida1U9KcUTKSx7SCo3yNCosar9C5FdSiSlcGLC001spZHQ
	rZK+aFA9mgjPeGU4XSe+caMW4MGosjZjDHKNnpM/1L/mDnc45vwlQ31iO1P/VN8x
	0qN1eUDM5kCCxh76fBV1/pigynGoeSm0KOcdknRO/5lCE3LTWSfEOU9nNOMgNDjL
	sQOlG3eG9lOyT01j2BVLjSDJkEFaxEtLieb1Bh0NNM20yFsAdVNnO2v2YtecgMzU
	6lYXXzw8LFLtjWFGZuPO83cJwyrcAPwevp/vTFg/7YgzBmU1953+rg7CFiWnWk3x
	kz2cZQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c1rxd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:49:55 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a31ce8214so34157106d6.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 23:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766130595; x=1766735395; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HZlzaaEJ6wxrrcHssXM1jJEht5vIfXbpqNRS80n6cZ8=;
        b=FAfFlGiLlVx0VqJSeC3/ur9Wc3iLHkmBZgl/4XJ3m/QTEXCCoj2zp7rkpEXmnWwE7k
         lKa4I9hFdKkOl3Md+Zer2OsjhsKdv5ekB18vcp94g0ztU9rUsH06q6v1YSIqnFv9y05x
         k2hkOfTEMC3zl1VQMRuNNVzyWmuHNiviJ2n2alVrb8bTAEQzsFLldSdRYpy0Tfv1zJ1D
         YjSGQpCupEf+adhSd1MToqjOI0auIUHcAu4GZT6wGb7Ak4erEkL+YtF4TM3oSc6J/4Jh
         9yzWfA0zDeFWY0xbAH47oPmrpp0k+z6UtIcOeCJCux/y3b82sxNg34Cjfu8b5elMifot
         YWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766130595; x=1766735395;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HZlzaaEJ6wxrrcHssXM1jJEht5vIfXbpqNRS80n6cZ8=;
        b=n1VGbIRgUk2j99E1GEHEWByaOJ9cXekNtTiFR/KD9BEvVX/pGG2jAQwAjPy68ZxJn3
         PH9cWv3bP+T+FR0iR1LjKQbP8kj5TlTzQxd82y3V15JbmniDbv+Yb0BQL4rC8pfp/7zW
         hVsBVTK+lTRWsqCvsC9aHPPuvwu7jz9rR52WpDSMifSaj+KqWvLgrRFeMQRjIV5bBl3p
         8Jq2UOGn2ElIK6RlS/77hiJLt2/CYZLKrO7FRekLGbNksXMy0Rqydpkm6qAlRj2Qe7nE
         Z0BFRT0FiOPxh3UTac7MdEXmyl7WnvtFmaVGwBO/pT4rYGHbk9T3jK6RbE8FYVV5QuOQ
         u57g==
X-Forwarded-Encrypted: i=1; AJvYcCWgVRRFppg8L2WDr1yKsSpmQwOYuKPrT38A6gdGeWOTZ18AUuBKmZVCOllttQWQ0XJCadq320iVhoj+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2+h3PSW9kX2aRkUn9lFD4ufq0Q6wOCTwl1BuJK4NpVPNTfqbz
	8KCRaXURTSZd15Htp4WdVP7E23gA7QEM9eJpiH7+yKsGJG0KHbO/JVnWPLWx59zAMKswi37h1Id
	1u25/Hh/Nf83dIamfXCJ5o6q4JNsxeRvTWoifC7urRgnV5F6nC0x0Bc6t8pSHEiQx
X-Gm-Gg: AY/fxX6BeydqNDU4Y8KZsZIoV/ldSB3ECJ9/X/gaRzV2gLjHH+zT59jOx6HGRL9hy02
	vE/Pv7Nz7uAlyI218sDbYBaac50ZQvcLkAr4vFUNujUbetRcCRfuvHt0fYQiNEwKpZFdl+zfF0c
	8aT7lFz2IPcoyKrAnxzVPR87f8lHQ+RPcj6G61tuaryBnv+Qn2fbR988NreMTlnIlHzzKMUO/v6
	qTCC6lsM9X2xCZcM4yhN+po6mWc9DCAOlrBq8MJljo5HmtkEHEK/NRKg+f+9wtumI1DxW0JJcHv
	NZroFrpU7yoP3Npm3muJXlwF8VGz92mcp6HtbimqCZWHj7QEu4zU0jNmeEkMiSVNAfEmdGw7FAB
	pGJpslYLs0dAd2583iscitfHQ/Lv2LGVJ4tw/g7H9nwz0cpsqWcDLrLFQJMeLcA7dbsyncQuKJN
	0sQSNOyjrwj9fXtgkk9iCDwoA=
X-Received: by 2002:a05:622a:1f15:b0:4ee:87a:4d10 with SMTP id d75a77b69052e-4f4abdb63a4mr23026491cf.78.1766130594721;
        Thu, 18 Dec 2025 23:49:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0rwAFeOYFYWNd8aqh9qwfojG37bl+Qt7bAMn6Hl/AMKiwrZmA4fsYM77wdMC6YdUhqmP2Xg==
X-Received: by 2002:a05:622a:1f15:b0:4ee:87a:4d10 with SMTP id d75a77b69052e-4f4abdb63a4mr23026211cf.78.1766130594219;
        Thu, 18 Dec 2025 23:49:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5ea6sm487096e87.5.2025.12.18.23.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 23:49:53 -0800 (PST)
Date: Fri, 19 Dec 2025 09:49:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jerome.debretagne@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Jeff Johnson <jjohnson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-wireless@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        ath12k@lists.infradead.org, Dale Whinham <daleyo@gmail.com>
Subject: Re: [PATCH v4 4/6] platform/surface: aggregator_registry: Add
 Surface Pro 11 (QCOM)
Message-ID: <njdekii3plrcrbno743lpspc7vxozbfkf2s4vdft5huoo6iyan@usu5pn4527kx>
References: <20251218-surface-sp11-for-next-v4-0-7bcf83c1504a@gmail.com>
 <20251218-surface-sp11-for-next-v4-4-7bcf83c1504a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251218-surface-sp11-for-next-v4-4-7bcf83c1504a@gmail.com>
X-Proofpoint-GUID: ke6W_AC7sybSvwW9swq-Zj4YKuVnxG5I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA2MyBTYWx0ZWRfX3q8lFgACzb8i
 SQLGWlbBFqPKYLy0PZFl2k/RLTL4/H22nVypIJmkfkLH3Eu1G5AQwIYriP2oX6+yJaacHP3vGcL
 n2FvOmmiijtuiWtmNh1zSWTkOg2AR7M7lWSIgHHPuMJca823D/9N8n8/FOr9ByRzGZF7O9NyMdB
 Azw9WayPspQN9oDJ7C2Dx+NdoGixc0c7gdZY5Q+lMXq6Gl6B9AALjfI0gSg2IaFh68U2Fd3A7Ud
 WfRDYGuJ48qGxCqkYQRFIz3hpqPVLkPA9P80fGCPNiJ6cPg8Y22XBjWXzm4twfgT3AxX1vvoJuC
 zmVRhC93fQuc3FDGtKFVH2wA0wXL2K+xVZQm7AOUvjciXRGMeKhZNFCMWAex+fSXhPdfnu7orOu
 l4uk++P7XJhye6/mAuU3U67GHxEx+AYMqK5GCjkRR7omaDzP20uhj6mZK9k+dzl6PbjURCabggh
 4OD0cQwpd3hGWpPaONg==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=694503a3 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=3uxqv5YaM5NtnTnEUcoA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: ke6W_AC7sybSvwW9swq-Zj4YKuVnxG5I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190063

On Thu, Dec 18, 2025 at 11:22:10PM +0100, Jérôme de Bretagne via B4 Relay wrote:
> From: Dale Whinham <daleyo@gmail.com>
> 
> This enables support for the Qualcomm-based Surface Pro 11.
> 
> Signed-off-by: Dale Whinham <daleyo@gmail.com>
> Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
> Reviewed-by: Maximilian Luz <luzmaximilian@gmail.com>
> ---
>  drivers/platform/surface/surface_aggregator_registry.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

