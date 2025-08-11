Return-Path: <devicetree+bounces-203226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F992B206DD
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:07:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A70C93A7571
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 349002BE7A0;
	Mon, 11 Aug 2025 11:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BwaX5EH/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FE72BE647
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754910422; cv=none; b=ApfODXILwf8I1GSJeZC+JhhHEM3/wiw6ufRYMbE4dGUfCNmMjiTeb7Kot12lRNrv+XYxDesO8HHICJKKx41ao4JmsM817oZzI8++D4K/jLYTVi6hyMF2OAdfQ+c61IqfCFuio+V3YO1AaDs2yOvOZWUyklAnZX2809+ZMZTI4wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754910422; c=relaxed/simple;
	bh=7qGIv2VMmoh53/xPrZ93lE5MyP7wZkaBAOl0Dkqa0Ao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j6SqsKRk4aX7nMF0wc2h2DAtbEFCCcQ9QrOieI9pKhnMbv/u8fV5zsQZppAhp8Xq9qgqDF7r5kOTIbriJpB6WnY85/OrjKEEWrtYT1VTg0JeRUvIXC3jRVAW7OmDuCPIjB6pwrc81NOHaO1M9sO1mB1lud8zGPe4WTVIq/9yctI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BwaX5EH/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dAdb025352
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:06:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zSz6n6RvfTQOfYt/pcVGk94yjTXS1qFmv6HDJ4iF3Wo=; b=BwaX5EH/9h7AZl+H
	GcfeI6p1RaaUQOd2Vz8pY/6KKqSrkrlUqi7r4va89isjWvnfFzuNvceYy/LaF+He
	loZ3Xjl0zQQaOPr8DVBiYX34AhS1DT8xiV2nOiM+uMIavrJxJG4hlUs9aqOA7Pud
	nj65I8ncZb6EsGWwP1N5Lebq0f9AlYLdrK4hQolAa22sbKpzsDrCb3lEIHKfG08e
	LuBPDDi1VA3zEs5kwm8niClQWvKVEbOAg9oYtQTY5aLdo7AR2LcGkqLhfShjK4x6
	G5W/Oq9Vip6tQMh3oEU2nlIIIAtDcBQdTM7uqW2G4HhXo7l+1DiPudw3+MdBa/KN
	Th2ASw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dwb745yt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:06:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b067cb154eso9697291cf.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 04:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754910419; x=1755515219;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zSz6n6RvfTQOfYt/pcVGk94yjTXS1qFmv6HDJ4iF3Wo=;
        b=M5hbl2r0cfD1am4SAaej6pFbhwi3BnQFDL56h7GPsBV1kBRNUy1j9oD277Hy94XDeD
         L6LGTvVRrhNed2exYhVsRWmiVl0b9UruhLs1kXtq0G9sofBB0fXJpQ3sLsTYlFtmothw
         duzMPhe9YTyz3qhijmtkFcXEjhcxSlbQd9ur9rL4y2qGVg9C321dqaKss5YpRSOiNEG8
         T6M2Yg1DUmwXWJPZEuSIQttx+m6Wr7NIzhr1zGd34AU26mvisBrmqUIXael/ls6VF/iG
         s2Zhc3ReEMdDXxllnGMJ9ghrTXjs/DCtbafOojNTwQO2baFRmsZsepKjXwgNkbUfRiNh
         8PCg==
X-Forwarded-Encrypted: i=1; AJvYcCWo8n7Nq4sMo03HwCJ79aGLKxYez7/aIzb5TJKPVh4RqXXEgsJ9ao+TAyYuoqSGukUAllIyVFl60UG1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8c/nuTTCxfhJDm/bD76Kdh0qQoy31qM5reZ1E3zEqbR6KNutU
	2o4Nyq0krC7yFDuKIi+7XgvoPjkGkthtRuXQSqbp69KoR6zxXzcIteEQBIBxtIvCNbJpNRv4WJn
	oxJXE8z2ae6AJy7YUZpBB/MgmK+p8a0GbAOS4Y+z2phecNW23ateKQFH+/vy6KU1I
