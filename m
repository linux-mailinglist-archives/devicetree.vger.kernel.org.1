Return-Path: <devicetree+bounces-180099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A51AC29A4
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 20:26:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C006C7B1C3B
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 18:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49E9B29A32A;
	Fri, 23 May 2025 18:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HfR6BXcX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7841299A97
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748024756; cv=none; b=KwbQ72Vu4xqOYkSWq6KL4Wj7pH9ssk6P9JmLoKrB9oqgz7iO0CfQqa9wzGd8Q+k9gK72lg8Nw2F52JkAYP52/Y9PiPfPN+KT07YrfnZSqKbNfpnTrXJfbRwPGMfK4aTLzwRB4lIbsfgRpofZDeAx+nGUdb9V+dK3l7smGIZ9CFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748024756; c=relaxed/simple;
	bh=NtQOkWCQz8U7GrzRiRmsaukr1M2Wq2lGQo0FZR6FC7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RWBwKPd2TvGKIv/njtYZ9jMwCVLJBdugYAiLd1kU5WJY2UhkyUEqTOWGHwyOTCB/kGGQaJYgXEGT86lcIUb4xgCuH/U0NKQRkNNCMynJKmRkWgDF4o0oyPOiy6dT2bk3o7caRdhZT0rphzQMmxUzEUFu2eG0KqBEBy6qOSRH2SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HfR6BXcX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NCY7Mw029164
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:25:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q7jAskVrOtvAVeaEb311Ty4pkBPjetu94PQoDx54lkY=; b=HfR6BXcXPhL9z02U
	7PYNsF3D2uRj8K+AgnLAdgTlfOtOTU7JIrVaxVtVsb4fyYBC39rjqJBgMgzkha2V
	V/BW4qrAp1ucCNPQf9Paw4wBMBv2dCA5FmNtc3AUhlMiEBnAuTNhO+PJ1xP08Cod
	pfRla/oupSxgc0uE+dionxeGOEvAQYT2e5zFwIbZDW/ZgfHz3Garg+7PIofVQDYe
	0xtFPknPdg2XuffIKAXg/2WUCJOYQWpkrb5K5aPX/GhgfWxUmqSDn3UcSlKUE6mn
	VKLhIpafA2fL1XeOQA81nsI2tnVWD6mT02eNotorFnM+gl571xYwfgEh5Qt6Ycwt
	xXme4A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf4b00x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:25:53 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8d32c0b57so242226d6.2
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 11:25:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748024752; x=1748629552;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q7jAskVrOtvAVeaEb311Ty4pkBPjetu94PQoDx54lkY=;
        b=rxVgHk5NfX7Sp4476MOnhwrWD2wICS3XsAYkERYlpNZVFCQ0FB04JKe1XzAbA8+hPn
         2Ki4tisx4FBL7bEUYNH2jiKQINdtK3LBz+jFODW/MKRyOxZHWpAnCH6VFrq7Pq280p+X
         0GnBLnrZD5K0/kviiI6/nhhG4q8JseInnDJ/nij9UjWludRu98QT3KoX0fB3uNk5Rrn7
         zY8aKCy3punj3X0ft8xBk6gNOEVYWLEeWiA17OVbnwTtndLwBd5Yq5uVq9CaNm3sGos2
         YD0zzipvPtJ5e/W1RMGTA424Wiw00/scdLp3x2sBQgPz1QlHM9fPn316gHmaAM16Gt5A
         MgbA==
X-Forwarded-Encrypted: i=1; AJvYcCWCC8+ObpR9pj9HD5/yS3+9dLA+f1niLK8tmRkkfOUAd3UZwkjadNnTLaObEVGoh40NpVa+3zam5fza@vger.kernel.org
X-Gm-Message-State: AOJu0YwCKnUCM5b0HFTMqS+ooyEuXfQQWtJ8zW49i7OdcBcWT9wki9xn
	cMoVI4OY8CVi7p8SLaUTNkNEx8+8CfSd4EVaJgzI2uzUbO54oRUf9CZ1Lz0MpSkkguGJDPPIgnu
	PR+si0f5YkPz6ncbG2Q5jhIllbMW+/3FmdvDnwoymCIn6LqQkIivyoKA6NKPfnbIE
