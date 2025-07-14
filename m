Return-Path: <devicetree+bounces-195975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C29C4B03B39
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:45:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 389357A4E84
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2D0923E350;
	Mon, 14 Jul 2025 09:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UlmyLUPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EDF19AD48
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486325; cv=none; b=NAHyBgq1U9DpWVO3criRygXYSP6c5EcAZ6sIw7+SrpeY+KLGVmVbW4NlNWckhctobFKH0NXvPJ1Jbl4Qd76OQjvqkOrMzzm11P9bHpits5fw5+yXJ1anNw6xho0WG1xeoyty0VGjhlWs9X0f9fRgw40feZHngX0FviofK89AAF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486325; c=relaxed/simple;
	bh=19FLfrQWrYTSbSU3JGPlqFErrmbDK9ROcIwOmU/chSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mA/gxEx84CfJb8LZVMsMOwb0eFnpJR0LJqnXPdPOhy+88iy3ClAySTxGf783rgNOLpTROrR7BxkwhFzOWR6S31MFZjaOLF8IXJSHN0sXdZ5Yt91SGcnMl6S6DrTpF+mJNksoUdC6tUwqcrS10mop/eXcZy9OMug58cJDOlo3Tro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UlmyLUPg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DKprwO025754
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:45:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RAwzxfCx7GmXiy6V5DJ7j7sn
	U1MBsuON4yb7/O794BI=; b=UlmyLUPggLg76qotGeFrsy+nINSIvvwtxKOksFd0
	7RVx5g2PJlNVK3FJjpsefV8CCFaAN8l3mS5dgKRvHIvqy4SRHwvCfdJ+RDT47CxX
	ui+ArKf0zncegTI0z5dGjITETgznrr5pTqYUkhOMO2jqIO94ZeUbSITziJ2E3qFv
	1yRk4bmJwAkbHEHC4uaAyZkKrhvVlMY2kr+udDH9zxVjHqF57Li3Qc84ut8fWV9T
	NtiTNLKyoH7qbxW5gIxa5AQmqC36znJaAIoknSukVFnKF9OZHzOrVeHS167fpdYH
	Os8QxOnRyoxEOR+w8LhFjKxzpNmWya5UrQ+XHu1bnjEBgw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu84079-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:45:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e269587d8eso165911385a.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:45:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752486322; x=1753091122;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAwzxfCx7GmXiy6V5DJ7j7snU1MBsuON4yb7/O794BI=;
        b=TJweYFgjxyR6OEynPgRz4tTcauwSr5bteVlya4NPq+BG1glojZL/n4dMZ0gs3M3t/n
         XuHOO0T0ER/+l2Lwpydt7Jh5lVOUlWe4657T1DnPTr8p3f29cWm/vCBiuujZo5lIFphO
         dh8K23gR2iX/RJA7ku3jcRRuE4nUCgQbl2qiM2SpiEjCiE1CznZ8CaUcVoQywufQZJZ8
         qFFpyLLoXdkYxKSIodkyoSPNYWJR/Wph33RTsoN/NBYUbxG8z3KG4y1Qc+V+B35WG86r
         iXC9W6/1fkTSxJTisxsl8Mgim215h3/hKQBKX9ilxgE21VVu51bKjY4NeBWFhDKmC+eF
         3bSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYekgU5jgF9gsPVg+xDRtdIR/SmwL6EGCrjeTQKWVV+gmmrT2vhv2xzXIwJuqI2jSYTiTQ1J+jBnsi@vger.kernel.org
X-Gm-Message-State: AOJu0YxjGzmPGLgRWldSC0exvFVzGhEi5Q8ZpE5oTedbBprCjcyQodJQ
	Tcsn+GnWMgGXoXHqLm1DKemzoUzo4Upl5I0JQFcbbnPxzHxsQAO3KrxHRFdFSwuqhWMSWFD8ttE
	gU7Ge1gxmtsQsyWwa7qLmztWhpK26X5sbFtqZ18Nx1GEahfFWNArVb55w+w/e2HFW
