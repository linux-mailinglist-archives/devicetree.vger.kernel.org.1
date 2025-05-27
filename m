Return-Path: <devicetree+bounces-180932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A61AC5B24
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 22:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA6E87ABC9E
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 19:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7A971DE4F6;
	Tue, 27 May 2025 20:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XPtrrEcz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AED17B50F
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748376022; cv=none; b=CnDPggG3WW/NE39I0OVhnyDhGc+8p7+e7YEqN82oeJn2Ayyi1eT6vi1rjWGRANDWyOxY/7MrfvAYQqV9yOmbPj9y94CCTOdj0/sZeYwo/8IxcvuRpTwwoKRELkk8Mkk9Z77lMERAIb/Rise7taq6skC+WfxDlOiehJSjqCEXWvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748376022; c=relaxed/simple;
	bh=r+r3Ev0TVh+OQFJHNFQ5imeQ6CgXND4LddHcuerf/BY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jdgGVsv9FNyggPg43biXiV/uI/Agn2GFMLGO+uXDMnEofU5xrUDvrEugKe2ZedSpwmlC6V05cW67Pgh1/P0KXIqeY/NauNXgnobX0J32E3lq8E6jU3XbMAFKpLjawYh3byGWmBu2tPFwjWd961Y+x0j8jXsfFgEW6wtkMQsDWsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XPtrrEcz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RIvFpZ003397
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/hQzHID9K/GQqrpL0xslyVn1
	e1R+sKoEQ9p0RvNHIao=; b=XPtrrEczWNZc+3TmBNXkgqvIqvOKxVnS/0AQ3ZPH
	XMgJRg1r34Z6DBtpxSM9Pz1pG8iLX9lNwPBHxK4BOfgh1Pb1w04JKx0oLQdwEotc
	kWD7sGtWnQ1WkudY7SeN9WsXHG9XOQau2SYv4yL3b9HSIH5lU+x/pOgoYO8VFent
	LVcZBxFQSwsNOPZnhr5TgDDl6ZEVW04G0EwWKG6ZPA8NsAW8ISOSUpOv+hdoqH41
	hj6HH2g91BTQbljwJRK5mze89cqjsvsfHmheoztx/+CzAYhwzob+23tRw3v8AkUB
	4cQiSf02XRlz3osHdJFit17gkaqfMeAOCFIWFOeW0bJUbw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavksubd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:00:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7caee990721so928299985a.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:00:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748376019; x=1748980819;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/hQzHID9K/GQqrpL0xslyVn1e1R+sKoEQ9p0RvNHIao=;
        b=eHZV7cYjZMZWTsFzJNDMsYuWJhB3jg8ubimdpoHKvaFGMQ/a0kNvpGQB9u0tnEfnmc
         eh/GPF2ZD1MwaGlk0clw8OSQWbpNIDXmoB++Fa9AmHkdaL6GivaLEVcqOW5Ni02qKB09
         FZihaG15b5YzogDoCO9BjXkak0N0jRkQcdGTZ0yDy8OUnVvgxUlk4Fv7u+9JPXopfpQG
         rTeb+D4siovxA33geo84LaT/fo/qd3DupaEXZqHXuTJC3JDa3M352z2c8qqKhREPqRW+
         hhlNv/X536ypkuYk1DoLFdibo8OJtXCqhNU1oq4HI2gko4krnR8M5ZJvh+yCoZkYeNBW
         NS1g==
X-Forwarded-Encrypted: i=1; AJvYcCXZYY1aheW2ur4xKQiRHeWeDrbsoUZkaQyv+6ocDd3Ti8brX/ImIQ7vDZJBya1bsZdz+LWLIr0LVFaN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2QcsQiq2JYOUy3L2oqtxyxuYH2692gzhFFenziBEVPlJ8V8Jf
	/AB6/AdKJsKpZJkV5p2qoLEacmRxecsBDhNpGt0brfkp2iLygp4mKfgPG+4z5Evejv3D9VCjK87
	H7MtjRILNBnPWq0OxIoQDZhRql/pA6nexusqmdIleWHGCrDuZGL1WEzOgFXAtcbuP
