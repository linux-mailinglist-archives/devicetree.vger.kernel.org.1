Return-Path: <devicetree+bounces-196948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94201B079FB
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 597AB18871DE
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1F9249E5;
	Wed, 16 Jul 2025 15:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LkXgvXc0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CC8199FD0
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679868; cv=none; b=jsUZ/KBxoGxMNwQ1q4pfkYI2jZxvAIV9sNgMxVR/u+P3lh8q15KXqvQOYYZ1oSA4QDPXlOJDWXX/74D+5blT65wFR6bDkW/mIsPMMebPKCfkt3xzejW9eUi6xTTriL/CKrF/AwLF4XvfULm4fY/sZ0AZ2Tbc5TWOaCe4PZOzbUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679868; c=relaxed/simple;
	bh=/lLpKCl2c3s3b6IB1AXI7KNpiEuKvyHjh0OoPcKoN3A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a8VCMIzGjL4UKCsmvowjWRxtxwxHPqZL0WwwrKkws1YsdOm0cIIi+2oSNtLzBMsFAI4IgiuKPEM8T5E9T2Mprn0F3aQ7vMggOMmr7OEnSQeWJQaOoPQFK0grQKochBo3OkVwE0LKO9tvHCEl/O4Ad0jzQT5c09tchaPsiPK8/hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LkXgvXc0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GD1D07001509
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:31:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WtJnIzqB+3SesANnG8pILja+
	egjdW8sjzapaUNf64Bw=; b=LkXgvXc0cWraNAW0XpxyqSgIAgFm4bNdFCbjtBuc
	OEHfT9UlCX89bvmSQGI7Do+V86qG/G1aZoSgaYRfK1sqUPafcfklNqAdryVzl5t6
	ZankvEAdlKLtLDg91s6T6BjUhoXSOCi8Yrf3ePbke0KK5zH2ULuvyfFeDPI6YF4J
	tEExAxtByeNqRk20E+g96BfW/TdhU5dXIgupneJTlannFT1xvw7ZKRmiJ3LB/EL2
	ypa4CMrNMCToIl/asi9sjZcx4SMBSbT7pyKv8Fc903ADV6n2UGPIm0tiFtj2+Bpp
	U4tzAkjmzeBk9Uf6GMt+u1xnBPaIjqHwGPTheeEZStkCTQ==
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug384mtq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:31:05 +0000 (GMT)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3ddbec809acso79758275ab.2
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:31:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679864; x=1753284664;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WtJnIzqB+3SesANnG8pILja+egjdW8sjzapaUNf64Bw=;
        b=UYVmt1q5ukZJ3rq6MAjlFgq1jQAsg2C5M9CdxEy9JQoRvD1ZcIqmHrqSOoR5NnQRKy
         VMLERu6hiefp2vqYJ3vfe+OsQD3Jc4OQvi+WqoO5tKcu6FN22kjT630k161l9xJJkLB7
         H6jByAqc/5YCyAXiU5h5rPA5Vu1id7r3aTYYAt2Sm7VeCnLpDUA8eRzpH+ttn78pSdVG
         uLSoWEaOaBT5x7oa4DuMU7ffLmTNTpkEpFd19v6Hqa/oysjWjk7vRqG/7Ha/jb56admc
         Vm3wSuMwN81rBbr/0+lQd45Bwebb5uTKIjX12VbIHVMvICjXAgMBq5dvbfsqOwswdurN
         Amug==
X-Forwarded-Encrypted: i=1; AJvYcCUYidRwsrl/+Igh772AdYtJ+3J8pQCRLP5gVuB5q7H403a0G5Fqw+y4G2bb32iCzwLJFsnJmXb8r7aP@vger.kernel.org
X-Gm-Message-State: AOJu0YyRVqQ2lKKQ0xHRlu4YiHRvh4udqer1s6q0dH45c6o8Zv6C6o2o
	q1uJ9gH5tXJPEeg8fhka3qF3/NxUo8a3IcCaAS2nmwPDZC3zhh5b8tphnw/lusQM0y303m4PimU
	+XXty9qdzBv7rsV0L6d52V9znXelvVDAclK8A4t15S9ghpkim3IU7zfeV+EvScw2a