X-Gm-Gg: ASbGnctWmz5aK2wyV/iY4teP/xwOAfRBkyvH4imqrFS6992ypqbBUDFQjpp8ZIhJhcd
	Pxhmk/zBu3GgqBRE0+EjqlXog6Yzu8Ei7rwyVTSY8OxL1bITdJjWqMsVMF8ZSsuFMvqNX/M5B61
	EcMQnFXxn1xNNB9z0MxZ1bVU3k4E7X+vQtCIKzpt1BZQdQMeysoqZPM6/agjxa51MtA2LnAszbL
	86Pel8HdNz+01UZehYkblhxndcWzCWQY70ID+bd10qIEjrEsMaBsevHObDpIi6Z9iX9kHi1GWfk
	GLxftYGHbbBT8ayrw8a8zUo+9Dcgdscw8c0nVgTnr3LBip4bGu7rkCCWOLFcRQ29WoDia0kYH5b
	q8edyT1VDKV3J/CwOQbQqWpdjEo4/0N8x/DbHuU5IAIXYjeU4fIw9
X-Received: by 2002:a05:620a:319b:b0:7d3:90b3:28f with SMTP id af79cd13be357-7dde9b5fcebmr1665487585a.5.1752486321979;
        Mon, 14 Jul 2025 02:45:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvhM/t1FHIrVZWVYG9mhbjIjtg3iUsjf8ZC04xPKQpfbPSy7xMPnq9ivIn1rnjpbbWl2zg9w==
X-Received: by 2002:a05:620a:319b:b0:7d3:90b3:28f with SMTP id af79cd13be357-7dde9b5fcebmr1665483385a.5.1752486321371;
        Mon, 14 Jul 2025 02:45:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7ea9e4sm1889678e87.73.2025.07.14.02.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 02:45:20 -0700 (PDT)
Date: Mon, 14 Jul 2025 12:45:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: srini@kernel.org, amahesh@qti.qualcomm.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 4/4] misc: fastrpc: add support for gdsp remoteproc
Message-ID: <lzdhczkz6irj2u2cwxounro3qcmp3glqzswreoqqvxibeeacny@tiohbb3bv4at>
References: <20250714054133.3769967-1-quic_lxu5@quicinc.com>
 <20250714054133.3769967-5-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250714054133.3769967-5-quic_lxu5@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA1NiBTYWx0ZWRfX7MTkR+8U/wF8
 eHilUQ74SvA2jlVDzRc84gExBHODET8dq/SvEazcrZxm6mYfgAiWmeXZH301j/T3PaYhj9qkvg3
 XmoPO2PGpso3nBQSPUoU8bXJJ6VtzDDYuhhUUV3/bdKQl/TbM+yH72OiU/Z/0NmncN7RltRkf9b
 fUlq1zSr+jyaX/xnIhqmOaFxAtbDg1VaSPUEaHmOyjR8Ucbli5ATguZXJf7YGk4ne04um1r68M1
 sL2UkASE11Dilm5SPefdVKT3LAf9hPLBn9/dJ+sR0H7L0dba7zV0ncUGlIavJrb/RZ/05G1AY0X
 rxsUmJEtXsDHMPM67y0SFW8sBWQ5GHH2UvjluxNGveGadtGW8fNtZI2KxW60FiFjJdxpyfOQgGr
 +2JXio4fsMaSyrJWqQF54xZV6lbLggh5t+cflsDO9Y/OALd28Kipk73Rrp0YG5aDtrahkqYc
X-Proofpoint-ORIG-GUID: vpaTafek9YLj_B0ar5kS_XrNPZa3r6r3
X-Proofpoint-GUID: vpaTafek9YLj_B0ar5kS_XrNPZa3r6r3
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=6874d1b3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=GAzI_fwOJHwl1SWvAbcA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=742 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140056

On Mon, Jul 14, 2025 at 11:11:33AM +0530, Ling Xu wrote:
> Some platforms (like sa8775p) feature one or more GPDSPs (General
> Purpose DSPs). Similar to other kinds of Hexagon DSPs, they provide
> a FastRPC implementation, allowing code execution in both signed and
> unsigned protection domains. Extend the checks to allow domain names
> starting with "gdsp" (possibly followed by an index).
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

