Return-Path: <devicetree+bounces-231462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31981C0D5C6
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44D563A561B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF2D2FDC35;
	Mon, 27 Oct 2025 11:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J3XNqeZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990252DE6F5
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761565951; cv=none; b=UwSRrRtKGiGRZwDOFMjmkyu1SuMzXTRGiBopBzUZnxY70JMcYPtx8XKVpI5Yo2HSZt9Velf8I0BYkd/H/PjiAU0vXDNH3OAVk28ybrhnazF7eMNexmjNifg81PnaiehlwQ+8XaxPoNquWdO5hwty/XgQugn4MdVx2iNmXj2+QoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761565951; c=relaxed/simple;
	bh=mdgrf+DBgyuvAY2JdB7oZkiPY7ecJmiVFeBaofrEzOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eptaE311Dt09LvPQTXFns1D3afrBGHufdl3TAJLpE4cHujUsu2BXRAoK/TpOeLCveI3czw3+yr75eNNBnZ3MtwIc3XIXyVzr0hFyzldF9KM953ph3/dsYlXhSLXvfOGOJUDpyIfVE/RlDwk0Matrzl/Yn0sJVkp0DHeMJYDDAIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J3XNqeZl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8hjUO1015092
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:52:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MBKzjZaWWFsbgsj3/CgK2NUT
	dutBHRTWeINDHOpYMbw=; b=J3XNqeZlhxkCJvGfLJNTlPaBfV9/CW2HtblJjmTw
	wRroR/5jC4L6SPeM6hu8dYCPr1YG1PXcthaPvEdK2Jo4qWv81iMEJj6NPj5fG+n3
	jdoYOH5HUR2Bh5T6y1joAqTgpaC2Fh1g/Gl3j/FIxQn+RM7vZI0rXXiWyxaln6f5
	8g35D0fOza4qFPToCFXn8QLjTnpjb+EpY25xi/g8/21RKwhhy6pk/ODcOG6WoCIA
	tTkUkE/QT0GgW64m+E2bhl/mlL62BRgFJLym3vufLyOiYHwfEMlgUNyjIVp4qNiF
	gELwQnCsr1HALvmHLuBcD51VX1h/0tj8VhDV4tLukeR+ug==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a1uc59taf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:52:28 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e892acc0b3so151284761cf.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:52:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761565948; x=1762170748;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MBKzjZaWWFsbgsj3/CgK2NUTdutBHRTWeINDHOpYMbw=;
        b=qImPnkJLzw97rFM0KPuFPZI6OzdM+MZxHs9Eo8t1qCsCQp37FzpoMuy4kOj2kBsWOx
         e8NWepIlkvWHIMULtBN7fMjQKfTrJvb00+u8KiGK/enhVgM7uZkk4qDHTgz69Ow5QJnJ
         o50mmm1lJ+8piMgOtzKxuRF7e/vFFKha8jv+Djnji2Qg/CDMxiL5aZOGJNh5eBHrJMOE
         OeBEG6zDhyiYqd3xRex2tHqxxDMN1Qebj+e+EE/9JtjVJVH3hIB3nx5ngFeJaZZMvjXM
         8KHv3AhsFvYW+LUKcobdmagt0K7aE3Bd+uhEfRYMZpKtRzyTpEWmJYR/+ZmgkJVvzwmu
         OihQ==
X-Forwarded-Encrypted: i=1; AJvYcCWn3WHmiqEUblh9bQoen8JkW8mNsMc7i9RwSnHmd0/Yby9L0tyG2braIflrwNYbNaprbqnsH0vIWhKV@vger.kernel.org
X-Gm-Message-State: AOJu0YznVx1YQFzqqmRT8GJD8yKmtT89tIbUA0zdkV5IBhAACUrDIjx8
	cKAK8OjqkyupMKO3rDylJVLOEpApETaAvxDhqh1Sctxza1ySFjqrdm8mppqK+BNaTnrtqLH7aXE
	DN/MFF0regm29SThqZS6PjWSTgjW50tSDqmXBMqfW5xHSfyG1tsBW1hI9mAJZ4Ggw
X-Gm-Gg: ASbGncv+nvDfF7HOCnjBe/H6YuBD5NiVkpeFigEXaxHKrWdXvK5p3bgsgxFYJRsyzip
	/UZysSB7aBSZhk1Mc8J6CywcmyIXgu0aonstWzlfTP9c/YXmUeBrDjECnBKCUKw+e58WEBPk7f8
	39nDyqbdkmvR9PifFXKbXuju0ZGeOlW9yHI4ToWH7MCMlKfvR4x2MW284sMHHBJXx9SgOUIcQGf
	kK9nkA6TzmvSeneTda1A5O9Z++vdQaNE69Q7zdTFXFkdBN5JqcUeZzJAak8oAbUP1Qv9MDuPGwS
	hrnKehlNbCCFA3Zi1twbXLi1VmYEvAtiUQuht4hBb/nRyFsItL03egCMJ64KS/oBFwV8SDVMWex
	bnJQ04kRQkHpBCNnP8fdVNMpKg9P6GRLrAcc1/tSxShg3OPOzlkn1POaPCRw3zZffgcXhHvwXZw
	Vf+xdcOvdyBcaJ
