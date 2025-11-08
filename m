Return-Path: <devicetree+bounces-236347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 68262C4328C
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 18:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 491264E3157
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 17:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20C54231A32;
	Sat,  8 Nov 2025 17:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g68LzhRt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iUoUnMU7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A820525A338
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 17:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762624092; cv=none; b=uTfWTveYbp2/mDdcB19lUcEwU0kTemHasYer6hdGa5ucY16bVR5QfE7zPVqT7TAE5lV00Q8mhKZfFdZqnIknOK+S2Clr0naBzpo7rM7z+8VHsAth6TUVcgVC2gmWu/jOtPEGYZx+0pv9KDskhn5JS5GeAvy8n8bSSy+G0vGKCZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762624092; c=relaxed/simple;
	bh=8AtMYJ5TBcJV6ZqE2nZp4MZjEGY6MVYzWwV8mtEFQqI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pIlKcsmIZCqICNLqRXgaxKEwzxy1+vmjpyemd0HTtEjty3NWxKZEdEwJPMAnnUqF1C7sDAFZNZSFJ/wnAVyNSOpIjCrSTlkxZGiW/NS1cBccyUcxEUnpOhfSCjqNoksHvMMuzGfmfq5/BWhimqgcxf4cJqcB03NCzqwZOX3Vz8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g68LzhRt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iUoUnMU7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A8Bsh3q1686609
	for <devicetree@vger.kernel.org>; Sat, 8 Nov 2025 17:48:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oKNhA/wnZK5tHj2oJkGCMVi7
	EZ71nQgfta75KSMGCxQ=; b=g68LzhRtyWGyfImi5Zkj3mqRSw6GB6co+LrfxJMX
	X91jKT7rJJFJG6d0QvJ5GZ/K7ZEVahc3F7JGqEYQWTQcAZn26XjZ6xVGUoExfQUy
	oRCpQG5yqHtaxeYNIfz1T0mQf+J0Ofrs1gyXnXfgSyQorVpBmoT79cguC/3RNysI
	z4HNru0DlCJbdM5fFbwq7TNgUKAIn21nN0WBbEGOA+Q2FnqYdHr5qcPCUrMR2BYA
	mEkGUC4bp0FTP9ZsB1ECV2NAILg7/6d+Gtuqartl4j8WlH8Vbdf13L00Ip4AHgE1
	ydtj1nqLDPamLFdz6zTkUhudYJfrjwpF1yBQbzOGwPFUuw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xw6gy0s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 17:48:09 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed7591799eso47783511cf.0
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 09:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762624089; x=1763228889; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oKNhA/wnZK5tHj2oJkGCMVi7EZ71nQgfta75KSMGCxQ=;
        b=iUoUnMU75uBHKmEbeBYL+Ay+SE/pybWnoILFvRZDwlVx+c/XhdpGtRKjYEs58zDFUv
         pjJuTRsN8M0lhQJGQ3QWg+THQiyao+ClY2oEfwyJSzZDZLWjlj5CfFHsOn/JiXlQFVPS
         OMdHZ1qMPJteylqT/gPPyn+KuKSPHqHjpU5XAy6448L/MuymWvNe7anOuNlljX7xkiLZ
         Fq9B0imwpdL2RK9UeqbYurGBXi5W3uEOZ+LqHkajgthp/lITTn3euWGkj+iX45YVR7fM
         nWxYLI6mLu6zDtVISX9b57Eo3ZYOgc9qhMpJeT5UpEHglepJUEim0RzkQatyqeAC0x8J
         5zcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762624089; x=1763228889;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oKNhA/wnZK5tHj2oJkGCMVi7EZ71nQgfta75KSMGCxQ=;
        b=hnivkZ8yMBNfC6hfSIhEjzHdm47ZPrdOAc2N4sP6OugODrBjTqFOpwcoKJWAhVvzW8
         DDXfYVHsG1k6r0lJTmIpKJDFj3BPC8LJ2jsQGKVK0refdcttt2ItYCgB2C0OWXHvSwA/
         qKY4XsNgPVEHILNjztwXUG2BeOTR1UrIJUBXAUgsnUcmbGguRcER5XIqe1ny6TVqnSuv
         6bHSiJOSdX6XaMBvAt3TBvyw8EoQnviByDufKJsaNMUv8Bga27mgMxzqYmq2ClcDbzBH
         MKFaAsuo0JL+wvem60BcwTwqr1jrosfKDtfG81QPossrlMKf+uSyLdqmS7Gzpd2hWqvG
         vpvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoysU9lJC4WaYpJJOpPGnwXNwvkbtswYXi5uPwEOIQTB3ZGvoL3RpcWFVnNbWQtAPhjxHXs3y8c2hJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwGxP+oE/onXy7L/LFbC3/yeResHBdfrDWgSan1gPMQ8TLuVSKd
	GCMNchJSgIyGfSBqM6+SkAS8Wthvoa2fOkY44+Lw4Lauqk9vjUhNSSrVgEIMziYQZDX96YedG+D
	pcxYd7HE8/o3R6RpaoQ8AydhywIjgm2tgTdfvR1YORZ2Y7fWPWuYt/7dtyo6pMKxF