X-Gm-Gg: ASbGnctP4xchUdqjFzbMfI7Q4GP5XBQLipo3FHVOd4TQor4+c/MZVD6vupdKaf1Quis
	mK0YUS/BtCQ9L/xwLEHjgft2u1HH5n68CffFSL0qL2Cm/2tgmNzFVD4g5jBKMQF8Nmuaz05LnYl
	xPOYJ8mQuLMDwWMFg+dYctEgg/21U0zkpaJlmkfcmaU8Jz6AUznA0C3G97JbTqtvpoI7JytWMz2
	iTzqfgdIAAktyA5felivGVJzoX7cjoZ3RJ03U6Jh6tx62FLxigo/1SVC05sYJSx7fZKIKEegZNf
	vHLf+s+VwWNznIQNL8oETHzat5CbqorkvOLz1eC7q1dYy8n8eqT86e3PGFkWse53XQ==
X-Received: by 2002:a05:6214:21c2:b0:6f2:c9dd:353d with SMTP id 6a1803df08f44-6fa9d2baa17mr3427466d6.10.1748024752347;
        Fri, 23 May 2025 11:25:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRXjYKiZh4UzYAut+MyKZE13w0f4gwaL2w4sBdwdgygXZc6Mqqi5zfAiRZTmNuRy9a3FKMAA==
X-Received: by 2002:a05:6214:21c2:b0:6f2:c9dd:353d with SMTP id 6a1803df08f44-6fa9d2baa17mr3427246d6.10.1748024751924;
        Fri, 23 May 2025 11:25:51 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04f263sm1257906766b.1.2025.05.23.11.25.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 11:25:51 -0700 (PDT)
Message-ID: <d0d3c2c0-d5ab-484d-835b-3a76055cad55@oss.qualcomm.com>
Date: Fri, 23 May 2025 20:25:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 0/3] Add level shifter support for qualcomm SOC's
To: Sarthak Garg <quic_sartgarg@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        quic_cang@quicinc.com, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com
References: <20250523105745.6210-1-quic_sartgarg@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250523105745.6210-1-quic_sartgarg@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2NyBTYWx0ZWRfXyE+VytaLPJWG
 7PbeVlpdNcYDL/xdztUiXwhklWzt/GX+oP1zShglL/fP1pj5FMBEAZtWztqbgcclUwydZ0CyQcA
 1zt90u2rkNlj4TJWQVUiHnpw2fwMOVAae+bJHV89Uxf9t6HZ/XNzNuGUoZXbeId302qASaLX5tO
 M3tn7r7Dk5OHk3xfGrVPQFhzoRf85BKUYs967H+M5E2B3B5OUcEpgzpPpMVpOuwVr1x68ahaoP1
 jWUnScN0Oz3ToLMSkLTKEFB1xqN2I1RbaGy2xLYct8c45MXdJ6oKVd3+L43lNFoasfpMVldMIY8
 yKH4KHHTJpzFD2PzkJ+LxXGX53kCUGYGsS6tbVZpFzD9nAEo2DrbvLjnP/CE9rFPLnZ8IVcN4ZL
 DHnVNuVn92Ujh3OGdEcOx4gVWkU0XG799qAdBB/Sbtwo6Eg90qKFxc96G7cqLQyoaLySsQmO
X-Proofpoint-GUID: 3Cx0oSepmmGpexGUzbg3JzHrAukheynG
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=6830bdb1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=phjHtPm2XXW9BfwSypYA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: 3Cx0oSepmmGpexGUzbg3JzHrAukheynG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230167

On 5/23/25 12:57 PM, Sarthak Garg wrote:
> Add level shifter support for qualcomm SOC's.
> 
> - Changed from v1
>     - As suggested by Krzysztof Kozlowski redesigned logic to use
>     compatible property for adding this level shifter support.
>     - Addressed Adrian Hunter comments on V1 with resepect to
>       checkpatch.
>     - Cleared the bits first and then set bits in
>       sdhci_msm_execute_tuning as suggested by Adrian Hunter.
>     - Upated the if condition logic in msm_set_clock_rate_for_bus_mode
>       as suggested by Adrian Hunter.

During internal review I suggested we could introduce a generic quirk,
perhaps called "max-hs-frequency" which would update this
currently-constant value:

---------------- drivers/mmc/core/sd.c ----------------
if (status[13] & SD_MODE_HIGH_SPEED)
	card->sw_caps.hs_max_dtr = HIGH_SPEED_MAX_DTR;
-------------------------------------------------------

(50 MHz)

which I believe is where it comes from

Konrad

