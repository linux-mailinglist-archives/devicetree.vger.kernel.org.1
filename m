Return-Path: <devicetree+bounces-165298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA78A83E70
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 11:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80AA117CAF4
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 09:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 787BD20CCC9;
	Thu, 10 Apr 2025 09:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dBjjiOSD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30461EB9F9
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744276647; cv=none; b=Xufwlwsyxf8s7Y/bAt3CscAX23tZI0HoKBvVQh1qv9/0Naojr4lAPmGAX64KQuDL49ZPXXlXF0Ahflb1Xs1AvhT84cyqbBWZr3lAFKzSrVWkRyTo8TFgTE/fkyTscTOPdm19JnsqKXmcRD8Fhx0IXcCeBsviYIaklyap2DE8TCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744276647; c=relaxed/simple;
	bh=VkzhrYC3yEaNvm5M6gSaSYRsNsm/ykYz+nSLqBPNH6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g32N569j6bbK5ldSJ6AVVEjr8sqGXGZB99VduwGXKLFgydIAs4VbJqh7+Sg7vvx4NAMKvNtHkNAzbDWKWR+4FdAZ7i4E1+7TVvPWIowpiiTQMoEZn1bLPK3sATF732E7XQ1kmDtVNaW42YLU1XGHSAyoY8kCq09uFvgJFi3JBCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dBjjiOSD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A75bek013878
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:17:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/NI4HaeWdHG20yTgWgvdAsga
	B/QNYBVNAVRuaUYyJe4=; b=dBjjiOSD0xzRRsCKkHFO3BiTt1gp1gMlwu7NcCea
	wn1eKWRBYcX4S3JyOJC0wP6aje1NUF6+kzFxd6C21x4cAvpEFAzQeIfd5QoWzSzO
	4lgWxkDfuQ45s6XRLsgClUk0I8+fRoURxQQuEqQfs4O7QLpYDTdOb/3YXDCIWSmi
	LI9PdHN/uX8aaWh4PAa+CUqw9eM4ed8BrqlG3SZjm1IONcXsUtRu6pLhSL9Esbx2
	pPDvqctjuLyKN2T3NSakRTPfGep6b5FNRQr9AX8zR9vm7ezPgoliTjLovyH0E4gq
	DtL6tqINPp3Qg12idSbsT9Z6RIAxnU9Cw63V7WUis0+xVw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbeedtk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:17:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5f3b94827so107775385a.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 02:17:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744276617; x=1744881417;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/NI4HaeWdHG20yTgWgvdAsgaB/QNYBVNAVRuaUYyJe4=;
        b=R6iP1G1H1VFOym/j7x4JJRzGNtgSSBqjomVjYmkrew5yjjEANyRgochAq7vmfx2Bl1
         isjf73el9qDTJX+fY495RX3RcrNyAYZA49UHPNg398z8cjzk0SFfy7BVDOvXQfZTCycE
         FjNLkcnt0BF8WSbqvKa5U+UUtEDvgGZ1EBQAPiNsJdkldx3ZE87eE5fCmGnLhOiTQ7BH
         NjIM+WOnkEHLMK+ENrxwezFkfBX28kqiHx4wNLhrhSKommqCwRnOPT9aQo4zDpNlYjY6
         5gQWf89XoPV6b41Sn8IsYS9lzVmbjT+J2rGtkUYxuGMJl+mkYvBCB8b0GfDlIHdMWOv4
         gq8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXUEqDqnh6dGSEi+J+CumkAfSb4t52l1EyEux1Hyi0ghUQBdH9OQJEjJO7i/QovWAn0y7ufs5B3zd2i@vger.kernel.org
X-Gm-Message-State: AOJu0YxAKOiiBUIYC7q48L5myWGJHvq2/XRfAEaMjXQBTz2WG+X4VsV7
	/e5n74cNj9qqLEVUG5adZPpvn+fNpM6Ap2i4rA0ODWwZT1XYAf3cILrFozzA9n64M0Rj4qI4tsR
	nWfPggyhsrkXcmuWaYuOGKT+n3MO60d8bDwJlyTwSrcbjxptv0LUTNXFTGc1a
