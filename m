Return-Path: <devicetree+bounces-197059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D86B07F4A
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 23:08:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9AAE4E732B
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 21:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BBE928FAA8;
	Wed, 16 Jul 2025 21:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ebx3de/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7974A11
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 21:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752700078; cv=none; b=WftBevopfEX42Yhl2SaUSGG0QrUDYPWwCuwh4JoIdc2pL6gyzggTNcK8C7KwVYLBTvhdZkVJuItAQkhUl79JSEHccGL0NFwtv2QxQ8hqrgNhJCCFt3FwvqdzQUywlUj7hZBfj3kuT3EaeqHY4RTycRpZYjwftVPTEJxQoD5Cij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752700078; c=relaxed/simple;
	bh=LpqAPGefwzBwFYR9r2WmokfPuA0JN8SVJrbGha/EKBQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eOeGoAEI+RZJ/5Ehjyfw49yZ50Lyz/XEqFoODyDwg71YdR2fPRTvx5mr6INbVCl78wo7zb4SlfrFz3LQONaE/XeoKWVEETb45bjVYMkqzXD0lK8sjcVXP4ea4YIUo+y4oRtrSjcHLgHVqOeN+h3YYWgwcbMgjYFR1fqjliNcU3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ebx3de/x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GGDZLP030415
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 21:07:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZnxKZl2pTILgIyiA7gr+WaJOYDTln2epWNFqVmNyzYs=; b=Ebx3de/xHGD++jog
	Pc6U7f6ruDqeECEmGtpZtUTNBjLOsAtaiisF+o5IVEDC3CQrrgDc+QjPkDUCKQOT
	OyT8A3nAZLcwyBpWmvc7fC+tx3GE92Q4NiisHbcNXxYgCFESKxgeTtib6y6PSnva
	uuFGw0mLJ/90iJd4BlH0sXXyshDqQpUHLrZg09nF79S2V+wnY+cAcP3goTnPHcGD
	E5TydTWfkGJUcgGTg60nMsJFpUW3xz1gYnGYj2Kf4ITRiWbMKGQyGFUlFWe1rRKl
	hPWEAC5xC3icO6paBmVxQWZlvKLEfoMtdAcMNkc/AMUiGiXdLb/+l1TsBGFSUWpt
	Ml9b2g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47x8x7j4y5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 21:07:55 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e06402c7daso39755685a.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752700075; x=1753304875;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZnxKZl2pTILgIyiA7gr+WaJOYDTln2epWNFqVmNyzYs=;
        b=SC4reA4kt0PMit15EssfOm5RDRNI/9Lrte43v42o87fYegHJG2n36smYNazR58feVL
         VkfGf9Klf4l5braDT1v/06lwy2hoyl5G+ZqzPmvSsV2wXYKB1QjfK6lsCc/boltsJGZt
         DCg9082126CW95cdyoFfPCt0JmPzdlV1zkm7g6t8q3/QXhYpbl4STDfftO5T9sGVyds9
         5+/csjEBn9lm59qYu8GAnzDaKHCNHV3nKtv5rVs9rv9jV0aAj+okovnIJV0xw/dx9ewO
         JIi4+GrlRZJ20a9pbu7zqkMf5nIf7leOt/PA2rfcxhFq0nlU7IvD9f6bwkW7e13A5qcF
         TqXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL6NuZgvgnamQY6KwqNRl2LoWlJTSVKpvBxz+vWds1+N2I/879e2ouotod5GKZbD1rzVyuc1BUjE12@vger.kernel.org
X-Gm-Message-State: AOJu0YxaQ97QbuGMI9nIJNT413K5UIBV0Tw9HQQ/aTBpNMpKSpKh2mhl
	ugziWLr7oaQBWWmYFEELk4oYRip+ph3ifjOmULhTf4gMMNg7ebqrEjRX8zFEthdgCgOtVbEX007
	BDcxgjFFrGzzGCEXBvkzKkCvwk6ON/rPIGfh0LKRflndgC5mlMaWctQAwMM0/+pAU
