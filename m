Return-Path: <devicetree+bounces-171029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5936A9D0BD
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDB6F4C6F2A
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 18:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E825218592;
	Fri, 25 Apr 2025 18:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lxhYNBXn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31571AA1C4
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745606980; cv=none; b=EGPg3WgFwvRc1cDmy7+cAmrm6ET7HxzT1e81FXbVlNVY7eMP7kcL47ncP5K6AYXeKajUaKAqvBcJ7jgrfN8pwk/3DOoCmCYGP1HtphCfNPBhq/noxIMRfISORQtBErvn/zWmnlqil2io2ccVQX/phAWrlSOoQkuX15H+Oejwceo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745606980; c=relaxed/simple;
	bh=RneatS8jBZNd3NEWX3fEjnR61uPY8UIAAgxyzxoZsMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TulYQX+lGutn3GdNo6pOzV3Xfaza2+jyztPSwxRIYdtgzZ8zInohyw3QxjvG/xw0C7dwF1mXXNBuV/aKTwJ9rLtph/LjlNPyqaObIWXch0Nm+UZnTdg0eZ5N0F+fczdVNEOAj8sTu5K+wRJq44jUC+/08qikQOnSt9+ZZ4JOpvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lxhYNBXn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJtUZ012822
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=x1Wut12kvCNJz+De9wNvp9Hw
	b3L5Js19Bom/bF2EeKY=; b=lxhYNBXnlKsP/l8aCYiQmV6P5tw7E2BocR7YKujm
	oTDtmGQoPf4boqnnvUX8YT1cZkFvPsalIjfvb4jLU5iWvzgWc9UACXUukBDJcMnR
	y6qP+0soiw3rWxn86VlnOyZ+gShpaSvIw0wv2UoWeyX8cz5KJs8i5cl5Ka0SIWaa
	iy64rfVKv3wO8IBZnQSCfcsMvmpol6rntsKOsSuDNhfn0vkwq6qahyBc+1TEhKg0
	k9TX3iuUCdo1/LJJIUbjnC+NnPg70PZggYljCBuZL5f5V8Ku3aFRqOi6VAN4xeRE
	a66WcX85YToo93+jSlRchsqDG5faBFAm/xpVLoUFFpcsDg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1t2py-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:49:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5bb68b386so728302485a.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745606977; x=1746211777;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x1Wut12kvCNJz+De9wNvp9Hwb3L5Js19Bom/bF2EeKY=;
        b=MU764BwbqPZMYhF1ejwOlglFCMdmUQRqFmc7koEV2lg7fs4dFiv5MW+FLjX1ugNsoh
         iN0gFU42Xc7sPLZVF9uK2SFf8kUrGdHvbYdYuoD5o2nyp744/XoZ4dcx/5mLQ3+c8i/O
         WcaLoLikz8D3J8+CDcTtSaTV/f5q8IwoYvtKr8n+FnpGHItuXDRpReqIxvW5ASRYSu1K
         d0jb5+f8V9GE9yYQNMfDiQ9xb0VZ6LDOYxVUwSG/SSHIbn1vVhXe3oe1JYiWHzOv8V4f
         SZbG361jy9JVDoT6jCdhUb957VsFfX5u9kkyIVM4453ieAhLehhYOOOEWQb7j2VE9DmH
         ZuWg==
X-Forwarded-Encrypted: i=1; AJvYcCWXdp4nEhp+RdgLfCpBOuJo275MW/qRc0xhWNGJKvGYFFfHFi3tdwPyjWr5UwIV+67+zscA9WgUFcfX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7d9y0G7BFJ9s5YXUHCpDctyocS5Vp2LD9J9iQAmaxeAf7bSSz
	l1BUW1prLuDYSbGs37DOzmeib8OC6Cxa1iOODygtTB/rRhjRO0zUeSSO2fcMD8WLYQ03ISzS3kG
	JFANiIHZO0vWrXZ9zc7gVa5KdzccL0OYIqGz30DCL2HBnzrrvi7cOt6g06F13
