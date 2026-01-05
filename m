Return-Path: <devicetree+bounces-251367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6706ACF2575
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 63CD53002D50
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B48CB302766;
	Mon,  5 Jan 2026 08:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AEjWzkeJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Da29QZH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FBE303A1D
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 08:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767600875; cv=none; b=R9wXiv8WiMqgW2PlN7W/+vCeMQcvGoQ8f1G/2E0GotM6IvsbuYu3jQdP/nHvircSTBz8KFSIrLPF2zf0eP7PMT7OMautJcR8MHf+Y0R9rTYNDfB5iA0xAoQ86kZTNu0if6XMBzw0wkaaNbrramsqjdJF8CiGGqldcCoe7fMbJOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767600875; c=relaxed/simple;
	bh=iQgnY4tsOzShFSo7WAUmSz6XrB6EpkXakU9TrvblBqQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GQFi5d4GQgVUovr9dQSMTugahAzQ13Efpj9KLpaHkx2uOeVRrJb2j6ALv8pKuoAKBJ0sPESokcu5l2ZNccNqTB5YBv9p4AFlzwe7K3uX9Y51eAvQQY0zfELYYMZoIykgoT6xQ1bxUGOAQHa/NXgH4dA49oiz8Xz0yCNGuxUOHl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AEjWzkeJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Da29QZH6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 604KpEpZ3205920
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 08:14:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Knhs8IKzgA/n8eZfM4YQQbHrb2riHOCrLcAUD8rcnII=; b=AEjWzkeJnXtiuWvA
	9K7CIIeLRGgNAj4NJPQnNqUTMGdJ+nTcVMSp5R2dJUg6KqxoDADWaC2OW57IL4Nr
	VVDoS7AE4zsnoSf/gqciO8FZukcajLb5lUImBFzM++zmFYarGqIeyhP7N4N4gUHN
	CCwh81afDEcIegdWf2BoFk/slj6nP8RTkM7mxvfniEowEvJ5YIfqfTOlT/snBLAM
	9LLJ7d0tA3gPM9gDBnLT3cFlcqAJhIMtGQar5VJq71Q6/FYGZ4UJJb+dTMhAbmTx
	KXb7G4GjorRvCBWN8LZnfsa5UCXeWNCTbfOGXtHJE3lXNtGvq9qR1CAi+3GMwVRu
	Qv0dHg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beywdke1d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 08:14:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f29ae883bso207678395ad.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 00:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767600870; x=1768205670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Knhs8IKzgA/n8eZfM4YQQbHrb2riHOCrLcAUD8rcnII=;
        b=Da29QZH65SFBHFaSj62vxxg/+s9zmnKQiSh5g1bDLcz9bhLF9hXO6Fk0FJBYA4gg0F
         dWx6a1D23s4Fmh0kDuPzux0sL1lgAkswTBCKRHdDcVxuFRXr1WSmpez5DJ6MuMxKrZil
         9LXq/6T+NL8mdSVoCE62RuuGYItquDIONeD3QuYnapWMlocA9YGv/V5XahMH57faTI5B
         9q5KLHCzgQRProCQsl/8ud3LuGu05bEcDnqWFoBapsTUK9Pwi4TKBG8POaZ0AekYpnL4
         2iqjK7tiYWY2Ppc29YLHGUPd5KRlFN00H3lsDZXBDJhCXMN8elRhA2BEedZO4gu6ITE4
         CJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767600870; x=1768205670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Knhs8IKzgA/n8eZfM4YQQbHrb2riHOCrLcAUD8rcnII=;
        b=UNbJox70Q4DjOiJe+Ur3wMgpH8NM88wAy24dy6AK92upTSFkm18AeID2PCrv4NjneL
         7xKGr1xT1I4YvrcBxJw9t4fYFqQZEHA35I2orVzf5x8gga+/v405Rwq0tPdLMFAjEvbW
         yX2tZ+MKPZCtPROGfXSwwkdV+lf2C4OIO5t2H3VYatxkDTtJDiHpZ97sLrs+8YFJZqaX
         bxe29oJ3U8lTnnRtZC8Kje/DKhweUf0Ht2ckC9wLbOKmUr91p8bnaZ4i5T+3I3JWwBIs
         QkiLq73FxDgv858CgcJJsRdPwZ+kZZOma1T+GL7H23KsCg2gVCuUs7Ms8bkb7/dvitni
         a6GQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJXfLXXlCvO9fKtkaEFnaIL8NHxutcU07dECeNL0hYW5tlJAKxs7UBAx4cwVXDEQuNrfuu6lZl54Yh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7qjViJuR9roVikJXZyiRBWLcc0QFyIH66CBSQb7UFBQgdIKTX
	6H8fnNFMrJkLqCuLK9DI00O56CEbWfuLI1khcmQStxqDXwXp6WwReHYz1QXbSmbGi6vQmH1KQtt
	rI8zc48JshefqQkm6MIcEtgW8obxY6jo4eaeH71HR4L4GVEb9rKiDIFUQk7KavRGb
