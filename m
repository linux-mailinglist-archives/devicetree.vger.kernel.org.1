Return-Path: <devicetree+bounces-266676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Ba4LLcil2lAvAIAu9opvQ
	(envelope-from <devicetree+bounces-266676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:48:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AC515FBC6
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7C7ED3002B4E
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39BFC340DB2;
	Thu, 19 Feb 2026 14:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zv7xyDP9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AR5xnM2a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDF82F067E
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771512497; cv=none; b=uyFXQqNLcuA5pEELn9AXeYdennvX3D9B9pRJOHklF8MHGBV7lzTBO/KoHNunUuoiHLRgkWznwJ/2g6CYcJ2r8X2G1aGaHvXEldu4FiZY5Duvn9/r12yRBLhBk3XUjfKtGkIP9XC4iuyKJrTJgY+2jhg4R24W6uhDg5R34Iaa8s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771512497; c=relaxed/simple;
	bh=agSplSd/enGrqJJZuVigfbtb3Q3utxBcL9jwX2fg4Ro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KyCdpmKS951jKEQZX7Wsfb+1qapTIStWBGmZS3LUVPMG4ES0m1ftJF3kEuTtF4tUi6M60PY6a8M8oNjSaUGgUF2mmYWAoRMBFWzs/HtUDsFuRBtX6OwGpPEYe6KGvB/ZMiShCMsOeorA9dT92prnzdyo7cyvM1PCzSl82Pw/SmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zv7xyDP9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AR5xnM2a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J8WbY64055318
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:48:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XBcT7y8QhFDm4R6m0oBnSylOPPgufl79tiD50UABjfk=; b=Zv7xyDP93EjGOkeb
	cSjqOX61nOl24EJwgwhtYmgRyuYF7/V85GvmfY8vjYI6rMNDrhdpQmr6/Uh0qU5v
	4Qt85FLrvmHq/ndjQvsdfJjeoX9UP7MPifmOQzVAXnJFz1uG2yJK2ijN+vDOasUV
	96zs2/V+TVxdrNi5JVJT5Pq/8Akk3OmimzEInXdPiA+vVZudFV5SnvU8jOR/mJIh
	/M1fm2MBZOdO0JrjFCOvTpGi3s8OzMZ1dCa6HgVgU+3BWlR8np1wO/PsIKxIprXi
	tFp2Fot6QxWoI9FagV3X2CzrIyftkF8jxj0IK2QVHYcBO19MTHNE3DTuJ4B1lHuM
	ELiBbg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdv389fwy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:48:15 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6dde310601so667629a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771512495; x=1772117295; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XBcT7y8QhFDm4R6m0oBnSylOPPgufl79tiD50UABjfk=;
        b=AR5xnM2aW5PxcXfI6UYKJRldPf2EkXKcYzGiadoSS6QJbNqmKS9bZ6ZmzHSXwiIKAN
         c5Z+i57Q/6Qch2d/d7/oztM+qmCjRsFhUpsXmmxrImlG8CGmf88laQU1LCkRlxxu6J3L
         OA32cxOTgZgQE/EjYVl462uNabqQ8MoV1RUxNqmWYAAO0MNqImhrNoyseD+nG6zXUclj
         zQFAvsOzMvK/Nmlw2MGCM1GD3On9mDrP7v026dDrY0b8MfCvbs8CrV1kSRpth4sV6ERN
         r9OeDDqutufGNnhRrYX0RPk9zl2jEB/ATXI7uHVquvKLDW+fMH8yNUo6i/eSTj71W668
         Kmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771512495; x=1772117295;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XBcT7y8QhFDm4R6m0oBnSylOPPgufl79tiD50UABjfk=;
        b=Z4UOD213XeWQJ7w9vrw7kTHUwmt2PSwm/b83dNDDzRski90kakoFMuDK99OQf+fPfq
         ReKvKA+FbKjD+Cz9SKDyRrQGInhKWKA8EuD3lM+BvzvyKNaLcCCilI9E4Te9sqXPrSVe
         0lJDejPrgoAsuXg1IWto6PrCe6GUzUQtwQU1k3RsI1BldjZt9/ZOmP8DuxCyDYw9R1Kh
         CzUG3D8IZPos/ElwNh31j32OZGG79DEKqLsDOc0v3O3mZZJmKJ9oVkebLPVvGzUqJg5S
         NEs06dri/wXmr2/IEvFDhAQfZlL6gtSh3hiXAvd7WBouj8MYl3eWUSX9f9awU5RM9roQ
         CGWw==
X-Forwarded-Encrypted: i=1; AJvYcCUO1YqSuPr5wvEX7yqTbQLpLU7xRs1kIom3I5vOd4Ry9ubskCdFFUvNCHVeJOr8i2rMf9jRAFL/D0WV@vger.kernel.org
X-Gm-Message-State: AOJu0YyDB66+1tjxUY8y5XbhJZ1lFtLpw9gBNG1aUTcA4MohjgEF0sBB
	Hmq/EWQaRgHg2xLhpWGG/4LcODyyy2fxjXGHNGxTAzjBDKK3uF5Ic9H9yrYrP2e9OMtBXxujm19
	5mxJ8AWdO/qdf0lI09amR0NybRTqY6v57jQyMtRx9WjGBdlL85sDwsA3b2B0iYcgR
X-Gm-Gg: AZuq6aL9i6xzE/28qPeQEu//JCeevhPta9ce4vj382cipXrylGgUiN8bGoh4g37YUlF
	zT6vHDWpdecqXOxg5XsPkvi6atqaaCmSABGUD7ybPojiC0UD5p9VzP1sD0MFwfPq58zHPAitxSg
	cjqeZibmiXSrBp0ED3vtsQsvUluR1q1d5G4YvWP0lzbS6D1Q33+nH45Wcat3JdJ50IhiRrHEY9v
	Xjt4ThFmCkfZYpgyfCXfab+ZFMDxhmTRR4CjP4QwYu6irDtUZAcyQDagQCpGhe3qyNRF41QBckr
	UtQyP9PtRN/hMdBOy07hrom2Rn1yNuPo93E4GVxHyVDTwptgsrcDsXYFQqABAh6W0RDnFPCqwbP
	S1ak8CKixlUiHA7yWFaRLJcZ9OPTs7yILseumG4bXVueGJv6FLcVwPw==
X-Received: by 2002:a05:6a00:2daa:b0:81f:9907:e503 with SMTP id d2e1a72fcca58-826b662ebafmr2671970b3a.16.1771512494579;
        Thu, 19 Feb 2026 06:48:14 -0800 (PST)
X-Received: by 2002:a05:6a00:2daa:b0:81f:9907:e503 with SMTP id d2e1a72fcca58-826b662ebafmr2671952b3a.16.1771512493953;
        Thu, 19 Feb 2026 06:48:13 -0800 (PST)
Received: from [192.168.1.6] ([49.204.108.219])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a4316fsm26731201b3a.23.2026.02.19.06.48.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 06:48:13 -0800 (PST)
Message-ID: <84f46d61-ef92-4a44-9420-a29afabfb5a6@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 20:18:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/13] i2c: qcom-geni: Store of_device_id data in
 driver private struct
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-13-praveen.talari@oss.qualcomm.com>
 <3b9821b4-68df-4f2b-a384-912a2dc98bf7@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <3b9821b4-68df-4f2b-a384-912a2dc98bf7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ceffb3DM c=1 sm=1 tr=0 ts=699722af cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=SEi2w9hYDuVaAARFuk79KQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=bzct_qqClQXo_WY-SnsA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: aGgDys4eZwxujfafWRwROHtrWtYcthli
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEzNSBTYWx0ZWRfX95l1Ju3b7r0w
 C6zjSGDp2rGRjH8ClyyqThlcr4BK/mwL4f9iu0nZeSc4gpe0Goa4OO38jOAgqjOyVQaXu9nSd60
 +vygyR8vLN3OKJnvsUpjfK3LAt2iIwci2/4/5HiuR7pGEvCyppiblGVWcT4UpSDGK5lhXkwivfq
 J6ncKZ2jOBA2GjLHiOII99DTOdcPnxV2pgoHiOH7+bmB+SKElGx0TGKcq8fXMWtMlRzzZeofk2l
 E2iztobmNgSWXrnLDgg7WACWlrUG0hn52cmmpJorJVpTfJA/pFscj7j3Do7CohgdNmqf5h6heoS
 FbH88nBkJZwKsgNpUj6baLEIORqLeNz4TAXB311igCDXFWnInx8hawYaytf+fGywjOdZ6morZ9D
 ZSlYg4NC2iJ+mlTEjoBb0m4VUIdKEyB1s29Ki/jNxaB8Q8EDrB7iN564CDlUYpx6EK9HhfQkXeS
 hhhV4LvWKo9O+tU1qfg==