X-Gm-Gg: ASbGncupi13Si0e+ArvmsIIRP1mBAf8+dhjXL08YxTbuQsWAE++cL6UlmQzwONGyqNs
	bDBN2OvvAL1Far9KW3NU5rQpoHHbsq9bZJh5/TsVrzd71pIL176xpkWCeIUQAQaSTHHdsGCbEGB
	rRejK3ZFNNW42e79ASMWy0wdQrApM5NerDMQtmhKHCW+QJvOvkA9pSvk36i7VXbTlE6riJSXJa3
	7hQtJGsQ+Ffuke37Euw3PP70z48dyY7aEqotnPqt0JCQuko6r06YAKutaPqyfmrdiytC2LZ9NMC
	dOCgaGkMVc4DHFFqodoSpQFTMLOrp7mIy1ACWUnBdnHy2wZqKMWE9uIOxbCxGeWflzAQRVRkfEk
	=
X-Received: by 2002:a05:6214:764:b0:6e4:2dcb:33c8 with SMTP id 6a1803df08f44-6fa9d287827mr222638146d6.29.1748376018694;
        Tue, 27 May 2025 13:00:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIadGV3qXoRtlRWm4E/ppziPIKI08C68tushmJjy66kSMJ7emHgGlulrNCKBk7DuSuJ0hw0g==
X-Received: by 2002:a05:6214:764:b0:6e4:2dcb:33c8 with SMTP id 6a1803df08f44-6fa9d287827mr222635146d6.29.1748376016581;
        Tue, 27 May 2025 13:00:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532ee57cacsm5746e87.120.2025.05.27.13.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 13:00:15 -0700 (PDT)
Date: Tue, 27 May 2025 23:00:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add interconnect to primary
 USB3 controller
Message-ID: <sgm2ya5h3dp2rnsowhjxzmdby4qxljnxq3eyalo4fieorkfnh2@u6ili3stvwjn>
References: <20250527-topic-x1e_usb_icc-v1-1-43b604cb0609@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527-topic-x1e_usb_icc-v1-1-43b604cb0609@oss.qualcomm.com>
X-Proofpoint-GUID: _Im5G3VY1zYM913COHJBZ96J6UwucMS3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE2OCBTYWx0ZWRfX6FRgccuWeC+M
 L/MMKghG2ZSetgKgeHBKJjR+cYxncx5xf+BypmvRFD0PBTMGijXaHN74ZKYSTPpzwZ4u4Mj3bvZ
 SDxfCe4tNBMntkeX//zb9dld6VqAhnH8fJA0pMIjLwubl3D0nMADnpLA2YroqDn0SxRgPA37k0v
 o9l9JkvRA0fJtuqyFg28lpFP7c1RwPvfUObKDSLbhPgVkyPcMHs4AwQSgBFVSIsbu2gz2HdaZOb
 uXXplwDP9A12IYX83iQyIyrrPZFWZqxRqGi9Z9wY6H0lKZkui3ZOlQlDVtoCJ23316DdbhvUmBV
 IPX3m3APX8jf6ZV+62K5MLtXAy/ueB6k6e6uu4bMjvjzYQ6lTKPissMtGYR05Y2OF5YtIGPbWjZ
 Cr3GESkkjdarenUcN0lY3377MWBSXl6JyhPmltw+L7pL5b6GK4UoKhFaZMYAKFB0zoJsioxQ
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=683619d4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=vqQ__KNFWrN3ZOIeZgIA:9
 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: _Im5G3VY1zYM913COHJBZ96J6UwucMS3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_09,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=702 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270168

On Tue, May 27, 2025 at 09:26:17PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> This seems to have been omitted during the initial bringup.
> 
> Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

