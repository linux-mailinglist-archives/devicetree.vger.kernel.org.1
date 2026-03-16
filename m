Return-Path: <devicetree+bounces-276104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCClBmHit2lDWwEAu9opvQ
	(envelope-from <devicetree+bounces-276104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:58:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 00642298599
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 67F2B300C336
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A6271A9FB7;
	Mon, 16 Mar 2026 10:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n1EuqDqU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bov2nNIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C18638F248
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773658717; cv=none; b=gf0XgTUwtB3yA2T8SyR9mKuT1CKVY3aTZZKidVl+1vBqrU0gnkWQvQUigMnl1ZcPySv9yMs6GJKKy75hmH72QadebCp6DfnEKB4WTPdY5YITRMoGU7P58eycTZzz4ecJ1CS9xeUEBnwoFvvMdcFkwwKePFY4hVyrl97bbv8iWrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773658717; c=relaxed/simple;
	bh=3lmRRGmBoVA8sV3x08L17KDSoA6WDoBOETeBfd3kmNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cAh6cAhFul9OttnFwPFgxdPM0sJg/M6Umu1/i4HZIQNzD7TJTdkIgWA6MBXPcHTFK6O2j2rRqSqbYofdyJ3UZkT6aRrarEWbQ89vda80DjpKVC5DHCY6UXkJ+ovyg6Op4wbOCl+eOb1YPTdCo7Uj75LmHiHfiOlKW5It+sZVy9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n1EuqDqU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bov2nNIO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64eYU1282091
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:58:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3lmRRGmBoVA8sV3x08L17KDSoA6WDoBOETeBfd3kmNY=; b=n1EuqDqUsnNLyT2n
	mp4eU06qOVxKTbUSTLZXtEOoT30hLYdu4+IXTG9duifStyq/O865gmauvlaf2ElC
	XGsxmrGftnKF9AhQFsVsi7I6OdMwUdim6+ujro2ekgfuDgi78E6XvhXqlI3pPR7e
	db/aejPz7ifI4F8ZgRhTxJdl0lotkchtb2zmSdIeV0+BmG8UaxgDBjQmSR8TQkWY
	TomVAfXiIUuZaS3clpT3KXOMfW6tysh6SjxZl4GFvSJ9+HD8IzDJuZHTM3jYKrfk
	S3I+ZtfriFIweDflDiDKjedSx63FXK7lJwkrWsTOlLvqXk6ewElTE9pcGL2fQcJ4
	qJousg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyyc57y8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:58:35 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8298150caddso3790357b3a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773658715; x=1774263515; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3lmRRGmBoVA8sV3x08L17KDSoA6WDoBOETeBfd3kmNY=;
        b=Bov2nNIOU1CsrcIFGLk7zYUBdO7XIWQ/iz93IzkQ+f2L1k3YgyYNCs5ZwqDNnsP7Ne
         jUYLkxuWZe+B7AwpB/ktQW5jW+soE/S/JjEKn5hs35POMp82VaCeUczcvoEXXf3eyz+Z
         RcFCDjSxcqvYwl/wzlxAHTwPj3CjdEo47ZhzLWxITbptZiJZhzT2Poelhr4NYROYlgQT
         fkrBa/3u9hxAsFpbQJMxaDY5JYHwdZeddqte+PLw7Y3tuVkw3V8qH8ZkXN2Pjuyc0SLh
         L7w2b25lVtH40S6Kl4DSpQ7RYT5/RQOCVWoU8G7J7UcCgbqT/oZwossbi+9jJKxpqwxH
         t58g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773658715; x=1774263515;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3lmRRGmBoVA8sV3x08L17KDSoA6WDoBOETeBfd3kmNY=;
        b=GipgatV4hB3iNiWfb8PvbJPfydEkReEcLQBSp8pnR1OMb8s8BOsVR5NYAOQ66sR3iK
         2G+ArV1A4hYgvoxHPFhLvFWhsb8irShOw2Fi2ml+HttGEb6atjlATOnDohRi2pi2ceJx
         MFMRtf6vpF60MFeN3KAwC+KCjIL7b4dV6SkOMSBUoURC2n8tWeZwqDdPth37z6VR4MtF
         8d1/v6+cM6XQCwV7tO7lTpHz1T5ZRMhR53c2DY6WVvircAuqTNfH2EVvyfB8zSRmOLxA
         cY2TORnhvpFIDbhkPhFYjgLy1oouGi1VT8S8FGdeGG0utvpdvKbpWnFryL9X9lochfpa
         +uDA==
X-Forwarded-Encrypted: i=1; AJvYcCWbwV8UOphfwZs+9wfUZZqEuDWGjF30ve/wadQlrGQy5XLYQn11oc1V+BuSCfJSOwJ8mC/YI6J3m+Qu@vger.kernel.org
X-Gm-Message-State: AOJu0YyymtvvWjL6sn1Ovm+nJG8kqib7AnZfuI65Pixv0OCVGczmPYsM
	Ii67v/SNGlHQR946h3/FeTPcWVUL3Inuw0rYZBB3LXqgm6eBWCZN5RQi8nQCDrXtF79gLnVWxbA
	dVLZSOTUkQSZA4cSv+TPrbv5juFwKPFqNBRJnYK2LjV3n59lx4Sp4qHHPeuw//hvn
X-Gm-Gg: ATEYQzzKLQeNY01mHN+wwriIR/NGG5Pia02RDzvsae0FDYKjsWev780iXallfBxaNY2
	opoJWGg8dj3gW1ulhe6gqAkxCX7FfUThNo0KhRtxdoGSgRcysJzam+hHZ9z+w47kTVhSeJCR+pM
	OQs+aoU3OPX34xyDMOmo1Bv2YOTQrtJydf/vzANIJHyI3s1boG7h2VLVtgNXp8RbCjpA798hplN
	SXTXZmi3xepgr9Sw+zOFRgeqSriIRAaTarGXTZrehqi/1MUEntriz+/Qn6eHgLTUIyy2vQIrw4P
	lMNBpmCALsfUDaAav3hQeya/eTvMN3lyU7yhlgTwZZRtR80/I/d2xxaQGnZhx+yTuBicD8LrZYQ
	anZlOjVzRxQhybfB5ZowDo7ynr5/QCBZ5bI5ybcUVMs3zbht535oNmlF0PJRdgnH3Ow==
X-Received: by 2002:a05:6a00:908e:b0:824:3bd9:aac6 with SMTP id d2e1a72fcca58-82a1970830emr11249607b3a.16.1773658714580;
        Mon, 16 Mar 2026 03:58:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:908e:b0:824:3bd9:aac6 with SMTP id d2e1a72fcca58-82a1970830emr11249570b3a.16.1773658714102;
        Mon, 16 Mar 2026 03:58:34 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07366974sm13390277b3a.48.2026.03.16.03.58.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:58:33 -0700 (PDT)
Message-ID: <384f366f-b2b6-4bdc-a2a8-ba86714aa094@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 16:28:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] pinctrl: qcom: Introduce IPQ5210 TLMM driver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-4-fe857d68d698@oss.qualcomm.com>
 <05a1dcfc-7df1-4b20-a504-468814a87b3d@oss.qualcomm.com>
 <1eef0fc0-d33a-452a-9da5-3d0903b1712f@oss.qualcomm.com>
 <c89449b8-f28c-4364-a1be-5267f0d99c01@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <c89449b8-f28c-4364-a1be-5267f0d99c01@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=euXSD4pX c=1 sm=1 tr=0 ts=69b7e25b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=f6eOa__KeYMFnH1f_rcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: bg3EwOzB6Jdz4GlAy3K2dHpuCxRAGIuN
