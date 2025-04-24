Return-Path: <devicetree+bounces-170365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EEADEA9A9E6
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DCCB3AD866
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423CE21D591;
	Thu, 24 Apr 2025 10:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fXWNQZKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9695820A5DD
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745489926; cv=none; b=pC1BJc2vXVCLPvdEeaqI87o1Q5NzoU0+FZV/QeDwM8VTfmaYjHFX/fztSJWAf9ETawbWGC1Yi39DsFXrrTi0NhzTBfSYac05N/xsVkWR5aXpfhNOESrK6NG7vjZUaP/sluLpvechMc7zjD3WZZqwIu7o1f6UA57PS+hw3sCSqRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745489926; c=relaxed/simple;
	bh=VwIF9MZwN8skAcnpaYsKQGj6HgJVPjIpATiFvE46JIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s1nsAVzwK4AT6oZleEKVAnXCg0oKMWVZT3PbQnMd73gi/oVjwFKVO0oPkegDgzzhyXW18mEaJRKmZKuHr6eFv4xJeAJCUZTV5O7JLkgu885F5l3OcuheUNZHTHyEwMaHqaahsUyy9auxqsDSilNv6C8g4FpwGMQ6LXea156xRXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fXWNQZKA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O9xqLx005976
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:18:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b+CZ5yvanwkNwsrX8wbr0v7b
	U5gRB/4DWTNm7EwR2xs=; b=fXWNQZKA5tt55ydMaRlEOxI8rt25vsq1M699s9O/
	WjAuarD1DKKd/nTTiQg+ZWmsp6YdMHuDoY1nIznIYRQAZ1fNRQvsM4QKTF+Sndvg
	qhAAMFrcLtQRbVD261Qae/tRoQk+oJsYcg/ja0VbIvdRjFriWLU4a5ltySvZM5sG
	wq7xdqsPuiHYVA1F2VLk90hltCiiWf/MADWXYbhM3kOW5TeXA2hqB8+M+NPcEjR4
	Ab9MBQWGe3HJFKcCEav7V5ksv9JmNneYYkqCTBKvRxjIjC8ITyI9YGGbfd2uEEpa
	O1mRIo/TcenQcgSu6mjx/yu8Ug8uKDxmv7CuPBU0SWJigw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh055e5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:18:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e2a31f75so268204485a.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745489922; x=1746094722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+CZ5yvanwkNwsrX8wbr0v7bU5gRB/4DWTNm7EwR2xs=;
        b=g58EAc8Pngg6OFEaZKE6GzkNiPM0BenIZ7KI2oys9ME24ZiC5g2peO4V5iGPWbltav
         UIvjVOzsslLMpgEsSt8xGiposvJ6MpqPg/2ufZdaXqfGsASNYx9N3BBH/uCRsVFpwhDo
         qcqsxmk6NdJk//NrCjhBpBhDYo9k1GkTEiRYE83HQx3rEmm+PrT7EeF2Mmi8z8sBEt90
         2qxGBVl7hNwG30nod5aFhsXITLcF4mg31aDWm4qXWyBIzeIGnARNBvkO5daALNLNiQ59
         zQgzmzxX3/kDghXqOyvMKgLKBNDSU85kdNaycpokePM/tRBjF4qfvYof5WvuVnIE6HS0
         dmrw==
X-Forwarded-Encrypted: i=1; AJvYcCWUDRFt+hCg/eLjx5ZIAEr1aIiXbTnIM+4ahJX8WAUgWnZsB2UUebruxSfvYz2+Ipfov6C3nsd7+Mv0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3RlAevWuyLbK4t63OhNql/FtDD3lt5aA2Ax3urf62ZPrhcIjY
	mNryxarDG5uRVirXL94hpXqwrpAWYRo2XSJuLrXO3+enDQAjsvBpeuZDB0u9kJoP0T3RPunSGPd
	Bv3DFS7ymnw6spcIQnwq0T+aDROz/Q4Mt1wP0uH0+nsjntvCZQQhQqlpJe48+
