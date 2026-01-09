Return-Path: <devicetree+bounces-253328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F3FD0AC2C
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 15:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3CDA3063811
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 14:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC36830BBB6;
	Fri,  9 Jan 2026 14:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JtZzburk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EwQXO0sv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5091F289811
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 14:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767970492; cv=none; b=sQJWqwAKMnEeZs++305tHx4JZ96OW7VyQDtqyOTbllZy8Y+nyc+FQ5QvenCyFlTtbl9Ihc0XzxOKQJRErXHAfuFoBVkDGSL3tfj9VqPGA3EQwPPOz/9L/6BM8SG4lw86npSCS5UzspI5EfW66+BHiKroyuvWa+kAExqSqBbGp6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767970492; c=relaxed/simple;
	bh=65HpubQvtgAVaKpRXIeI4MXqmukhMqeIic/gbTAZ+TA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rc8mtHtwjuv2JseUfH9jvcIWsa+6Zc7qrYYP/oQDPztB8B7D3JJBByupOM03uZJ1JpdOB7LpOpdMRvcHBmZkg8exysA14FwHB1v3H3cFUbnvmCm19gKmHKS+QGwJWtrbcXRT16kyto3QketmyR+n0p5/YCOfPHRYaWgB9ifgEvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JtZzburk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EwQXO0sv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60982Wu42183972
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 14:54:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DbXG0aasXPGUnGXDYTML4NN/
	NB/Ii+CH8gVFuOhg7CY=; b=JtZzburk3BD4wZ/ArRr7Vp+iFrllvjWgKHFWk7Bl
	r3DA1PWYCuLWtTbMGYBFIbFvoiAxMhDcf1HsZe+Q2LEoSbhsWKzW0o9aSK4lQMSH
	k7MZmR+k6LPDL79JawYXvQSyiZYLu++ojjqgutOnV/QsnCSLjJJCbn7Nuf18cbAe
	8IQWJWZvTw8RcCpUyd0V/xxt8D7fA/lHqv1puUCveDk3rhTMgSeefVzrCmAc457R
	ths9qcISzoI/gCS/s5B/chzG1hr1Z+aZHYt2VkoBv6DYBQwXya188zsnth/VUbKM
	3neFEkLIvHsSMXi4fhFBR2Kkv2tjv6CPWwIg+cyBySfm4g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjwtn96vm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 14:54:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bc4493d315so1027836085a.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 06:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767970489; x=1768575289; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DbXG0aasXPGUnGXDYTML4NN/NB/Ii+CH8gVFuOhg7CY=;
        b=EwQXO0sv0PJp2q18A95EhN6ljKwaa+ANe8yEjRMnt5S7jjtBW7btSl90rt7g35VijN
         YZ3j9pSI/t/PSWmxvPgaCuN51F9zqcZa11bzguOZD1jbfk8PIRWQSEjxTOqA8ZjhnnPq
         MdD1mrzobIvt1d21JYEIT5HRKp0YpRGtHXdLpFbAEiP+3ObFbnlyruYNrbsj8UXhXyHO
         79A7gzVA2GE06OKfdI1JUxvclQOSwRoDTb46UFWhA3f9D+7fj/q8iDYs2gFIk0jTSrkA
         3HRcrqXpMnwdtZs0Kl/PM0b+JfMDiJiNGVi4aq3NhyPrJysRTQwmgOfLdhOvD/l4EscP
         0feA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767970489; x=1768575289;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DbXG0aasXPGUnGXDYTML4NN/NB/Ii+CH8gVFuOhg7CY=;
        b=l9zlZjmJ3dZPRaiis1SLNM6MQ3LxU/JY98cHaUcCs0f+7aEbcUUq7CTl12kwMxMssR
         wDiL9UOjoQHw5ALr6Lzl4DnkKUjhmtztrRem5dZYcBrl/J49nTm1fTT4xfqLEFfAijAz
         QeT/iQy2pL8KwqGOycUG3kgt/ltw9fy/X9FuJMNeFV2zdpG2jkVWWAuWP471D1/uXDIe
         OpJYyqoZ/2aiErrhpKtN0LinQuIpVvRLJzo4yksATpOXsu6Z0l55B+rDVqyFqtyqYpGW
         p585Ee3lmYhm+xv7QjWTk/yHe7x341ZoJksjSWK914GDDSvRh9f60+7xwI4ZPDC4KfQO
         GEZw==
X-Forwarded-Encrypted: i=1; AJvYcCVckcntDejQo27GxLsvVgk9pFHxxO0vlei0CZGB4xeaupnvqmRsxopofO4fo5KGap5XU6lEO3si6ALO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7thQ1lEvT1Bqn3vIN3fJSKCY57QoADLJLeLOJ+nKAO9vd3PT5
	7Lf3amSA2jXd6VbyWeqEsVaiD/Jbzr3VdtEAI86G1BaAObJbWMrNzpbaoJ0Q2Juje8CShODYPPr
	bAapvbZYndBQiOqY6Hvr/Zzy6VRI3pLtOWjXHvQ9cuN1yG9SIPKHP7ERm0JLlbmIF
