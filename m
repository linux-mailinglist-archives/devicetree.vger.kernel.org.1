Return-Path: <devicetree+bounces-193653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E61AFB24E
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 13:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 330CE3AA416
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D18A299A98;
	Mon,  7 Jul 2025 11:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CV28eBDt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1A8299952
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 11:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751887905; cv=none; b=GFmXOuJ7av8ntmOmCGm/ZjmRUu/iM7FIloO5J2pG83YNrLiYn8qM0B8uL+Jt7hXBsQDr4qXFXM5PRrl1e7KL0VxMgDcPJ/GogVm6lFd4MuUUyo55L+Obz8/KwX3OMPzcqgSMaR2A/361q/tPDl/Yrf3MQuKDPRfHUyIN5siOXoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751887905; c=relaxed/simple;
	bh=EHqNUQU89R3sore7iAI2H4xqVvujymPymPAR6GGY8Kw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EszNQoowYVD3cZ4Bmmfqx1x0DGmDE1FdWzKZqtI6KgH1yeg+SJvTjip8lc5GgTkfKF6b/ptfIeWQZtqEQb3Cg+KtpgI4SE+OyUpwg6hb2TaODZ51aznM/AbK+cjmNoM7PGVhYpro6j0DIusxZXUOvOm6I22aLax2ppnEZxp8TyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CV28eBDt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5679QEOG018591
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 11:31:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DWTeIruv+S7Tt3sFAKNHbEJ7BbFsYXgmX08CqCNfWkQ=; b=CV28eBDt1MmHCUvz
	9jfUSDayPh7r516Y9xM0ovaJvXwfZ78AeFUW87DjxUISO96qc4qOkzO/iS9hrR18
	9he3jmNF9p4jwQxpzHpsjGC2ZcTB5MpDLDnflcqdCtXonL50RWaFLMX3WrKMDLLb
	jl/3own5ZwFZk1Qp0c7NYX+nZMqiNwb71cIEa/wEheS1tTdSV5CJvYjmD/GA/aRr
	ATwdeekTIOwv4+tj8DwiYJgoo3w9/v8XNsYx5FDTzLYOZM3kzJ2LBD7jFLlpzJbz
	jPEoIn4XjnmGFEV1I3TNboGsm7xsVBSNTTzQuyS3v//hAW7shmIEf8cjgpwQwNQH
	PaMk2g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pw7qc69d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 11:31:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fabe7822e3so9895886d6.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 04:31:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751887877; x=1752492677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DWTeIruv+S7Tt3sFAKNHbEJ7BbFsYXgmX08CqCNfWkQ=;
        b=Ssi1NRnU7KPdGwalWUdd98nF/rzbLcwsZjq85mu8HsKtuWz4GbLxlpp5OjT3KHhb3E
         ZXd4g9digCuy/05Y7XRLyHfwd/d7cmJ2X821syRtS29Y/U/MqHUTUgmsvhIQjx4DQr/m
         faYBVgCm/Icpt/YmJ2tJ3+d4cZVp2dGBdTI3JK2EXXb7s1RMExLSY/axyZFsKxyydMUa
         5IRuaemPU/4Zd67XlRXQJybgfQ3Q3VSux/MpvOtaBVcuMEsGBtf+oaB39NssD1XhzLCv
         oIcEhrekCTYcRcfYmn2Kgjm4XHCeC3IZCpjxPQSdwehSFIfPq4wzuG+BR0GWJKBiuJzI
         w/4w==
X-Forwarded-Encrypted: i=1; AJvYcCUkhzOj3oMpfKXcJ/f80RUvHUst4n1TPDzh68yXAWGXsSbbaKyoCk2mQ/KkWkERQuVpKftqyWy8K+KE@vger.kernel.org
X-Gm-Message-State: AOJu0YwSiToDWWrkswEbC3vhSEHAYeFVAeKEa37iY56hVwXKnLTe5EWG
	cdco3Xo3zVDpxTkSTEQUAYJM4mlh1G5Dc/lOqwUveWf7t0VZLUtMtR8v/PJtNv4HB9PgVwSRmhZ
	RE1bwSO8ZrCU9hy8QxnL6/c5I+61v7kQBlZdzotvNgjViFl36Bzo1YnIGGLPfsdQ3TmhcoHKZ
