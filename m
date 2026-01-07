Return-Path: <devicetree+bounces-252221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFFCCFC92B
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:21:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 961F33010AAE
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F452857D2;
	Wed,  7 Jan 2026 08:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p4W5Gl9N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hQCzaaxA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C409828541A
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773540; cv=none; b=ALQ72kaVtyrOFlRSI3nLyMHnClm6x1XqrzaEjI3CMevSV5ny+dYY1GLRwBqKidNwmACac3CK4o4+h7YwhJ/A2VDdg6LF4ChB11qOGadAxsW+xdXUMcl0CEBgRiNr0y7hHwQKmHpSGEmd+gK3HypF2LOjkJCiA+15PSi3+LESvN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773540; c=relaxed/simple;
	bh=2M1mSwFCVrxEKgFcgnjcx0R4/i6ecQuw22ubDh6FHD0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eHqduE2+F1sB0rDcYeCsmrRlQG74DIYPSt8HvOtI+1X8By0i6+ZF7p9Fobg/8eQhS+7y91202O1AxXbsc22GOtfsygP4oot/F+H2OSDSynCNfaaqVvcwjqZJMEDI9zctjLgrMZlU+/3Bw6oXqhEBZcjxkMYbUGAnn+jS5Hv0OHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p4W5Gl9N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hQCzaaxA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6070r0eM1980411
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 08:12:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LY6amATPhtym6C4XnLPO/3Gx
	1VFvfZBNK3gO2R2JrUo=; b=p4W5Gl9NOTqxc9ghFrIyt1mR75rp6WQMzFyPk/6g
	VtizzJnwjQfOwLCkcGQL/E9Laq3p4mUdWGNrCCAhAh9j2QULehwhAxM6NrXmjnih
	wPCORKqaryIHjbcI89+i0yNyvQf2bnqy4kamuXytyn+ORSpIJpsueqhnwIl3EVBK
	JVNFadvnSpF7Y0GTIdyIwADnSuC320a3ne39nBsfUCfJz5aW5AsQZz/nxTAHkN2f
	T7oA/E3GpA+N2HW4Q6ANA6VlrKqe5AOekkifCJ5U3NxnuS1Z25ze/aHEwUnQ3abY
	usWACUz4Cyn71lW2Jyi4ge85MRjvTqVhgYZBHCdimWsNFw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhdavh6u8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:12:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a2ea47fa5so19870956d6.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767773537; x=1768378337; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LY6amATPhtym6C4XnLPO/3Gx1VFvfZBNK3gO2R2JrUo=;
        b=hQCzaaxAchsmn0pKphctvyksp79PLon570gkMWjhBQ7Z8CGyBaaI/BzMPaXTKImrnE
         zMZ5TaZHCUY+ixvb3dvmZ677ZSCkizWVYOHnD3DR2CD4mJ6RM0GcYVLWS30JVpcOSUXu
         pBsG0T3Zt5BAkoHgTwZuSXYZip2YkGqS9uUXcx/a48yIwqgsb5ezSf01vLMAcGpjC6jO
         0XVSiarbPmJFIvdNmo0AjIQsN9uPVV0A4tnF8HuywwvuFqkWKcZjEbCPo4JBVUuKOWMc
         g5PpowrtKl6tgysxzmjIkP9/0zOTBusr23NI470adiJ714KdRLqn19LqY+d1wzFLtSzW
         K5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773537; x=1768378337;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LY6amATPhtym6C4XnLPO/3Gx1VFvfZBNK3gO2R2JrUo=;
        b=qCRMYzAl7KrR+xLHVwM+qD06PMsIqlSBl92RZogeYQAHAynE2/mnUXq6Jq/3feQv02
         vpSgJOAVkflbTnKB5I9CX/C2+aS8BXdOBHcNq6DGE7/ciaDS6fJGPNEaq8jw7WH+GrIw
         LBDLrHnSwWR+ibyfiFvIsz+l1f0+B/1GFgJEY09mfX96sFu3qvLyzXowQEnXbEUAkTxI
         z+Wk7WUEmHwM+pvDNpnQmMiUsz9znnGfPfK/RVrZvRNVi69LcbN3m9Y/Di/vguQwbayn
         qjbhG+3kRbPRbseAy9Njr1Nc2/rJQjKZVZ+jnS1M5ing1KKdXyDyeybHDUCjsh4Cu6Tg
         bV2g==
X-Forwarded-Encrypted: i=1; AJvYcCVljwezHTBhKQb/ka/hew+Z9kfDXjVZn8ylqgZyzrk0t0gLWBB87s9KCjQ4iTg8MedNyEF2g1xUpisn@vger.kernel.org
X-Gm-Message-State: AOJu0YxYrVTlckd31WZbFmGa9FBYc1gGhmgrVGUM7u83V6KX7ODlewVw
	Ow/cpbZeRRotdDtkrQm/r/79lwQDm6hkfbi+FLAKnHqoK7MVba1d5mmWMIzKOsFb2AnfV+0ZAtK
	fSqdFUMByPOuheU9hfKi6i6BbFPRxtXfwhxbcB7d61V2XGaAaAPLLshL8CwwhOyFt
