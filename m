Return-Path: <devicetree+bounces-238035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B916AC56993
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:29:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DA44534F092
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE9A30AAB4;
	Thu, 13 Nov 2025 09:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pd+uzHvm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PiLeIAWn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED5E2D8372
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763025811; cv=none; b=AdI4B796EQSe3ZFR0cHXke/jNYbFfaQdgBuVGrZhDDGN1fxbB7vSQ3FSnJ0lHU36BQRVd/PNWdAgGXdcx1s2dIleS3ys6UevCCtLZL/+o0vpscBfvjrc4sqNzPApA1Z2em+hLQe5F28xJzcjevMmXQCrnm+YwbDNqDZKKNdm1UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763025811; c=relaxed/simple;
	bh=vNLwIJ8hHlGbbozHWSIE4GW6scNdix41Xb/hMM6cC4U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZKniNztePaW3cXh17trkz2qDTkzaBGF0hfjpu+LmuHtvtdCI02TqKoJsHekju4zWwK9UTTrv+mnR6Faucz0Ut3ILaJMwSKn7v00jU0zJtzQjiPekJKMBgWEGuBAaTLqG05cX9BrNASghnucujnbDWMOwJbTYRWLH+n3dk2V5htU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pd+uzHvm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PiLeIAWn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD4weHc3336823
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:23:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lc6z+uEBGk1KLsnu2XQdjEaBe/EC0bIDJFmvCl3RZ1k=; b=pd+uzHvmycH98V35
	ddlzfKuFWv2RTOquD9lmfukK7Lz0u0SiDiIcYSa4tzHDD1ELOFMgNzE55bJLxco1
	H+sxpEqNTH3CTyvX0TLXpz8VrM1EGaHHdlyp6nXI8bw9ZSaaTemXj+8s60HHwr7+
	dKjIinddtiV9LhhVT4+PG3+8eQJhRNHMGOTakCTeP+tz45Ec9RMYiMJD3jlL72CT
	EivTsxEF3+l9pVrF5OsOaIoxk/23AnIt+OhpXVkc7A/LznsBLi1JsLVi5adwCngJ
	iXt7j8rh5dMUiveNojhufok6m4Cx3o9vNGUDyXApZDjpV+EayA2aUJGGB8/OQH5m
	GcsGLw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad8sa0t8k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:23:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edb714b16aso1477551cf.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763025808; x=1763630608; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lc6z+uEBGk1KLsnu2XQdjEaBe/EC0bIDJFmvCl3RZ1k=;
        b=PiLeIAWnf0azj5xcJ2EA0wWve3pIU6GMKCYCqaMaNQM/At5zeN/J11TqBTe/Ew6WZx
         zNDO9S3htdjUp397KA+ugf5tljevIZejCcixxmZX6PbSkg4PHicsQSQSu/sxqXaBzPHL
         0cYgeWeCn0ayNptOyyfBlifGsP9FLpOqEh9nKidjs/djgPwGdz1G7LYr+CF3FMPmL+ZO
         xoGG7YU/UnBKppZDZbxSxlqbKoR32z5rKtGyyvGgqWvRCFZckD+8ctByCT6yeeWa95b2
         pSsWucD0mIw+ehkzcqji7Z6bueUmyfYZKD0DwHtQu2028htBrdn7VpnrOXPRL/pknHtH
         Qp3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763025808; x=1763630608;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lc6z+uEBGk1KLsnu2XQdjEaBe/EC0bIDJFmvCl3RZ1k=;
        b=NFPcDv5ZcCMIjKy/VErzkM8FtRl2VQCd2eBe3GvSa3W8TI7cyac9aT79WzhhxybsGs
         TkJUlRBuEQzeLJZLJwUY1zjomOT2fjaxVQBbd3ywTrwxJWYw/EPJogcy1GqVfrkUu8/6
         uoo7nM/WdR0l77h/pkVXFPk5S6A3oCvSHEgkW9y3xHqCGumDcDSugpgzb4o9erkuJ+PL
         FcFNUX03T3hffKXqgPN8olHF9kdRTpXsUoh+KK11kzqT3SJFxIKeEXw8NY8Xi/QKmdsm
         9mIPUoqvrSEhc+N4NnqBK8DiuPMfE4YJXECvSBSyozCRgS12wiqTfl/BPjT+nqP+krrn
         Dtwg==
