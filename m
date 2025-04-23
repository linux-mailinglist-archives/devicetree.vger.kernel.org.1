Return-Path: <devicetree+bounces-169899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB57A989A3
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 14:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83BE43B7114
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 12:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C48D20C023;
	Wed, 23 Apr 2025 12:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iEfdqrJv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087A41E51EA
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 12:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745410908; cv=none; b=ecyGHaYHEB4REA5Ja08+9ldHMpVAcxhZ6nGtBmeqVJttQMYpK0GbZtDsdQgJa462JxXGbguUqlMV4Matrc4GsjERLA/GwCcmx8rSTIZo8594PLqOc/UZ+1+/A9BQPKAd12CqKdRh9p5KEi8EWmh3bn8yXnXJRtQnYkFKQuYOqRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745410908; c=relaxed/simple;
	bh=yUlmQngLWM95uTbYGzUfTXaf2KiV+RckgPCq0lwW5TA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RjdRRuCyqVOZDnPb1JRWJ2y0fkNsENOV/KiWaGygm3plVfqoELXqXa0A0BYNq0q57Xh3w1hjVD5/Pl5Zqw/1oIG3uPR9bNB+qCY4kH2oCV+pWJHXOZSFyNVVtPQkFdssYw2LLHFrIKdz+mNjA2Ah9mZqWB63xh/XPdun5cRYOxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iEfdqrJv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NB3hUO013403
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 12:21:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yEy3BB74MydlFE5SvSBjX4VOfZhaorZTjCn7mz9RhEM=; b=iEfdqrJvitZsTSxv
	xsGCnrcjXPQ2IcWoKVAnGGCLzDRIk4aNsh8+XceLEgtJnBHzppKtkd+PX0XgPy+a
	/OkacEzWoTkABAA44fkCf4sbZ/umnbmaBjr7/E8pFzFzwflwenKcY3iHtwqUFxX/
	yy0NRf1fuFuESEyfU1CJv+pyi8cY2grdbFYwBsVJFg5uFktiiZz27uPCFdI8S4YY
	y7xfEZfaona7VSXAXKXXC85waLtsZlL8PLEC+e08Ort8NOFMbtsJFzywu0Plzmlh
	rZnTjZled51CzoiAENbgJamTBVAMIL7HsfGVDN46I1QOA/BOXBzkQJ5GUysx/yKR
	IFpN8w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3a2aj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 12:21:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5af539464so141167285a.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 05:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745410905; x=1746015705;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yEy3BB74MydlFE5SvSBjX4VOfZhaorZTjCn7mz9RhEM=;
        b=qCVppJjcD52xCiOuHWHevcYFe46EmjcZDv+gA6HVDfnVMjjsty4aNz9LInEJ1z9EYb
         Z72H7qnmPY/a17rLgictg7LtGTIOmDdkWi19PWccGY2PX4N4wSj/BQSXEhyCzTOBUUWX
         bT0LsG+G5L+gB3YdaZCEgwSaYhTQvoGqBejOk8vOp6tL6Wod+oepDEBTbLqlERmvWdKX
         zBDXTtFxQiK33czxp8ErfGkd5DI2LjAqpEh6QkoaeV75/6K0ifoLFFPQ4qbM5ycUkEJM
         nxnVgr8zjdaS78+ZIv5SZzSCOaPHC/8MPz2jwITvoh7fc6xaSdO6SrWRo6dKEkvhYkU4
         njcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeWaxHMfJr+QZyvhMvG+lLf7wjzcAS8kLbMk0J+JQ9itrGk2bZIybdqHbFVP3IQXjpzCQLoAl7dtcF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8MhXtrSGLRRucExtkeBln8BMtRjC6RM3Ik9qyvxl2Ij5/yVfi
	GRjd42fda4Caz5kbKi34YLHKs5ZmwwuuszZImi6IxE5vbsd794Hh5TKovASiWEKqp3Cqk7ZzSuJ
	0W2apF0adt+5fkxMmEUbaSUaVasnID0TwzL9L6N310oGpQnDeGh3fWAJcKXuZ
