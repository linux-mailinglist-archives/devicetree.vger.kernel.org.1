Return-Path: <devicetree+bounces-247438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC83CC7C5E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF85430AFF1F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5857C34677F;
	Wed, 17 Dec 2025 13:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RVtu5EWV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="frrXNidw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C942D3755
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976467; cv=none; b=Aee2idkbY/zOsRq5uH56HPeg4xIODDQWw8uKl1rhTwpDKP3oT6qGY46x6W5uXatIXuvsX/jFjZ/ERnwNoWG/dtRwMLD1Vfi3zDsPzkvZi08m5hU2XMFY6CsJsgpMJLAMIvs+IcmtZJzu8LuezTF2Tz6W7NnTuqbxaMtGvEuYpRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976467; c=relaxed/simple;
	bh=HVgZAWbpr1kTkiTZYFcNNunlRt/FqtlF7sf5AeKZyKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BJBnKP6AFGTGamQHOCEDJiIUv5CAqClD+DDQU1Kzr5KVZggXf0y/i8IDd3sr5YYVezi+PUEdhDW70yhYPK98DxiX8d67RYbWPgWaNiMay6xIMcUa18CroQAZjU/3SLMGeodDeZC94KwPnGhnq8oxqdNZTilIpgNbyXN0PiVAZ/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RVtu5EWV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=frrXNidw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKmhh2390497
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:01:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PHzlg4EzmcOyOoQd+RcJlLn2pewRmU7gpHgVURI/Mgs=; b=RVtu5EWVK+IZcdBh
	Abuza281fFQSDLSnOYNXZwunUGsmyCTR9NltGkIPknPUFEbmsBPFNAqn3usNrrv3
	cuYiMRnFXPcnRIkW7rNvQOcBMMLwvCTvuvT2hVt/gmsKoSlxIj098v3+dzwH9Jzv
	AmLLjxtzWSZ0ulxANWxTGCfrFxFAeXHWanvd/CC62yF9kx9c5NLEeY1xm1ehRmU4
	6ffBIy5sAyMgizXJXyPpWpPMm0+1zmSEcvgMDwfjCPHFnrRnSkMelDCZ4dmGxoGW
	/8S9jVoKJdSa8ypwWj+2rwxcixGN+jFwIh9uT+ei8avuzo84KzbZ2BxtGz10t2RY
	S6NVjw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3b7g39qd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:01:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee05927183so7490851cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765976464; x=1766581264; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PHzlg4EzmcOyOoQd+RcJlLn2pewRmU7gpHgVURI/Mgs=;
        b=frrXNidwLjW7qqzgWCM3RrhJsGYFzEgg3RbUUQaN2DW87/FtO8VqCJgAfKCILLj4QD
         fkcBUnvRAo1Lbx9nUvmPzxqW7OW471++tEmuM0mbLV0SvhsMwogoO9WsLxUvRZFgV6QM
         53hDRB695sCXDzxGi46B5QNuxyibCU2dtV86lExl28x2+91ttj/nO6v5EuU7VQQ55ucb
         3shzS7tnPB3+/pNXpa8UgHQYuAPaFj1yIRdH6/TYnOmdUyxpcEvRbQroELGiTkZbZeIM
         dLbZ+b/wp35IVRCdZETfQnDTC0ocIdUPB7yRs2oHr3r2JDwsDPa+QgFWPT4oMuP3TRdk
         JtkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765976464; x=1766581264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PHzlg4EzmcOyOoQd+RcJlLn2pewRmU7gpHgVURI/Mgs=;
        b=q1t1H2W6bBA0IN5pJrNwsVymb5oRoFYJ8BfBX4DOe7/82RXPKBLx8b03iISKEnMiDc
         lHZdzQMa6qiaDlgAaYcpiM6a10UzGa6GNOmH9PZ2s8yZqSrlcy1v0WtStuqIYquW9cay
         18TF1B5KCYTXfBgBuMMofAT1UtFirgCAz6xyxADml4xNdiTP5U3EJUqhg2CXi6SPvCO2
         zIsoUMCaozVFpuOgGdGPuaq8AbX1DvZsyklVSnHtQUzizcZI4sD35i8O3vwANc6q2qtC
         Qrcxfqi3plQHGOfddxOs7VjhxymJZmF4EeqKA7sp+3rjm/txT0qMeoITEwlrbG5GOMBQ
         f4cA==
