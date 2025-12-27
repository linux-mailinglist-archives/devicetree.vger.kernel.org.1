Return-Path: <devicetree+bounces-249895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB258CDFFF4
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 18:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DE5E301F5D8
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 17:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2177A32571B;
	Sat, 27 Dec 2025 17:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MV5PuPi3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ArTNYPl0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1D724A076
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766855107; cv=none; b=pxVVHQzxpwOhg+mNahbBIeFdAJ0Aqow9yYGfgs6CzdoX6/j4Ufmvw9v1RnFeG/OSsziFsrwjiFVMsOOol7DV/vY8uyuHdVSaGdLMLK0fD2vTjH6kA11ddBy+zseWFCZgrYbPogJ72tefIW6fMiJTtFqiRz9BjrFRhFJX4F7bMs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766855107; c=relaxed/simple;
	bh=MS9vLUY5ntaeZEme31BM++oWeE6wEUHUNjD0o/tN8lo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IRyVb43/FRzydGerjIicWbXz9I7g/SZRE1V6SwZw8jo0b+WOIt3mCzTFln0a2xf6ytSLJo1yjZq4mfZHDMlYYGJtdLMfhX/JhxU9kBG5w+XetjkTOJ+N7L5ifONlfrcgh+KXCJUdJFdGkDdmmxbz3dzAbUxoYvVH0D4hQAkWP9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MV5PuPi3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ArTNYPl0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BRC7CZc4188900
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:05:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+Oh/6k7T4U0Rm5ZzbG+CXXR8JXY/6vqOtJhEadyO4Tw=; b=MV5PuPi39RVmd5OU
	D21hZnZtyLtG6DudjaTQtaaXKmHaNmi072SNxd5M/vg/iTtuVwIfBcTA1u1YmX98
	u0PKk2yOOvIEZZqX2u9OQl7K3paB0WHYD2zo3W73H6qi649f0bTdLa+nHOQYXplJ
	w2i1j/Uky0F0c0MQ70sZMmEJozZ+uHoEveWSQPtaXHCS8A+68FHRT+SoVjkyjybt
	gE11IaM3XncmS9rU9sbUeZAWzQo5PhnQJ/uq02yEC0YL9nrC1oldZG/WeYz+mQUP
	ZQFLkhmdmvgPcGjz9Xfu4eEx+0OekNS/09+g6Z1Jg/LGRzlgc11EQBcqU41EAU7X
	NIytyg==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87brtn4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:05:03 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-93f550cdb2dso7993237241.1
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 09:05:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766855103; x=1767459903; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+Oh/6k7T4U0Rm5ZzbG+CXXR8JXY/6vqOtJhEadyO4Tw=;
        b=ArTNYPl0NFa+jsHadRDDq/zS9DTrJ7JaeTl5Uz+MWq68bO/nZ7lQpOM/+IC71m6+7+
         olewnENVeBo1j0f+3hyLEEjrFac/bXBfKP/8ZheMcQlT/JX1AAVEWbb3WSiDLIcG2D6F
         yGUZDw9dXkQ0f5UZX1KRki6OEwb10p/xYowwp1+6gKDzvJd1fJ2c9rBKppUDMEMct2kt
         xko0GZM9x74RYECGR8ScCYNQojlq0bqX6LPjQjR9TpjuoU//qmiN7S4V/VlsqeHc+z48
         6aUhufRojZEDn96WS6ejrzFrNANrsVTLOa1k9YJ9QoeUM0109dxIIPZtwGuRNWcjMBsT
         qUYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766855103; x=1767459903;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Oh/6k7T4U0Rm5ZzbG+CXXR8JXY/6vqOtJhEadyO4Tw=;
        b=PL6RzxJmbuF6Hx5OZZUBmroJtr8mV0O7iTkJgkd4L8/HaTRwAdc9x/0256ixNMuimB
         Y3PuxCG/w0niw4Y16LgpR9JE2s2PNhxx+4ReJV6/FE5qpUHsMFAb7VJuQJiumWi3xDbn
         aVjgzuG0L/EPte0RDL5mJuffFz73mOnGJNifU46O/gLd5SSRVd91xu4buqkLd2R5ojCD
         nA68fuRuTpNI+WLhVpgdEZad6rMKV4rzYCYk/jIW5Ly/JQlud4jiL4iVL4Y1ooWJGNV7
         1DYqD0gkTavGQNXoVJUQ76FQF7W+6vB4T61TsDTu+SDxuDHk79eqcwkXbN84W9bGEpl0
         TV7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVFoxgFEEqzyM1ofUUk1BLFdWN2JKZjfzpgJhE0W+v6wv9behgOc+TwKgGeV2hr/wbqgbFJ2uIXfYaK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzef/kNYKFJKbk9ufzevXdDANQl0JW+EdFxLlUcs56PmRhN2zXE
	JNK7hU2TfdLfEi6aury3UZ38PP7ESEpzBlwwL2J2DdfXeb/QiwGMhVfkWRtfuGbmufvz8Bfw7J2
	0Cnko0Y7Ti9pwPFg3/KsRT2YNt373oXZBgfQEtK5gvtT3wmzbzMSRo1M2djC0+fS9
