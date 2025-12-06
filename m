Return-Path: <devicetree+bounces-244897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFDECAA08A
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 05:22:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 634C43123492
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 04:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0EAC233D9E;
	Sat,  6 Dec 2025 04:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MlWnlHXh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FHqmxziH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F87121FF46
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 04:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764994912; cv=none; b=JVmDK05FpzMJC3q9EwZzTbyXU45d3tReYwJwHFwIZTofKn+CFvRnQHRhSLcHoyaQ8lAygljcINIqJJYNXcFolrj4Ab3Nhd41ZEKO6uta3u4XFPRqET3PjwkMg9a2y0VR98K1Esln85FvchYlm1FmMIp10KafIbTRit0TuJm+/3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764994912; c=relaxed/simple;
	bh=GUMWntgtobx6l4Pqxl/a+f8DlTB5j4ESWaEjOf9TrDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HTnaxC6gOYDOt7Bi5TAfIXonW1VnqEqnGYtU8jdu96fb2eiT8nvno/UA6EzQw0Hu2fp8Keg698kIb4XNccakppaUnA2jeMUF9hhlprKDGjoWq+IKj529JLhWa1oC7IG2qlB1oQuLhy+VY3gfMg+dnMQTFkoaEivdU0rgttZIcZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MlWnlHXh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FHqmxziH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B64Bf2N2271304
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 04:21:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MIl6XBPonHXUnHVSJ8TMiVi2
	oVgOFanoHbye0ig0/PU=; b=MlWnlHXha51f6CYYMYyBjEJ4fzL9OfWoWS7IjfId
	stpyBdAZJTADRk71ICd/gY6r4Jl1TwFOPENsPws2o7sxAl9TpKF68CRueG/S8zgD
	5uPYyt65+E0WpsqFQsFLsYVED8K8MtTFb4kcxYiE0vWQCMVEgpr2UFsi4taMQ4Vk
	OlDNxBsh6H8TuQrkXiAeb6joIcw7sFQKNJM4Y6SnyN2Vh8aXpKMFJCkuh/+C4ci9
	RZNvYooNqaQdHO00/EftfnhDy495TWW0/4GVZYBCReHebRFH5h/drP6YDxqgQnKg
	Td/iWmBrKqkOo5vJdwTwaAllM0DvqSFIG1G0+HB8FYGXNQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avd8e00gh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 04:21:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b55a033a2aso724123885a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764994909; x=1765599709; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MIl6XBPonHXUnHVSJ8TMiVi2oVgOFanoHbye0ig0/PU=;
        b=FHqmxziHm4vM0BfDrh23NqtfCn6YngTUtFptGucDlWhWL80q3h+Sk3rorV51p0cOiA
         6w6GP9qfIhXVzpaM81PRueF8KdO3nKgn5MO14GLuLiY5wzocokS+5rYuGBzw59RXK8dB
         il40Dj7pUPMXzEe70xjBjQgo/qkssCB/A2LCFKJorTo9mXi2N/IvJRVKgXXjmrq3kqHv
         FAgfAyP9bAeC9FVzBTXdgf+pqy2ytsp1vyvXzMOFTcZRHzyKgfbpJ2qIxKdHp1b9BvGy
         d5h8UXhJaTdsGgFPUMKcq+S7ZsKfxWiBFtO1Nhpi8vNiIfdUIu5Bk6jt9A1BEp4NWzwJ
         UGSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764994909; x=1765599709;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MIl6XBPonHXUnHVSJ8TMiVi2oVgOFanoHbye0ig0/PU=;
        b=B53JqLWvM4OVmAyzOGBx5Uin2bm1A2V+13FLZ/gVX36XXWPeFQPiQWvb6T1aqEkzfS
         uhys3zSiDMCyVATtk5ZJeq7qd3OlCSRN7waOUdSjfGWxRAPb8YnrQ2px0Qq4unOWfG8d
         nKHeWB1NYysSmBvblEWuMRExF5wmzDHv5bcHMDnSD/Bz2XIBoVI0jyNADMwEc2nZY7wL
         i37aBNnPi0BLMCDG1cI8Cmn1Td32ZA4WQO8AI7ox5GqkYsCM+oE18ZKKsGsmZaRBNL0N
         Eh+8KGm/UcpRyEPTwoQGoU0lKRhlnf6BycAp9peR2cFhqz13R0SrSSczs3SpigEmWQFc
         9XzA==