X-Gm-Gg: ASbGnctBA8xrpc22kPaYOSbf0DOJkmDqVBu8CNx+VSQ4lOlv9jJQ1M0pO8MXtGGJaCC
	S3PORn47yppnTxlrbu+B/ZaiTydXELTMGIqJ9v24VDQ355AVYGcOlQrsNhCtv58gzmCQn6x2Ek3
	7WChmbPgb6PkYTr62yJfNr35BBv6svZT2SIIe3nS1IGlHWzbbGhLu/rErpI1pZeyXy0s+2srYox
	S/sBSz7hEFc8m1g5i0O2+QG5MBy/HodSsWRAajfA77FSXAp15MJ0yTOgDJoMwrxDMS6rACueZlM
	Hvfh3Nf7ISQ+edWlChLVCazDtCAJbZV7Ba0yTKYLz2Wc04usim6mddKZEUhhOg2K0sEA+1qpPHk
	=
X-Received: by 2002:a05:620a:4628:b0:7c5:4de8:bf65 with SMTP id af79cd13be357-7c9668bfda3mr136848085a.36.1745606976795;
        Fri, 25 Apr 2025 11:49:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFixpTIh9UohupnTvYjAkyQD8NuRNclkRjUtv4PU0Loqn4qq6wPUiPcvzkwrjCCdxtuuH0pgw==
X-Received: by 2002:a05:620a:4628:b0:7c5:4de8:bf65 with SMTP id af79cd13be357-7c9668bfda3mr136843885a.36.1745606976430;
        Fri, 25 Apr 2025 11:49:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cca8677sm687754e87.175.2025.04.25.11.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 11:49:35 -0700 (PDT)
Date: Fri, 25 Apr 2025 21:49:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 05/11] arm64: dts: qcom: qrb5165-rb5: Use q6asm defines
 for reg
Message-ID: <e3s3jlwayij4uxtdcekvs6ei6cfkynbolvp4tmkac7elehosih@76m5wond2dyx>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
 <20250425-q6asmdai-defines-v1-5-28308e2ce7d4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-q6asmdai-defines-v1-5-28308e2ce7d4@fairphone.com>
X-Proofpoint-GUID: ghNtNo-gqps3w6HTmeORr9cwefb0i7Zf
X-Proofpoint-ORIG-GUID: ghNtNo-gqps3w6HTmeORr9cwefb0i7Zf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzMyBTYWx0ZWRfX4OlW95fLqu6u 3q3TTsfC3oEp9pWYgu7eeI/Ue0rcLVK4Q07rid/lWJWIKDXAUv2aTwB0YFnnVg/BdTU7WmVOSW+ 0oZdX6I2CQRyQKnhBfY4BgQjGCldnd4+dHG7d2fbpt+ZA1TzCbPW1PR4zgZEbW02VxoJwvRZy2z
 rOJfifDsWCNz1x3Jc2cqODo+PObSEoHTGZDHD80+FHT6rSvaVauqdQS7+x9Jjmor6CMj6faNJfL pU2hU7AJqPRs6peSVL31FF4lXrPft5aR7FaioDgB1OrjH3M2tPF5HvtWI7jPVWYml9y8N8z8acq JbT5u/V5nj9mfvhE5jNJSZjBPRUYU4DsXQxwDKhGlHvZasHsaeLd1yt9b4BUUsm+2F2K9MdFWRR
 1Vb3jSKpO2hRj8JkMvVwFuu0up6PJEs//v20LX2Iqbr2FpaFkwgNRcePswJgyW0nF65PyaHE
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=680bd942 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=0uHdMyS-I8ESt-gxu3MA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=598 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250133

On Fri, Apr 25, 2025 at 01:53:44PM +0200, Luca Weiss wrote:
> Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
> readable. No functional change intended.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