X-Forwarded-Encrypted: i=1; AJvYcCXvpyO0XKJpcWY9L5Uh3pJHUYNsL09fpEYeyn6Z6gmkT6WFdtuszK3yyqRupLXQ+RJ8zyZT+SJ1aP23@vger.kernel.org
X-Gm-Message-State: AOJu0YyqKvpAf7M+tgZH4c7pbYK+KuQ5lJ0MgHJrAPQ9NuHk2FqQl2rg
	MG58XVz413PtRV1FnRsIjFQmrNnLfqKy62GlfgVRg66tnDiwBJNW7htfvUOpgwNkoSV835aQr+i
	1KKNV+onUJ7MkfTBcmgEjJBvGufssvuULtfOaYFH836OHeRET2l9njM/TA81LE5Ow
X-Gm-Gg: AY/fxX5G3LoQrOCK0eb68X921j+Be+0hw86Ac71Weow9+FsE+4c9BtYASSjMLtUhHJQ
	TJpIQmUOZZpgDBOzZ2BvO443SI6FgwNfsmPKooVP3ZOdUpfZU9vBrRF4jBvRFWlc+fbnbFPnXLO
	6WZEZW8R3gzFiw/tAIb89/DN90tVK9eTe1mnGDsRIc0kZo1ydb9kP/kIAE+DCbUdMLA4EsPE4D4
	3HaeEmJ7K/yxvTH0UU8qM7UunUhLTUQ82F46RDiiOlvGNEjgYJc2CXP//wxspC0131F8hdK20Cm
	kF613FIoaY5KDYTvV+5vt042kRZszTupeehJs0BPjBzIH3LsIeTY+oBx+z7Z5KI4He/w50z1ytN
	cjjiZ9zlalk2GggZwf795jZCvkRdt9jw3D4Z5b9K7GwMeHeGXxvmgQaBio7lR+17QqA==
X-Received: by 2002:ac8:7d14:0:b0:4f1:be96:568a with SMTP id d75a77b69052e-4f1d01680b8mr184598161cf.0.1765976463394;
        Wed, 17 Dec 2025 05:01:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTy37xBIPLDeC4Jh6SE+/qv5pBcSn+YMZ+pzSoKGAlcjT6pNaPLlls/0sjvGivcG1kNzuwhg==
X-Received: by 2002:ac8:7d14:0:b0:4f1:be96:568a with SMTP id d75a77b69052e-4f1d01680b8mr184597231cf.0.1765976462463;
        Wed, 17 Dec 2025 05:01:02 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa56be0bsm1892480266b.52.2025.12.17.05.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 05:01:01 -0800 (PST)
Message-ID: <c1f9c746-0ebb-4b65-a992-9f60ea5689d6@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 14:00:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: kaanapali: Add base MTP board
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251215-knp-dts-v4-0-1541bebeb89f@oss.qualcomm.com>
 <20251215-knp-dts-v4-4-1541bebeb89f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251215-knp-dts-v4-4-1541bebeb89f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: B2JNFscB7aCqwTtHtvQ-p0Hl6xv3aqdp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEwMSBTYWx0ZWRfX2z0IvDqtqusn
 aOyGAQDR+Fj9CQ7eYKeJH1Bq4mi/fU4qNw293LJ9SOagpKpHvXu1ZulZwNGu6670xsRxxsfWUjT
 DNpuEHEeJ1vPwUh3JvHtH6azuQD7vZRpbc6juRrTrMoK9fdjEXVtPEKe80K5J6LI35TB2q5GtHO
 ElSDiae6y1yTp7gR8mqzIt50y1fx6JS1yrPHFqGxdYLhZvyi61ZYEE/7IS75UkFzwmNG9hCjhO4
 rf/dD17G7bfftP1dDZ7sAfDddTwDFWmjvTwAeul1QB3jPQYKXa5/cIN3IdgdxlE+yzTRLxaUJbl
 qWuBera8FDKzJvjT7oLjqZRdaHtiezNRWCLsEErsSPdxluAe7xoJkvcHA4EM23ZhBkdHbBb4/2J
 F3rtpi7DPe+AA7XDGJQ+GR0UgqU57A==
X-Proofpoint-GUID: B2JNFscB7aCqwTtHtvQ-p0Hl6xv3aqdp
X-Authority-Analysis: v=2.4 cv=PbLyRyhd c=1 sm=1 tr=0 ts=6942a990 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rVI_ATdNTQjFCBPYYL8A:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170101

On 12/15/25 10:07 AM, Jingyi Wang wrote:
> Add initial support for Qualcomm Kaanapali MTP board which enables PCIe,
> SD Card, UFS and booting to shell with UART console.
> 
> Written with help from Jishnu Prakash (added RPMhPD nodes), Nitin Rawat
> (added UFS), Manish Pandey (added SD Card) and Qiang Yu (added PCIe).
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

