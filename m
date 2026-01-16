Return-Path: <devicetree+bounces-256038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB94D3066A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E5B9030049D6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7646B37417B;
	Fri, 16 Jan 2026 11:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A6lb1t9A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XBr3fL0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8812A36CE16
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768563045; cv=none; b=LlCFyV0INAmMQDDZjbOSt5o6pV1I4lkiQqjqMGuKJD7l2aI6umbROFvzHPpUGQRyY74OFGt3ePrlvzEQtPBIavUyB+UpCxvbtSfkhNQxzalvqaTXFgWFXBD6PBvn3ZN5WMcjYWT322eeioqWANXbTx97ulEaaUIwsKvHkdqKJ30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768563045; c=relaxed/simple;
	bh=3KWe5LSI4X1XZHcAQp2ZWEXIf8v28A93JsZ4sD5N3Wc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZdZcVxqRd6IAPJ5gTgzRf2N+UGimThQkCO2Pzwgiff0vgpzgkZMo2RLJl/ca97ZRZL0VsBp56UYQez41Bg4pdAORFVnmXX8fQ3D570BFLrVsLNch1xXwYCe30AG0KwQLi3lcz2DVLGGjuiZ9l5GzJc9heVXTvg4eau4SRLmzuAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A6lb1t9A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XBr3fL0a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8HVsN1240908
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:30:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zq3RVbQZJj7c+ynI8CHvPgZnXJ5YtDGCWtBK2S8I66I=; b=A6lb1t9AldQMwh3u
	62WxHuibRxMYWl2H22iAgpO07DaI1MwDZRcJFo9PwBW9VweYIvAkPKvKzVtcmUj4
	fUqQOMi+QhP5oFb3t7qj05Rc/TkMG4H5IlbZpSZvQEA9TKvD6q8aeCmbkRcbg2bg
	KCWUD6CpBM36Z7MtTD5+vB6b0miVL640Afs82F7IFz7gqqxUtWcdVClNHnRe6CAc
	QiHD6Iv3KHdgyUjrZALUicP4yvXt26PJxlEkh91Z/9+/+qrCkpysgm94kUZvGBO3
	pulaOBuvFXaWSoZ+LDunMWTxAz/Xmuq2yj/yj7JmIGaELN+ci60JSWpAKI7FV3r9
	0z5GLQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96ssxmq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:30:39 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81f48cec0ccso1699614b3a.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768563039; x=1769167839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zq3RVbQZJj7c+ynI8CHvPgZnXJ5YtDGCWtBK2S8I66I=;
        b=XBr3fL0aauI/SUuTQFITUya51MNdWeByH92qmXK0BzEX9yGl1cobSNrSf/tjCdwo/Y
         KIfN1lBagWvu3KYP/IXt+9/CCXf0vje2x+xEJfGp5SBwdxjBPWhw9AUG5HT0rPRFQD2i
         CUrYQXlqamkkuZ1pPE4IAtb0yM/1rv76qm5BT+3NLSdMKKdoIU7hPjcScD8Bn/MgIehT
         FHEjNkyc11ZmBVycnREGJGcAS3XgGPjEpLABz9+nsoRrKcq2KBO9hkUhXSqh3S22uT5F
         2lpoWiVJjNcC0LNFGYj0hLirmqzhLVJlFlAv87jKgztRMKWV8eeq8BbwKp3Ey8YR4sI8
         Biew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768563039; x=1769167839;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zq3RVbQZJj7c+ynI8CHvPgZnXJ5YtDGCWtBK2S8I66I=;
        b=BJTmSw1bx/aJCAX1T4yPSyPBjZ2yetd1ryx/0rcrQfH8QQn31n+K4f9kV9g3ec9ZVd
         n76ik3adbRbbhQ3pq+Aqk+S5Hyv4UIWe6q233zifphWxk4bfKI9GdW7nRhlUdyPejjOS
         Uj7AjNv5GO00gZTrMmrWP1AbfvDK+X0niiFGG/uYwlG/KsewMk9kol/SC/Pd9+X1Vm+H
         mAY1VXbp8bMNMK0OdbmAh7uhkHdo4kosQccMd2xfC/ZkbzFJvwv7Q6+sSKoC/bVWuwQX
         CFmvh6SzSLxlAzD+GCV7mEJM17yDHozzak+RtiIjN8zeX121QsZrBCmDFOas1a78lSD1
         OzSA==
X-Forwarded-Encrypted: i=1; AJvYcCVV8B+FGocw7CJXbRbCHWpUpgmYeU0w8tX9hKjQ02/EIY290oZMPVpIClYMNQVutwBQn4I3t9dZE/a9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6yarFfZmNf0aKtyhovFX/aF64uqg4cws6kHRyCx+MUsBpi2G+
	hRxuIsbyQwyten6B9/kWMNeSyMFAFAGxjQtFilLvUNp11CXABJCRpBRVeoVXe/fZuPBa80sU7Mf
	aH/8QLjkuxxxbUPYslr/btcFSZVkETajxj+gJjd2gtjUY0aDrq+ZxRV37MNJ/235X