X-Received: by 2002:a05:622a:1920:b0:4b7:a62d:ef6f with SMTP id d75a77b69052e-4e89d3a4691mr416787311cf.64.1761565947287;
        Mon, 27 Oct 2025 04:52:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGavpCWYKjWaaA8w0dxfApMsNHDEaRffgbBB7gQqEAsTlkalhABoijtu8cBYGS8qrORyH9nbw==
X-Received: by 2002:a05:622a:1920:b0:4b7:a62d:ef6f with SMTP id d75a77b69052e-4e89d3a4691mr416786941cf.64.1761565946775;
        Mon, 27 Oct 2025 04:52:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f41c3csm2271056e87.15.2025.10.27.04.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 04:52:25 -0700 (PDT)
Date: Mon, 27 Oct 2025 13:52:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 3/5] dt-bindings: display/msm: Document MDSS on
 QCS8300
Message-ID: <drmrkeukgua3w4p3jixdwq6dvj4xj36vvgk2kvwvhpqfk6le5g@tschh7rpsg4a>
References: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
 <20250911-qcs8300_mdss-v12-3-5f7d076e2b81@oss.qualcomm.com>
 <20250918-spectral-seahorse-of-witchcraft-69553c@kuoka>
 <b745c515-2264-42aa-8d92-663efc7f6276@oss.qualcomm.com>
 <6c195b42-d994-4d24-9c40-48d8069304e3@kernel.org>
 <rkuihu3pmhexeahfch6j7bvwn5rn4ecccbhamluh7fas5qgaup@av2foeiwmcz3>
 <8a6861a0-f546-475b-907c-65b691d1d340@kernel.org>
 <cwuecyparlinhtdqckff7vdqpkio2kk7dwemzfao6qkhnuzhul@mfyqdphfvbdg>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cwuecyparlinhtdqckff7vdqpkio2kk7dwemzfao6qkhnuzhul@mfyqdphfvbdg>
X-Proofpoint-GUID: Y79mq14W2kVC4rZR7a5_tIZ7z3yRmElm
X-Proofpoint-ORIG-GUID: Y79mq14W2kVC4rZR7a5_tIZ7z3yRmElm
X-Authority-Analysis: v=2.4 cv=Z4Dh3XRA c=1 sm=1 tr=0 ts=68ff5cfc cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=CcKo3yaoeUO6NfmZTnEA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDExMSBTYWx0ZWRfX+u+3pr2OJeF1
 EKATCDYN2DIg0sx/1tZaGvkYX0/x946YfQv25PBibWK/hdSqKRBic/XVbsr2/LKnwZ46nia7pey
 IInVXeshM7pAFedmu+gG53O1GlkDLoj3qTkUIkUU7yS7zJaRXhY90vHqOjEdiq7vNEUS6uXXV22
 PmyRG7nxrq/plY3ATj0VKd85TN00TIm+zU0057OtbxHj49W7Mq+3L0Ao90Stkc+fU6Idol83Mh2
 gRD1xK5MhN7rY6lG0Va/4FLOM8OUO8fjbr9Rft7OtICxrvN46Idg6YjhCXNFUYnKYGUBgbampCV
 nO/HLeXZS7hjMiPTM2ZoqYeJhy3988Tyw2J6v2brbTkG+3cedHbJVVGKGr6VqKVAToNz6hI8IvE
 pMD4aB2TwJiX8/Vc8UsvdNZp0qnPXQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270111

On Wed, Oct 08, 2025 at 10:40:39PM +0300, Dmitry Baryshkov wrote:
> On Tue, Oct 07, 2025 at 03:43:56PM +0900, Krzysztof Kozlowski wrote:
> > On 27/09/2025 08:26, Dmitry Baryshkov wrote:
> > > On Fri, Sep 19, 2025 at 01:34:39PM +0900, Krzysztof Kozlowski wrote:
> > >> On 18/09/2025 13:14, Yongxing Mou wrote:
> > >>>
> > > process in other patchsets and in my understanding on how to describe
> > > the particular hardware block. The changes were reflected in the
> > > changelog. If you plan to review this patchset once you get back from
> > > your vacation, that's fine. If you don't plan to, I can ask Yongxing to
> > > send v20 just for that number.
> > 
> > Solution for me could be to ignore Qualcomm patches till they reach some
> > sort of maturity.
> > 
> > I am not planning to review this patch, because:
> > 1. I already reviewed it, so not really necessary, but even if I wanted:
> > 2. It is gone from my inbox...
> 
> So... Should it be resent to get it back to your inbox or should
> Yongxing just restore your tag on the grounds that the changes were not
> significant enough to drop it?

Granted the lack of response, Yongxing, please send the new iteration of
the patchset.

-- 
With best wishes
Dmitry