X-Gm-Gg: ASbGncuPHMPt/qVNyrJNWyj0P/qEo0tBxDp3bPPmEkYR8scnDSjshfJjxs1BG6c6/lk
	H+IFLMH5SPNP1f3Z0dwZloUoh26vSl4A32OPRhPqbCLU7UwZ09Lb+VGgDKy8rAx32ACVkNn5tXp
	W3YYNZnkuAd6pQABIkp+lqm7SydPe5DACPLbzxbO4NDSZhkupMD0Sd1qaJmosRq1uZVVGhqeGzb
	6LjoOX6UGzOUEmPP/5+h8WsTH57lYp0ouitaVVMZzG5yiBX/05IKQp0TpKVzKL6PGkSgiieHkUD
	2OiUKkCTZJAhIS+ij3Hdyvvph05xcsqEF3eycrwzmZHPzoIWx3sB3NWvkcbIoBmlGHdqk/0ovsc
	=
X-Received: by 2002:a05:620a:171e:b0:7c7:609d:d223 with SMTP id af79cd13be357-7c7a76bfdf6mr244707185a.42.1744276617606;
        Thu, 10 Apr 2025 02:16:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvugvbzG1bQhMo5tx4WT5oAVkdX9Zwn/H4ZbJ4q7g7do1hwxxuv+2Xv7nYPcjDjrokpnPXVA==
X-Received: by 2002:a05:620a:171e:b0:7c7:609d:d223 with SMTP id af79cd13be357-7c7a76bfdf6mr244704485a.42.1744276617283;
        Thu, 10 Apr 2025 02:16:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f4649d812sm4115651fa.11.2025.04.10.02.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 02:16:56 -0700 (PDT)
Date: Thu, 10 Apr 2025 12:16:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robdclark@gmail.com, dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v2 03/10] dt-bindings: display: msm: document DSI
 controller and phy on SA8775P
Message-ID: <vw4qkj6wtets6dx4irslusnyz2oztjljymzzcmomqxlcphxnvd@gpxrdgzhu5xu>
References: <20250311122445.3597100-4-quic_amakhija@quicinc.com>
 <20250312-calm-steadfast-cricket-fe9dd8@krzk-bin>
 <654d409e-2325-46e7-a064-ed9e64277e69@quicinc.com>
 <a168a473-c363-4041-8e3e-84fa44e92b10@kernel.org>
 <zpmr6cpiixyu2sj7r7oqpqsge6dcqw6xszldf7ugznmcrxqsme@efiwnggcn5qx>
 <a654d62e-502a-4a47-96c4-a44c14860e54@kernel.org>
 <767e11cd-e338-4e00-a8e7-2e15f3da84b4@oss.qualcomm.com>
 <04d90c1b-1b73-4b6a-b7fc-351754fbb16b@kernel.org>
 <bcc44dcc-8b8a-427a-9a38-8dc6d59c13e3@oss.qualcomm.com>
 <bfab7272-5a41-4072-82a8-0f7401b2affc@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfab7272-5a41-4072-82a8-0f7401b2affc@kernel.org>
X-Proofpoint-GUID: dSUI-IM6bJLgGUl_jTgQLK_ImwnIRRg-
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f78ca4 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=mGSTcfrgQxl9XoTJgfIA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: dSUI-IM6bJLgGUl_jTgQLK_ImwnIRRg-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_01,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=804 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100069

On Thu, Apr 10, 2025 at 08:08:17AM +0200, Krzysztof Kozlowski wrote:
> On 09/04/2025 17:24, Dmitry Baryshkov wrote:
> > On 09/04/2025 09:07, Krzysztof Kozlowski wrote:
> >> On 08/04/2025 22:26, Dmitry Baryshkov wrote:
> >>>>>>>>> +          - const: qcom,sa8775p-dsi-ctrl
> >>>>>>>>> +          - const: qcom,mdss-dsi-ctrl
> >>>>>>>>
> >>>>>>>> Drop fallback
> >>>>>>>>
> >>>>>>>    
> >>>>>>> Hi Krzysztof,
> >>>>>>>
> >>>>>>> I couldn't understand the meaning of "Drop fallback", could please elaborate it ?
> >>>>>> Look at SM8750 example on the lists. Keep only front compatible.
> >>>>>
> >>>>> Why?
> >>>>
> >>>> To make things simpler and shorter.
> >>>
> >>> I'd prefer consistency. Previous platforms use qcom,mdss-dsi-ctrl.
> >> Then you should have objected month(s) ago when Rob asked for dropping
> >> fallback and since then we consistently drop it.
> > 
> > Well... It's still not merged. is it?
> > For SM8750 it kinda makes sense, because the clock handling is different 
> > from all other current platforms. For the existing devices... I'm not 
> > that sure.
> How does it differ? The clock handling does not matter - this is just
> select of schema for the child node.

Ah.... I'm sorry, I misinterpreted the email. Yes, having only a single
compat here is perfectly fine. Please excuse me for the confusion.

-- 
With best wishes
Dmitry