X-Gm-Gg: ASbGncscJxiaUZRThfz4N0r3P2LCYY89cplCOodSZOULoIYd4z+m9uDPZbRNkCtnu3t
	41/XsznRqRmv5mzCaFy4QpP48pJsDDBF4Zh67pkPT47ZYnX90oHlRRoTJdQUeBKqOLEKNhxso/N
	76tVr+2j2XVKoY/PMNX3U6ueUz8ueTihKQpPSDRXxoZJok/MgEyAkYDjBrB+c6v6UX+twYIR9Gk
	ILKu3qgOy85LLyE8Wh73Ra3a1uRa6set6mt5ni64+WkWE0u4vYtO0pObIIlPHeIOxYxcTP1RRNY
	OJsQL+C9IZeAxnpsA4OynrTA2iRV7V/V4bbEatkWcRa2XxH4iVNAaVPRacjhPnJ+GRL6l7fxoIH
	6ChfRSdvyqcnQnGKdSLuUu7KruD/cJF9gnXAfyreKXvW0jg0g/YdTwz3o2r+fNBt+qk382p/pMh
	NQypahaLdWOYeU
X-Received: by 2002:a05:622a:130a:b0:4eb:9f37:9df0 with SMTP id d75a77b69052e-4eda4f09bebmr39398591cf.35.1762624088813;
        Sat, 08 Nov 2025 09:48:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEIsSrvfAIAazMR3+R4mtJZyAwKCCj0ixIasuIj+5F2b3mDr+MWrB7+JvGQoEoO6wGCxfnb4Q==
X-Received: by 2002:a05:622a:130a:b0:4eb:9f37:9df0 with SMTP id d75a77b69052e-4eda4f09bebmr39398301cf.35.1762624088398;
        Sat, 08 Nov 2025 09:48:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a019cc5sm2334971e87.27.2025.11.08.09.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 09:48:07 -0800 (PST)
Date: Sat, 8 Nov 2025 19:48:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] interconnect: qcom: sm6350: enable QoS configuration
Message-ID: <7anacd4dajb56nsr25mjjd72deiezzzqxewhrrayo7btl5nf3i@43pqifo2pwd3>
References: <20251107-sm6350-icc-qos-v1-0-8275e5fc3f61@fairphone.com>
 <20251107-sm6350-icc-qos-v1-4-8275e5fc3f61@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-sm6350-icc-qos-v1-4-8275e5fc3f61@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA4MDE0NCBTYWx0ZWRfXwb7thivKzSMI
 YMXS2zY9VTn7HsYih6dI4id3TKgcwwUzo9fDzKQCSxknbc3+Boja/7WPf7LcITUeb625rNd3jXr
 JcSG3pZwlj89+mnjaQYMvxb/hjsyiF8j3rWlfrApCcqWfGiBduJ5FR2ePDgMVIiGo7XXC3ajrbr
 rX7KgFuNKiPOH35iXImZvWh1WLFFQVtEz2tQBkFvHmJZNlh7TkE5ycPPpwVzb8Svc0eBcnMxO2u
 0S/KWKSQr0xu4i8hQx0n/3Zx1Z4mIqFeGNu6jE0PAjOPO51c5Ay/XQ5WV5f+3JZmb8R+2YCOTPl
 O2CGIvXizbloCfNWWUjiNiZo+qbHpNlSe8x5jXg2cyvoTyx/00tmqozcmallYLKUTz9XN9KvH+W
 KWANjrTKix3C+pNdm0dnGErOYWc5ng==
X-Proofpoint-ORIG-GUID: JtL_8SmJ_cPesBypidHwtZjzUDRhjIpg
X-Authority-Analysis: v=2.4 cv=cpmWUl4i c=1 sm=1 tr=0 ts=690f8259 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=nyvGelbgox2M8jkpOYMA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: JtL_8SmJ_cPesBypidHwtZjzUDRhjIpg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-08_05,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511080144

On Fri, Nov 07, 2025 at 05:08:50PM +0100, Luca Weiss wrote:
> Enable QoS configuration for master ports with predefined values for
> priority and urgency forwarding.
> 
> While this does require some "clocks" to be specified in devicetree to
> work correctly, thanks to ".qos_requires_clocks = true," this is
> backwards compatible with old DT as QoS programming will be skipped for
> aggre1_noc and aggre2_noc when clocks are not provided.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/interconnect/qcom/sm6350.c | 288 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 288 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