X-Proofpoint-ORIG-GUID: bg3EwOzB6Jdz4GlAy3K2dHpuCxRAGIuN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MiBTYWx0ZWRfXx3tAy/PSlVca
 HFV0kPi296ohDibsI4HlQXnceIK6RWHQjHzCms+oThxHlhP4X5JAGjiVd/4irXwya25MvKIA4YJ
 WpFjCF9qg7xxuuw0R5obMO4ngF2oAtSd4/5aLJeEG4PpXI4wM8E/6USH86eYYeSuWfzCn+nlk9D
 KhTM4Q1e8avb77K6768lHjxuRfXeWohF+MsudnDXpHTMdQmyeSMRpIzJbrTPa3l0sjTniG5fehk
 f0Stqr/FE7JTgoqKh7lOdGZnqOAf7uv+HYk7b7rNKirn5rtyHXckJ84Eax0tfuzjdJfug4fwODF
 I4B5g4PBVw7o/qdfJcMR4/OJDls91GF1gtgqWRppJWhHrRLJJq84fMYhrlzCsAPnxSto4fazHX6
 MdK3vB+L1ntEalRmmykUX0FnIEIHPtEyYqOv7ZsLp9UMmc8GPzPWyjnUW6sWPGORaGqVx7xxu1E
 dAW7gdmOEZ+78Eg6jdw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276104-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 00642298599
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/16/2026 3:16 PM, Konrad Dybcio wrote:
> On 3/16/26 9:58 AM, Kathiravan Thirumoorthy wrote:
>> On 3/13/2026 6:24 PM, Konrad Dybcio wrote:
>>> On 3/11/26 10:45 AM, Kathiravan Thirumoorthy wrote:
>>>> Qualcomm's IPQ5210 SoC comes with a TLMM block, like all other platforms,
>>>> so add a driver for it.
>>>>
>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>> ---
>>> [...]
>>>
>>>> +static const char *const Led00_groups[] = {
>>> odd uppercase
>>
>> Yeah,  in HW document also only this name has the uppercase. So I just left it to align with the HW document. Do you prefer to change it to lower case to maintain consistency?
> Yes, please - I would assume the original author had made a typo and
> didn't really intend to have a single random occurrence of an uppercase
> letter

Ack.

>
>>
>>>> +    "gpio23",
>>>> +};
>>>> +
>>>> +static const char *const led01_groups[] = {
>>>> +    "gpio39",
>>>> +};
>>>> +
>>>> +static const char *const led02_groups[] = {
>>>> +    "gpio6",
>>>> +};
>>> What do these 'ledN[012]' functions represent? Are they muxes for
>>> getting activity/status signals for eth/wlan ports?
>>
>> Yes, that's right. These LED functions used for the eth/wlan status.
> Can we better group them, e.g. into threes in 'led[012]' functions?
> (or whichever way they're coupled?)

Ack.

>
> Konrad