X-Gm-Gg: ASbGncunozy6qTDqMb0wj+yVm1Q7ScRd5W46Rxbf3dcqt/JCfLz6rpDVz80+ZfRLMTL
	vffMQLEuQrcvsjDhJc2IZgtfY/aoktHWgwVt3yBbbgDrBZ5hUZu6DyIuPWBuPQVtQ/bP7TzjOnh
	WCEuw0+BJkwdmf2970OYKf/+3vHLr83LJDKGWOIRiG8N0mrCnIwf9fs9riouQk6MxsR6BBQ6fnR
	fFjNU9khBm0IidOm1tDRBlQoxhhFe0+LdaeKKeLTgb8YYCowA2QIWPrvdNvdgqJ0oHU2N3QVtuC
	vX2vxoEgzvvK4qCT6Y4yngpV6+Vibv5Vcz6WwBFTg5Dsf6343cKfSCeP8bXYqdQk9k3tgTC292L
	nwKW2Vlp14/+NnT8=
X-Received: by 2002:a05:620a:2b48:b0:7e0:9b88:133f with SMTP id af79cd13be357-7e342b6a6aamr555188285a.39.1752700074564;
        Wed, 16 Jul 2025 14:07:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqgyZt//7oK1PvV9G4wGP6jOLAP5TEppBWiJSWJsoBpj047J7aylcwmETAAX26ToFCZHeUQw==
X-Received: by 2002:a05:620a:2b48:b0:7e0:9b88:133f with SMTP id af79cd13be357-7e342b6a6aamr555182485a.39.1752700073880;
        Wed, 16 Jul 2025 14:07:53 -0700 (PDT)
Received: from [10.143.245.182] (87-95-12-98.bb.dnainternet.fi. [87.95.12.98])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7bb661sm2798793e87.10.2025.07.16.14.07.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 14:07:52 -0700 (PDT)
Message-ID: <50029df9-a317-4341-99a8-8e55b8ae4aea@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 00:07:52 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/8] firmware: qcom: uefisecapp: add support for R/O
 UEFI vars
To: Bjorn Andersson <andersson@kernel.org>
Cc: Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
 <20250625-more-qseecom-v4-3-aacca9306cee@oss.qualcomm.com>
 <4ylx7fxgwozm4yaavltlq6disd54acm3iko6tte2rxhufgq6rj@scwldtfbelg6>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <4ylx7fxgwozm4yaavltlq6disd54acm3iko6tte2rxhufgq6rj@scwldtfbelg6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDE5MCBTYWx0ZWRfXyYOHuSwUNdwy
 Lrgea1aPFZjbmGSFzpXi+uboT4FUEM4CbdjCTKoXbtDJji/W9a9S7w6miJnMqrX/JNqDODtSxhO
 w1UtPQrLLSeJkg8TLLuEh8bCqERBwG+baCNZVW25L6OAAPgFwY1iUOXkp8XwYdvUD01rc2hi+ha
 xnD4k5mEz2M7LYnAX5fhFaNuMRvXLqe6cZ5szBcE8ZSudpWzg5Dmpm61eG97ak1ZbZjtn1Aml6k
 xJXf12oHYVl+eu/Cak8ezAfFfSzDelXrk/w5XvXonpEymOCTk0im1o89xG55jmr7It+unQYSxbx
 AFgLRPH85Wx4QbA87gormqLdYI8uJyoUCxvX3+OliIFxStcZqn2SnN8OHdN+YRBURSjIFojt4nr
 ggQzkRKUFgsWQDnRxFFNLjukEWc4/S7PT3A4TPAPU5Cyra3aQn2i0pvnq3GhOjKs1Z9oSM7t
X-Proofpoint-GUID: KpkqmsTi0d7PgmX7in4jsfRgP1TIrTjX
X-Proofpoint-ORIG-GUID: KpkqmsTi0d7PgmX7in4jsfRgP1TIrTjX
X-Authority-Analysis: v=2.4 cv=N9YpF39B c=1 sm=1 tr=0 ts=687814ab cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=G1XBu1ow44TIBf0dtryxDQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=rBXHhWp4RwpHmD1I-XcA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_04,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 suspectscore=0 impostorscore=0
 phishscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160190

On 16/07/2025 22:13, Bjorn Andersson wrote:
> On Wed, Jun 25, 2025 at 01:53:22AM +0300, Dmitry Baryshkov wrote:
>> For some platforms (e.g. Lenovo Yoga C630) we don't yet know a way to
>> update variables in the permanent storage. However being able to read
>> the vars is still useful as it allows us to get e.g. RTC offset.
>>
>> Add a quirk for QSEECOM specifying that UEFI variables for this platform
>> should be registered in read-only mode.
>>
> 
> In order to implement UEFI variable storage on any device where the OS
> owns the one storage device requires some form of bridge service running
> in the OS.
 > > We should expect that such devices will exist in the future as well 
(due
> to BOM cost) and as such a solution for this will have to present itself
> in a upstream compliant fashion.

Sure.