X-Gm-Gg: ASbGncv9bd41QIJRzuiXXqFab0rxFmFfZ5heJsjgrwmvOUX/ZF4gbLH2jHQkzy55WXm
	XND2Er1oUiKM3fbsa7VzvA7rwMdKc+lzlp9ctiZtcd29wh25bW3Xyg8C/HTcPQk3VlCuCxXooQp
	6AIVIAu6k/AxXzWvug2lwW5wVAmTgPeOt3IYVfs2i8ICAWvDoagIdqiCT8sLPqzFI2X1C5vwqn1
	CcE0PZuFI1Dx3f8nlPkympmBdvoJwFEuC0oNyocy2RvOpCaSzKwnZA+hu2iuYA8OAaO8BpIEm2U
	GxewtgsV7uBXdqx6S0ZJ8qDE3PzvRs9jpUTuJ8Rye9Qlaq5xR0GB2wuCLtiaqKIDCnbIbjh54ro
	BPKo=
X-Received: by 2002:a05:620a:440b:b0:7d4:5cdc:81e2 with SMTP id af79cd13be357-7d5ddc9bdd4mr594386485a.13.1751887876808;
        Mon, 07 Jul 2025 04:31:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpaw9CJeuBmYG3lV7sOgssLhggh0DGHOI8ZYixyktqQXpKdT92pvO9ZNob3HUzwHwWW0HtQg==
X-Received: by 2002:a05:620a:440b:b0:7d4:5cdc:81e2 with SMTP id af79cd13be357-7d5ddc9bdd4mr594383685a.13.1751887876211;
        Mon, 07 Jul 2025 04:31:16 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d93c8sm699187866b.11.2025.07.07.04.31.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 04:31:15 -0700 (PDT)
Message-ID: <f2793909-4210-4ea0-9f26-af03e0200c5b@oss.qualcomm.com>
Date: Mon, 7 Jul 2025 13:31:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] pmdomain: qcom: rpmhpd: Add Milos power domains
To: Luca Weiss <luca.weiss@fairphone.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20250707-sm7635-rpmhpd-v2-0-b4aa37acb065@fairphone.com>
 <20250707-sm7635-rpmhpd-v2-2-b4aa37acb065@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250707-sm7635-rpmhpd-v2-2-b4aa37acb065@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDA2NyBTYWx0ZWRfX+FBjC1BWGHnZ
 1AX+8r1ZZTFGKdakVxw+We3Y4+RLv+wLE+PqVJ/Sx92q0H1NaOMbuzzxxlzCefICwVkdBhRzjkR
 2UPQN8EFTcNnYwergQ3stEUAfDY6wCy5oIz46lqMJYe8YipGK/5bdlG7z34FxqK4OyK2QiH+JJA
 sRwy92Mixw0ytJW0b7scJlPyb57QOGSI4PILe57SiLVFw5UE139XfTdQ9FHpbf2Yom7lu7eerFm
 ARbxgyXYG73yeuiqhIy9BzBxW6lYEI6BCe7we99AP6VFGWcdEHUo8hm3zb/ucEnIuNXD+RUPgOu
 2jSDaZ9rViQKaEgvtotTA8cXbvO9D4frSFm5Y7YAj3kPAaiJ3Y6MweWnhTi8ObQMgYGOG86kBIZ
 T0T5jPAI9NUZL3qm4vF1Zgg0Bzf+kWSZWaFUYckGFrVgLxArARUxiED8QcbmxAZhd0mKnyqM
X-Proofpoint-GUID: mp-n70jnXEm0aCobm12QgsRGkw8ZgMYy
X-Proofpoint-ORIG-GUID: mp-n70jnXEm0aCobm12QgsRGkw8ZgMYy
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686bb01c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-07_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=900 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507070067

On 7/7/25 12:18 PM, Luca Weiss wrote:
> Add the power domains exposed by RPMH in the Qualcomm Milos platform.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

