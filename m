Return-Path: <devicetree+bounces-254065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA4BD13A0D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CE3F1304DDB8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 103EA2E5B3D;
	Mon, 12 Jan 2026 15:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I3F9IYhs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hu3TR2D+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACCBE2DF142
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768230818; cv=none; b=dXAElmtcq8OMU/zEo30kaDcgqh8y2bLCega6MAh7g7Qaeo6gxoxh2L/12yfZqiTnSF48ouWBE0TrqDymFPUNrHMLoT0+j/5YR5XRwKlsiWAzfdrdAnbHzLoGdtY0aTT2vqoJ4/JWqVShghTuXrho/e9rSErZP0uDbaiMBz+4xk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768230818; c=relaxed/simple;
	bh=0UWo+pLUC1yrtPmfL3/OOV7yzErSkMRxvOyC+KO1klk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pZXkoFgoIjGhsMbveSEJVbMLHtVNjH2Xu6bw0MKgzJ36HDXk0YiTX+oD4luTvvGBv9Qia0S0kOWMFIT0XZDFNvN5mH0vXCk5nRcGp2RbwNxrLx5f/cEQHk9ZuKfF8LMiE7x+W6VUygzEZk1f9j9gO4XHfmi7GrRZwns/S2o04v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I3F9IYhs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hu3TR2D+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C8qvFR113539
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:13:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zlf4x+4cK377f5G7eRgBQjOIGn5aPvmQf93PeiIWTvY=; b=I3F9IYhscz4AoCNp
	ujl3itPwoyrW4UKM0oZ4aKYU2rEf2RPxc4DAzzjq/FcfUonMrmlzyTGGkvWu4gUI
	mw0CzY3WT/4JtBvwFqNGO2ZBFEiE5cMtoen2tmIV7/mgLtkZ0UWq6oxEEZMqII3u
	y/S6SHdIqa0S3rWMlilhpcOSJNDLIoRTwvJ9KF04AmMmVsI+iQPgKZujfBW4leDN
	fz/bEw2TJ7TkVMMCM5rqRnbv7HDruFTlzXXLzip9znrHoOHIwHU5MzVWwNx1H+rS
	g5IdyAEF7Tp4e3UKYt84gztCRDZFo0IYVFEeT5Cqh7zfEe79QJFk17W1Zc3p1Lez
	hWqPnw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmr4uj6sy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:13:35 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so4648931a12.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768230815; x=1768835615; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zlf4x+4cK377f5G7eRgBQjOIGn5aPvmQf93PeiIWTvY=;
        b=Hu3TR2D+pdK4qesld2zgqK7QlGj42uBQB49FrOp5pHr597pO11b+YZx94ZoWj3g9bI
         kKgO/mIcgYmksjAZK8z+YB8irbTMhxk0Ryd5lU4DuXieSeRITW0rbRCdJDHWKa33HHCe
         +PFZ5vZsv64Pk5gvduvSjLLAFS/9Die1zB1xqEgshxTDTq1MYFH5Dy8OcBpfMO+iXyET
         5jUr1+YvBVyY0WdlITxrm5gJcF9EgPvpfmlGOI7/8MlOVwElBz1esAkAxwK2Q0kBBDEd
         KGWbhkG2SL+0wht6B+SpOjdWmJ0SL5qH2yVduO5puKDaVNfV3BLiGS4C/QMj4dbq1frd
         oDPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768230815; x=1768835615;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zlf4x+4cK377f5G7eRgBQjOIGn5aPvmQf93PeiIWTvY=;
        b=paSjkmgCmaA7gUPmYblx9FoJTyhKdmeTDbGotHiVVRBNHHJLM6ATpiPQLIcJG5YkEZ
         MPfg5pFYHE3XmOohVaayvrDJMSpmUiBQJHltg5ZMvdlxv2mAnqx/SVr4niwWoiEAza+a
         RrfrEgc1rHYV25zPoqEQPjPD/vUT05Pz6n90nH+WnElmaAibm3L4EE2KcBYvmC+gPPDf
         pwifU0/83RGP/VFToOVTQd5LJkvofgYNK3kFv0gaHmP2/gedvNXZhSxzkPDDT0LhkgOr
         l3XGVi4rlhv3YqPkG0uJVHr3NAgk/PA7ZdR8oSiUr6G27likDdEG/55OHWyCFAUfBuEF
         9Sbw==
X-Forwarded-Encrypted: i=1; AJvYcCVHf+nrMc0Qk9V0IMhZHKNkl6EY0tebR2ZX84+INAaSdMuYAkcXJDZHgBE1vwplcmzhfb6lJm/bdwn9@vger.kernel.org
X-Gm-Message-State: AOJu0YzekhjoLRMOku2w6p5n8KeGS/zAuRFPfoLEJz53gCZjvLzI/7ng
	LNZ+VUa/60dbl/IHIFssLMo0S08PBchd0ZqsTNC56XnNOPmn6TueI8+OIK0Agn4jyH6lr9Irs+v
	j0zxjZ1d7ls6HWddyi0OjHqU7l0dZ8rBevhGYGEPKRxP76Fn9huNd6Q9yemIrO8mp
