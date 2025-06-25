Return-Path: <devicetree+bounces-189536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9719AAE8288
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 14:21:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B8663BD33F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 12:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1A4E25BEF4;
	Wed, 25 Jun 2025 12:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SYiyE+l6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D63F25A320
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 12:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750854065; cv=none; b=d6TfrILdrYYuXPtR+nMpowb9zhyJRoky16WdvPHw5ZJNXxz/Z7rnsJlJo55jx+sId/JaOEYGFgofdu+wF+iTBE/OkMJx5wAvcPOe3quu3JpNgfwqbpu2ZCBEYkSHRA+0fIjrz4b+Ywd7uJOJARTQFprHUqzfDIniPerBXqoOs3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750854065; c=relaxed/simple;
	bh=5yqfQFrzXljuR9WcvKD23xmEcWvqoiPzYpT8pvVnSUg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dveGIdAaQeAlKUmghYR6lmW6lIwTTcONifFUoBTUfG/QaYmgUiiTRQqRe3c/83oHpzNInMfuQj8qnDh0WZS+upHmqBaYAg986URsxtZjgGJbROsWyIm5wRRjMtJAAqTeabTfqdisA40uqqpWyafgShjntnm67SAdOjop8wP4+vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SYiyE+l6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55PAXX4n001551
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 12:21:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aXaMYHHdy1hSo129ywhFjHkER1funcnc3Uc8Wtr6BfI=; b=SYiyE+l6QwX1B73R
	q2cYdl84CL4p4tXbUJuBHITc+8Y0KYkt3IT3uPiF6s7oMjSmE2IHnsqnB750uvhy
	gMS9mr8ynlH+S9NYpKshx6eXitccZRS5e3z7EmOD84aTbnuiLA4frYzf7bPBYmbX
	Mt+jbVIVF+Hgtvit3dAQfHMG8jjzXMQIFDr5Nw73ftF6NvwtpFYCniz2AbOg88FG
	vK4UfiP/4aTV1QRrmWS3//P7DWuXxkPTUm9XFfqIOO+IzX7+bK+HRfcg64OOyBNK
	DG17QjDTYg/M6aNB/PkCX471S4VY4mTxpwucays0xc7fdpRjPLyVhl8s2WlmoqLn
	6n2AMA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7td9p34-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 12:21:03 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d3eeb07a05so89272985a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 05:21:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750854062; x=1751458862;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aXaMYHHdy1hSo129ywhFjHkER1funcnc3Uc8Wtr6BfI=;
        b=D4FVCivKBCtdWq+qLBzqkSGvHBQx3GzwyNg3a1thZBaNnDf0mHLuym/q9pqT2lS2GY
         38lAZ4NKUPMJIxSpy5H7UUbcTSsIsb9pNFqdBKATnET21gXJkFGEtmHKDm1BFWzMp/G4
         wuF0YfQSzEQSP9mKf0tbdFErlRkeYh6zYwDTjmfV/ovf1un+pn0BkouhqK1R3i02pgB5
         DCBIJ0FVsCLexn/G73eCdUF8w+wvWqHws9n98i1qIaXMpse5F2D+dqZ9XHUhLU4Fqe0T
         PmvEbPlRmsht1QoGLvg27FSLZgFWlODsX5fRI/EZXywSEttOBjqF/q5ecWn5HxoU7q4S
         A/Cg==
X-Forwarded-Encrypted: i=1; AJvYcCUxj2oSTrl6ZUckmW8zUq73hnFZpCPlU/DqK4VMU7/CwC9Z9CkK4lRVautrRuuqleRnEciENAbmFsED@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6cuHy7LsJSCn9Ku/rTbfPbxgCAX5y4qgmWEZzDhgFTLf//JUV
	5cQeGzquiNY2fYCXwwQtlGlQr+5KJqmHeRUwCJ94/4hoexAvLxpJ6CTBdGgxO7xnRJF0lTVuy3s
	xNd42luuqevJP9JCmlMUCSfqTN5mduD3/idkRFT0QU27tu3172kD/SW+7pJ7GQ15x
X-Gm-Gg: ASbGncv894El9WaerK/v3+ZbwNqzO3zqx3pYVrKv+dB+s5LUH+atgol1kDo3ajWDMNP
	nkENzCGbQ6+HfdJppkUiFMrWgFETUFO+k3ywj8RyJWeb6n8VtgVOLP29jUH62Hnpg6fCv9CvOkb
	K6fQnbpwrK5NEaXc4vc5kPgr2nPQBuQMEsEWPdxEGEee6uDQqZZlZ2FHorHMy91MRBkDpCUnjiM
	ddeJQYYMVOePYW7KXe+OP9l/tiCrw7EYnNdS2Ay8WimNTckUR4u9FPWLFkJJQ7eEj5Ym9ujcFRO
	fMIHogMCCHSCRgNP6GpQWyAc6PQhaHxYxen0roGCiaVyqrJG3HhedaIC5Gg8evUmHuGiQY82C74
	FNVo=
X-Received: by 2002:a05:620a:262a:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7d4296f1b05mr121900585a.4.1750854061739;
        Wed, 25 Jun 2025 05:21:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCditgNqKLkT3Kcb/76zkTHjqL5rN/Om6Fnze1yjtsZfzkyU25uWLCyTODkKMaOCcRJaX8Dw==
X-Received: by 2002:a05:620a:262a:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7d4296f1b05mr121898885a.4.1750854061275;
        Wed, 25 Jun 2025 05:21:01 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0cab0ed04sm37502066b.135.2025.06.25.05.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 05:21:00 -0700 (PDT)
Message-ID: <4f8fa0c7-a208-4ba2-994f-ec7a5da0d39c@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 14:20:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] soc: qcom: socinfo: Add PM7550 & PMIV0108 PMICs
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20250625-sm7635-socinfo-v1-0-be09d5c697b8@fairphone.com>
 <20250625-sm7635-socinfo-v1-3-be09d5c697b8@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-sm7635-socinfo-v1-3-be09d5c697b8@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685be9af cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA5MiBTYWx0ZWRfX9lTNaCuSKxZo
 kkbJcrfw9VVIMD0kWFGX1V6fZ+EqhmwOtmNqY8Zd1F0oPuIbgGDumzKFuekGv8VyMaqiqaIgTEs
 uxBjz+sjseXJDNS5h4T9kFZzEq2EDJ6G4NiqWI3lY1oeez5XuwUVO/kWgY+1K2H8XmfQxy+QMG4
 BRntZKpBZwSMm3deMqQLd/eDLMcO3BIq6vziL+XmAcr7B2oFZ6PbqOrH73//nuo+ikVZQ/eaky/
 GP0NxRMUFXrdsRfA5Qo0Db+Nff5uhctxQqh7tCEe5j8coHetfFFRMaBlcULURENTzDqTFetPDzb
 EFXbcJAaUW6iL7JcsGuL2JjaND0VscRKZ4dkFqK7Al1Qo8YA5F9YUwUbcFyx99Bs8EmmpeSWDhc
 aC8JH6pKrg4QOGWfFAbEZAsnYu4TBUsArC7hiaLKV/+FjQZML734oyWmCgx49h8HZpuhnPaw
X-Proofpoint-GUID: bBpNaNUdgFG6fDlEPfLdg8kOqltNGYEV
X-Proofpoint-ORIG-GUID: bBpNaNUdgFG6fDlEPfLdg8kOqltNGYEV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_03,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=737 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250092

On 6/25/25 11:11 AM, Luca Weiss wrote:
> Add the PM7550 and PMIV0108 to the pmic_models array.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

