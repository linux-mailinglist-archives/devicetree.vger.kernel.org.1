Return-Path: <devicetree+bounces-221843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30335BA3719
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:10:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF28D56053C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997322F5A0E;
	Fri, 26 Sep 2025 11:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zu8WUCUc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406B62741D1
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758885026; cv=none; b=DhvI8aMNod4zgJmCsb0IcgBtb9tAwcUowuc44/9wzBajQ28dppxKFL+Zg2u/99VomC1nYoV2tKpdgbmRXrCjREHNJeSuSyFisSxIMjL9sKwk6euHl/EQIMozBtdYtfuWSbRkLKXnc6Sjp6HO5Qwdg/wI6GYCy+puYWWr0KjD0/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758885026; c=relaxed/simple;
	bh=I4xoHL80G2ZfDuKa9HnNaBQgT5lrhctN5hpb7qk6ZIw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aAjkRcYFfCS6mgeqkd9/lG94KWZhbSG1ScnY1pk/3SN3HayCpMGydaPMp254Kt32BajiOXlFAkSv8RbfySXE3TAN2ZFTgiC9NR6QeUzo7N5U1KBXYBppJ4YMapMm/Kgxzjp6Q7i099RU/bhODPsYwpHEKOiR0F685J02H0Z/q1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zu8WUCUc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vsfb014995
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:10:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v1ONDLRaCsNVpsb5LinjVBIw5qd7QNwulTLtR4csJkU=; b=Zu8WUCUcomq5CxTf
	Sv5MJsUmyuHqJhrnCxb4a1iqle1qCSh8eETGShuNFdPAemlTSL/xpDATRjwDZJMn
	SBJvy9BlMuxtdc4mqin81Zl6rKQKL4mt1nP5s2MjCgjtZNd+9ivaj5j52d04Ld9j
	flPxRZmBSrBWEGc5DGa2wCAz5wYHtA2DtaLPYkDdc9J5vzZ3l1VV6sSXzPJzNDX4
	gVHVqRng6xL2/RcEpXhOB8N5H1AtknAjbbjWKZBPMpdmyvwrcBBEkh7C+YOBwbCB
	oleBg6h4LEB6sVqon1QxuJl3yRFNTbzWZ2aODQXb3x+0Cj93gVVz5y670sxaQoYk
	dDi9Tg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db34jk70-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:10:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85e23ce41bdso54484585a.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:10:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758885022; x=1759489822;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v1ONDLRaCsNVpsb5LinjVBIw5qd7QNwulTLtR4csJkU=;
        b=DVbWWR370yzL4YyrtxMHhfhm96qBWKmQ5pyaSeF6Uyuud5JAkY6/sDwKZxMyB4EeY9
         7vvFnN1TPZ/1x1FjO3vUIVhD6i4AH1FczIXfdczyDdFfklhaqGPLnU7SKakwGYpsDL9T
         8YOBOMk7W1GYMNY58ji+lIaYPvkTdxqv+JmI3pctGBZNAHSD2BaRj/SUh8zyynMh3u/0
         EgIhOYkKaP1vzdLQNMzE3Rbw0ZKeIrZWlq1F5wg5i3c7NpObCMP4wXHQXRPySVvMuyjG
         1zPhVbWFraZrjhxLrudQLyzy8O7shT5BpXWM8b8Kb8vvRsZadiiR7SQANF6Zo4wIA2or
         s77g==
X-Forwarded-Encrypted: i=1; AJvYcCV+xxyr0ktWfeI3AW9n//Z/C9+pIlP72ehL3SL/yqOwkZLzPx8ixAnEy+V7t+8LFYDpYfy9btmJiuv2@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ4aR4/zOgobRzYF9qNU93pIBciC6abA6u0hgmg3ICh1j6Q+GA
	cikwI3EH/HYrckWp9lIjH/6zHrZenWDNWl3QOJRjd2GT7DUqC19Bqq6z6Qn2yIJfw1BLHe+jvvB
	3ERg++VclvzjlAfD2t1ce2Paz1OHNClOAlMHVUWZsKlVXjmf0GlVqukTvPMvu6xU6
