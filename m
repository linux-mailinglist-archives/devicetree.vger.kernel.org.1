Return-Path: <devicetree+bounces-113539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3739A5FEE
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:25:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B42631F228CA
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 739E11E32C6;
	Mon, 21 Oct 2024 09:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WhG13dJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899221E32B3
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729502715; cv=none; b=NLtJFkSKAqYAKjft0lFP6tpVdwOkWV5tRbHIQorgTIq4h2iF+fhPDKo79wB51sG07hK5/gZXAMMknggaSa8CpIZPD/s/cgvF2zLJ2GuKWkAZMk4YxMhxFq7QbTYoiLHohC/1LaOImNff8cJrKgKxhaAWFEpP5tLy5qQN4CKKIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729502715; c=relaxed/simple;
	bh=EtuV9/jHij7aoyayGj5hcfybcaleJ0r/sGhTb3vNyDg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ec1DzZVfIQRtBTjR9i8aEuG5A6knDJeRfRBAn5lLe7guShaV5+oEl5lmVgtxOVvZBpCotOl5mraLKD0bM2a24G/3mfgAGlu/VqXsxOkI7ICxYMv/r9vmqZVKygWfpZx/2uZn9WjO/31pNeQsuFbcfpkOcXsmuToSvCiRRktXebE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WhG13dJu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49KNUcCb026066
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:25:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Eg8XkOpXVTvLkV/iPFRm0ycvFdz7OglLtrvA8E3sVyc=; b=WhG13dJu0OvVlw+M
	eVj4G8tCxj492MAA3bjBifO9Nza9SIq/P9VpL81Ou6JDRgsyXgxSxAdAOfJKrOlA
	elA9CuXmR00Ti/ZkOEMLvn9vExpzRLRxRf3b9t6ftrH0FElqbQexUDjPluVOgiHd
	Ex0+GvOA2tVKZygxghIO+jtqHlGwmHw6tl2RFdz5Eyr3novnjHvloYB+yiGaczoJ
	NQSmIqUmca18oUDYiWs0P4rhlJ6MWK2XzXZERA1CW+V5DRRI2jRHZM775ajS8wio
	jobxSvn6Xm7vy9Uf+4S8yX88f48/wKz98z2t75+hQEYPg8v7Xf57gX9wtFD9axMF
	vhfuww==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42c6rj429f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:25:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbe993f230so14123846d6.3
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 02:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729502711; x=1730107511;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Eg8XkOpXVTvLkV/iPFRm0ycvFdz7OglLtrvA8E3sVyc=;
        b=p3Zk7seR8d/2Fddl89FsXKtTfbN8I5WHMJ6bz1ELYQRQ+ySQZcoom2+SElUcmIAg+R
         p0jqK7mUSt4TiCy3IqDlZenUdEDzC9HTZpfja4fztRpLHWOaIkdHHGDvFiq0Afz87lMY
         yHeAIkgL33R2re38nrox+H2n1cg2/rqTZwZYVK8zBEJai24ZCoWE39hGYlkA6/0pD8i9
         QK/lYZCA9TeaPqsDa8Ino+ZJ64iEc7fb6FDBUFYibXf5jxuTmzvWkFtuDomSa2LI4RHQ
         kOnSTzJgNbxrVIM9q4navXgCNT2xMdzx2HrYu0f51j/etdiA1ahi8+5Qn9n5hwLuS9QJ
         WSWw==
X-Forwarded-Encrypted: i=1; AJvYcCVSM+JCELc5CnvGMWEIv58DXzOIx/sXfpftq3GeXgYrUjUyjPq4EbzGb/xib8G6pVE95BnsO/3KPE+k@vger.kernel.org
X-Gm-Message-State: AOJu0YznslvevUUoobN9GOiEDuFMFBiWhY18w2QieQfCxl8wL0x4TZ8B
	3v+H1gyc4/uAm9/Y0YfYtOaGF40/51W007/MSK+qmBqZmNuCyjx6BNz5pjYJMtWpwdiTVQ5a56w
	vtzvdDEOfGDgp5hrzaBLq/2iLuy78V2CWM7Z0jJwELJjfi/sbWgNBoEnD4G8ikt4iPLFp
X-Received: by 2002:a05:6214:21e9:b0:6c3:6282:8d69 with SMTP id 6a1803df08f44-6cde152d510mr72527956d6.4.1729502711426;
        Mon, 21 Oct 2024 02:25:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGX6CpoovgzlnEXpRgSYRd+pLRs1f0mwFPuBaCCHWLbVAhA89siqtnJ6zvcrC6DZKbOu4mPzQ==
X-Received: by 2002:a05:6214:21e9:b0:6c3:6282:8d69 with SMTP id 6a1803df08f44-6cde152d510mr72527816d6.4.1729502711061;
        Mon, 21 Oct 2024 02:25:11 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cb6696b668sm1711060a12.11.2024.10.21.02.25.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 02:25:10 -0700 (PDT)
Message-ID: <35b3d954-1891-4a41-8ed8-a4d175bc7288@oss.qualcomm.com>
Date: Mon, 21 Oct 2024 11:25:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-crd Rename "Twitter" to
 "Tweeter"
To: Maya Matuszczyk <maccraft123mc@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241019190214.3337-2-maccraft123mc@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241019190214.3337-2-maccraft123mc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: OSjoGulrpTM4YnAmW9UG4kDWHeKvK-Mw
X-Proofpoint-ORIG-GUID: OSjoGulrpTM4YnAmW9UG4kDWHeKvK-Mw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 malwarescore=0 mlxscore=0 spamscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=867 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2410210067

On 19.10.2024 9:02 PM, Maya Matuszczyk wrote:
> This makes the name consistent with both other x1e80100 devices and the
> dictionary. A UCM fix was merged already and is required in order for
> sound to work after this commit.
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