X-Forwarded-Encrypted: i=1; AJvYcCVbthK+Y/n/ZRN67OfsojS0QSGwodAmLOGztjlASQqailrbPDVNrBRkAKcXLU32ihWpc8UeQYvnu+kF@vger.kernel.org
X-Gm-Message-State: AOJu0YzibCsNsx2idh4XUq3jl5NW6vth+fKuxdGVqtZRj8l9d8NVkDgI
	f1rLTLovoyPHP22osuKW+J0ZOB0e4oJbMHnEebzjMFP9Vr0TS37O/hC8w2JbmUV2sN+dISfygMP
	9QXZLqgzFUuhuIszCgAB7tLsTdPrRl/P4vdfEf7O2a5C7eWwjy+UbarSY3xjXNyrP
X-Gm-Gg: ASbGncvgSttnoLuZL9PbO8nVo+2mxEX59KydtMjMgyxVaKtsmnbMV9EWJv+uFAwoam6
	guTt5LITlBAlfYJO1CZMTbWgMHwlrF9fj5Ya7Ht4WxWWSwaInm4gAdOWgEvkVEF7q2nVWDwauzE
	6gY5YgVuLqAy+DoVy/5QdI24VQh8L9pAbG2K6cVYh4P7YtVlGW/f1/TkRTRduW42kqMiFsndRmu
	omnoRNSZXpF9L75RBk6HiJC3SOUNIEsHdv+s/jb0ZKjLxe1Uke2btTPoyO1sCyJpfU4V7wg+ee5
	3soUIkgxLnWtXMuPikE7jJ9bbbRC5G7OjTk+E43MSkpwLnUqGHf9p8M0RHFORy4rDd3+Jibwssz
	ktQ+E8uNmSOipMGN4L66MxJxZfqxKfOzxcz7YzDLzH0sImDVReuijCrNzp36xQSMxaELxLgxVaI
	V2dXAEgGI0s2crSs+8iGe+qDw=
X-Received: by 2002:a05:620a:4403:b0:828:faae:b444 with SMTP id af79cd13be357-8b6159b7a2dmr1285812385a.20.1764994909517;
        Fri, 05 Dec 2025 20:21:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELa5NmXVgr9Zv6oxMywPl1XxvP1p4dQoPyF1U0OXkr1ix7ky2OcNXwph+K27pGJXPWF5P6yQ==
X-Received: by 2002:a05:620a:4403:b0:828:faae:b444 with SMTP id af79cd13be357-8b6159b7a2dmr1285810085a.20.1764994909061;
        Fri, 05 Dec 2025 20:21:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a7dbsm2064122e87.20.2025.12.05.20.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 20:21:47 -0800 (PST)
Date: Sat, 6 Dec 2025 06:21:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 3/8] drm/panel: sw43408: Introduce LH546WF1-ED01 panel
 compatible
Message-ID: <3272g7zalfqdyobcic33edhiqsj72redn7yl46s72giv45adin@ggvhorkee7yy>
References: <20251125-pixel-3-v4-0-3b706f8dcc96@ixit.cz>
 <20251125-pixel-3-v4-3-3b706f8dcc96@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251125-pixel-3-v4-3-3b706f8dcc96@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAzMiBTYWx0ZWRfXyIj99g0HlyaO
 4CaQle9bRC4FL8r/Lv2N/JA30fKILQehWQ/DqQJkXTkjNc6w8J9kxJbj8ZHzxXCVAUTzmQZhILN
 9+Qv5+cuag3IBLwIKGvsCxZ/h/jGfxdlEolV/j2qTbUi2gH2mn5jvyHjS7vmSx2L7QmV5FAFWE2
 AIzx5sbRgRJ1UzbMPb5wQv3IiJcqQijnmk4tAS+eSOezw2w1eFdSpyTMJsFQGQRBkJ8cFbzoGU4
 Gum9gpyNqqpnT0wg+VERmLy6qpmlQo+92rzom3wIwjpxIwEpAFYvURH7XVKVJHDV5nznnyBoFXQ
 g7snsplLzmzWFYQIPP66IfSEEiSwszeIIEAm0v/h70IkZ2Jdcl1qjzYGQSADBquRBj3R0BD5Dvi
 nyheLrQlxtT38ilCDES4EdcUSY9mGA==
X-Authority-Analysis: v=2.4 cv=BqaQAIX5 c=1 sm=1 tr=0 ts=6933af5e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PQw9IP25ZL8ef7FIWD8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: l4u-MRVMSH_P5YUKm2LlOdnhBprrGPLj
X-Proofpoint-ORIG-GUID: l4u-MRVMSH_P5YUKm2LlOdnhBprrGPLj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 phishscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060032

On Tue, Nov 25, 2025 at 09:29:38PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> The supported panel is LH546WF1-ED01, add compatible and adjust the
> struct name to reflect that.
> 
> The standalone compatible lg,sw43408 will continue to work, even thou
> there are no users yet.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/panel-lg-sw43408.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

