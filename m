Return-Path: <devicetree+bounces-159220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A172A6A0BB
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 08:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9C263B4AB2
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 07:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6EF020C026;
	Thu, 20 Mar 2025 07:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o2P9OlCi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145E620B7F9
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 07:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742456961; cv=none; b=gJJwTdCpDQ5E/u4yi1m6jZyrmN+LjDL1+cvUL8+DAMoU0b6+f3dgZyU1o+9jTuPleIm5eYo7XiwQK5uS+EHbK/Oi+/w49zwVhzRCVIVi5fF9QZdsbBgtIfEl2oLHygZcqG9GsuXtbF4EFri1g7yPzte4TPt6gukKK0R8gLdOWnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742456961; c=relaxed/simple;
	bh=9xyRInh/JuT22nwzulBLrvoDfTg+RPaskoAt6Jh8wIg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r3uvPYwX5nCmf36W/fAoPiTxyEYS5KlYjOI9Xe9mmpZrYn3QuI9fdoQp3zq29gP5UCU1SSQQsLAOxMbcrJmQpdKCMAxZatcJsdzGz0NRoUq7kHSNDQ1YnT5dBSQZc8CywlPKajoEsuaDncD9v0+UU5955VDJfIv+XdA/qb/D7UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o2P9OlCi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K6Yw2o016212
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 07:49:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Y0yS+aQTmw0yZPeMQpU10U+O
	l5ONqbJCFVaNlZvX0Gk=; b=o2P9OlCiXeHE6JsWF/dFuB3V7cPQzgELmd31K2w+
	hmIx26nP5s1F6VyAx4ubc6xddl6g0MaF/B90uDIW88GTHyTIdFBeM0AWDWQNxvld
	F998F7Ocm+DgCTGi3ac3YNUzLypE4t6YhXWVv5GxPMTbs2dnIwJ8sh+i8jwL4xMC
	lDpj21sj1WaXEjpVImH51hwoekyxY+W10Tvbe+Tgjr1USNmhWxFTk6fq21ECzCWj
	OhX2cpP/gqpyFZogTBtZdLmEgvk1EU5vpKSQFP4Tm0Ni8j9424M8OQETh69kQp7g
	qxW7W/0pj2DM/GFpqJkrJ/2AA7CZH0jzrMtQDiFutN9V2Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g4t41dk6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 07:49:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c09f73873fso97435885a.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 00:49:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742456958; x=1743061758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0yS+aQTmw0yZPeMQpU10U+Ol5ONqbJCFVaNlZvX0Gk=;
        b=FXlcLt+Vmay1h69gQjBfL3kalQKoWIy7fytFBIlOGY8KeTIUQDzLpp5PIHOdXI21Pk
         rrjN9YZNn4zKqdyl2D8QvgVwARQu6tSyp5q/Baqx8ViNdbRmxT1vPChRO85ZUS4uKnN2
         DThI/rmxdpphX/lHTtU/tCDxm+IF+94LktumRd3ag1NTDw5HQASu2vtuLSlC8pqjYgyJ
         91j5TNRHn6TQGvKrRhHbzA8ogWUfiESIzkFs5c080WIBcmd18ubVRkee5v+W8Uzt/YIE
         ElI4WrYa4PMqKtrkaGbpxB00jwC0+DWsl+y9/xrlYzwQ14V846HgSntF7bDyyOrIXpg6
         CW/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVV2vxc+fxvuvBUGDRay+u4jl+4ZnZTbE0CdWKujZ9oFavTkXJtQCevbp/TAzE1PZbAEjkub2ZxfYsb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9zxX+bwAe8NlKkOftTd5bafL6twwhZf3R0T59AaQNPM7lqXx7
	aEc3pxvIrtijiyNFpMkecJpr0VB8JCG9JfpJP2ObGp6CqVKc5bb4uqrEpxus1fG2OgRia5gt2no
	IZJd+84M8ZxduZyJM8M3eWRj8HAoW6JFFcOlT3cauQhjAkH76U9XRcmi9wER+
X-Gm-Gg: ASbGnctDXJcKYrQgit25siYyCE5yLF0rEZ9vjLURDbQ6pfssWfekrKaVWQ9QtJYaJNs
	ReT/nAue+4/0MnIYLtVDZr5ZqOpGpUNf+T2ZR1hC6ilsAbqpejH+6hwa2L1kX+Ths6v3iTZxxcQ
	ilPey6A67oFG5jDvrnjwjZSoQF+v7hjWhTqPwbJrbq3I2q06+XQhToahyKEb3dJtjL+YDrxuVK5
	EgNEAQ6sqpmRUq33iTFqfKoWWmIsxcF/jEV2AiiSCT62wvN8QWaiGh14/Ib7wWlfy3GoZuXgADs
	w/nCJg4eE0wsQwPk+tEy4ibzCSswWP1jop/0eNp2SmvSIOibJQwTpb7z+x1pALMHbM5OIq980c1
	z9LM=
X-Received: by 2002:a05:620a:1a90:b0:7c5:5343:8c2c with SMTP id af79cd13be357-7c5a83d1517mr790764785a.27.1742456957972;
        Thu, 20 Mar 2025 00:49:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8Z5BNkfpKh97ly69kY/44WHPpgB2U+BPmvSvPMFr6Be++EdmzzYicH8E8wyVmOTRhm/ENMQ==
X-Received: by 2002:a05:620a:1a90:b0:7c5:5343:8c2c with SMTP id af79cd13be357-7c5a83d1517mr790762685a.27.1742456957653;
        Thu, 20 Mar 2025 00:49:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a8bf7sm2122917e87.223.2025.03.20.00.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 00:49:16 -0700 (PDT)
Date: Thu, 20 Mar 2025 09:49:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        srinivas.kandagatla@linaro.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
        quic_ekangupt@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/2] misc: fastrpc: add support for gpdsp remoteproc
Message-ID: <3zrwjody6ffirauzrtcmvr4fp6nx5b6eqkt2eyt7nxm4jfwjn4@pceeisasgxqn>
References: <20250320051645.2254904-1-quic_lxu5@quicinc.com>
 <20250320051645.2254904-3-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250320051645.2254904-3-quic_lxu5@quicinc.com>
X-Authority-Analysis: v=2.4 cv=HMPDFptv c=1 sm=1 tr=0 ts=67dbc87f cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=lc4KdpPQecCvDiYUKO0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 1cXHJknKAJ7csasu47d80eQFslxs7ESo
X-Proofpoint-ORIG-GUID: 1cXHJknKAJ7csasu47d80eQFslxs7ESo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_02,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 mlxlogscore=778 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503200045

On Thu, Mar 20, 2025 at 10:46:45AM +0530, Ling Xu wrote:
> The fastrpc driver has support for 5 types of remoteprocs. There are
> some products which support GPDSP remoteprocs. Add changes to support
> GPDSP remoteprocs.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

