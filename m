Return-Path: <devicetree+bounces-223753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D721BBBD55A
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:29:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 380FF349B29
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A09C253B73;
	Mon,  6 Oct 2025 08:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JSSvtF+E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4511EC01B
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759739336; cv=none; b=FH9HbUd9w9i/P2KvPXp4ynSkpofShrDvHKoiZuGvUdUQLG3pahZPt4bM9JZV9bejOnz/LUK/NKLL4J40Cw7vjSv6vyWlxcxQ4cDa+om78ov/+wqXqyI+TOaP4IiGo+K4TEzHLzv2UVUrgEY6LiaDwjLuLyUozcGXu4AvFJUBjbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759739336; c=relaxed/simple;
	bh=ew0vJWVJulFUpGzp6GbSkojdXLce2+5kVbuDWsVNrrM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a/3DrkngpwUQeiw4nuIoN/ft0wp+YC+11yg/AX5j2d1VbZ5XqGUxky4/S/FSZn6+MQnQQs81GKDH9GpyZByt7QLabthw3k95ZeByfiLpaSR7fFz9Zdj5ZQC5BsFc4Fhzljrfktoi3hhp2/RgxHfly9Q4XqQKINp2XFRf4tKcaRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JSSvtF+E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NqP8P003314
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 08:28:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fySFI0+vB4C2jZwTubej+JIBaPURTzcto53v2iuju/0=; b=JSSvtF+EV+lEe3aW
	HdCNglBweJ7uJXfNoYT/GyNTNvVOLaG6JqNdCqvQUqx6Bg1onQwFvG0S5V7hN6qy
	GWU9oH5N+kPsFyQJiGypl4mFosNXvRl8peDSkz1GAVJnm67uQ5y2g7ZOMzTnCg7v
	6L6OZssRWfcWLOFZS9EOsajv5bHTQbTCKWPn6DEJgUzSCNMYPxurMTWd/E1CsKlm
	SFnr2dXyIeb8dEar1Agjt33dL3+DABK9vL0Ogl/A/OH2gw8gf7boUqOH091S+a9r
	MY7GinrPiCmEgvNkRYtSygH49dtSf/0q65Xr0Ifqw4OGNNsIcWRjDwQIaxRdbEaq
	gmdhlw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvrhk5hd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:28:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-853f011da26so154715885a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 01:28:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759739332; x=1760344132;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fySFI0+vB4C2jZwTubej+JIBaPURTzcto53v2iuju/0=;
        b=JY2NHYSurmokKweb/qY4vqofd8QoPPmFZes/CxPRFqw7e+QLijreZzXk9sBFvec2s0
         4o+qB6tgOqkWWbfq3u0at3WPaiZ4++JQGtMjQGlJDk5KPrtELLFaEwjEPQ88b6VZp0m8
         +BkaXXpWIwuDEbc3eqBM7ot8myKVrYSXwSKvTrha+ollUsdsLMQ1WIYEdXAY7z/gwmki
         7/8/S4Z1BjoCPylwyyQSLKKW7F1OOXQxqiTXL0hNwN3KIPpIhqwly3IYWu9FM+opLZL2
         mrcb1FjdB2KW1nTLpaNft+RsFqUaLi5zGeBnDVj48UImL250FwpYxekGF9xs4AQN9ox9
         C/aw==
X-Forwarded-Encrypted: i=1; AJvYcCUM8xCbQGohwH/EuBajLdbfwwiwsg6iRYQkVjJEAuMFJzy4Y2pJrPMDsm0pAxJ77xWgcRRgZNuMYKJE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3jy3uQmUv4Dxe+dX7Ek8F0d9b3dBoZlHG15ODRMYbUANBgrwv
	76fnCWbQq6LCw5o+EdIH7vLzyBYiqrHjCdAZor+UxBgsL3aO1RKwpCrhsqXDtqGCcKcW+iin0z9
	lMt5Nse2xV27a/r50k740C0+xn3z2+OivyGctPKJFV+NMIcqIpKd3YAQEwrMsMGzc