X-Gm-Gg: ASbGncvMEct38vrRPXAr+m1CMqCQwojem5kaBabuNg/4Dfnqu7pGLbcMzJRIZw1oNv1
	xcBwYYm6Y9fELkjJDj3Tki307mREAGcuvv2wJStWG5mwmkuroFCsuRpq3FbIiqFYHjFEG3evPhY
	ACFF0zR+c5NZkD8+cpLYh8Cdu8ZMlSZl5QBWcIp9+KJB3kPQ14a/0hTsScJNu/BrlF1jMrJjIeG
	mI5ZUrfpU9UsSDRFEEBdeH7hP9jGE8zfUBQItsDFNrI2zJtRoQURwCiYhnHcMEkDr/+bOXIoaQR
	8/YsrLOmRijAlnLbFMLsFOw8v4n/U7vKjQiR6BKqzwHrp/6Mg9I1PKm3mdZKRLSVRLKV8sDXGK0
	6N7eA5HNkU3om+jgGnQ==
X-Received: by 2002:a05:622a:4387:b0:4ab:5ac3:1347 with SMTP id d75a77b69052e-4b0da992a42mr19224111cf.13.1754910418670;
        Mon, 11 Aug 2025 04:06:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHezk0S2+X+438LvPdPc+q9fDLwWz5D27Izg9g5C7RUB21t8vXyV84fmt0GHdVE3MsjAtpv+w==
X-Received: by 2002:a05:622a:4387:b0:4ab:5ac3:1347 with SMTP id d75a77b69052e-4b0da992a42mr19223821cf.13.1754910418142;
        Mon, 11 Aug 2025 04:06:58 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a24370asm2000917966b.128.2025.08.11.04.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 04:06:57 -0700 (PDT)
Message-ID: <53644b36-2eff-4b1c-9886-591afee8b589@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 13:06:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sc7280: Add nsessions property
 for adsp
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Ling Xu <quic_lxu5@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_kuiw@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250701084905.872519-1-quic_lxu5@quicinc.com>
 <20250701084905.872519-3-quic_lxu5@quicinc.com>
 <nsdj4ytpdn55mn5l2gr23w4whpbt2ogxbaomimqoarvskz3uzs@5mbrq7jvxnp2>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <nsdj4ytpdn55mn5l2gr23w4whpbt2ogxbaomimqoarvskz3uzs@5mbrq7jvxnp2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=K6oiHzWI c=1 sm=1 tr=0 ts=6899ced3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=z0GXuPKBCmORgo7IezoA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: Jhe0u_kLF5XkuEhjNEwnQkvtzgNa0H2f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxMyBTYWx0ZWRfX8wqXU60xb0NQ
 WTGk2loiqkbkJVLAGtwlZOVd1XqvSXhu9cj/Kv2UilOc3NQKDUMDpnJhwTce8J/P87pD6hYWDLZ
 5RsP1Q9IEi+5XkjkkkWHHMVZ/NrXPxuXKabWU2cdGHE2EiVzi2PXrXU6zluqCdBoLwBGg9djCV3
 EYHT1g3UIItfLdD70+Uu0deIV/f2dDsC2wQpCfYZYZ6sXzm3q/VJuNx5MWWBDWAnx1rpIivZ+QE
 eAyezJyFZLpAnBdybaDtmgnDqgrO/Yv6ReN+KeLdzk6sxqjIhXlWFedSyOyeE26yMhmQQ4Q2pT0
 l65PYUC0bHqjuQxl7s5qNXvYb2SRAa8NbIGpXOquoroCBaGcRhLpE15lz5jw5pgOZ+Kh6f1qkzm
 Mfn90p6C
X-Proofpoint-ORIG-GUID: Jhe0u_kLF5XkuEhjNEwnQkvtzgNa0H2f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090013

On 8/11/25 12:42 PM, Dmitry Baryshkov wrote:
> On Tue, Jul 01, 2025 at 02:19:05PM +0530, Ling Xu wrote:
>> Add nsessions property for adsp context bank to make sessions
>> available for ADSP offload.
> 
> - Describe the problem, describe _how_ the commit solves it.

This is pure software configuration, the only real limitation is that
the total amount of sessions per channel can't exceed 14 (because our
driver says so? I have conflicting information where this number comes
from), but no more than 5 is recommended for optimal performance

I'd rather waste a couple of bytes and pre-alloc the maximum amount on
every channel, so that if someone decides they want to use the DSPs ever
so slightly differently, they don't have to run around changing the DT..

Konrad