X-Gm-Gg: AY/fxX4PNT0/1IJ+MoMKrTx1nFTpRA4cN/BKQlinb4WvEHAdwDiLIVWtoOivcUT0GMo
	KbftVuL3FcTVoCylffYUIUfSD2bMLQtAIOO7zboUW6mT1f2O/0guVKpNSQXLIZgYakF3Qf0tKCY
	uMMlAZqhCiHeVwHjken9ZPxGgrAfq8koN2L2KnbNS3a9lxu3uIzXjYt4gYDWjPzLRIkm9uAav95
	e4dFo0TT/eOBTGmzD065sukKg3GMOSjEa0g3oNGNEFY/w3ojJWl9DgS8y31jseZdlP9m8V6g/2e
	IkTnVql2cq898uODfGM4MYNWIodPVgc3Sfme+BuoT1sYHdqONa3qrZiZ4kWGYn9SGkh9Snd1vNe
	KX8lmrVTHuYcSItpU7/BPR0y2SZt9e53akzMBYoWdhl6/mebG60X04BmEZnBC1E/N4daEYmHrUH
	FV5JprcQ==
X-Received: by 2002:a05:6a20:9184:b0:34f:2f38:cad9 with SMTP id adf61e73a8af0-3898f976c60mr17212410637.53.1768230815155;
        Mon, 12 Jan 2026 07:13:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfJH5SUXUYgmd3eLYdA/CQDvTSNjo1V2jeY8ZGHh7pUTFSY/VvKoE/69kaJLls3lKa7NrGfQ==
X-Received: by 2002:a05:6a20:9184:b0:34f:2f38:cad9 with SMTP id adf61e73a8af0-3898f976c60mr17212365637.53.1768230814454;
        Mon, 12 Jan 2026 07:13:34 -0800 (PST)
Received: from [10.133.33.212] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc05cd9d9sm18753753a12.16.2026.01.12.07.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 07:13:34 -0800 (PST)
Message-ID: <bd9d1ba1-c70f-4220-a055-e05b579d4e93@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 23:13:26 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/5] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com>
 <20260112-kaanapali-camss-v11-3-81e4f59a5d08@oss.qualcomm.com>
 <f574665b-48e9-4bb1-8c8c-95ff0f7449f7@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <f574665b-48e9-4bb1-8c8c-95ff0f7449f7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDEyNCBTYWx0ZWRfXwbNWKx8x/g77
 zBoul5dL1Oy16zC/t59gE1vF2yZwPmgAiRWLyl+0KJB+2qJ6MF4BXXZjwuyZiKC+Kt0N97qdbpD
 hvRrga3m9Uq2almr3TGjpqJWxd3djicJgltC6KE3971lUCemkOg30D2SrPwiVyfWboMBw37q628
 RJV8FQGQUbcOp/J80dowgD7/BjMyjms2vEH9K4VTF572Mj5F5NAyQPaxCoC2ANDRa9WGXFdXzjU
 kCdEj6gI4BeKlwyfKh4fBTAxZ4LH5d/+Lbm5imWPIY4S5BIsy7hvlik5XEBuFyd97L8NueSnLER
 r70ZXCkN3SMqNvvYxcMeKc+/UTfH0peMzK8tBXFXKGbjdb/RmjB5CSsMnQJ8+oojSvusxJ0ZwN7
 2JTNAErEFgOTiuvdzdFgllyIcP9Jrf2R5foBPi9ixnspmuNcpmcjbeqNHgZXcqTJvbzZVrycsTp
 QZxSOpz9j+DcfcUsZjA==
X-Proofpoint-ORIG-GUID: 7_gLxeWm02qXl2IuWTC7fPNm5ATLfbFU
X-Authority-Analysis: v=2.4 cv=YocChoYX c=1 sm=1 tr=0 ts=69650f9f cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=oOBApU8gXxxbBOQQ7SEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 7_gLxeWm02qXl2IuWTC7fPNm5ATLfbFU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120124

On 1/12/2026 8:07 PM, Bryan O'Donoghue wrote:
> On 12/01/2026 09:02, Hangxiang Ma wrote:
>> Add more detailed resource information for CSIPHY devices in the camss
>> driver along with the support for v2.4.0 in the 2 phase CSIPHY driver
>> that is responsible for the PHY lane register configuration, module
>> reset and interrupt handling.
>>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
> 
> 
>> +static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
>> +    /* CSIPHY0 */
>> +    {
>> +        .regulators = { "vdd-csiphy0-0p8", "vdd-csiphy0-1p2" },
> 
> Please sync up with Wenmeng's patch:
> 
> https://lore.kernel.org/linux-arm-msm/20251114082649.4240-1- 
> wenmeng.liu@oss.qualcomm.com/
> 
> ---
> bod
Ack. I'll rebase accordingly.

Best Regards,
Hangxiang

