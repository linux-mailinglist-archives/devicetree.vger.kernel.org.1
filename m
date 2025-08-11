Return-Path: <devicetree+bounces-203339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1717B20BFF
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 16:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B950E1903005
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB3725A2C7;
	Mon, 11 Aug 2025 14:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N/aRL8Ut"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37E6254B19
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754922787; cv=none; b=TDNB8NuNssgPqwwI4ik9bh4/uXkXfKeT9QPMDua8FHg5vADkr7ThiOYfqAXvhP76aVN7RnqNtn1LMipoS7sQvU0jRDEVN4G8zD+g4n4tnEz15Lm4L6b3JF0sfphMSPdfREBefhzisH/dxS7sS8SOBhF++1saXq+WqpnhIJ1jtpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754922787; c=relaxed/simple;
	bh=MMoSzv/Ppnp+PyjyWrFH8yUcQP0luZYiajrhmfSLHvo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W4ORyJ1PnQIz/QNWT5N9lF+gnEVAI03Tqxhim/RWhQG8Jp3Kumfa2ISjPAwLLxGzgl6HoHYWOnwUPokkXk97ri3X0Rh+y1x9zvVxkfUdozexgJJw0BOmvPe+/ezV+In+mbkOpHmvEQD/y87e7Sl/TgoH535MltZ7/Kg1fUII0EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N/aRL8Ut; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BBVDMr005512
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:33:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pIAf63LpCjEtK5+tOINf5iV8
	E0OgSuQPvRRqn5n3Od0=; b=N/aRL8Ut0L1wO922JSGqfkMJ0xq6k7FAE12fivHe
	BJB3Vuk7T4YmdMRPu1GBZCSpk3KJmfex08yv08v/7EANYIN6s5sKuBeYPeTZNxDa
	ZI0EYA790Lflx4kSJy+BVBbn3gxq8ma8O5p1k8ldJNxG8wyvJlZp3fN2QlWLrFDK
	ybpXp4ZSnCoclOmLvJJx2DYtmPzTFSvz/MlK49EvDjulerh6bPj2HOqtVf+30M3c
	yJu/takpCQOvpw1EWvxuCxJT9GYyV+104z4XQAzdJQjJzWigzLRyfQJdbeWklECs
	JwtnRzJeESHUiXUcVABoq0wFUtPrUbcMOik4grkU/z2+IA==
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq6gjc6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:33:05 +0000 (GMT)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-619c0ac03ecso411173eaf.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754922784; x=1755527584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pIAf63LpCjEtK5+tOINf5iV8E0OgSuQPvRRqn5n3Od0=;
        b=eRFGwhx/foM9nhY78YLdYxDyGB8bHz1tdRlTtk6wDg2g1BFQBWDRSIsQgbU3teNpeD
         0aOkue4pyysrKCFVS8N4HJvGpRnvjwpzn1X98qcZkq6mMwXox0pSRcZHTJmMsESjwaBj
         dfqdmpdXzf7JV52Cyk92oYXmJOZ5gqCetPNaSmmPmjHyAA4w4+O8HW/WgzAdrIwwiMQU
         kiM+XYvp2b2T6vn/S6IxC5Z7KurjP0qG5Qjbzf+7FxVqQvqmKJF/3Zk21H4G3ooQ9cSv
         b3thPEW9T34dTOgS2liaIbc72ZfGARArERDf3nRynD9yHnBl1wsmnrIsKZ4tlDcWH3od
         uBng==
X-Forwarded-Encrypted: i=1; AJvYcCWW8EmaMi7e2JJoqILNFaQkEE0PakUXdQIupx7B8AMGIJnuIerlNfWGyFr3yI4lbzuaItpIE5Of0+G9@vger.kernel.org
X-Gm-Message-State: AOJu0YxSmJB9Aubg51YlDy7bG1jfGtNVQqQMyboscJXKKn9Kciy8Mr3r
	XIjRffrJxby7zrC5aU7LjrPf6cbM5u13XVuO2fpTJ6QfnSrqGJLDEQifewWMG1/IFwl4M4l1+4u
	Dzwy6WvbHA9w9KwqzU47CRJo+T2qpKbI4S8eopbRY49qxDPb35EcwJv+5yqrjcab/
