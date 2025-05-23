Return-Path: <devicetree+bounces-180070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B360AC28A0
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:29:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12CB59E1210
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54072980D8;
	Fri, 23 May 2025 17:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WMiJikqt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F4A293B5C
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021345; cv=none; b=HI05v/QEoczrwsK4HEY1sTFBX4cs5ZlpbY5KYdpwFk7iY1Drf1QR/msbk4SXQFbs6cL/YIk7QuK+FpkPewGBC9xeo1G4loywX4Pa+zjmtOHDzNGQDfh82DJpycu8AeXAiri6BG0YPULpdPx4aXRguln0yB5A0lqJTWYfSslV+Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021345; c=relaxed/simple;
	bh=YE9iOCasxPJapt7KcW93oC/yS0GUZhvFXPD7y43bNBg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W8X62RJ3qw550OXuBrrsEuYZE7LfWK2tCdZaMRycTsxSz3iyo07IlNkmhYd1pwJ4BP6KNJ/yekeKD6jHAD30qy79ik7wjtcxb1sZbHwsrkgAk/RbXsK7DNJLoPrq8YZBv0yDJHT0fYkMGXLBQtUtt8mWKVdSxmcLsTCPBaIDyFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WMiJikqt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54N8F2Vf010050
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:29:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wFa0vdA/IRTpVTPty2QP+/P6
	az8rnekAbo9UM4G7jm4=; b=WMiJikqti+OEnzKlXLAL8harbintk1VTQiGB7xG1
	8/cHuWXt/X92OIdkvhwY/k9SV8ExfuIpPtxsCqCJyvX6dXNi7wUvQKYyiSfcqf05
	RaeKt7hw5hyarWPJHKddrG7SDsnKXs2fzyhMjsmbALZrm7ktzR/tdPao5liOQg20
	dK+gdjDr0PW77wHYU5kz/dGE5Oc6fntm/p5dFu1e65Fa2aeihL5hENUGuG4mLZd3
	fWuBF6Slb9Zip6GXLUS19/k08KyQlO8ygl6s8RIaNMI0+Jf/9S1nE9FIRTmRpXSR
	JIFGkfJ7QIQQHaNHmQ8N7YbM1Pp+QEPg06QsIARmD87KrQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf0ax0a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:29:03 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8d448a7f3so1472766d6.3
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:29:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021342; x=1748626142;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wFa0vdA/IRTpVTPty2QP+/P6az8rnekAbo9UM4G7jm4=;
        b=A23yHhzFxtawcHBFBD04Im4CphknwD3Aeinn7XhUoPNi4zXqnvrVdV5GxntrZKFFO4
         476S1OpFzS/ni9rBxI87SMxct9zdg9u5vuZ3R4uhIKn6N/WjcmP2jYxOacMXtBz75jNe
         vyXKSHsePQBsnGXWsPhw3gn7IIwYMY7JByAEBbmqJtmp3tkC/vcBPz+rQG10k2LjY2Su
         2kkMadCg7GPE9NYoQoUSOg7bC/hUUAKJiIOXHH2HLUFO6/+elwpw4SQGAV9LhCVIMsbp
         xGmZ15MRWoKO2RtfoNTWYn410+Jaa9sToxm8Xin3Wio1CEppP+TNOmFwRDl8TRCebqe6
         FZvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIyoBP1TFUcL9t/6049BHIX/VQAacBk6q7i8ULM1wjA0LPLFwAjyxB7tXvzlgnyaj8+U6r3iRRf9ws@vger.kernel.org
X-Gm-Message-State: AOJu0YxXf9MAQz2K2y951qJyfvh6P5sQJFPsJeN+r675ujJDqgmTspsZ
	683z/Ak3m9nXD8noSr5Z0oUbtMwshP2umnynUobJlqXQQZZsg1jZvmQzuB6losvC1hI4fjTMTbX
	R680eo/3By6FwbOeHtEwPqcJtPIR3RVI7Divn3AhPBi8S5dM/TDF0+BnT0R5xS6/F
