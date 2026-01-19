Return-Path: <devicetree+bounces-256748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B7787D3A397
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B51C7301786A
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D492957B6;
	Mon, 19 Jan 2026 09:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pf26n0cO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ip7PbdQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258B827A92E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768815980; cv=none; b=W34iSkV0kQpBWQzuaWcOyFtOCsSIOl/Mx+be0BwxWhT+Hn5sM8QDE8DPvWmSbLsoUkWjuVH9WdV1TGRygU3GykxOSo8PSoOjmsvRJVKRA7ZJFRXfJ8dEBR8VtQIzvpDwUi/tjODxRh5TjY6CHWIhTnM748qO6pGEyvYt4T0V1HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768815980; c=relaxed/simple;
	bh=54kDo+yYKx5SL/Ug0CubxehHXAXSGrGwpLPPxMWX+JA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rIiu78247Y7aF8zdTeX3hVWMnBvoYuv/mF26T5Dn4RwwhQJl1fVtjyW6qrfJ7KuvWB7C1OAaAbVclEq0aZ55QG8USr1B80NK//Lx/jQusDJw6azbSo/9V097DuDg04sctyaU4YEoLNjzM+QXxD0r8iUHJI/JOFRINKnC3uOgJQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pf26n0cO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ip7PbdQd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J91Hpe1561997
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:46:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1X5Z53aSxVVYpihmsGQENI6N/z7wN5MrP5u9+v5LKw0=; b=Pf26n0cOC6uacnn3
	VAQlkZkXEuCVpg59jH63P7qxcPxH1skX4u6dRi43EGf2O+AvND1IxVOA3GFYsMWv
	fOzaQACqxdEmvT5Yheokhuimn0YJ7iuyexcnmr7laDTeAtj9jz6n4PZKyGkfVtqj
	JtoZeB764L/CxgOsXDlLoumCZfpEEh2HrnY7GQDoRx7av7e1XikA1BxVG7pBZipd
	fw5Nbxqh8r5RGwyRHwxqzidWi3dg4DEQegJ3BeeXM5nC8IX1FLGpOJHIpNZwajW2
	DGgzcj19VBWPKjVeo072QMAusfbcwW81JYuv0Yy+fne8a3ePktNAkiZr7M2w8D3V
	HB5WTg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br36dcjds-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:46:18 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a366fa140so156855376d6.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768815977; x=1769420777; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1X5Z53aSxVVYpihmsGQENI6N/z7wN5MrP5u9+v5LKw0=;
        b=ip7PbdQdyI/ctHuWYvtxdSIy4gxm9JP3QoaR3G0+cfidHR9n+zybQI7HIUsHa3cvRk
         SXTU5r1AtoJOJt998k1gfvdbkQxbZJpIWQgYOtTqgchpc6NUPgA2h9CP5AYHxloE0gen
         L0BYd51uYstrZOBELB9gYT4o0oDjYqPw5wJhsMgU/nnRadz0LTmNKcUC70SAFJ+Oz05n
         i6gd7gnKQ2zb6k5MHE/8Ru1W5y7QdAJUGAmSCYnut5Zxedm4LVTz76N87FHnnrvw3qdc
         Zj9IRBmyLZ0gocjjZa27htz3sVKVQ51ibI/yOI6aJ/H+Alvo9PTEyPkfzkw8KJHAbOb1
         VTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768815977; x=1769420777;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1X5Z53aSxVVYpihmsGQENI6N/z7wN5MrP5u9+v5LKw0=;
        b=cTnMlrsWOgLzmURMcnQlbfzohkFdADkEGvtdWZKXyUWoiD8kInoecNLK5h/dE0WXYY
         SwUcFcC9N7suI2hLS7X6Lp1ibT/QY5M+wwzxVQKj1mAGJeAapXkVFjjXadUbft1NkPM4
         YU7iRNd/4iwzyBvp0wNRlIuFiT5HseqwuUDzwZuJaUFdETuJPJZMUCjWqsSIDFfUGM2K
         CbkXMDP/mb6QeM57LeNL+NskVrQFTADp2jcz1GI/JszT9lK8fDOqWctNtQYEmyuzswQF
         IgWMvkvLDPw9e1DDMWE66xw4NtlQR6LRYTi08Hgmw3DpRZKHMoZWNts5VMxgUtVeHrKn
         6ytQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBS78veCXRxIpLjjfB0ktjIJN4gmu7ozbdxaRPbFCgd53y9sZesneqMoWDno0LUrq8ZhETRatiBchE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf0kADZ1yoQtnz72MhP5zySfGsDNSx9iWKmznz9Q5Dyzdmjo4+
	JrOw0LuvJ1AagFm+3Vv5tEFb9tSoN53HdPkUrnBJXvGg2ykiWJC0is5FJaYQEVahC4ef/D8zqTG
	yBJOjNFMCwPuC36yJ1jTXD7ZIziV7J6KOfwdNMGhNxw8B+rDVSIhFHq/M/JzEvW6/TAHdGPoM
