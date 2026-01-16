Return-Path: <devicetree+bounces-255979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B10D2F415
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9F70305CD07
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7843F35F8C7;
	Fri, 16 Jan 2026 10:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k7d++eNH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IyU487ZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E88C35CBCA
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768558008; cv=none; b=d1DPQPnDLpW2YqkJj2HtVkvNEtM+egkegSUsmR/9l40cClWrV2a4y3spZsmdfmw7HMHHyU+Ad+le+AD4Z5XYr1cOh3gdsbW3qnHoo4WsdUTJDpfraffXWbaEfL6qC6QQCNymUzrHQX4dUImMaW33km9LdVB/H9bq6uPCfQRB3ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768558008; c=relaxed/simple;
	bh=mAcKp9+yDUyiC1A3ZTkf6yGDVEy7ar6+T84RM5G5MtQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lPxZ9LDhcZwts5/BNmNU/T5ap29K5uptpkNSrjtJU+Nc0BffZ3/4kZpKcMDdLy8/vaTJ8mcv7F6snVurE2nyEu+Ti2uQ/8RQlG/wpRUZhJXkWcP9jYFiIyswzkhj3u6Ssf9bvUrv14+DlyZBb6dh6t2+L02adhADoHDd7+33wgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k7d++eNH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IyU487ZT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G847cP3075431
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:06:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4fuar4lUGDaNKD7JWw7eFRaXMSZIRSRfFZrrRpr4isc=; b=k7d++eNH4h0ww7W7
	b5T69zpYQYmmdg+Bd1m4G2DOI1RvLmTe+qKP2qzJCe6oNoPLXaUNr66CFf4f2BQ6
	FNBPBBGs6TzEYoezWcs1bAdafMQENbr6Xw+O/9y99Jo3XbrQw+DU25OaZNy3eV3I
	9mi7VUnn1RkQ3WoJoG3U6AY8XPDSdnOEf4idKaeSz7xIJo77/w0afxiUWcd7u3jw
	gW1muXPPk0cSMWtk+gvm/lTKg+RrydBQdymiXfwSgUagc0Q58Oq/rPopkCfaRwrx
	RDLXvL6IZOo5CnraVcohPty4giWp5d8uJyo2fjf5FrDZN9G1SD5ru/7kMp6hrPfX
	C2I+LA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq98jsr7j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:06:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c532029e50so61948685a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768558005; x=1769162805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4fuar4lUGDaNKD7JWw7eFRaXMSZIRSRfFZrrRpr4isc=;
        b=IyU487ZTQ2KPvqNroGIAIonhW2lfZ5nI/FDtrmRYesi7zyF9KrXuMSA6nEtX/XlSbl
         w4f+rHzK2Y9IkTUP6EIOnneMAJ+MjYfTseMsrywjncOjqCwe1MFp1L8/Pi833NBmqXyo
         Q3Za7gKohcu3lLiEy/gQJoScNCsMiD39LsAd9ZFSC8sJKYPrIr0iD3vIAG9efOu50Rnz
         E+pFaX7ear2KRl5qcpCOrJyl9eoAvV6u51QxPw4GQWDa/MR1gAohEE02CKY4aoTiJQKy
         4me2HttrP2HxAELUCS5TMMFeM2cp/9ZSR4vzUytcBlUzj49Rip7/fAk/r6B1oJQEW3Qg
         3pOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768558005; x=1769162805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4fuar4lUGDaNKD7JWw7eFRaXMSZIRSRfFZrrRpr4isc=;
        b=AvWwRPykaguZ6c2Gyt3E2XIKJBPR2Ytv1oOLZUtulQp7mIS9II7TiegMrUePyZL/sv
         iejnoJpSZowLm3bMCKHCNt17+Ez/vxG2BSJOt9FZ6+nVWOJ3mKseZQg5WH99eMnNpNNk
         ipw3yVBkuvEp9EKIg3lv5Mln1lbK202MyQh/ZUKMLiTBD8Tpf+G0L9+EeF4/p71MYx7l
         uqNvnPXZZYvXRiHV5BNpNkpLfW8hPmiGVYAVvcG4cZ87sebf7OG/m9z9ajCT1HdlqtnH
         SZDz0NA39/7wXHiKPLOWjSys0oPE8Ko/oI4qUqSVY33Ik90LDwW8xofvH+s4rdRBYNvS
         3ZYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWy2AbIBZXlUpxNYVgQ5uTwciG+tzdEqbaHpBXfUrrf9AbXNppKcbkOJmsrR74VabgRJQrf2T7HDFy7@vger.kernel.org
