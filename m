Return-Path: <devicetree+bounces-212032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF38B4197A
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:00:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 05C967A9D82
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 08:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B939D2ECE96;
	Wed,  3 Sep 2025 09:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m/QHDpo6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9E62DF135
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 09:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756890043; cv=none; b=sT0uzXvJli1qwl+KTw7TJdOXYHnus33bXkoyPZoFVde/VqMshI09VYnBaS/9ihY4phZeQRyWADC69bysfOh3eb8M7SuL8lLg1G0doPTDLEvY2FiHE+sbNVp1QOLssurSaPQXEtkqLn8IVkx27o+EwNH1mi2TAJ09g045YBb7vqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756890043; c=relaxed/simple;
	bh=SbOOxV6Xe6CCn43EVipuJCMXzlrEjAWOJ8RB3sOYs40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k5jUA+r274cUEKBMqVykNbdX7gjmoh8Ap2NmNU1n3GNKmbAUH/vF7PS2G/Vul5L+BR+EH90tkIebTb7wo81gnk72iZZ3DMQkptaZdoONysar+9dpTQigpN37QH6yw+UVlP3OPnuShwnNcc0MDOWma1upluTbIJbSg7SoKUUqksc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m/QHDpo6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5831TCaP023427
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 09:00:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k+LEakHcMi5MUQWyBYBQ5DPF7nqZWUcEjlntDch+SZE=; b=m/QHDpo6ewiGGnsx
	V6Ae1JGQA5xNOELboQVqUHP360hdBoyxKuB6UsUSUzYLGVLIhdAQcbhAB/7VuTAQ
	sXKLF7bjKErAg0G/YpDnzQUMdqw0PgX4xLzHCfLoF2YnoxsQ5/hWC9ak0HloTQ77
	ABoxg0pMmRNe7eUog8wMsleDrOsreXlzKVkHheyHcq/dYhwAktK+4B2CQ5fsMU66
	gv92CKC4FcszhmM8dv+nHeQoKmiW2hGZ9TSE0ZS7CjCF/n2Tftct/TyIZblFF+Z3
	Hi9ICIFEq/lyTuoLybwtWuf15zeOsuSqluEK3tzOkYRB3RREZAlMtnRGZiqoXZAR
	CQ91/Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnpb3r1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:00:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3316dd5d0so71248931cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 02:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756890040; x=1757494840;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k+LEakHcMi5MUQWyBYBQ5DPF7nqZWUcEjlntDch+SZE=;
        b=GebyQaU4QXwfxfeLGfyNBfuRx+k6ub3f7tFGsMmtoT34IRl1hJLVVahSqAMGk39Ds8
         EQ1Z/VcmDeappKiXh+SU2JmfjLxlSXAiqtMXT7CyK8+6/+kvS3k8ecFADvT0pSfGKYLk
         7PtCcAy2Cv2+3xYGcZeZ5djSHURdRKo2AjiigI/Ilwbc51w9NB2hCQTQDgF/b4uMbM+3
         HDeEd1YY8oSRkwDjVI7F+4Z9iteXQEnVkY3DEnUZ5UaF8/RJn4J2x7YT5JhGE7imKCrR
         78BwDYzyPsZDszIYe1dPkL8q5+lkKp0HCmpJiCR+aqmbtr8/wxo+HVPTH4YSxTAuRFH0
         oiRA==
X-Forwarded-Encrypted: i=1; AJvYcCUtS4vCNGMmrPifCt0tq8eb9cWtp0gbu5HOd4lyBYXCLC8qpGugFR/m97J+w47CHqUpnLBwVA8Ydx4v@vger.kernel.org
X-Gm-Message-State: AOJu0YzlKwQ2NUn827RWLKH//lYfQe2JRAiEmU5f2y01cJJUYeesb8j8
	4J9JqZHT2r/MvkS6WCEF3sBHCzBKWfb1zHLZWRk5sUEgv/FsoZQAv64E2hC32seb6QIShKB3hYt
	dizr17OVKEQns75HqY4KoDUeW7lur9zUmorBv31q3HuQNp2Nvu2PRj/wZaVfORjqB