X-Proofpoint-ORIG-GUID: aGgDys4eZwxujfafWRwROHtrWtYcthli
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-266676-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D3AC515FBC6
X-Rspamd-Action: no action

Hi

On 2/17/2026 5:16 PM, Konrad Dybcio wrote:
> On 2/6/26 6:41 PM, Praveen Talari wrote:
>> To avoid repeatedly fetching and checking platform data across various
>> functions, store the struct of_device_id data directly in the i2c
>> private structure. This change enhances code maintainability and reduces
>> redundancy.
>>
>> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> -	desc = device_get_match_data(&pdev->dev);
>> +	gi2c->dev_data = device_get_match_data(&pdev->dev);
>> +	if (!gi2c->dev_data)
>> +		return -EINVAL;
> 
> This is an improvement, but you still need this:
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index ae609bdd2ec4..08e5a1917933 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -933,8 +933,8 @@ static const struct i2c_algorithm geni_i2c_algo = {
>   
>   #ifdef CONFIG_ACPI
>   static const struct acpi_device_id geni_i2c_acpi_match[] = {
> -       { "QCOM0220"},
> -       { "QCOM0411" },
> +       { "QCOM0220", (kernel_ulong_t)&geni_i2c},
> +       { "QCOM0411", (kernel_ulong_t)&geni_i2c },
>          { }
>   };
>   MODULE_DEVICE_TABLE(acpi, geni_i2c_acpi_match);
> 
> for this check to not fail

Sure, will add it in next patch.

Thanks,
Praveen Talari
> 
> Konrad


