Return-Path: <devicetree+bounces-227336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F659BE0973
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 22:11:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E93C1883C5A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E06F30C62B;
	Wed, 15 Oct 2025 20:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZO1rvamY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10ABD308F1D
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760559110; cv=none; b=jZBvV/Lxcw1gxICAchIn3qPT19iz4tHy/KxGHEw7pKPqLX7DpGnM19YEri6GyOqdAl/6EouS7MKUoCZK2NFaHVes0Hhvx4n1d2AXfGVfg6vWFqZ9PkZqy8a9yse8Yg873yTMNNd9nnI4e8SEfXpIJaz/zwsa7xm0jcjgx9DH8xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760559110; c=relaxed/simple;
	bh=I0opz+CeGQaJbyM1X7y67HQeujGm+NLJuBgDD2I95as=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q7oLWGzQ+tuIFQCW0B2CQ1eydJ1M84beNdZNySDic9dF/hy3WFrSgy/38v4KhLd8sKmu6llPjLqVCO8EZ3/T0hyUI4fmEMH5cqfzncKHPOQPDMiPTDlbWuZTytabG0HBuyC2WDHRyALodKWPHKMvZf9nXW7oMh+5Pr8r6eBdM5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZO1rvamY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FK5JQ6010182
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=exb6yBmuHXSmt/4SXMu432yt
	OetghtWPekpvezd6Vrw=; b=ZO1rvamYwg18f0WPwn6VX26OO1FtIjCRa47xhdNy
	QpVBKZiN5ouQOmQ1soT062lzccYC1gr0SVWFr/OSgqhp6w+Sf58XuVhNnfuU4k8i
	TctnDxpLyEjSg8XTppPiXNTfcXWau+JLI/s8jGCCyZrR3/L2Jf9/9Fk0Oc2egObW
	Pp9GSHou0wR8r+6t/PSty0qCcG1p7J3UaMSnIf8aWenIrVAGe+8N8B0b3SdDt3iF
	ZyaVoMuQ4oaKnv78vgPOzqRE2jpeQWibf9ZRcACWTrO/Drd1EBrPSE8WVg6QlYbv
	Oaj/ngevdYXKeJPE6XHAQPqcjK4zJ2kPsZkbBxOqNEEQsA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c5qbn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:48 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78e30eaca8eso803796d6.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:11:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760559107; x=1761163907;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=exb6yBmuHXSmt/4SXMu432ytOetghtWPekpvezd6Vrw=;
        b=XZvjCNX/XpRCYwgTvE7kbXPrXQDqjfpFrgrvs1i93Uf0xXlg1KjqDFmZqeWqDinKqc
         qiH9LTK/oyserlxHn/vygS6VAuGaLe7D/C0Y0gUD5w/HJbrJtjG/JODl8+MCh//Qyvt0
         nxAmcCb+jwHBCYgQw9nTSD+LumCxMiB2TGcaYZ6GgzYZI47is9oguZki/cOMY/SwiZFF
         z2iNTr03YxbDCsmbHmkYhXO99fZn6d4TiqSI1IzcthJlKdq6iW88eZvAmNxKI05LVp43
         /D5HqdZMabgbeVQHfBxkN2A1pZEJu49cOhcXMhirYIHMIHuErjjyok4ANuFLnxZ9EKX8
         4TQw==
X-Forwarded-Encrypted: i=1; AJvYcCWLkSvk5Ci2M8Ghaf7uhD8jFqKwSiwfCdWQTboLWMHHA/RZniBwjeXQ+pCsB4gA0TKfb0x2zXSMgW9X@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0fJPRnajKTAwIcwsYyuSskdFnRtXHZOYRCJ11yxSSMSfcQV7w
	pjkrRvkZ8SVftUt92SF1Qu16hTazYZ5Kj61fsyNE4COzLYhWsx2RzsOboEWLQmNEMpQnt4Lha/9
	sY5to+Fjzgozlbi/3oe/VPDNXk1/O7MLvSH/Ld5IjRItYpIGGB9dIMhc7rSC7Gnb6