X-Gm-Gg: ASbGncsbpK7LIAyeTaGjZ9oAIW0SgXTaNQRVpVUxIiEbn+ojtpX3KTeTBXUyt5vVwqv
	/Vcrkh8+q4FcuxuotdhuJfQ6zWHpmus+LRSgBUqDf/RU+NgNez5ePvqj0L+G3hjz/NJhkUJ5GiD
	q1yHD3iko9rrMn2bSO5xRo3Kvre58ySpUrbEhP/boeSFvymUizubAF0GuD3d1HMzORdn7bsioF+
	iRjZJ1ZSfAamqTba/6/Mo1ySYhl8sIVaJfrWnR2cPVqTLnvhXFnyVftIvCpV6mfkhcmTCDWcf6Z
	CSdNAr4Rcvpmnb2jQXHTS//ufINtOhjLr7gf5GMzXWX7fzroAd9yOAEYCds3uLscacaf436/UL2
	EntOhfJ6MeVBECPIMZ3lpnk+Tj/CDXw2gL5/P8T1aMpVOK44J5Fv1
X-Received: by 2002:a05:6830:34a8:b0:73c:d14a:cb0 with SMTP id 46e09a7af769-74366934d7cmr38910a34.6.1754922783919;
        Mon, 11 Aug 2025 07:33:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeSjeed3j/kib/Z3P1RZJqE31ka97P3s6ayDf+50Yn9aD74UuHxmWDqa8+pHyEyFQkASbDRQ==
X-Received: by 2002:a05:6830:34a8:b0:73c:d14a:cb0 with SMTP id 46e09a7af769-74366934d7cmr38886a34.6.1754922783398;
        Mon, 11 Aug 2025 07:33:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898bfa4sm4383837e87.21.2025.08.11.07.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 07:33:02 -0700 (PDT)
Date: Mon, 11 Aug 2025 17:33:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2] arm64: dts: qcom: sm8750-mtp: Add WiFi and
 Bluetooth
Message-ID: <k7mw7rj7cno3con2t57nps23y7evd3da6gahyl5gnrxss7e3s4@qncnuekxr7lb>
References: <20250811131055.154233-2-krzysztof.kozlowski@linaro.org>
 <l6u4y3suv3dpylexbiiznhcuyanlc4ouizhzj2cchblaf6o4wg@fe4laxrioaj5>
 <481985cb-fa84-4b09-9b95-948ee70b557a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <481985cb-fa84-4b09-9b95-948ee70b557a@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfX6DJM2/P1TgwE
 AH3jTDAejvIEAM5i8aWxig/pLaeQxG4jVf4OFblj+7kFbYc+qpNrOPFN6SjVN5OtE4WEUYl6yJ1
 w/DYsuklOoIgoY0BJAXdmQG2WjlYMKHsacfew4LYD5vrodSjjo0yTtzdp4s0DWI4BMYYBeGYUoo
 1kFFJeTroD9Ow75TZENCaZGn4BkNx8zc2E/3tAE4NX6c/oDNHLRstBqQHNtTzqoUmbvtfz0V+6c
 kmkJ5H2r+CJeMpjCREgi+N/uOFLXOGllhdaWS19CClpK3ooFOOnb+gVyp7fbPYah2db8EdZ2v+d
 uni1gsprHQ8r3OSbhUkZO78BgX91IILlrNGezgrfJX3jp2pux3mY3XOzZda+l6fpUXiGZrSwUbD
 bIFpb04S
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=6899ff21 cx=c_pps
 a=V4L7fE8DliODT/OoDI2WOg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=LhWZ5_tqvYJhwomtTMIA:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=WZGXeFmKUf7gPmL3hEjn:22
X-Proofpoint-GUID: g2Q0IAmtP9IrN4evCQuhVv6QTTuHQtrE
X-Proofpoint-ORIG-GUID: g2Q0IAmtP9IrN4evCQuhVv6QTTuHQtrE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_03,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075

On Mon, Aug 11, 2025 at 04:25:47PM +0200, Krzysztof Kozlowski wrote:
> On 11/08/2025 16:22, Dmitry Baryshkov wrote:
> > On Mon, Aug 11, 2025 at 03:10:56PM +0200, Krzysztof Kozlowski wrote:
> >> MTP8750 rev 2.0 (power grid v8) boards come as two different variants
> >> with different WiFi chips: WCN7850 and WCN786x.  WCN7850 is already
> >> supported by the kernel, but WCN786x is not.  Both of the board variants
> >> are considered newest revisions and the difference is only in MCN
> >> numbers and internal codenames.
> > 
> > Are they soldered on board, installed via add-on cards or installed via
> > M.2 slot?
> 
> This is MTP, so same answer as other MTPs - these are replaceable parts,
> just like you can replace display or modem.
> 
> > 
> > Are they going to be somewhat compatible (e.g. on the BT side?)
> 
> No clue, you need to ask Qualcomm people - it's their hardware.

And you (hopefully) have access to the docs.

-- 
With best wishes
Dmitry

