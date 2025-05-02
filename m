Return-Path: <devicetree+bounces-173090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C01E9AA76A0
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:03:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2B334C06FE
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C548B25CC6E;
	Fri,  2 May 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B5azY2Vr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3509325CC76
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 16:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746201773; cv=none; b=JEg59Qi/eAwhPpaYPhSMIErMvrGkBT/Cr+uVwVezgPAil8BKBvadMF+w11ugKnhixDtpfGYTMzx+rg2U6VBnpaFnF/ahAcj8L1osJvbogiS8tNcHb2+raXbveH2eu/bxdVeaNImn2zO6xp8ScyTKsRcLzM80eNb2D/ylbBKQjxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746201773; c=relaxed/simple;
	bh=nt7pCl0xKFuZMbcsKuarhpz0f9X8gk1jA/yLJS6JUcc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KmxwGdQBBSoaEg9k5hXheG/TdsAGDY2TPbFcP3FEMHkuX/Stzvf5sI/c46kvifbjISbOyUdrm1I7kPT562JE0FsuM1w2dig6fa3iQjjxtGiNNoMOvNReGPcX6ewKyNVRsEI+eV7wpbFzqbaU6dxhlgrtOzPpRtJV5BbLRh9Yb90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B5azY2Vr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542DNoA4021121
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 16:02:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1frcGzb8hC2GYxGmVc0gjbhl3/lGMlADlvPYUqYXl2s=; b=B5azY2VrKcqp2fDH
	NNgpg0OO9B5W60hqqzqsEwm63kQBYjYPSdS+o7RSFap1rpNms/7emM4fRpIuqACG
	K1vA/G/mavbFcnsWm+vPe2fW387ntQCIKnwZ1yRkXphMgqInW3t0O0eLC+7Z9cy7
	uKzxSMRF1ZAkMvuN1mL4C35QTScS20khcdabXIHw0UvUduo3FvG21uk3ax2earkR
	kx+QaMoSQFt9hgrdSBCCit3G7kahqOKWSzW0Jyp4OIcvi68ssphPqPq5Rl5GHjyW
	UnZ5b/hW9YvmYn8I+NROs9bxTZZT7P1vYjsW8nEasQ2oFfCjC/SJxEy9V81CpAoc
	TGERRQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u8gp37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 16:02:51 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b1442e039eeso1407366a12.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 09:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746201770; x=1746806570;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1frcGzb8hC2GYxGmVc0gjbhl3/lGMlADlvPYUqYXl2s=;
        b=TAgWa6Xgue4uSUWeNUbDq8q+nJhiLM4D/li7bmq0lmby+FnZlIDgVt8GJFuBdCastN
         ewajCGYuYOuKnzlvo6ts/rXhLYsOozOyyht3G3XwLgJK7F6mui9jw8VX0WFCZeFpT6TI
         6oUygIBQIoLH7zKrGD3oGDie/Nh1x0pVXEZynLuWy7TudZP6FdSqKJ90ZnVfPvnZ3rsy
         kH3fuvHvUZ2o6tgn2dkep/RMG4IQHAf86PXNASH6YaMt42YuCyFXHeN8G1CY2GnFMRWM
         vDTjJd0IH480OCA6Fnv2rWhg7rBg250OjC8/GE23HTKXVXfK03MbsgHpvMXr8KSZ8mCH
         +CYA==
X-Forwarded-Encrypted: i=1; AJvYcCW+EjuhG7jtd/tjupZxcnfeAt9mJkIWmmHiNWhR2eMsTKDVP56KASUEHKFFnN/qU2i1H+OjW6SACFjV@vger.kernel.org
X-Gm-Message-State: AOJu0YwVW6WTusVGWyO6C+p7zAQJOI7lCYT4UkOwAxxMDBA93q0dTiFd
	cTn5RHytqlz43TfFYb07iLjR5DLojuPdPu444MwJnO9tjC/QTp21Rgj5XfBruntHWpmNsM54YDM
	iWZZI3r/Wmvgh+mADw0NjDB33x1Fkh9lvt+VVb8Oac2+lW941+gTspmx5Fhnl