X-Gm-Gg: ASbGncu4N9HcyykQV05dT7aL82jgjYxfD53CAz0iCFIWd+4MTI8k7eXqo6MdEgXy2lh
	9jAN4hoHZ6PXMb8Yc274jKuzgC36jyrPRFo2PQNWQCqx3ss45sZ3QRtBPC6FVgBESZAGaD/dYG0
	EBMWzfSDiyfNwJq4HscZLWV4p2jVuwZkNCpAOANAGTmNcTBN8BhXtHBC4QKJKyHY1OobKkELolb
	sqiWXQr437IR0iaH9aoTJIJwc0Rm9G3DK7f4JSnnn1ZfQPQsnqhyA/AWPhaEZJ482KhdXTE8/7n
	juT2/IEZcGTSkfAYenBZTOvLZJODTWNzYY2oESJ/zcE9p4Q1molK1w6uvClFgFlxHcazzftDm8s
	=
X-Received: by 2002:a05:620a:2453:b0:7c5:4eee:5406 with SMTP id af79cd13be357-7c956f5f787mr334006985a.49.1745489922686;
        Thu, 24 Apr 2025 03:18:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUyasljwk71lheOvieQO8GWyGCHy47iFL98wqeOfteeZQyBP2cQ9ZJ7ujqmqOzXQolEaEspg==
X-Received: by 2002:a05:620a:2453:b0:7c5:4eee:5406 with SMTP id af79cd13be357-7c956f5f787mr334004385a.49.1745489922351;
        Thu, 24 Apr 2025 03:18:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb26242sm181296e87.21.2025.04.24.03.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:18:41 -0700 (PDT)
Date: Thu, 24 Apr 2025 13:18:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 10/10] arm64: defconfig: Enable QCS615 clock
 controllers
Message-ID: <2gqcoofsvftuvvo7fl7ktkevrhjcsmei423qjdownslucqezib@xpcrhcwnwn3m>
References: <20250424-qcs615-mm-v7-clock-controllers-v8-0-bacad5b3659a@quicinc.com>
 <20250424-qcs615-mm-v7-clock-controllers-v8-10-bacad5b3659a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424-qcs615-mm-v7-clock-controllers-v8-10-bacad5b3659a@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2OCBTYWx0ZWRfX8PPUR728qIyH 47ix3vXjN17LYaZjJ/OvnQhJuJd46MysHy7FUHY5pt0pCGJDv37OXHz/20FVhuT2zaOSg6rXHaL Asnhads9hlG5ZIARIgk8MkbGtek+BAC5GcfZ3G8yFHQK/DrGkH91AIeqFp9VvuFK5cc0+5Mbt6G
 WO9PuUxxUdCL/j6I3Yl4pg1GhQ9t1QWkkVpdfa/AYHxbPpne8nsOSwh7NkS2TpyOuhgBmLpr7yy ++CskCTDP9ZoPd5dT4KNdy+PAN0gXoaVsF7ih3p7an7ecDCZnS0ASRHoP6ke3s8KsYMKVczrg6F juTtg7vaECIC2KEPYy1IflxGeTqMMxQZRgmtIq/HsHuVHJdZdCwuRVC459gbwSj7OerJcEnc/Ao
 MfZ5/Vpw3an0NUkIfObCFjn7Z29VT7Se7GP/41EEovrENTWDGR5UicljUJP6ZG5PHK26+LxH
X-Proofpoint-GUID: JNVcxNRDTLyjNaJi5XcdOjKdlSfDYmjv
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=680a1003 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=mLCiClLL8ZwIBs7X0_kA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: JNVcxNRDTLyjNaJi5XcdOjKdlSfDYmjv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_05,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=594 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240068

On Thu, Apr 24, 2025 at 03:03:05PM +0530, Taniya Das wrote:
> Enable the QCS615 display, video, camera and graphics clock controller
> for their respective functionalities on the Qualcomm QCS615 ride
> platform.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

