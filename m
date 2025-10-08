Return-Path: <devicetree+bounces-224514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AE7BC4A3E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:55:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F274B3A6610
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265FF2F7449;
	Wed,  8 Oct 2025 11:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="maqMwvrP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FEE2F0676
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759924548; cv=none; b=GGwS/U2JQqKehjysbrgQv2t3zjisW2OiTWbeSqgefA4i4RimPAP052H6cuthTeCa3vWBWVZ/VAuEbTpLQzorK1nxDibFkG1aqBKKpJPBKofuyOFucUlrn4lUyEg273uyz55Yy0J2pNPs6vK8oa8QkrCiKwSWrQdaVkMRhm6+sOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759924548; c=relaxed/simple;
	bh=lzKibfEwcgq9ZCr8yG0Yc2sdc7f61txnd2gsqpO1nqo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Po2EGELkf/ZKwjE3E1k+lCH3p2HNuX7TFyguYqJnv7C+tG7J82n3TAbcbgMjmaU8pQXsOB0i/XAl4YAKsQ8vHv9Md13yBm+kdeeHabVhkWg/2rxw6Kc/f24Stt3TELVPn/50V0Bc0qSKkb4NPTs0DTE3/d7WwSWT85UsSbMEZCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=maqMwvrP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890iB3014448
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:55:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	is4ONlRs15AvSM+w6vGZwSp+0+G+NrjYHHMxgCstEs0=; b=maqMwvrPXDPQLR1h
	PsZqdH+9wtzKQkon+whG0xm6+74TxTDygaIHxF+wklHOtBeTH9Vu7xmQfxjT9iuu
	W71b8z2ol1hHRssAl7Wjh5NSK3rnT/vLugyyXxVzeWlBVdP0b9rxNcouP0LR1Ahg
	3kyFjG2EDj38td6Em8/qSoJqRkYt5HqubCEAGfPI9lzPD769ANCTpdnYm1DsZr39
	FptnGDbW5u5uXMSf2CSIVbuk92Exk5k0i61EOZisO4zgkDt1vqw/HaIjxtyfcSAh
	Wt6TPthsWqBBsAWJAKDUGRf8CzbQ368lv8JZqDdxX7NQpgcE1GzSau3Hg/9uZKzT
	xnTr2w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0p11n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:55:45 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33274f8ff7cso11331984a91.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:55:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759924544; x=1760529344;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=is4ONlRs15AvSM+w6vGZwSp+0+G+NrjYHHMxgCstEs0=;
        b=JzGP2S9OhKQF8Gxl2RU/2XxFwHQfzoakuzSPNmtRcZtRsJH7O83ukd+y58S/+X+CS0
         zE4Dnqbw0RO0VvV2BjXh7gugg+YPzVvCvCzWM6iHZX7NJ2SqlsaGuR5NeW01Y4fQYYeO
         DoUqKmBVjsNlICBKvZeVMbgfT1XvTCtBn83K25GQiNS9qQcIrh0jwwKlqJ8HVjckl2S1
         cB2/gwcpQusnJuc9Xb8+3sTpNf2gc7N5ghq3pq/eWVqPMC7zahIi8f2vty6wVzaEJbi9
         xkr2otFtbIzM9Jwq1m4KyPVpmHnH0NTEnTW3yY7+O5gQ+JCi8HhUzN/Brg3AaFuYM3ak
         B2HA==
X-Forwarded-Encrypted: i=1; AJvYcCXV9FPtRucLL2rJvEKYvFAvmxQz4IIyZaGtmELIq8YkLk0dXpfCSueHsWkAjEjap+CbaS67f/bCJns0@vger.kernel.org
X-Gm-Message-State: AOJu0YxM3cxF5stRkxM8l4xOebIJneOpxU6yK14d2lT6NYuur0TDPga6
	blaMkn2oAEj9egtohjAj50LWEmmg1SpRSyl+e/U6+izTcRKPPipo0hydanFsUfFCqzFtrKMdqnp
	n7E3eluOLG8ntgmSA+TLII9usGZvey94EYJGDgMTOj5yrnxJHfsGB0VrcGUiAhwda