X-Gm-Gg: ASbGncsUwqp1+YjhYTSxYozIobTSajJElbuV3xtPLUcc9oH95XG3qaTVWRuJQ7b7Bt3
	kzsJe2zgoXP+8TkxYywhhNAbrfj184fHhqHgke4/ytfF8X54nBculFzG1T6dCpES1rSgvTGYwQP
	3GBW2Y8jOg06VH9jUltFuFIKIYgpcd1ysDpyr+KYkuoJXChaqQElqUq8HlMd0QMl8EjWwgfHU86
	aZz1g9nQJnCUQ6C8Ga52uIfYuVbf3iFSxVEXxjfLh9cVanVtL/1m2OY7UUobT5EEUClE0d9EA0j
	0zPPG71dxE/zdqGq9+rJdcx4DDW4/8/XsVuru+5XGFQUN1CZKkueqYBNleFHf7ODVcw=
X-Received: by 2002:ac8:5789:0:b0:4b2:d1c5:ee8 with SMTP id d75a77b69052e-4b31dccd8d7mr171353861cf.74.1756890039875;
        Wed, 03 Sep 2025 02:00:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEG1UDc3HGeDuXiKdWk0dURpTABwshxbMsyQ9pUNYSRcUghr0tBI4RwEEBCyMHDrmUtaG/ajQ==
X-Received: by 2002:ac8:5789:0:b0:4b2:d1c5:ee8 with SMTP id d75a77b69052e-4b31dccd8d7mr171353561cf.74.1756890039313;
        Wed, 03 Sep 2025 02:00:39 -0700 (PDT)
Received: from [192.168.68.118] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45b940bbc0dsm75958965e9.2.2025.09.03.02.00.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 02:00:38 -0700 (PDT)
Message-ID: <e6ae9e25-1a92-412f-9916-4c92676b8c5f@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 10:00:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] ASoC: dt-bindings: qcom: Add Glymur LPASS wsa and va
 macro codecs
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: srini@kernel.org, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250902140044.54508-5-srinivas.kandagatla@oss.qualcomm.com>
 <20250903-diligent-tunneling-angelfish-bae3b3@kuoka>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250903-diligent-tunneling-angelfish-bae3b3@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ALk7PYnoTBLH2h46MwxwASPcO9a9_5-h
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b803b8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=cQA_P7Yw0F7ou3pLjNcA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ALk7PYnoTBLH2h46MwxwASPcO9a9_5-h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX4+0dWaqMyjvn
 bBPl4pp/GsX8pekC1McjI9Ywr8ws/p5dmRceJGa1leZurJHkCwIHRvPj4EtIGeJvMJF1zvnDUI6
 6Tw+0vEbmUrZ6wEowEbMn0GMxYltqHzExgsog5qmWRyMR4MejPGCAEwig4pLTEibJjF2xphlvl7
 htZ1h/27z+hH0nQwGKsOSFWoTJHnaOTeBHAFvUGrRtk5OxjDdDWtT32qBLRGULlpfow9mCiD7Vn
 nH+9iDLjaf0rzmVzbkSsxD+BeMLenjMzLj2RH13T/GPOFIbATI0W/54bIGugOe0fJnyPXq8ydx9
 k9fZ64YJbsclKKoaf+x4HVXbYyf8Yptq738wDCLE5h4u60yrvWkg+YlIIU65rKMQ9PtnU6LqyNq
 D0Ji/8A4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001



On 9/3/25 8:57 AM, Krzysztof Kozlowski wrote:
> On Tue, Sep 02, 2025 at 03:00:42PM +0100, Srinivas Kandagatla wrote:
>> Document compatibles for Qualcomm Glymur SoC macro digital codecs
>> (VA and WSA), compatible with previous generation (SM8550 and SM8650).
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml | 1 +
>>  .../devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml          | 1 +
>>  2 files changed, 2 insertions(+)
>>
> 
> What about tx and rx? Not yet ready?

Correct, I have not verified tx and rx yet on this platform which is why
I did not set the bindings for it yet.

TX and RX codecs are using SDCA so its possible that there might be some
delta here.


--srini
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 