X-Gm-Gg: AY/fxX64LiTeUMQ7kn+x+0sSGo0n1QVx1gZUCVwgQKQQgBlFq+mUX2th0W1RxkGBLqT
	2Knx+Cnu6UpnwRPuymfyMxHivCOtClrwDYB6Or328hDE8nyuG7TXdfoOsiuSO+ujkcPNrXWyTFV
	kgMa0cP+LPYvqR1QgCFl2uk0nIdH7GrJxpX73Z6Oh6vVXP+x5Z9eSxKUeky6NySC3IVnHUce7vC
	RnliPhVzku/4JOhowuNJqM1ZwR4O7ydYtaKnTcmCSPRXPYgMpnbhQDqN0K8NEiM51j3nrg0XOrX
	B4naBAHO2yEo0XYKrV8uWKCAfIizGFfX1Pk3u0a43cKrb3PntcyYTqB21VUjnuZqPhb7Dk6UoYv
	FdCU98ofii+b/GjAI7NOCuKoFGgS7bd1llVwyQT8PxX8f7hVkvBocrTpBQwIkz5fmGNc8BBRtFF
	pygCFrM1UmpnAOwCCIorg+Tyk=
X-Received: by 2002:a05:620a:4053:b0:8b2:9d6a:fb28 with SMTP id af79cd13be357-8c3894165b9mr1102759485a.82.1767970489389;
        Fri, 09 Jan 2026 06:54:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6JIVifjuxZ5bV+Yldq4m6ba2GmCDPmvlSe6V5Yo+jKfZB3inIPMHeSvgssKve17SchnYfYw==
X-Received: by 2002:a05:620a:4053:b0:8b2:9d6a:fb28 with SMTP id af79cd13be357-8c3894165b9mr1102755285a.82.1767970488869;
        Fri, 09 Jan 2026 06:54:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382fa2c6711sm17860281fa.42.2026.01.09.06.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 06:54:48 -0800 (PST)
Date: Fri, 9 Jan 2026 16:54:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nickolay Goppen <setotau@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        Richard Acayan <mailingradian@gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm630: Add LPASS LPI TLMM
Message-ID: <mmxdlkfhrrucqfjaq7wtuwp3u37ukgcejwzxpy6omqfd6osght@hyy5dsnku3oa>
References: <20260109-qcom-sdm660-lpass-lpi-dts-v1-1-d3eb84f10a39@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109-qcom-sdm660-lpass-lpi-dts-v1-1-d3eb84f10a39@mainlining.org>
X-Proofpoint-GUID: mIWBm65yLIsJUHq0qJv61lcWfrS-i2px
X-Proofpoint-ORIG-GUID: mIWBm65yLIsJUHq0qJv61lcWfrS-i2px
X-Authority-Analysis: v=2.4 cv=Uohu9uwB c=1 sm=1 tr=0 ts=696116ba cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=lg0203pJCZQmgAnDPmMA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDExMSBTYWx0ZWRfXzsY22IWgq1/O
 6bJWRUP5vJaQGEYORZ536Cv4Y+UAVtlOE9uxnYteHd+ZGhtqBPPdSrnplWpifigIb5CcgG+y2g9
 o5zPX9fLrS1F07x0OhyWYo8yJ5Z95oMteVz+CTw9Vtkk/F5tBdvL+P4qOX/ncE115h0OF8ca2By
 NGHPg8NYfucUjfwVnuE919t9B8/WNViV6JpVCAJWYWfw9nCMQG3QT0Yez9UtEn5b/o5gCNHhNFO
 JRD47eTmzQYukLhdLmmX8aKVZEfI98nz1orxDRlOM/Pgxh8eatKXBHnLw+30HPU1o0a8ixGpjtN
 40jzuCumLiaRUxL/+wquRbZonBFhPhaZiw9dZKQViZBtugyA2Gi/a5WjiIdOOqkVX9V46TzrrG8
 Tb4OvVwmE/f0JPpHmrduNm8S4mYvemY2aI6kwSShxIkeyZSC5fHftmoQH7Or3g8YmfefC8FW5WZ
 vj9MQk5K7Y9em1A3EqA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090111

On Fri, Jan 09, 2026 at 05:03:59PM +0300, Nickolay Goppen wrote:
> From: Richard Acayan <mailingradian@gmail.com>
> 
> The LPASS LPI TLMM pin controller controls pins for use by the analog
> and digital codecs, such as the PDM bus, the digital microphone pins,
> and the compander pins. Add it to support the codecs.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Co-developed-by: Nickolay Goppen <setotau@mainlining.org>
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> ---
> This is a patch introducing support SDM660 LPASS LPI driver support in
> the dts
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 73 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