X-Gm-Gg: ASbGncu8XmcByC4eebsFE/Sbw5agncklBkd2pzimp6MIMRaxIXxYbz507eos7UozhsL
	b+nbUt2mo5O3cfZ5t3RZnC6TXZu+ClovGvuK1jsCEh4cbvTGfUxasSIwmVMbygbXCf3C8/MXORx
	h9pNl9jEBq1TXgwqUf6O6JHhGzx9lbqjWrA9vDmtFj09gRck50fGedkGYTlLc9mpL8tV788cDuY
	5FzF8PxJJsVx6I/1V59mMpC67XI4XiLSCtG9podcrQBViWBdWWrDkNzFEnVDvaylnRN/rk83dEE
	i90EF5sA1/SOoq8L0H+sNfBbKy18xmDjZhF8MsW2y+haiVFzLc8Xh3PRQlN2EDkYAwJuvTYChC0
	=
X-Received: by 2002:ad4:5ce8:0:b0:6f0:e2d4:51fe with SMTP id 6a1803df08f44-6fa9d13380fmr4709856d6.26.1748021341968;
        Fri, 23 May 2025 10:29:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYa7Skl7n8kgzImuglUnL40cCJvrlZBl66a+j2go4me6lwztDNnIag5vwQhcV+q08HK0c0VQ==
X-Received: by 2002:ad4:5ce8:0:b0:6f0:e2d4:51fe with SMTP id 6a1803df08f44-6fa9d13380fmr4709566d6.26.1748021341671;
        Fri, 23 May 2025 10:29:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550ee87a795sm3549913e87.220.2025.05.23.10.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:29:00 -0700 (PDT)
Date: Fri, 23 May 2025 20:28:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 04/10] arm64: dts: qcom: sc7180: Explicitly describe the
 IPA IMEM slice
Message-ID: <nm245key56zcfgmo353bfiw6zrf6lymxnx7evqxzimvs7muxpj@e3yts2awiwkk>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-4-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-4-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-GUID: 3D1HM7PgPI7_BRQkklBbjaHJtHjdQnez
X-Proofpoint-ORIG-GUID: 3D1HM7PgPI7_BRQkklBbjaHJtHjdQnez
X-Authority-Analysis: v=2.4 cv=ZP3XmW7b c=1 sm=1 tr=0 ts=6830b05f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=CQVN2WYv2dQaG0RyAuwA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MCBTYWx0ZWRfX+XCFkUvLNwS4
 1l5R7tX2FHeS2QZIIScaCR8OxYPh1mSsEhVJ2o79fM8c0Tsx7dGRZJOgVOXRAs1twoGmHpiX7fx
 yzpG+PnMRsbnalXyi4gn1Og95UPOwmGAOOiAPd6Nlil43lhiiYPGWGnwWpb714BgYqNJO3IQuFE
 5f6KObnx0P7NmfL2V8PwWzE0ezr3s2UxVXiD2zosxWZedvYdXUYHh02svKL3OxRgdt+1x7LHBvZ
 WAVXthUTS9Negw/UUuZ+DU/TlCo8NIEZZ0pP5siYCkcjvbwh6MN2dy4WwoW9+FjnJQaBOsPpO0G
 UzXBzFmzIZM43wfdfqHO3qI8JE5ICkrINWvmRk8R0lvcpfMDsvEdsUn6wh3A9jEt8YhhOMnHjPE
 17b0QVjktP4HjD5oYGFdPNtjK+muFhjzl92aK8idLa4aVPNKLDnuN/Ba2XdyhiGE9PmFD5ly
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 mlxlogscore=680 suspectscore=0 bulkscore=0
 impostorscore=0 phishscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230160

On Fri, May 23, 2025 at 01:18:19AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As part of stepping away from crazy hardcoding in the driver, move
> define the slice explicitly and pass it to the IPA node.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