X-Gm-Gg: ASbGncuT1BAXi/eMe/r0AcjBn2bHRc2nWLhZuPKVwoHqLfOLJYZCBGFPD/OtpbDhUiU
	7Ddz3cVIlHZx0uhJJmc76l0g4NKjwa36DEvRmJUfSXZNWbf0rbcPhJSLAbTk26DvG8WgE6LBaJw
	zPN9Nqon1KaVATHY4MzicylKRvX44RCT0uvBINtEiMx3AkkX3pIS/2gY6m81mQ1+PT6pnmiBCCh
	63loxsnz0jZIczjkAdXuLutNMYAxTCcl9wXtFP8HMfYqE7gVEhLWwjITiwbYE00KtBTYG5Vv+Fw
	wwdFqwMVKvyGLQSIPXfv4dlTxoTOP4krbdgVSDnKmOSmxje14Zxu4JyJpLOaLaWdZdtgW+bu4Se
	9rT7A0ClHcGWqTrKPoTDp/w==
X-Received: by 2002:a05:620a:2551:b0:851:b083:37e9 with SMTP id af79cd13be357-85ae26a5aa4mr562268185a.7.1758885022147;
        Fri, 26 Sep 2025 04:10:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFY4lzzL1WbSfFL3ieBfzZg7Jg97ceiWs/EAECWXTQao7o74NExuOjRcd/rgLZnQ9meP4ZhEA==
X-Received: by 2002:a05:620a:2551:b0:851:b083:37e9 with SMTP id af79cd13be357-85ae26a5aa4mr562265285a.7.1758885021683;
        Fri, 26 Sep 2025 04:10:21 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3545a98de2sm345622166b.96.2025.09.26.04.10.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 04:10:21 -0700 (PDT)
Message-ID: <f0f1e386-3860-46fc-bc5e-5a74e2175b7a@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 13:10:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: qrb2210-rb1: Add PM8008 node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, dave.stevenson@raspberrypi.com,
        sakari.ailus@linux.intel.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
        robh@kernel.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
 <20250926073421.17408-3-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926073421.17408-3-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX1WTwr4ElI5mn
 gIHiZMIOHUUw9Cy8I/agnMCEkX5nD3CsZRPmIcla5JhYORUkOzbnVIyYowM/2Cor0P8qXMKWBJr
 okDnKw4iWKy59y46ZcJqPncWiGOJOBgLbD8MICgg92+R8DTsX7pi68p9kx05Xf5hQwvjks2x55f
 n0c/QpP6ea4ToPoPDj6uXaEuCBFF94hNwBfrQXpNKPNiQI3vKvH05p2NIt0dfLaUyCNjqgTnumJ
 GV00lxbY3X87Zq6lBAyX79vV7HAAOGwbwUIwTlYlHe+BrzYT4kJTfj+F2mu8ROR1nViCpbK/wN/
 rqENpf8A48W0pZIayuUByJsAcxBvGAPpGS/y9LlZTfNufax0Y7omHC4lDGdhCx/keeW+Fw5v23X
 7hpgxmYDaqvbLOI4YzOscV4HktEHjw==
X-Authority-Analysis: v=2.4 cv=Hb0ZjyE8 c=1 sm=1 tr=0 ts=68d6749f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=pxQL0frbaL4a0zJdC2sA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: uKSSLpKY4fRJitGkSoUE7-KBhp7X1Dai
X-Proofpoint-GUID: uKSSLpKY4fRJitGkSoUE7-KBhp7X1Dai
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

On 9/26/25 9:34 AM, Loic Poulain wrote:
> The PM8008 device is a dedicated camera PMIC integrating all the necessary
> camera power management features.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