X-Gm-Gg: ASbGncvf22kpkM/3TOm8OshQ88xhJmKEEF0qFwTE79o1CX9k5hps7nq4Ejmqu3sc0eX
	/Y/iQ3Yu1e59CeBe/MFdBjc3+BvmyXRMiaLynkpVOtDm7DTy75Tc8H0ZweyVk0jOEbWOag6mBMU
	cvzk4WLwBtWkGyt5QgqrPsoV4/PT8I40y02VNLjeoNBiKTwXSHbceB1VEUuENrNWMUE2AW5iwxe
	IQrdCdSEfioNDH4DrBoeZnZYh2trFTGwSCUlWoYittWjIde2LGUpcg9/3WH2G4OpStlPjPpcO7i
	YqkJTUbIo5FXygJ1DIP3omTiTuLwAt7nkgUcZxXXOMpjp+HWzgrhEleE/MWUuP1lshbWje/r+8v
	F1nTuN3wY9oQ/6/GvMZO9Tasl6SWFyUHbA/ZB8x1OIx5d9gRKLB7ruOIA7+LGmD8=
X-Received: by 2002:a17:90b:1b43:b0:32e:18f2:7a59 with SMTP id 98e67ed59e1d1-33b5116251cmr4321788a91.11.1759924544297;
        Wed, 08 Oct 2025 04:55:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8dAKsyBbZvrsJrjiadHYFmwWdD8uXe/duyov4znxSNrQv9BCH4o3QlpUkcce67iM88n/91g==
X-Received: by 2002:a17:90b:1b43:b0:32e:18f2:7a59 with SMTP id 98e67ed59e1d1-33b5116251cmr4321743a91.11.1759924543785;
        Wed, 08 Oct 2025 04:55:43 -0700 (PDT)
Received: from [10.79.195.127] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b510e919esm3186243a91.5.2025.10.08.04.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:55:43 -0700 (PDT)
Message-ID: <064d2a33-22e7-446e-9831-a390510698cc@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 17:25:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/24] arm64: dts: qcom: glymur: Add PMIC glink node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-18-24b601bbecc0@oss.qualcomm.com>
 <09b2ee28-ee2b-46a8-b273-110fb0b4d8a7@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <09b2ee28-ee2b-46a8-b273-110fb0b4d8a7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: HnGH8CHjdhskBCAwoBq_Gp-pebes9GCi
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e65141 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=rqt88i4GeKtY4LEx51oA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: HnGH8CHjdhskBCAwoBq_Gp-pebes9GCi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfXwL/cQot0VVto
 SyA3zvqb44V50Z5xFlPA7OGhqMrPo3x/yrIMYkS/vYfpeyT/tMMxKuOcZEulrlfsiDQNqQV68pp
 hUZUfWA8PoiTchp48K4OOKPfoOBtL91d1HAYvCLxdiw2Jhv7k7+G/UpFq/f7c3Ganb+t7Nq4mtx
 DQaVZWja8RFDPb+jRPfZ1qOx1K3eZ9cCEPbb+LPf3k5W2ViQZbQdojmr7u+Vxmo5N3U13feqeoD
 bgq2Gk+9OEnMmJSOGRTJRbf2mJAR+4eM5lCt7BsTYUGsvenD8udEve04wvVwCgrmmCfDgB0ubai
 cuDg0t/eyGVaFAAED7YKP9Fiazy30GPubN7ABNsfs2l5ww5+6O/EjGVunFtk68q2AsSQD9s+d7x
 JaKPg93UuYcmIXc9Wk9G8QlUVte26A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

On 9/25/2025 4:02 PM, Konrad Dybcio wrote:
> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>
>> Add the pmic glink node with connectors.
>>
>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 28 ++++++++++++++++++++++++++++
>>  1 file changed, 28 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>> index b04c0ed28468620673237fffb4013adacc7ef7ba..3f94bdf8b3ccfdff182005d67b8b3f84f956a430 100644
>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>> @@ -79,6 +79,34 @@ key-volume-up {
>>  			wakeup-source;
>>  		};
>>  	};
>> +
>> +	pmic-glink {
>> +		compatible = "qcom,sm8550-pmic-glink",
> You *must* include a glymur compatible
>
>> +			     "qcom,pmic-glink";
> Are you sure this is still compatible with 8550 after this
> series landed?
>
> https://lore.kernel.org/linux-arm-msm/20250917-qcom_battmgr_update-v5-0-270ade9ffe13@oss.qualcomm.com/
>
> Konrad

I'll check and add a glymur compatible in next revision


