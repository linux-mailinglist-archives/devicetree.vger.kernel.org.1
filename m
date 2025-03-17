Return-Path: <devicetree+bounces-158211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A02EA652A4
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 15:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31D7416A593
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 14:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3297324110F;
	Mon, 17 Mar 2025 14:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pMzVn8/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D7D1CA81
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 14:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742221038; cv=none; b=c7Y1pCfzUQBDLpyLysU+/I7kpBRVfQiZrlpeJSC1FdN+FVQJaKQaYrmqtXNTUAadHf9gLdanmLk7VL8ssZc2tmgIvdI/Of0Ebf4s2estpDDKo3Aq/V0dVYpbaYCthPm3oNF6phgthYm9RmT3ogB0NSSt8EKR5xmwJZojoavxRZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742221038; c=relaxed/simple;
	bh=ohiCRF2x3tHxLhT7PBC7mSuAfBj8jed4k4b81XgIkyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iJ5OUTYhvmx++9pbukNCDIldvoi4NscUe3nZStddGHdFBD2TmfcRKWuxyzmSKdZgOcFTrknwzNfH3kheU+lvkROOi4tgPuNE9TjgOqaQFfvvEQ8Am/gK228tMaxiLnu1YaLcSNxs7j7yWa3aLwUlQWYvujAudM90M0CIvCy4VDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pMzVn8/d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52H9UCJa025176
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 14:17:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dHzEvf4fI2IHIcn3utQgPXJS
	us3uTGB7Q5bFT3oEIbA=; b=pMzVn8/dEL9s/x5XFfE9jXBqtyi5HZyemHl9NUWr
	juHTFzQGt5HE0e3kzJlVzRQO2azI1oswBzfIzHi7DFf4yosaNfsfIOl/KroMyMwy
	cLzqYY+NA/b/J7nwXoCDegipuKufUZFFfMuipNogFdhKP+dtvX1gootaeZA1EW2c
	pHFUCTrHRXEVdJgs3BLIAjpMvIukiwbc4x/rkS7qmz2SW8DDhLR7cu3GtfVVDfg2
	GeqrVn85ytTToMQDliE0L7xKssuRqbr94phK83xoClgy8W65OHRwSID5N9HRAumb
	LpVwU3y0L+XtzdZXyDEV4lCnnLJMOU7lv3C4YpKa9NttYw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1s3w06e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 14:17:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c3b8b95029so646042985a.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 07:17:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742221033; x=1742825833;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dHzEvf4fI2IHIcn3utQgPXJSus3uTGB7Q5bFT3oEIbA=;
        b=aK//suYbO2M5t4e6uFbNvn/tKQHqaVz/NZ7T+nsyitqAR/cgOjiDFc95Rixm16Hg6j
         e41ipyMBwEonztiR6etB95XmnTuU6wPHNe+CZcd6mdoW9XJB005GQxsTZ2OpYQAz0mPW
         qDNvE7sfPmLJpylxH0WjryOkuzpZXGcrfGx8tS5w2oiIfk1G+n1GdgekwRpZU+6Tv349
         3IxN3zcAZQ/UdVRM/bDePFvzTw+IOpjaErT2+sdyQidlRH5MFSXAa3KG8UjsyeXb5tBl
         3KUXuBtk5Jfzs2UPpykv+HfoERRjYAc1Mg1zB78EChBrGIdmDX1AzNbd9I1685aVujTp
         FXag==
X-Forwarded-Encrypted: i=1; AJvYcCXFIH27RQOQY3RhaGryqAghkqDDq4t30A0zU02CviEPeyPsLLn4M21yiGaU6QIdH3awjJ27KH2s4gJH@vger.kernel.org
X-Gm-Message-State: AOJu0YyTXwGmzfI1FCCTI0jDgl3zcHMIt7BKVuWJNsLpf3S6ZcObxvTi
	MOddttZ5OlC/+ZO9Ia3dT7oYXue20mIbJNMcIK7OiT+3WnQXrwLP8kBYTvKoY20fvFj4eLxLkGP
	MItgiM0LJdL4Yp4k4ULRobYXWyru1xbgaLWBWWSVTMhBWw7UUQvIkxxIjEeqtbWHdr0O4
X-Gm-Gg: ASbGncsCPg2b/hgDxa7Twsw6btQop8PFU95CFyplC6wjr80WqIn2RPp2u3sPu37WB24
	D8g4z5NkLaKgKh88kegj3uhKh/sJpsQTURuPN1zPwmsWwWlaDjLccaiw+81vxTJMRsyyCoFkFwR
	hF0xMziNBA99Vvr1RJeMQdyE/4Lb3UQapUFbrHc//0DF+UOfeymwFoMEz2ldY2+OdTMfpDGtQmS
	poPzJvwIQ4qV2bzn9f1+RNhBQRI+bFk5rVNFpw9JYT6YH56S0hV3QzIqGUTtHgIbXGUvRraP1/v
	1/VazsWmMTYv1+pVONTn5VGryz9ETrKeWvkbvfMBSVedxSqZ955OpCP2s3DPSi2OW1PAXhAnDpI
	bk8w=
X-Received: by 2002:a05:620a:1a0b:b0:7c3:cfec:39ed with SMTP id af79cd13be357-7c57c930d34mr1948977385a.58.1742221033293;
        Mon, 17 Mar 2025 07:17:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSqQBlxeJyM61KMz5SPmsfpFKro5+Daa5VE8BmqtspssWBndACnzyHtiQlOgipSrJ6+Q+MiQ==
X-Received: by 2002:a05:620a:1a0b:b0:7c3:cfec:39ed with SMTP id af79cd13be357-7c57c930d34mr1948973285a.58.1742221032975;
        Mon, 17 Mar 2025 07:17:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1da681sm16091911fa.93.2025.03.17.07.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 07:17:11 -0700 (PDT)
Date: Mon, 17 Mar 2025 16:17:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: Add RPMh sleep stats
Message-ID: <7mpqh3ggkjwrw4amfyycmcy7wwbh445scnmimdu7dcatovrmaq@wu34owyddfc7>
References: <20250317-add_qcom_stats-v1-1-016ae05ac4b0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250317-add_qcom_stats-v1-1-016ae05ac4b0@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=WbQMa1hX c=1 sm=1 tr=0 ts=67d82eea cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=u0qyRW6OvflAnhphvWgA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: rQNwKTI_eb0GMjCwSwuy3ZjJygiBaKDJ
X-Proofpoint-ORIG-GUID: rQNwKTI_eb0GMjCwSwuy3ZjJygiBaKDJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_05,2025-03-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 mlxlogscore=806 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170103

On Mon, Mar 17, 2025 at 06:08:41PM +0530, Maulik Shah wrote:
> Add RPMh stats to read low power statistics for various subsystem
> and SoC sleep modes.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