X-Gm-Gg: ASbGncsP8T59Q+ZckJ6FVsZir2YnKlqJhd6t5dvExm4R1Fqui29v+Anxmadlik062gA
	fzzA/t1+nfKDg4+XDAieezBqjzJyWwcddWsFqK6As3HkDKVnYHL9384oxpa3Y6FpAwz0kIkIdxS
	Lugp7Ce6aCEIOLnexC2a2m7gcyQVHG33tEK5R/yyCdKQSwLk8D6yZkkcwPLLXKgASpkaiZjLXAf
	F4lkSuyQ39TacOJf3TL5DckmqZob5VbJcPeVshZCtVDrFJo+gXkZYhjrAxh+R7JLY2moh8AjUw1
	tJp39QHgAl1m2l01KdJXj1pg519fF8uFc7kfpP8CtVE/ObndMlVHPGA3uRtbz/iSRBXUyljqp53
	FQAqBrEJ1fscWzR32mp0yeI/OniioxuE3tfGesd63YKp8QrjLTRdi4GCCc9GcQyLEQk7JqtiFsR
	cXTtKMSclABTI=
X-Received: by 2002:ac8:5846:0:b0:4c9:281c:c738 with SMTP id d75a77b69052e-4e6ead7e931mr385840871cf.78.1760559106975;
        Wed, 15 Oct 2025 13:11:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFG7Al0sGtJhJb6iB0hBzj/J01P/Wka1A+f1F4J1JuQzoBKoBEfqY/tRt4fwhMeum7s1fBH1g==
X-Received: by 2002:ac8:5846:0:b0:4c9:281c:c738 with SMTP id d75a77b69052e-4e6ead7e931mr385840491cf.78.1760559106494;
        Wed, 15 Oct 2025 13:11:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3764e80f275sm42026941fa.42.2025.10.15.13.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 13:11:45 -0700 (PDT)
Date: Wed, 15 Oct 2025 23:11:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dzmitry Sankouski <dsankouski@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-starqltechn: Fix i2c-gpio
 node name
Message-ID: <4dbjpsl7m6uli4dfne7egxnyejj7i6ob2bxueld4yoaak7poi6@7wi4kx7mpm4z>
References: <20251015-topic-starltechn_i2c_gpio-v1-0-6d303184ee87@oss.qualcomm.com>
 <20251015-topic-starltechn_i2c_gpio-v1-1-6d303184ee87@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015-topic-starltechn_i2c_gpio-v1-1-6d303184ee87@oss.qualcomm.com>
X-Proofpoint-GUID: j0LUPNhDbR9YOj6u_64mNfqRooVEd3eD
X-Proofpoint-ORIG-GUID: j0LUPNhDbR9YOj6u_64mNfqRooVEd3eD
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68f00004 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=7NL5q4feChWjROO7-XYA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX+t4HsZuJMpbk
 oYgYJtN9F9LdQoCoE9iNSc3qiN1zOl/88kAkcml43rl8ZfxiBur79Nntmdn7ZSz3Kq3Cq+Gh90p
 mSHA6czKlz/rIbfWJKzlkrT8KRPxmeAskjv2ezslrTk/EJfXzxafOVtqU1RRVeGB1wThMPDCWJE
 4JruA19XFY/oE7UWxZzO0XrxeLOTsZX1Vm3BwWixBFcDdCBS8RNT1iiQZIWMpFF72ajWKEJjDra
 RC7FcJ/FL3c2R0UQj0QSGVm69nVkSgfbOVnMDcHwz5M1n6XCmK8ALEjgRIbN24GMm/RCXiQTHgq
 xg9v56kpaJKzgycRtBsuJZD54JnOH5BxW8oxGvzeqMwECltL35suCdw4qm8sxIlVuB6ekRXCJ1q
 b74VsTlHrLM+BhP2OaLJQu7IwO9DCA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On Wed, Oct 15, 2025 at 06:32:16PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Fix the following DT checker warning:
> 
> $nodename:0: 'i2c21' does not match '^i2c(@.+|-[a-z0-9]+)?$'
> 
> Fixes: 3a4600448bef ("arm64: dts: qcom: sdm845-starqltechn: add display PMIC")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