X-Gm-Gg: AY/fxX4KI/S12cLiCiE2F/JJD+zJRfTruUNRjYTzr3maAeX0N9i5u5iV0ss626dttA4
	0Q7cPMUOJU2lCI4OEsdVWRltrPxCXouy8GUg7Qnh23864T0np7LqWEJxHA8mawlg13bkmW1+s1d
	mAzo3/scBEBDDCPZ6ZCtkjjY4jwh6+jeVIJtPRWMrKdpDeCD91fT8+BLsYl5fhCzd576Nx274hj
	uYKRt/hCruk63FR/UVQzZ1xYWHTZmOUULgW2maJTaVmROyKDcU75rzXW7meCWqKzjI5c073OdYI
	kI2KfrLR/ABtdPT4jV4e2a/+Ka7o3+fpf38ozlYfbr5EVpEmy+Dxtxy3OY8dE0sIHTUO+bJd13e
	MOU0sVOK3d0ao8wfK9dmGIGShL4p9pwZCateMxmbrhBp08YNJSrw=
X-Received: by 2002:a17:902:ec8b:b0:2a2:c1a3:63df with SMTP id d9443c01a7336-2a2f2830da5mr499135535ad.31.1767600870438;
        Mon, 05 Jan 2026 00:14:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZI5oU7cvHuyxSVZFYShCuld3qOUBm0+t7A94kkYYSw+mc4FnyDDkRFTHl/35PeuZ3unmeVw==
X-Received: by 2002:a17:902:ec8b:b0:2a2:c1a3:63df with SMTP id d9443c01a7336-2a2f2830da5mr499135335ad.31.1767600869960;
        Mon, 05 Jan 2026 00:14:29 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d77359sm447042285ad.95.2026.01.05.00.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 00:14:29 -0800 (PST)
Message-ID: <50d07f12-9a22-4120-a658-e6a462b9f8ee@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 13:44:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/4] scsi: ufs: qcom: dt-bindings: Document UFSHC
 compatible for x1e80100
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
 <20260102-rapid-abiding-parakeet-d0735f@quoll>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <20260102-rapid-abiding-parakeet-d0735f@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Sc76t/Ru c=1 sm=1 tr=0 ts=695b72e7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hz69ntJn8m3YF9laBZ4A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDA3MiBTYWx0ZWRfX/+9pXapywfq+
 2rZWfb9R0MuXyc5qg1SrT82I7YwX/JlVGBcBPDLwPA/9iQFTpATzrmz8BX03QGVuP0hMRpIakon
 xKKELhmQDo8IlqKBNuLHhXodXsj0vYaOH2548gornNsXossuPuIo5Rs+PtRBxl+Kkrq3Gpii2IE
 uBoZNIZUGcW9geYgbV28EbL7ug8OI8UEVsdMNg/WrBz4DVzE+2tgId8QPRp4vCfN0+7XWP7h7hP
 SsdVOEDBJ2gtfe+jf6HoiwHvPqgMUYFJxQpo8SiCorYRmPnpeY8b5p/kqoD0+TSEhpTc4D90WCq
 S9F3XJlVoLXqgnZFbpCM6/kVcwG/eT3IKSExOyX8p0lXKCqRipFyn529VIwo75/Qk6aR16F6+8m
 suZVFeRZXH1Ic+sbedO6PU1IKZ2Kj9k7LbfMDVeeo26QqJuZEkuPRvbiVXM8vZfPBHosVbdF2L4
 owYHHkKGShTN1cULAqA==
X-Proofpoint-GUID: 60d3QOmzzvK5L3QLNUwLmJapvWDfBbJk
X-Proofpoint-ORIG-GUID: 60d3QOmzzvK5L3QLNUwLmJapvWDfBbJk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050072



On 1/2/2026 4:55 PM, Krzysztof Kozlowski wrote:
> On Wed, Dec 31, 2025 at 03:49:49PM +0530, Pradeep P V K wrote:
>> Add the UFS Host Controller (UFSHC) compatible for Qualcomm x1e80100
>> SoC.  Use SM8550 as a fallback since x1e80100 shares compatibility
>> with SM8550 UFSHC, enabling reuse of existing support.
> 
> Your last sentence is redundant. "Make devices compatible because they
> are compatible". Why are they compatible? Or just say that you add a new
> device fully compatible with SM8550. Write concise and informative
> statements, not long elaborted paragraphs where only few words are the
> actual information
> 
ok, i will update in my next patchset.

>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 38 +++++++++++--------
>>   1 file changed, 23 insertions(+), 15 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>> index d94ef4e6b85a..0f6ea7ca06c8 100644
>> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>> @@ -26,26 +26,34 @@ select:
>>             - qcom,sm8350-ufshc
>>             - qcom,sm8450-ufshc
>>             - qcom,sm8550-ufshc
>> +          - qcom,x1e80100-ufshc
> 
> You don't need this.
sure, i will update in my next patchset.
> 
>>     required:
>>       - compatible
> 
> Best regards,
> Krzysztof
> 