X-Gm-Message-State: AOJu0YzYFwwBql08kHicYUWNcX+7jJyViDFo1eMLItZSguDu+FcKcLIy
	IjmhmJN6LRRdV9Kz/0japQ8lXQN1NXZ1E18+2R3SsEosUkO9sjglH5iES8p4hpTc9wnnisu1PVB
	g+CTVhQ0/NkR1zSG74sopCTgrbQmQjnflaPHRUEaD57+i78Wk4QZIxJ+yNjCErphS
X-Gm-Gg: AY/fxX6gErUqn5sQbJ1wj+NBrGiLUM5JWZlVQguW+nJmR5CmeZqhrCgckQppNQ2XV0p
	PbUl+vy0H+cEea7d+PJ2vG+pPlrxBxkKaYFXADqYMQSqp3WlP16E5D7fpR9Jzi+wDIjFTH2MJa8
	9Mem3fffVV7BpF6a6Ys7DLdB92y7OADlinfCtk5ruERM7Dc3/AW66QCj8h+iXVMtesGAL3bBgQz
	++i4UNTHVIDbXxQBGUxBjQfLf4S0VKYN4OGP7NyvVXFOdbXQ1onbTUDRcIu+93CMEIryl+oNSAQ
	QfRpwv7XkjXx8hlJaKg+nqwOlVN64e/j7hgjjFO1QU8yryFRI6DyjBjv/bxBL8WsbhyWYCiy1FQ
	Y6oq5q+WUr4wpGIr09lsh1AJWmpkgPqIe51fEkfiWzdeWRobugyQXFRJmWBjvbPXMAoU=
X-Received: by 2002:a05:620a:2996:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8c6a65fe843mr273447185a.0.1768558005343;
        Fri, 16 Jan 2026 02:06:45 -0800 (PST)
X-Received: by 2002:a05:620a:2996:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8c6a65fe843mr273445385a.0.1768558004870;
        Fri, 16 Jan 2026 02:06:44 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9f98sm195330966b.42.2026.01.16.02.06.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 02:06:44 -0800 (PST)
Message-ID: <217effdf-a66f-49a9-83da-378021e9a785@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 11:06:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 2/3] arm64: dts: qcom: talos/qcs615-ride: Fix
 inconsistent USB PHY node naming
To: tessolveupstream@gmail.com, andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260114100043.1310164-1-tessolveupstream@gmail.com>
 <20260114100043.1310164-3-tessolveupstream@gmail.com>
 <444b2e30-5675-4a17-89dc-ca24ca3910d9@oss.qualcomm.com>
 <fce9ee85-bd84-4e5f-a2ef-81095b071895@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fce9ee85-bd84-4e5f-a2ef-81095b071895@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=asW/yCZV c=1 sm=1 tr=0 ts=696a0db5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=iWMpDBD8rJIn2Jh5P4AA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: upsGECbpsnD3yAkG5CC9WfHv4KnpXOz0
X-Proofpoint-GUID: upsGECbpsnD3yAkG5CC9WfHv4KnpXOz0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3NSBTYWx0ZWRfX/2xYMbhPDr4+
 v++OYAkDqem2olVL5+asf2ve4qDnFeWGAGi1WdQucho8TBllMX0MFHZpqyLBFclEzsdirl4MF0Z
 l37cb9sQoW4AD8XyKK2Gt46cx8RPotp7tSLXMrSX6oIhA8OjsnrDioenqrclrnsWWR/PGOjDd55
 cFeh2jGBZ+Ak2I8prZvAlMACdVYwdc38tnYRU28xtyW403J+dqjsh8/Gh9uzCODdOGoKGyYGd0w
 YSHwukzIBcl+XMiyN5diQg+ZOhZu7QZd79PU6h8YxJoKoSr7DOtnTXxi1Wv3VnEB2MzoWGPDCdB
 H8GIWiykdoqNViuS9M3Ea7hbBseWV+OdRDeyYrbiudNQTbfAWRp0KI7siilFpMwYE+rkQ3TZzUQ
 DuhxXxQeR4SpUegKyvJl+fTkrU+5jbu/3wUcLEj+NA7p1lWHMF5c3LrVYIm7yuYdRdAiiV4sXio
 qr6Bylb0ADPSqSq15xA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160075

On 1/15/26 7:00 AM, tessolveupstream@gmail.com wrote:
> 
> 
> On 14-01-2026 15:49, Konrad Dybcio wrote:
>> On 1/14/26 11:00 AM, Sudarshan Shetty wrote:
>>> The USB PHY nodes has inconsistent labels as 'usb_1_hspy'
>>> and 'usb_hsphy_2' across talos.dtsi and qcs615-ride.dts.
>>> This patch renames them to follow a consistent naming
>>> scheme.

[...]

> Could you please confirm if this change aligns with your 
> expectation.

Yes, thank you

Konrad