> 
> There's a lot of infrastructure being introduced here to convey a single
> boolean flag which I'm hoping to be dead code sooner rather than later.


I think we might have more quirks in future, but I'm fine with just 
forcing R/O uefi vars for SDM845 and MSM8998 (I assume SC8180X should 
also have the same issue, but it was enabled unconditionally).


> 
> Now there's some differences in your wording between the patches and the
> responses. In some places you're talking about the C630 crashing, in
> others you describe it as EFI variable writes aren't persistent. That
> makes me wonder if we have two problems, or what you're refering to here
> is just the same problem we see on all UFS-based systems (Qualcomm and
> others).


Those are separate issues:
- C630 doesn't persist variables across reboots
- Enabling R/O UEFI variables uncovers a crash at the rtc_pm8xxx / 
efivars code.


> 
> Regards,
> Bjorn
> 
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>   drivers/firmware/qcom/qcom_qseecom_uefisecapp.c | 18 +++++++++++++++++-
>>   include/linux/firmware/qcom/qcom_qseecom.h      |  2 ++
>>   2 files changed, 19 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/firmware/qcom/qcom_qseecom_uefisecapp.c b/drivers/firmware/qcom/qcom_qseecom_uefisecapp.c
>> index 98a463e9774bf04f2deb0f7fa1318bd0d2edfa49..05f700dcb8cf3189f640237ff0e045564abb8264 100644
>> --- a/drivers/firmware/qcom/qcom_qseecom_uefisecapp.c
>> +++ b/drivers/firmware/qcom/qcom_qseecom_uefisecapp.c
>> @@ -792,6 +792,12 @@ static efi_status_t qcuefi_query_variable_info(u32 attr, u64 *storage_space, u64
>>   	return status;
>>   }
>>   
>> +static const struct efivar_operations qcom_efivars_ro_ops = {
>> +	.get_variable = qcuefi_get_variable,
>> +	.get_next_variable = qcuefi_get_next_variable,
>> +	.query_variable_info = qcuefi_query_variable_info,
>> +};
>> +
>>   static const struct efivar_operations qcom_efivar_ops = {
>>   	.get_variable = qcuefi_get_variable,
>>   	.set_variable = qcuefi_set_variable,
>> @@ -804,7 +810,9 @@ static const struct efivar_operations qcom_efivar_ops = {
>>   static int qcom_uefisecapp_probe(struct auxiliary_device *aux_dev,
>>   				 const struct auxiliary_device_id *aux_dev_id)
>>   {
>> +	unsigned long *quirks = aux_dev->dev.platform_data;
>>   	struct qcom_tzmem_pool_config pool_config;
>> +	const struct efivar_operations *ops;
>>   	struct qcuefi_client *qcuefi;
>>   	int status;
>>   
>> @@ -829,7 +837,15 @@ static int qcom_uefisecapp_probe(struct auxiliary_device *aux_dev,
>>   	if (status)
>>   		return status;
>>   
>> -	status = efivars_register(&qcuefi->efivars, &qcom_efivar_ops);
>> +	if (quirks &&
>> +	    *quirks & QCOM_QSEECOM_QUIRK_RO_UEFIVARS) {
>> +		dev_dbg(&aux_dev->dev, "R/O UEFI vars implementation\n");
>> +		ops = &qcom_efivars_ro_ops;
>> +	} else {
>> +		ops = &qcom_efivar_ops;
>> +	}
>> +
>> +	status = efivars_register(&qcuefi->efivars, ops);
>>   	if (status)
>>   		qcuefi_set_reference(NULL);
>>   
>> diff --git a/include/linux/firmware/qcom/qcom_qseecom.h b/include/linux/firmware/qcom/qcom_qseecom.h
>> index 3387897bf36843cccd0bd933dd562390bf674b14..8d6d660e854fdb0fabbef10ab5ee6ff23ad79826 100644
>> --- a/include/linux/firmware/qcom/qcom_qseecom.h
>> +++ b/include/linux/firmware/qcom/qcom_qseecom.h
>> @@ -51,4 +51,6 @@ static inline int qcom_qseecom_app_send(struct qseecom_client *client,
>>   	return qcom_scm_qseecom_app_send(client->app_id, req, req_size, rsp, rsp_size);
>>   }
>>   
>> +#define QCOM_QSEECOM_QUIRK_RO_UEFIVARS		BIT(0)
>> +
>>   #endif /* __QCOM_QSEECOM_H */
>>
>> -- 
>> 2.39.5
>>


-- 
With best wishes
Dmitry

