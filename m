Return-Path: <devicetree+bounces-196918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00958B07913
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:06:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56BA73A72EB
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 466732627EF;
	Wed, 16 Jul 2025 15:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RR+mmuEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D11263F4A
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752678347; cv=none; b=oxOHFoPAwWw5CbjX3LAp04lp88t0sTd8tutUcaHZC7+omHCWcHBTQJr1sKPrKgdVwJcb3+zUK2r7oWRq3KZfVvDiQXLi9sjTjg0X2gSXCuJhqyOazByMXtXsDDMeF/0Yn1ucCyrz4+2G+PE1ajX69eq6+dbmDq4HF+lyV4OqO64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752678347; c=relaxed/simple;
	bh=95w6sP0+FjuUfliHxwFbWeg38I0fErD/c2V5092cCqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l4/aYmxwnBhtadr5vGbhLGJaPGXiUbOpwTLfUhiBVFoE+nZNAjI2s/XjQOJBvFID7ky8KlnzKO4ac5T7TTtEziZff/JmrC7Z38Uwo5SCJLVWBHsGbE+mHK58eAVfZWJ4yLE4rNxu1QsUHxYiFoeSsbV17p6PlwqvVcrFOasALb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RR+mmuEQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GEacpF017590
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:05:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=c0YU6WYevdund5tkdGQl5yQ7
	OWFC47cHfSxZE2himRo=; b=RR+mmuEQzniwxLrkWdZWkEJngba+lUUiGn3haPIV
	vTIneCiat6EpBqaSeP4lljKwLY5vu1KLVq1akKgQNUcEnwXzKYSl9zBuVSuwYRzl
	WkOzIxlmjuO8otdIcWnFY9AQbLle9+g/+hhHQtC3zRMCr6Mu508qIbTBhdtRw7gh
	kT+LfEuoI4DHvSHIipdtHRLTuH8+emmgxKu8d0fwk70NZiTRQEyfnFwFuUboC+ag
	4ZwL3G4zompsNNXIL1ehq+uHxO6t1RH3fr4ee5wqvkAXmXke8t2qinDPQs5m/ih0
	U40ReDZ/wRvWrh2ZPW0baojWecqJHaY17YlVOJnV31K1Mw==
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8c8ub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:05:44 +0000 (GMT)
Received: by mail-io1-f69.google.com with SMTP id ca18e2360f4ac-87632a0275dso588711439f.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:05:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752678343; x=1753283143;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c0YU6WYevdund5tkdGQl5yQ7OWFC47cHfSxZE2himRo=;
        b=ZfxtNlmQJ3JGykThzDIk/dONnRpzQMu2txHnRHFK4lpiQ8R9eyi5TDMX07qtbgbQHN
         zAt9Ku7+4/v6pCj/zLPWXJGpnswdujCXgBFMqH0QwjnonUn7oRigucCKRBxgnHfrHU4w
         bu1cQiTkmoWX/Zfs0I5S8DkbKyh8sDlaVbbSUt17mjBdhtZ6T5n74l2zhHGzzcgwyRr8
         5kR0e69kCOGK6gXJUE8GHqP5GocRUsX0auuzyk1Eyo0t7E3UuQM6HDne5fJT84P27wxi
         NT/eTVSOUw7Ls66egHyDBCTxZpmcQQkdhUE6x6Ts6u3YSWaXSQSv1IM27a0TL5BvBeyw
         UVFA==
X-Forwarded-Encrypted: i=1; AJvYcCUnVKtvANAwPeUl03XB9k2glXMt0cbq4E5oJ2bZAdU/3TsTGxfMdpS7mc+TzscMfg1SPtZXh7gMBwZt@vger.kernel.org
X-Gm-Message-State: AOJu0YwOUZykQUxyEenCvaFpslNe5x9UeKtTg5wvS4Fx5OU1dVkieeN3
	RuFlwmJHbX72sxXd7bFkSieIdxFqYfDqEVxPXHNFygXTuHrwC+sR2UIcLaub8nLg43ErXgpsQwv
	msnFsrCcIZld/BnDhFBY82AFLKP1VrQoKuhHFbh4EaJGT6ETujNUFr4iS3C4fw44z