X-Gm-Gg: ASbGncurkLRd0nZa83ZiD8qFuxFQi2XPXx7TY4OJrU6SaTexFjhWQoz59SJlc7WnNXy
	e0MHUbLSAXSteh6UHOKMwd9huboo4KV4XKwma6h7UphCtYZhkvBR4G+5tgJourjxhzKZqbSc51p
	SE5y+Uih2NWiD4KmJ9dyUwwqUEj/bNYLcj21sciq9Vwxsyt+j/e1p8td88z/bxwnKO+a5qA6GS1
	fwbk23wPI6H3VmcXRdsGUYzrFzb34ov5yOK/ffeL2joNoDrqLbnSAg2S/0vJnKIaN/Qzmx/NaOo
	L4cN6tCt8WHLgYR4yqapM4KMCVL0DizH8AyGM+ttPQCgueMZaPyaG19LXitBcACEPZo=
X-Received: by 2002:a05:620a:318f:b0:7c0:af16:b4a8 with SMTP id af79cd13be357-7c927f6f902mr1108010685a.3.1745410904997;
        Wed, 23 Apr 2025 05:21:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXBbDZMwLarl+zI6FrhIiRzh9IB3F9PW0wtQy5FUQ3y8e0F2Y8/CQ5HRXpH8vW397/Zsevcw==
X-Received: by 2002:a05:620a:318f:b0:7c0:af16:b4a8 with SMTP id af79cd13be357-7c927f6f902mr1108007685a.3.1745410904673;
        Wed, 23 Apr 2025 05:21:44 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec4c622sm786854066b.44.2025.04.23.05.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 05:21:44 -0700 (PDT)
Message-ID: <ec7b53a4-0321-44bb-938d-0cb955e64397@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 14:21:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] drm/msm/adreno: Add support for ACD
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Anthony Ruhier <aruhier@mailbox.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250419-gpu-acd-v5-0-8dbab23569e0@quicinc.com>
 <20250419-gpu-acd-v5-1-8dbab23569e0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250419-gpu-acd-v5-1-8dbab23569e0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA4NiBTYWx0ZWRfX7LhBDL9JyAVj 8c4W1hKs5atG60AJCAGZmXo3UIyhU6ViXYCyXq4z9IISshpfVLBoBKi1Sw3XS5fp6Rft/EI7Jzl w0mJ8rXT0j/PhckTW2vT/apXKpTk0o3RbtbRpVx5mdBXcP1hnzCbSQlgO8605+Z5fnSPxofUSX7
 FyIblpdCqmFnt2S5PTpQBkuh2AGEQ5oy2HaxVbhEaojRnZ6JSczU8Islcq1sMiL62A1r77/TDy8 dmAsu+hzgRt+6/ahFDTmugnTE98WG8kgXpgbMom1mxLp2ZZUbZuxeDdmxcGxPfapgKDy+QVnlxo oGOOp63FJRPf1smz3FP55epmO+kBaO+DAPbG/zohC0wKvGnSZJ1rB8K/2gA0uzUYJqEvkf0vz1P
 N0yp4gxZFwR4B96sQuteQZObcoktkPVadu+bB6ApP5DOrpGFLBfCkLyIMyYkKSWkuRFBjrdt
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=6808db5a cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=pGLkceISAAAA:8 a=b3CbU_ItAAAA:8 a=EUspDBNiAAAA:8
 a=rNhkmTvpKUHMLWWBcFsA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22 a=Rv2g8BkzVjQTVhhssdqe:22
X-Proofpoint-ORIG-GUID: bvQdJQHCoOiZxq6QbtMdBrqqIvxTO34F
X-Proofpoint-GUID: bvQdJQHCoOiZxq6QbtMdBrqqIvxTO34F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=934 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230086

On 4/19/25 4:51 PM, Akhil P Oommen wrote:
> ACD a.k.a Adaptive Clock Distribution is a feature which helps to reduce
> the power consumption. In some chipsets, it is also a requirement to
> support higher GPU frequencies. This patch adds support for GPU ACD by
> sending necessary data to GMU and AOSS. The feature support for the
> chipset is detected based on devicetree data.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Tested-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