X-Forwarded-Encrypted: i=1; AJvYcCVI7rUlKWGxntqXrMpXHdy9bPnxJ2HUqXki8WodCcpu5tFMeyFV4KQqo5C4YftknSTd5EIhWLpItPhb@vger.kernel.org
X-Gm-Message-State: AOJu0YzpP2LzalOq6GmR+yLm0f9Tr8TCa0wSE5l/e2HFSLja1YMCNOdC
	2Mdwsmbpq3RC6YuyVtX62AT7Ywx9o636nuZoXB4D8bw8dy0c+dhmAbfVu8hOSvAhnhnZSeJX5fN
	1BUSSj+D/hzYc76A8QtxqnMuMlijAL6+C0T3MmOrC8o9pDn1c0Gu9w/v8nAzHkahY
X-Gm-Gg: ASbGncut3VdVzLnT+SfrWrDLKLfeL4Q/HmK+h7PyCoPRNMg76X5pwTMl6vHZ02pMwKh
	xCFQ5V7zb3LOpB6NQXvhCfCEtQGr8ObAlaeyybPJrS9v4w5z9/eq43XfW8dqo44o1WfUoU/z7od
	aOOH9n2FXl2VarczdXAvmu1A43X3ain/lbX9hhnUU+p4c5FyPBKRzli7QyjiY+Qx4FThhcioQfM
	j5d/tLNz4jYu89vIRwi+T8fh4gPcxZ2kmeSy/YLKhi6bdq5dttN6Fz5AE5HHfVA8zlt5o9YVSHA
	XW9ZmIod/VgJNe75cOjI+KPXGAqpyzmljovwJWx2Ln67PFkOkaQpOtafoHOPLXh9Htt3yyu7rkw
	0umqExB6LY1A19WQO08pdI27FPlidM+Y1vqDwGAvQozsWBn5Mttnt86KX
X-Received: by 2002:ac8:5848:0:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4ede78156acmr20804761cf.3.1763025808403;
        Thu, 13 Nov 2025 01:23:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDvQBAeHaIKLPVl6aG5Yw+ReujRgxuRW3MuYaxxks970EUIcYW0c/ISXK3bmjJD9pM58oPBw==
X-Received: by 2002:ac8:5848:0:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4ede78156acmr20804551cf.3.1763025807976;
        Thu, 13 Nov 2025 01:23:27 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd8084csm121335466b.34.2025.11.13.01.23.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 01:23:27 -0800 (PST)
Message-ID: <afd4989d-f610-40b5-95a4-b27e69a44fa7@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 10:23:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8750-mtp: Enable USB headset
 and Type-C altmode
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar
 <abhinavk@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org>
 <20251112-sm8750-display-dts-v2-3-d1567c583821@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251112-sm8750-display-dts-v2-3-d1567c583821@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nlfrwuqFNHHKDVyIRO6RPWZBH2NVpS4T
X-Proofpoint-ORIG-GUID: nlfrwuqFNHHKDVyIRO6RPWZBH2NVpS4T
X-Authority-Analysis: v=2.4 cv=dcGNHHXe c=1 sm=1 tr=0 ts=6915a391 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=dJzBJ7HgUvekN0fXt0sA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA2OCBTYWx0ZWRfX03Z83ATCnbpo
 pmeb0RxG4HYQK57yQK/I80a57TeylyhTgMuMewxwttygE7WC6piZTmIDuu/fvliC7vrXZm/R8Rr
 u/ddlUSHUiki3kxD+qzV5AQAKU4wiwOAqJEs+7Ek8BPRiTVi0aL1BQ0AnNL3v5Xex+BBbsPJt5g
 mXAkn6cTAqZNXloNbsc3Na6/9BQ0jgKzn3M336IlhCr61dy9npcCksy0QN5MucQA2w4yn3VWl8T
 96ZwQGTELSIwcbI+arGHH7KQKnKMPKhTLlEZmEbBwf1AUFU6zZ9cgvSMK21efQSvYcWJGmMcy9I
 ypPlcCSvDuylClOwoc/Lz3vtTThJaF0KGma68Z3aARCqC6DRDvaAz3SpD7JcvoUr6JVDsh6vXWn
 Etq3TzmRFdK42ZYzfvBmoVxKl2i45A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130068

On 11/12/25 4:02 PM, Krzysztof Kozlowski wrote:
> MTP8750 does not have audio jack connected and relies on USB mux
> (WCD9395).  Add necessary nodes for proper audio headset support along
> with USB Type-C altmode and orientation.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

