Return-Path: <devicetree+bounces-117897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 961D59B843F
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EAFA3B211BA
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AA001CBEA0;
	Thu, 31 Oct 2024 20:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DFFwWzyP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCF31C9B6F
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730405961; cv=none; b=B9QNhM+YZbVepOI88aJxUzRIcHyY6Kt96cFvDHT49IstqUxuZoxhKGLtnwicgIKnnamk/ML9O3nAujJsQ3MHxxW1ScAqJ2TqOB1RQwGxn1ViTwlUJc3i9r4VUyjVIGkbJqwEOg61OrNOBvS0zfjUHoJ9QuXYEAh1UbtZ1kLkcCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730405961; c=relaxed/simple;
	bh=GnQYDXIHoDOzz5+PV1tzxvrrVrX3X2asCJGs4etQLVo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oDQs5xvmc9iLPYDpK43QM2Vj/G2AbEmYOizmR6G7L2sNnAsx8jszaqGChQlE5rQRSlXKFav74wpUDck7l+9WcyTZ6s6mxSpa6h9QfnmVWikt29SMbvBqg1vHHBs86enMBCxdgoq5EX4pVykSpgiqhJhs9O0rTg3kbzsycWfcAKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DFFwWzyP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VCYKow004019
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:19:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sJ0sAxBwPqJS8ftmuBtJ75sPX6sgnBhsPkA7vpmWuE4=; b=DFFwWzyPfNEIBF+W
	YpRk6svdlGevMIa65okbVCOem8TOmmFZDTPojdXFNlG1GxNqMZmWyOyrMJwtpSOi
	3bTSkWAXQW8AXiIxPQR/g2JfZxf5ikwQFzSmW2Wgai6CKY6ZPoCc+Cdgry7gDQwO
	M0uKYWp3y8QERN5xe6T3NVDtWetyTQ5GQb+c4lKIoB7WpKVg7tz/A/3cq+RpqJCm
	S8FjhzxoRVXEp35r4ENRoIiRaCN86vqELcraoHVsW6efXt4ySqW+CnJRrY6TdKEU
	1oGn5L0Egv7/Q57nZMKeEqxuWZLrZVoVUnO6cm0viOPC+AGnE87itJjETLKzoMRJ
	vNkjjg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42kns3mpjf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:19:18 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-20c926885easo1228375ad.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:19:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730405958; x=1731010758;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sJ0sAxBwPqJS8ftmuBtJ75sPX6sgnBhsPkA7vpmWuE4=;
        b=hTd0qNB3eP4ta1k1Ga02LQDdaxVwcVPoqzvMkaRIMzO9wGj/OJeeAz0OiUXo2Hn0QI
         QHPwX+NL0dpAgVCJ6uWSV/a3VhIIC1BF44V8/ZG72lKXzgGc0q0WhE5kqsZ1zBbkm2vI
         jNOISiT2LCllQAwoWGOsbiA7h/7XJxM61euzEJB06SdDayKUxQQ5D8XoBz7AL35f4USQ
         ohLdQ08ZHwvpfj0ab/yL0KrrdXB3afTwwbSYE/tP6JBV6AnsseFtWdEUJPCXTpfvg5UE
         qiif2gce4RTQY3/lP3i9Bq1lU3+zlFcY+KzA2n990BZcdxj64rQiZeB3gNcU7cIYq3IB
         u52g==
X-Forwarded-Encrypted: i=1; AJvYcCX9QCs/vo3WDSDZUXHhP3ry5vdkXt8tFlSzBkEkNQNnaHVCAOFfFZhv3NWjhWOqoKR3ZWnNKnKl8Tmv@vger.kernel.org
X-Gm-Message-State: AOJu0YzMoHrkDk7i6WWjVmU4s5l9TBD9ICuMFP1OfdRufWIAqxr2us+E
	4yvKcK5KtT2nK7z0ONGAvdRaqxAN9AhzcLCwyyW1o/cAvg3xa/vPZWbDN36GSixRpRAfnJOrOk/
	RcOJXEkiFTvKzmPlzjbv1c0A7ZdVH6SUniIHIee98q6RcDLYTY0sQna4icugo
X-Received: by 2002:a17:903:41c1:b0:207:14ab:c436 with SMTP id d9443c01a7336-210c6d1f342mr119054455ad.12.1730405957909;
        Thu, 31 Oct 2024 13:19:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2f6Wf0mJVJdxJuCcLKJLBOMNM00M+MzQNwuhinCzkjxOAOp6yuBXDEsbbGQRVDBBkzJcd+A==
X-Received: by 2002:a17:903:41c1:b0:207:14ab:c436 with SMTP id d9443c01a7336-210c6d1f342mr119054355ad.12.1730405957578;
        Thu, 31 Oct 2024 13:19:17 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e564e8e63sm99423866b.91.2024.10.31.13.19.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:19:16 -0700 (PDT)
Message-ID: <3b049641-f102-4eb8-ba51-471661b85060@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:19:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/3] arm64: dts: qcom: x1e001de-devkit: Enable SD card
 support
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org, robh+dt@kernel.org,
        dmitry.baryshkov@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, abel.vesa@linaro.org,
        srinivas.kandagatla@linaro.org, quic_jjohnson@quicinc.com,
        maz@kernel.org, jens.glathe@oldschoolsolutions.biz
References: <20241025123551.3528206-1-quic_sibis@quicinc.com>
 <20241025123551.3528206-3-quic_sibis@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241025123551.3528206-3-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wi5m9-mP2kczheIl_6Okxhihpx3okiyS
X-Proofpoint-ORIG-GUID: wi5m9-mP2kczheIl_6Okxhihpx3okiyS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 adultscore=0 spamscore=0 phishscore=0 mlxlogscore=748 malwarescore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310153

On 25.10.2024 2:35 PM, Sibi Sankar wrote:
> The SD card slot found on the X1E001DE Snapdragon Devkit for windows
> board is controlled by SDC2 instance, so enable it.
> 
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