X-Gm-Gg: AY/fxX5iRq7LYycjVo7aTGTCDJK48BBenn56kJO6oZWuG+xFitmmbdYphb0XfSlqCzW
	QWlv6cbk/VoYSPt94mXXJyDJYgGsAsIF49hNMDCO5H8G6f+oow2g72eJ0Stgg57ZVsbHjjs1TBG
	XCStImhqzOTyppYriXGPOx0eSKbmYF7AIoVuOS38tZYuljf4FfJvm0DARLdjCa2/1D5JzRHw0dR
	zVqjHSeEQHKkzUBwFuUq0xuvhbjPdZc1HfHU/cMsjHGWjmpQnsq8QKGTFdu15pGiOGHG5WwlwMh
	/Y0WwFybV1ewvVnfFgoVzBqo7CfljzNze7loe126K0CxkL6WbqGnI2YQVw3zesHCEoFcuGC6Mew
	4Yd/hgFiVfxhlvjRucUOwi+bCqsA8JSXEbtWi4c/2mrKIMVqzj0mvqGLMkNUq3C+YZalNpS75KZ
	yXJ0a8u/Xq17qgGk8Fn63UKfE=
X-Received: by 2002:ad4:5f0b:0:b0:721:a9d7:297a with SMTP id 6a1803df08f44-8942e2d3d7emr166222266d6.7.1768815976773;
        Mon, 19 Jan 2026 01:46:16 -0800 (PST)
X-Received: by 2002:ad4:5f0b:0:b0:721:a9d7:297a with SMTP id 6a1803df08f44-8942e2d3d7emr166222106d6.7.1768815976342;
        Mon, 19 Jan 2026 01:46:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39bc5csm3222115e87.67.2026.01.19.01.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 01:46:15 -0800 (PST)
Date: Mon, 19 Jan 2026 11:46:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Message-ID: <7sbof5mgm7mqtm4gh45f4w7264akplqtkfyplrerek4w6seipl@ith7sc3wmgih>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
 <d15bbe2a-a88a-4a88-a685-ecd4f058c3af@kernel.org>
 <3404f2f4-7edb-4bff-925b-0a6a7a450f5c@oss.qualcomm.com>
 <eawxuhblnho4pyeyskvk5s4ouqser7o5jh267ttinzeeowxfxs@y6nl2qbdydb2>
 <e1c00e57-cac9-495a-9d27-f77ceac5c5ce@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e1c00e57-cac9-495a-9d27-f77ceac5c5ce@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA3OSBTYWx0ZWRfX4hb3Z3/kgKm7
 IwwCiiGkS3BEWM6RkNp1bmYFaRWa98OAAB8v98GPPNt308K6ZElcqevAmQnnVMH5huD8AhIVdEn
 V8WWU+U6wb1aViqMiUyeadmk/IlkzArKlxDQWb7GeEjJTFLE2VFoxYJPjezGAkwfgxBfKbrfY+R
 hXgmcAuEOW7k9znNKKtid4GprHk6lnvY5ZEJlHC0T6qPRkTRWxAA+xFQ5MMs1lRDRu272LJIX3i
 YFBEutFtdqT07P6gimsqOddHZfN1aXhq3vyUu3RF90DMnHGyRDQEpLz+aSCW/Xw38rOcl3kVrPv
 9O15nyZEhsgdsd2EuY+9kJqtEKqVruiPpmJbYV7lL0zr6UqcHwimFFaiH0Mc5nNFEZBXr5Fy50x
 ISYPnzD+p+BPlF2bU2dHuNBZYEctz2qGq2NMhfcr60x8zHtCaOTNtcyc89Auk9AUQloAKw8nD2b
 7EqfE3fmJ+rgIHGCTCQ==
X-Proofpoint-GUID: J4STW7PcHIRzi5bC3JoktUEt7qNB82Uq
X-Authority-Analysis: v=2.4 cv=GJ0F0+NK c=1 sm=1 tr=0 ts=696dfd6a cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=CTI4GSw63VgQimMWXrcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: J4STW7PcHIRzi5bC3JoktUEt7qNB82Uq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190079

On Mon, Jan 19, 2026 at 04:48:20PM +0800, Yijie Yang wrote:
> 
> 
> On 1/19/2026 2:33 PM, Dmitry Baryshkov wrote:
> > On Mon, Jan 19, 2026 at 11:13:29AM +0800, Yijie Yang wrote:
> > > 
> > > 
> > > On 1/17/2026 12:19 AM, Krzysztof Kozlowski wrote:
> > > > On 16/01/2026 11:41, YijieYang wrote:
> > > > > From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > > > 
> > > > > The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> > > > > the Purwa IoT SoM and a carrier board. Together, they form a complete
> > > > > embedded system capable of booting to UART.
> > > > > 
> > > > > PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> > > > > Meanwhile, USB0 bypasses the SBU selector FSUSB42.
> > > > > 
> > > > 
> > > > NAK.
> > > > 
> > > > Warnings were reported at v3. Did you address them? No, you completely
> > > > ignored them, so warnings are reported again at v4.
> > > > 
> > > > What do you think these emails are for?
> > > 
> > > This warning is caused by the pcie3_phy node in purwa.dtsi, which is not
> > > introduced by this patch set. Since it does not impact functionality, would
> > > it be appropriate to fix it in a separate patch?
> > 
> > Why can't it be fixed as a part of this patchset?
> 
> 'qcom,4ln-config-sel' is a property related to bifurcated PHY support, which
> Purwa’s PCIe3 does not provide. Therefore, introducing a new compatible with
> a corresponding binding would be more appropriate than simply adding this
> property. Is it acceptable to address this within the current patch set?

Within this or in the separate patchset, but it needs to be fixed before
this patch can go in. Otherwise we are enabling broken PCIe3.

> 
> > 
> > > 
> > > > 
> > > > Best regards,
> > > > Krzysztof
> > > 
> > > -- 
> > > Best Regards,
> > > Yijie
> > > 
> > 
> 
> -- 
> Best Regards,
> Yijie
> 

-- 
With best wishes
Dmitry