X-Gm-Gg: AY/fxX6cTJ6E5gKcLjJhk90/8YE4HxsIudZhxdRto04WGl3glPPOproUjcfOaN27eIP
	CinulWqaFn/wT5tbNBC7OGDurjUZIBQCbYWeJ/sWfw5swuaLklkxG9L18fSq48pj4Qut/t9+2yb
	P6HvYobPTBcwxdHAIAuhjKv8xYpLUgfU8H7c6dLkltTBdCItMrEZNK595jxhE/Yp20Kyipm3rq6
	AYHQVuR9vWnPMWlWmceIcVQhZa/tNT6oyU1/5ENUbhS56QZtsSf/xRAzwEFB/V2mIHH1tOcpo2o
	9quVPgEzTiylFEnUKSb138TFbFLZWebIKyws5qqeGzOPNgh9P/9wG56xAgrfHT1NzhjfA9yDMSf
	ApdE2j7wTANnhezcrBN2g4NNfI91xMIm3NNBFsqcE28uTB6e+Aoo/COXzoiQUk6zCohkAsXq6C2
	Z5V/qXdZcX1sVXqSLOSX3mF8s=
X-Received: by 2002:a05:6214:3988:b0:890:597b:ac04 with SMTP id 6a1803df08f44-89083cbb484mr27400996d6.18.1767773536739;
        Wed, 07 Jan 2026 00:12:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFloAhqUce4LC6fevcJNM4qon08UA0emWwhXuWZ6+RmoAMUs+pescOAjqOMHimcgdqf0xpHQg==
X-Received: by 2002:a05:6214:3988:b0:890:597b:ac04 with SMTP id 6a1803df08f44-89083cbb484mr27400856d6.18.1767773536349;
        Wed, 07 Jan 2026 00:12:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6f53093bsm384833e87.65.2026.01.07.00.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:12:15 -0800 (PST)
Date: Wed, 7 Jan 2026 10:12:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: tessolveupstream@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 3/5] backlight: gpio: add support for multiple GPIOs
 for backlight control
Message-ID: <obuq7xzn3wzbvpc7pxdb2g652kn4vrucbzv3ttayhmmcle35r3@fiksrgdq6g2m>
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-4-tessolveupstream@gmail.com>
 <pbbqct3a7ft466aerdkm6k5kmwstfgpbegrakfvdxzj2tdpdyu@pws3zzu4sfiq>
 <10848ac4-4b2a-4e1e-b6b8-d99cbf54c28c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10848ac4-4b2a-4e1e-b6b8-d99cbf54c28c@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NSBTYWx0ZWRfXyQWenuQPHUh0
 uLAQjAn1CZ4lpdNM3DpVYbqW7cl66HeI81l3t8977XPCwNeTHBLL8MjhF8EhSQGuV/gjWcBxMye
 5TqTGM7t1BpCmlMxsox5yur46nBHB1KJ6VuByJ+CEwUcvbfLQ0sKF3NN6N9GKiO6/m2Oq5v7zFM
 +kILKEaz4w2iwd2qgcaGlZmjMy6bgJEbOQEB5ylq/Weh22xaPc/RXrMcbJXvmBblLudPGRWsXFV
 gBohTdiQMfOY70hmKLKXAUcVH50jXf6yguNBHPVG7lHVPEA4AMXmy6JF4HiM2Ga/bhVyfbOeVuj
 liHUPx8qTeRboug8YUearkSoM+TsnUkv9ZlDDBv9runXtbiZw5ICDUlngy+WkjwUixQbHfSahks
 6vvyhX028KoQK2OjL5ViE6WWuW8U7vIafj4Rm+tohwx+cgrOFAvXHfKqRYnhPW5SQumjk7+Cx+/
 zBecOwzUCIovFy495/w==
X-Proofpoint-ORIG-GUID: C6gDErZWDIgkP0292Os8B800Xmsd4Ic4
X-Authority-Analysis: v=2.4 cv=comWUl4i c=1 sm=1 tr=0 ts=695e1561 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=jNHG5JybUi54FRVo0fAA:9 a=CjuIK1q_8ugA:10
 a=-_B0kFfA75AA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: C6gDErZWDIgkP0292Os8B800Xmsd4Ic4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070065

On Wed, Jan 07, 2026 at 11:27:44AM +0530, tessolveupstream@gmail.com wrote:
> 
> 
> On 05-01-2026 21:08, Bjorn Andersson wrote:
> > On Tue, Dec 30, 2025 at 06:32:25PM +0530, Sudarshan Shetty wrote:
> >> Extend the gpio-backlight driver to handle multiple GPIOs instead of a
> >> single one. This allows panels that require driving several enable pins
> >> to be controlled by the backlight framework.
> > 
> > Can you please elaborate on the problem described here. Preferrably in
> > the form described in
> > https://docs.kernel.org/process/submitting-patches.html#describe-your-changes,
> > i.e. start with your problem description, then a description of your
> > solution.
> > 
> > What does it mean for a backlight device to have multiple enable GPIOs?
> > 
> > 
> > PS. The associated binding patch needs to be merged before the
> > DeviceTree (dts) changes can be merged, but it would be more efficient
> > to upstream them separately - as each set of reviewers could focus on
> > their part and you could update the patches based on the feedback from
> > each part.
> >
> 
> Initially, I had included the gpio-backlight driver and binding changes 
> together in the v10 patch series. Later I separated these 
> gpio-backlight changes and submitted them as individual patches to the respective maintainers.Here is the link to the updated patch series:
> https://lore.kernel.org/all/20260105085120.230862-1-tessolveupstream@gmail.com/T/#t

Your commit message should be answering on such questions.

>  
> > Regards,
> > Bjorn
> > 
> >>
> >> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> >> ---
> >>  drivers/video/backlight/gpio_backlight.c | 61 +++++++++++++++++-------
> >>  1 file changed, 45 insertions(+), 16 deletions(-)

-- 
With best wishes
Dmitry