X-Gm-Gg: ASbGncsECHm/iiJjiBeYgp2zL/EK15AKlzwmtE2/DMKz5ieplGLoSnpVLQz5XrD0W7q
	cz8de77+LF4Wx2kpCDVPh+wHtXnISOoPSVV1J0NFNe97tPZZVjI7hJUP3GK9ZL9jpfU3LY93OLq
	2BMVIhlj3tfAThUlLmgdUbjD2TfasrYAES8kONMkvh9lpUE3V5Q7v+WFxaejvJStTVCmxSZ5aLm
	TCByNURLRqbZoe9iGrhz2thQqEAFsu/LGllCCYlcAecTVT5PdogTiO7OpFe3ZPDaIMn0PADDR5P
	NXoNAczTGiVEvxJe+F3Ithq/ZYpgfYqIv7Popq3Exz7drdftmy9HhAxZLXoSEmKCpIu/vw08F7Z
	1trmXQeJjhSoLtRF7fruZlo2tX21qhSPp2JE9gY/eoPx0jyoJoBn7
X-Received: by 2002:a05:6e02:2687:b0:3dc:8423:5440 with SMTP id e9e14a558f8ab-3e2821f490amr29394245ab.0.1752678343424;
        Wed, 16 Jul 2025 08:05:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiQxVLfGJyjdQolHfpUghz4La4xIzw45yLU/Cq1KVO6NC9WigSlhiSYSteODSSlYkMMHWrdQ==
X-Received: by 2002:a05:6e02:2687:b0:3dc:8423:5440 with SMTP id e9e14a558f8ab-3e2821f490amr29393835ab.0.1752678342895;
        Wed, 16 Jul 2025 08:05:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b60f14sm2710525e87.155.2025.07.16.08.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:05:41 -0700 (PDT)
Date: Wed, 16 Jul 2025 18:05:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: srini@kernel.org, amahesh@qti.qualcomm.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v9 4/5] misc: fastrpc: Cleanup the domain names
Message-ID: <vvojztwx4bus6tpgcj5s2uzy6pfrmoj6msdjmh2kq3ym57e7pz@nxnob4fffyzk>
References: <20250716132836.1008119-1-quic_lxu5@quicinc.com>
 <20250716132836.1008119-5-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716132836.1008119-5-quic_lxu5@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzNiBTYWx0ZWRfX5yr4bK0RM+dE
 hphMMhLNdblYOuK7KU7vt8RHi+bhJVULeT7SyEmKOGlZvWQxUDToEP6of73NkbMasLArxcZHdNu
 h6pCJ5Rkh30MHWantR8dImNAMr097R5GrmyTn3YuvmczL5HNlcI/UzGaosOlvUGNvEMJYDMdrWG
 LThWjovkDjF23ypu6XEjfZRoQ5XTp5q2/qs8cVWHKBwCc+AFbUexoqd6Aijt8/HZ43rL0bc1/TS
 CUYHPNBkVSrr42v0mn1sqUZuK0vrwvlPQ8FiBzr+Zr/W786CTVf+GaufeMjNmCgjB5eIgE5E4k4
 UMIj5hFd5o3LlcDsInAHl1gfRh1AOjJaPYQf6OJN7e4IcP/FsvprJDUhGuqH5WyNtHnmfKUMFmi
 kwvBf3PjGUiddzX3ShclGUVyo/hDE/qxzY0th9iVKGyKfZ0zRdWnbb9o0IO7OoPbmrL7Nh4E
X-Proofpoint-ORIG-GUID: -scAhYMdZQy89ryIZEwttxoH9H3tuXKr
X-Proofpoint-GUID: -scAhYMdZQy89ryIZEwttxoH9H3tuXKr
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=6877bfc8 cx=c_pps
 a=7F85Ct0dzgNClt63SJIU8Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=7U_eyDcXjddG1dUirncA:9 a=CjuIK1q_8ugA:10 a=LKR0efx6xuerLj5D82wC:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160136

On Wed, Jul 16, 2025 at 06:58:35PM +0530, Ling Xu wrote:
> Currently the domain ids are added for each instance of domains, this is
> totally not scalable approach. Clean this mess and create domain ids for
> only domains not its instances.
> 
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c | 36 ++++++++++++++++++++----------------
>  1 file changed, 20 insertions(+), 16 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