X-Gm-Gg: AY/fxX6r33BHULXOsL6XVZ1BnoQMgJMnplZ1PVMn/YXviisqg5U9/XzbyhbAWN28NEI
	xIIZauMFo1PopWL7GsLek32vtFf7lVbzBOe8Gban01hJAWZGk1rBIjQkfZLOZXG3+1jttyOmTzn
	7LAFX6NZF0edJga/UEcovbtM8Cd0Ij67prAgZzDw8oEF7PNUFWt+slaG6HJIMiPtjq/RJTITmgQ
	Cj06KqHc4nRu0wZWuPinAWbkCay9OusUQn5t0FGCLnntUHHkulWK/q2f4xdt8nJ5TJfedelywPV
	0qvmGeh8SNxoYVKUirK45oOf60DYNOGsjHUMexLcRoJQwniK1pryMeGOh76etsM1TFBOeGeL+ap
	sUavOFnXOtXJHUGhVJRmsin2qy7P6GYBBrvveFXcFCmJZ3LxyYhB1qII4sWWwOalJyzfN4pZQON
	MBOcQS0aenwKnYkZUJltxJABA=
X-Received: by 2002:a05:6102:c4f:b0:5db:cc92:26e7 with SMTP id ada2fe7eead31-5eb1a853c12mr7702932137.38.1766855102571;
        Sat, 27 Dec 2025 09:05:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwkyznsZy9VLF3+rmshKCzvJdz1PTVNzfgXQXNYlm28+ki8EXPxlEy7ZyW8U3oJli0ER/zbA==
X-Received: by 2002:a05:6102:c4f:b0:5db:cc92:26e7 with SMTP id ada2fe7eead31-5eb1a853c12mr7702916137.38.1766855102117;
        Sat, 27 Dec 2025 09:05:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-381224de719sm68420111fa.8.2025.12.27.09.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 09:05:01 -0800 (PST)
Date: Sat, 27 Dec 2025 19:04:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <trabarni@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        devicetree@vger.kernel.org, konradybcio@kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, Rob Herring <robh@kernel.org>,
        ulf.hansson@linaro.org
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: dts: switch to RPMPD_* indices
Message-ID: <cbibz5cli5lk7wmzfzuek3rnil3xykx4ucdblonsyellochu5t@nuw6ij37ftiw>
References: <CAGsSOWWMO8+8vB2EM8s1=hyN1raO6TDpqGBTdrmNrZpfDfn5wQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGsSOWWMO8+8vB2EM8s1=hyN1raO6TDpqGBTdrmNrZpfDfn5wQ@mail.gmail.com>
X-Proofpoint-ORIG-GUID: iUTuu6nNkqiEtoffHjU45MAoVGng61M7
X-Proofpoint-GUID: iUTuu6nNkqiEtoffHjU45MAoVGng61M7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI3MDE2MSBTYWx0ZWRfX5NJ8HvSWIHNS
 TdebICgcKcJxTvTFggxNxw186Q2WVZw3PiaMRJvdA0a12slNs385B36SdQSK3R1gxf/IQAWMEsC
 udu+V52lLZJR+5HjviQZY1Pi/kah+5d5ZlnQRngfFFru0MSa1yudcrqa6GyELPkOFcJtyZPWo/0
 u+wnu58/l7BVT1/QSiuaSpX/RZx2Oy+HUCuarxmeo+ImBdkETwd+WJwv4gzEk5D2g/ElPjs3rMY
 WKeyvLhqAbmv6Euh0Yhf2dbFEpjyd8kkdNNtS7yJ4xdHpJa5RmT6ByVD2t0GsGE7bQufVu5cU+s
 CSb9LaKkrKGwv0tmp59Gfu1+DG+aIjs3EK8Gi/WWqF7s9D98NJ+05yLMms2ug9N3ti5IO288yHs
 1QgkiGvyyMWb13/s/e9M31oHJ2xldjaXkNSufWb5srrpYKpuj6j5Bsz1s6zQemYxeukBg7WzMpz
 yDqXyMax64yBQaoYrnw==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=695011bf cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=MN_lGMKq_FOr7paQGrQA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=Qmqj-zlutpIA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-27_04,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512270161

On Sat, Dec 27, 2025 at 05:53:18PM +0100, Barnabás Czémán wrote:
> Hi,
> 
> MSM8937 and MSM8917 MSS would need more power domains like MSM8939 and MSM8953.
> I am planning to send modem related changes soon what are interfering
> with this change.
> 
> https://github.com/barni2000/linux/commit/21151cb3d07124897e4d3dad51c833c4af27f6e0

Please extend the RPMPD_ enumeration, adding VDDMD.

> Shawn
> 
> Br,
> Barnabas

-- 
With best wishes
Dmitry