X-Gm-Gg: ASbGncuh23GhasmwWV5Io59LhWROy7LaJXbMkLLMiweXU2eQ9qqGVzrfinEKa1+VeTF
	4NptGF3h+JdmOQ/5QMj2WVc02rs5wy4PJ6DP18CRT3ZjrFt1MpYWB8tF4//y8uQ/iOZY2315jXl
	BnUi16HSPPb/xJf5xzfHg6RIfKrpN/+CGHcFPERvgKZ9ljLbgWxFS8dxAZf/Ha+xWveoGRCR3FW
	kBYyJBEx5XU8YUb2j98CkOYwFitOkycraMQwEWex0kKvCziXldih19TvOb7WlyjW0ZOhXnaqq4S
	C5bxeJtM0GHLC7lYJ5tmbSH6g2YS6msD6fwwQ3q1pSGdqXT4HweZJnc3X7ILbxgUSF9DtMmOa51
	056xaBEwOmnqLRSYuaBJLrUJ+BZzZ82BIJcAMa1G8/7qcml0ISQK2
X-Received: by 2002:a05:6e02:4701:b0:3e1:5f8c:10e6 with SMTP id e9e14a558f8ab-3e2824455b8mr27612205ab.13.1752679864480;
        Wed, 16 Jul 2025 08:31:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUoHT+PB8kn2rb6kYrtzuZSZX2s+9VLncmPQvqc9jUsjfQu+TJIFGcQodWcjaEgjwNacwprQ==
X-Received: by 2002:a05:6e02:4701:b0:3e1:5f8c:10e6 with SMTP id e9e14a558f8ab-3e2824455b8mr27611855ab.13.1752679863975;
        Wed, 16 Jul 2025 08:31:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7bcd76sm2667601e87.35.2025.07.16.08.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:31:02 -0700 (PDT)
Date: Wed, 16 Jul 2025 18:31:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 3/5] misc: fastrpc: Remove kernel-side domain checks
 from capability ioctl
Message-ID: <b7xjjlrn2clktozk5uwipt7tdv7clwipmq4wono25ts2csrsil@wcsl3wfippcz>
References: <20250716132836.1008119-1-quic_lxu5@quicinc.com>
 <20250716132836.1008119-4-quic_lxu5@quicinc.com>
 <aepmtv6mxlzhpncwcwlmgfrb3m2c4xe2edl4y5qsnjpxmvivla@gwufrh37y473>
 <9075ba23-cf47-411a-a6a2-96f89114b14f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9075ba23-cf47-411a-a6a2-96f89114b14f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDE0MCBTYWx0ZWRfX5Iy9bxcU6xfX
 CQ9/N9Ef3S1XTZvZ0CRGix++ccv/RkX3PthYrqSNHsKKFo48fNMd1SxlhtI91UwUpr8zLlpr3lo
 SPP/NAnwwD/4lyBmPk9cWkbVWz1GfmBXq3b92b2RJJmH4nvVdFP4wZcgLo80VNuE/bFemXqnYJe
 s+NyPS5RgRPJPobdMagZ0E9hEgsqGdkayf1mPK6UVz9vK9UvtxcNBlGslWAgGfZstJ0wEFYjTiW
 VgAQzNdFVHZhXG5OAbZdP9QhdPhKFJnKgYMADWdOraw3Xu9d2yQrHkR5SNQJqQgohgldouJ+5ev
 7GS6R9ePSpZlmjUhd9wfByOJqH1Exgp8PR8gd5CCGC3h+rgtVZqa5Bncx0wjkzaKpU+xSIhhvom
 rkmK0C0N0zQAtpqnrmJOWZ8qIhU265Llwe3e3gdAUqqyf02163QN+tg0bjHMsTSB5wZl7V1g
X-Proofpoint-GUID: FQ87ZYY05lwqjJrTMG77GNUchm0PMYHA
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=6877c5b9 cx=c_pps
 a=knIvlqb+BQeIC/0qDTJ88A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=SawCyeuA4rNlEbsMlaYA:9
 a=CjuIK1q_8ugA:10 a=8vIIu0IPYQVSORyX1RVL:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: FQ87ZYY05lwqjJrTMG77GNUchm0PMYHA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=703 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160140

On Wed, Jul 16, 2025 at 05:21:20PM +0200, Konrad Dybcio wrote:
> On 7/16/25 5:00 PM, Dmitry Baryshkov wrote:
> > On Wed, Jul 16, 2025 at 06:58:34PM +0530, Ling Xu wrote:
> >> Domain ID in the uAPI is misleading. Remove checks and log messages
> >> related to 'domain' field in capability structure. Update UAPI to
> >> mark the field as unused.
> >>
> >> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> >> ---
> >>  drivers/misc/fastrpc.c      | 14 +-------------
> >>  include/uapi/misc/fastrpc.h |  2 +-
> >>  2 files changed, 2 insertions(+), 14 deletions(-)
> >>
> > 
> 
> Dmitry, your message is missing

Thanks!


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