X-Gm-Gg: ASbGncvdZ6K9gITnPc51Ao0DrKcZuEsw4nxvmrtFeIbeplK+sTWPahcS9XBqnGujhqH
	4FuR8hLlsiHHilLq7Q57TtUn66sD9BYmCpdjCqtvRtbIOm7sNkOJKqiD67qpUAXmRYu8KJYTtIr
	Bp1vzKa2WWoavHee9Z4jhUAWJrSDVzvd1Wn00VDFHFKcPYhY8uNgQoLJS5rk1WOcuro3zEJyhP4
	LOeEzay4K/AgWiBmIE6CZZiqaCfPrD6EhFgbjqrkQk5JuWNDmtlhx7lulZVHS/+K2VDft9raNdZ
	/rrnKJSY0F9KokFa8skUZINXVv1NU0uvK+kDACyInRFTBWqF193m
X-Received: by 2002:a05:6a20:6f90:b0:1f5:95a7:8159 with SMTP id adf61e73a8af0-20cde952d6cmr4451426637.10.1746201770549;
        Fri, 02 May 2025 09:02:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+5DGedS7lQxaiS0zztOhBE3vSAm0Y8qu2C3qMH794u9G4iH73tZO1pQYXwyOinkWDLCtVwQ==
X-Received: by 2002:a05:6a20:6f90:b0:1f5:95a7:8159 with SMTP id adf61e73a8af0-20cde952d6cmr4451382637.10.1746201770057;
        Fri, 02 May 2025 09:02:50 -0700 (PDT)
Received: from [192.168.1.4] ([122.164.87.156])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b1fb3920e67sm952740a12.7.2025.05.02.09.02.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 09:02:49 -0700 (PDT)
Message-ID: <41f0eb29-931d-4aad-ab8a-1cc725e9d30a@oss.qualcomm.com>
Date: Fri, 2 May 2025 21:32:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, bod.linux@nxsw.ie
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
 <ac8837b8-3964-40ec-84a6-e25aa06dda39@kernel.org>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <ac8837b8-3964-40ec-84a6-e25aa06dda39@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=B7i50PtM c=1 sm=1 tr=0 ts=6814ecab cx=c_pps a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=wj/iefQKNY9P1RSDfSoyGA==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KK8y6wEurEKhoEb90x8A:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: p6wUApQWkBcXqX9K202vXjR3KON4DCiz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEyOCBTYWx0ZWRfX1ndpUn/EJf9K i7Bh/bCtINbGOHEOhH/7UQKGn5Ef/DOxIcc0yGxFf28cUQzTKvuP44jOBgLqTVJS2J3YAz/psab aXOiL32rMKbTfcsA2IzMgCogkd6f8mZrZCC6gI1YRGwJ4YXwuCyNgna5nJYWHitWYqItirH4OPz
 aHD8Jc4buS0RV5KOcn/+svMOHguC4NygPHQa9daqBwZyBh8T1mygLF76ZvZvz53GXIYZUnt2P8P Z620lxsVQhN7TsHTHyRtcO/KhDkFHgKsngDFkjkQ72u2Ktx0fVj1iS//cjdIyv7ygqiEl2aB9OB FEFwY6kTDMRyaIMndj+hKsEFE/C5jtSuoqhgiIk+KvDFZ8TWnfNW9v51b0zMTilStmu3BgSiAxg
 2YsndtOX94/om21vVCkPJGRLWbunvR2Rdyk5oaUHZ+q7YIKQt9btvIVvarLP26zStaN9cxL1
X-Proofpoint-ORIG-GUID: p6wUApQWkBcXqX9K202vXjR3KON4DCiz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_02,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 spamscore=0 clxscore=1015
 mlxscore=0 impostorscore=0 mlxlogscore=905 lowpriorityscore=0
 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020128


On 5/2/2025 7:03 PM, Krzysztof Kozlowski wrote:
> On 02/05/2025 15:17, Kathiravan Thirumoorthy wrote:
>>   
>> +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
>> +					const struct qcom_wdt_match_data *data)
>> +{
>> +	struct regmap *imem;
>> +	unsigned int val;
>> +	int ret;
>> +
>> +	imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
> And how are you handling proper probe ordering? Use phandles and define
> this as an ABI.


Sure, I will follow the Konrad's suggestion.


> Best regards,
> Krzysztof