X-Gm-Gg: ASbGncsWX2VN9QS/icSzpfz08S48JBoBepEn25ewYJ3zw+zf9yalv099gV8Q0cGn9jL
	KB0fB0knyyKNh9pgJCO6sK5+yi0YEwbJxh1DOlQIvNuFo9lD9gIKVQFgHIseuzzN3htJ6OBcPjm
	RTta0xq/jbWa01bR7zk2mpI6puR08xB52mD8HjlBkG1Ve8/qBETVRk+SCMa+Q3CPrBUKwqZw76p
	E0ujI5h0T9J5XpFm3k6KXZzB3FvsCjd1o6egWlV/Y0TVLMjIHXggrAJcWtM1cy0OIJX8cSCrWPq
	WliSCYC+ka2heHpiUmplerC5Yoth078GcgXgA4FC1R0mibJTF1EcmVKEnuM/RIez5pU2VMeM8Fq
	kw3xskraE4zJPbTQrgX9aHRsZssI=
X-Received: by 2002:a05:620a:28cc:b0:855:b82a:eba5 with SMTP id af79cd13be357-87a342f8541mr1018833885a.2.1759739332423;
        Mon, 06 Oct 2025 01:28:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExpG1GPi83h7oEKjeN5OxS64YtQ149fVac/bi4Nb1qP6pl8aEItSm3iduplFbNPRMuPJyo9Q==
X-Received: by 2002:a05:620a:28cc:b0:855:b82a:eba5 with SMTP id af79cd13be357-87a342f8541mr1018831185a.2.1759739331800;
        Mon, 06 Oct 2025 01:28:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865a83f6csm1105339366b.31.2025.10.06.01.28.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:28:51 -0700 (PDT)
Message-ID: <565924dc-84d4-40cc-8826-5143338cca21@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 10:28:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] drm/msm/dsi: add DSI support for QCS8300
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
References: <20251006013924.1114833-1-quic_amakhija@quicinc.com>
 <20251006013924.1114833-6-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251006013924.1114833-6-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNiBTYWx0ZWRfX9P2KQsg70N5o
 wt5FiIjTWfQKBIKxVktZzr9b1ONaaJv8wVU8VKwsOupoOPGKfxcbQswPKJYgfSlIpGiF4dtKcNQ
 gwhbMwOcqNX5rpVYPmQDrEcFV2BHM99jLkQRlAkXCHlJpZtxZ0vGV4spgV6AQuaIJIXhMJRsEf6
 fzIg5d0KA5r/HoSAM6ifSA277CN63teGgRWTDpaG4fa0pmFyoWH8foAh6wVY3bDsn18brf6VbNx
 Ob6cnUgsEZ2dmCoN8krALemaLnKeLJpm73Cb9fPrCFACdjF99ZqMo5IcNpHLl9qLBIjO3qmVYuL
 u0oAtpr5HCVWAavAxTktEGiVe77RP5CXdqrfamJnaPJS0Ne9BDPsYFdp1HWlTuze88GporCJ8qy
 xyFiTcfy8Utc0RapHSPF4lGGcChwMg==
X-Proofpoint-GUID: Pt-usahiNxg0Z99j4qZMf0gkhNNwcpBJ
X-Authority-Analysis: v=2.4 cv=XIQ9iAhE c=1 sm=1 tr=0 ts=68e37dc5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=rHxuBsFVyQJAZ78EHecA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Pt-usahiNxg0Z99j4qZMf0gkhNNwcpBJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040036

On 10/6/25 3:39 AM, Ayushi Makhija wrote:
> Add DSI Controller v2.5.1 support for QCS8300 SoC.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> index fed8e9b67011..b60384ea0b32 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> @@ -226,6 +226,17 @@ static const struct regulator_bulk_data sa8775p_dsi_regulators[] = {
>  	{ .supply = "refgen" },
>  };
>  
> +static const struct msm_dsi_config qcs8300_dsi_cfg = {
> +	.io_offset = DSI_6G_REG_SHIFT,
> +	.regulator_data = sa8775p_dsi_regulators,
> +	.num_regulators = ARRAY_SIZE(sa8775p_dsi_regulators),
> +	.bus_clk_names = dsi_v2_4_clk_names,
> +	.num_bus_clks = ARRAY_SIZE(dsi_v2_4_clk_names),
> +	.io_start = {
> +		{ 0xae94000},

"{ 0xae94000 },"

But there is no need to introduce this ops (vs 8775), if the secondary
IO base is never requested, it will simply be left unused

Konrad