X-Gm-Gg: AY/fxX4Isi6zoDiMX+sSky1H4KoaBYYeJSfGlwd95buEAwfN3C/pdfCw8Wblqjyf/uP
	dbNTZabhF6pHSzts/sqmUGtCOVHtpD3ZBZJHqaDi2H1J8pt2K4HxKFqiwj5N3HqqJ0hg7KCTt+R
	+I6MuoDzaychIjwdCxKFQfBN7rK6lsBKGoGukabcJHiPgLQfhg3H+S393h5pJpJ5zmEHZrjhmoX
	UtH5IA0sStxl8ga/ungQGDgdCCQhRRkQzOZWdHIR+xNOTIYezu41Z7fZbKorQTfE/tLHFcSGsNd
	kdPLA57F6ybYBzl7QJIpWX4drhdkUo3TlpeEw+DB78jcXJtCmqInTp/wqxcatPN+DFe4sUbAp+r
	Ob0itZ1B3G2O6hph2cl6z1vNECgy47ZodTAXDbFkMIw==
X-Received: by 2002:a05:6a00:4097:b0:81f:3d32:fe53 with SMTP id d2e1a72fcca58-81fa01eefb3mr2523500b3a.32.1768563039002;
        Fri, 16 Jan 2026 03:30:39 -0800 (PST)
X-Received: by 2002:a05:6a00:4097:b0:81f:3d32:fe53 with SMTP id d2e1a72fcca58-81fa01eefb3mr2523475b3a.32.1768563038517;
        Fri, 16 Jan 2026 03:30:38 -0800 (PST)
Received: from [10.0.0.3] ([106.222.229.125])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108c275sm1892989b3a.2.2026.01.16.03.30.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 03:30:38 -0800 (PST)
Message-ID: <b6a89ccc-45da-a4eb-df69-29e80dbe3655@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 17:00:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 6/6] media: iris: Introduce vpu ops for vpu4 with
 necessary hooks
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Abhinav Kumar <abhinav.kumar@linux.dev>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-6-8d11d840358a@oss.qualcomm.com>
 <54b29b03-4166-60d9-d553-d0e655749da4@oss.qualcomm.com>
 <98481299-4db3-41f3-a974-d9d0075d92e0@kernel.org>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <98481299-4db3-41f3-a974-d9d0075d92e0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: gErH0WvumkQ44QYTXFhzYh5G-D6lytJn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA4MyBTYWx0ZWRfX2YadwL4q3UcW
 wfGIkUek67zD9kBBjZ3xvvrUGruMPBqtFMEvaiCjbYqDDceeS95ODkq0sjdiJT1yJ5lYF2A88fJ
 5F1EOkb1ePNm5pfodW4MVwMJ1bavEVUhL0YW9jZ6haq/vwbZiLqaNE1LgYBxvXKyPz0Q7IDLLe9
 hoSzksP3rQRoNqBZ/z4+z+RYoI9ARv5/ptz7CYpZRYulbrRvSrLL3qJkdK3lzzRRs8ZJyRwb4nV
 BLYcQsxSwuEv9Znz2L7DieGPi7BkF9/tgW/MQu2REb3EezN8SGlYYcxOpG/+00InNqAkYrdQtC5
 cReoXxOKDcyAm5M/A8TluuMfXFKoadt4YEVPUSc8C8a87EFpWAN+tbihFdq8lrjdJhqBO2jzPEY
 SEE80il5UUSfdMqyC+NSoz3/n/EB7258fzJoct6lZ1O3g0F0anbNP+gcNhNSwbUWFEWC4/lLuLN
 cPDKvCI4Kg0tgMtEJMQ==
X-Proofpoint-GUID: gErH0WvumkQ44QYTXFhzYh5G-D6lytJn
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=696a215f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=blWSk0AuXjsE0o78ys1YMg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uV_JhIySkRhv6rPy8r0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160083



On 1/16/2026 4:16 PM, Krzysztof Kozlowski wrote:
> On 16/01/2026 10:51, Dikshita Agarwal wrote:
>>
>>
>> On 12/10/2025 6:06 PM, Vikash Garodia wrote:
>>> Add power sequence for vpu4 by reusing from previous generation wherever
>>> possible. Hook up vpu4 op with vpu4 specific implemtation or resue from
>>> earlier generation wherever feasible, like clock calculation in this
>>> case.
>>>
>>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>> ---
>>>  drivers/media/platform/qcom/iris/Makefile          |   1 +
>>>  .../platform/qcom/iris/iris_platform_common.h      |   7 +
>>>  drivers/media/platform/qcom/iris/iris_vpu4x.c      | 369 +++++++++++++++++++++
>>>  drivers/media/platform/qcom/iris/iris_vpu_common.h |   1 +
>>>  4 files changed, 378 insertions(+)
>>>
>>
>> Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
> 
> 
> Thank you for reviewing this code. I would like to point that it took
> one month for Qualcomm to review this Qualcomm patch and in the same
> time Vikash is sending emails (more than one!) that Bryan does not
> review that fast as expected.
> 
> I do not find it acceptable approach to harass community reviewers that
> way. Even if you do it internally, not on the lists.
> 
> I think this review timeline is final argument for Vikash to stop
> pushing such narratives and complains, because your review is expected
> to be BEFORE the maintainer upper in the upstream flow.

Since these changes were posted by Vikash, who is a co‑maintainer of this
driver, I initially waited for reviews from other community members before
adding my own tags. We did receive review comments on most of the patches,
and I intentionally held back my Reviewed-by tags to allow space for
broader feedback.

Now that the series has been on the mailing list for about a month without
any remaining open comments, I have gone ahead and reviewed the patches,
Since The changes look good to me and are ready for this merge cycle.

Thanks,
Dikshita

> 
> Best regards,
> Krzysztof

