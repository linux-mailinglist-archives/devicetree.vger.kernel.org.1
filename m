Return-Path: <devicetree+bounces-248722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E4FCD5438
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:13:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5F4F53003518
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6843330C379;
	Mon, 22 Dec 2025 09:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LMUqUxpg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hovV45EP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E778A23FC49
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394777; cv=none; b=ZCBOC3WCjBYMVGldShuMFRfuCH9GyKQXki6ZOFqpyWi1UZ/Gu5UFJbPaXPlzxhxD+h8sADlZ992U+5ghGQZjnCptcYac33j0ih8FDVV7Cx+v8C8hNHs8DOOErFycFdt+OID0urYuSFhzqiGwhcOgQfLPPlPW9gVTs2mLriNGgzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394777; c=relaxed/simple;
	bh=mJB0BFyALQWxZ+4VhBMU3M1vYSP3BWFHWN5+yVQc5/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=spxx1Ce79OchZ5qlQXX3igGRPOOzvooRmopEtK+fwDscThLrPL4LNfJnVuO0Gnv2JGPoNSrWjl1pD4cy+tof2v1NfHhayjL2QyrX8n2hxrDzlzBPQHXpV8cxaP2j8N1sWOQnI/gzkufch5IfIFMiFqfcFRnVVAvFYoSFXnTZ/wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LMUqUxpg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hovV45EP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM5gEw32189759
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:12:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cwY2K98Yi/4JY/7MmT91JXv13PyCYygoqRFg2PiFWEo=; b=LMUqUxpgjb2wgnTh
	MhN/bm2eFGyH1VEb37aWcCxqKndbt/4bNLjREdQhKbFynIZvBpfRzVPz4ITDuETz
	HkD0wdyYkYZnyLeAG6q2d1bN3j8o1j66bFYR6NcWovrD/EJZB1SFesNc7keO619V
	eaiWu0sUnFHUyU9qDhTXldekEcZeBO2GovDCOS+V7brOoyv7fo4GGrOURBYxaLZ9
	FXMmL5L8jTfndThNLLJaPuIwY0wcoFmM3YEby9QEiStAUEs6WZoMi1gZbCmHBq3H
	xHm6VU/BEpjxi2+vFIvIdQv2LDbAzZHgWxg6q6yzigMSR/HnwfMevAVZozaFGcZ6
	G70/fw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b702t8m5q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:12:55 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a3356a310so101234956d6.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766394774; x=1766999574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cwY2K98Yi/4JY/7MmT91JXv13PyCYygoqRFg2PiFWEo=;
        b=hovV45EPT5FbyDkIx+a9ylnYqXGNEASfIP+zuz92IeMKh949aHw9W/SmhvNa6NH3SQ
         pRlfTE/GJ2Bk5HQ/BzjrJu0cqnGjlavlco0bH2hWDOmkOlRD3QgYNmKthLViP0QWJAOZ
         XLSmWRtw5nZHqDFfui3+HjXiIQ9YjTD3bHWMaSvWdgTQ4OWfuri8ibRzs2HNfQsw0wCC
         lUX1c5ZAockzf5CeWhqRQ8LjLnI2qiXki2zn7zbYXQH0kPnmDCt55BChkQcpJS1Eynal
         Adla9C0hSFkR+wPcpW54fNkGxHmv+mmbUTVJ95k5YdzU7v5q+rruTYXj2aeIKUQ14l32
         5kmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766394774; x=1766999574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cwY2K98Yi/4JY/7MmT91JXv13PyCYygoqRFg2PiFWEo=;
        b=ea812rK8kbrqzuG+y29Kzv73MpQ0cBPewiO59qv2+YMVDDpg/mrT+HxXSFQIOZNgKv
         xApWZ45kbWh1aojAoFcADcI+kU/vO6+8MY/DN4MqrDN0MC5GA07kYT1uwU9KU/xw0FO0
         icTd1f3b3CnKqhCnCP+7G2oIYAanu1nQvagQgdBStyiovwer73iizr8Ic77BnpWttm1o
         jG9LJcxaaEFFl7G0Z0TnPYhNwYGOMM1O5kqyrnQMt4wD1+Hk7U6sHwnH7635Xd/X63Od
         2ejJwvmtEajpDz4nt3FsAKCx5odLPtjOdIkICYUDmh90qO1M+aKAiRXZtMeO2vbMGdpy
         HshQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2O/XnqitEPZorV2miMaAGXg95X5oK5opn6JOMc8oLYp0mClKHDCtzGqTQIkYeEiLIDQlzn5aAVGXg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6IlENEDk/S52QoBTh/vpiLNjDFxRxv9OmTp091lv1mCk/LF1G
	B0JbPBEReNjT6RHI/Y+V0/1i65iCTjYIDL8+PiiNEIMFJsbk/HNCfZofIyVzwQqsd8FjmsWq3h8
	Vv+Kj0Q0LYdBFplyCgEpf6qHcpIU63hKYtbSz5hJ9NH28vDF0tKb9TDwHaT1KUWlY
X-Gm-Gg: AY/fxX5HHnG2xubH83Fa4ofgxLes1penVl9qksryKSHDeKV5+6cNiGY0JcKKw1yFvNO
	thOtQYTTM55MvDbOb3l3xSJWf/STwL8nf8HiDqZXh7fd0LMuy1BCJxFnO//b2pD4l2yOWNMYc+j
	R23mU97wcmrR1PsSXoNGYraVJQLyg3qaHg17YvKMHx8/BXDiDNlDsvu7u2Cvt883qqMk+MOzfT4
	Soecwg4m4f5T/uE7q1ZsXSbZi8UPe8TRiVR0QGEkglrswLaKvpWySPg04QMWbyaOfJGZ1708Ob3
	BlgbDuqFeUES8rlavON/KPkdgfWqEbYHKXtlEGWH+nOPSz/BEIvUwe9D1+mkWhn2Nfu2vIsM/1l
	1HCn79QG1uahSOQ3jJvvsy81qcwGR9N4P9ppBSmzPqTNdpZQdQpTtH8Ehn4muTmOYltV8DTuuIL
	i9RVyAQU8HrE3j
X-Received: by 2002:a05:6214:c65:b0:88f:cabb:b337 with SMTP id 6a1803df08f44-88fcabbb39cmr52330026d6.35.1766394774179;
        Mon, 22 Dec 2025 01:12:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGBurv4eHcwyfpCqbSeggQjL2+WDWRh3hwLn27M8pv0oLedwt+5VZ3ecuU47n/9XfM+vTu2gQ==
X-Received: by 2002:a05:6214:c65:b0:88f:cabb:b337 with SMTP id 6a1803df08f44-88fcabbb39cmr52329866d6.35.1766394773761;
        Mon, 22 Dec 2025 01:12:53 -0800 (PST)
Received: from ?IPV6:2001:14ba:a073:af00::4c9? (2001-14ba-a073-af00--4c9.rev.dnainternet.fi. [2001:14ba:a073:af00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd7desm2949589e87.25.2025.12.22.01.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 01:12:53 -0800 (PST)
Message-ID: <9965e114-43c4-4470-992c-1051ff1b7f36@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 11:12:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/6] drm/msm: mdss: Add Milos support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
 <20251219-milos-mdss-v1-3-4537a916bdf9@fairphone.com>
 <475izg5bi56oefqtqkvqeyspx2por66zrw4tgqbb3f2ziaghyt@tccm73sl2u2e>
 <2f3c7bc8-8c7b-4c47-95de-7a8ac6dc3c57@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <2f3c7bc8-8c7b-4c47-95de-7a8ac6dc3c57@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=SIhPlevH c=1 sm=1 tr=0 ts=69490b97 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=yV6z7m4MmXEbFVxmnDUA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: LyFpUYqJ_tkjZX-CYm8UItHdMKi4yVu5
X-Proofpoint-GUID: LyFpUYqJ_tkjZX-CYm8UItHdMKi4yVu5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfX/pa7iGkkm9u8
 2Qe9zjq4v1nJL7RSj2VkWUIE8nHY/20UO5UTYNRFFixzkXDPbArPkETM1bm1C5IlAXc3juKsKEW
 WKT5JoBkvdvle8km9k2JA7YLj80GwULhgVKTGSVd5vgGrEx9Siq8Ba9StsAyYgYpSTI44LDyHZE
 c5AgnIK8AHnx7+D14El1H0V/2psCX8dpmRuiVS+6HzfMCbxAu1EeWV6D1L4YT7gtKkBa3mNe3LC
 JnMkcE9S7VyzQgeVh4KoWiIvaLmlJB5W5eFL3JfuqrGAY45+aZqNVQBRhcya7T34QD/qdko9kAu
 +aRAN1c4cnMnKeLPVzeLU0Ev7zC6lWB+QVOFz25+ltUeBz9RrAwQzg3QWRWB+1NZ4aesTWQglVd
 L/QT88opZOgPxhrVdTMe+dJpBRlLcRsSAa3mHDULWQq8cv0UjKSsI7g55ye2VqYzP2ouQj+AM2p
 Oe+cWyKxFXz9CGoErTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 phishscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220083

On 22/12/2025 11:09, Konrad Dybcio wrote:
> On 12/20/25 5:52 PM, Dmitry Baryshkov wrote:
>> On Fri, Dec 19, 2025 at 05:41:09PM +0100, Luca Weiss wrote:
>>> Add support for MDSS on Milos.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>   drivers/gpu/drm/msm/msm_mdss.c | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>
>> Though 14000 seems lower than the value for all other platforms.
> 
> IIUC it's essentially "nonzero" or "first-level-above-just-nonzero"
> 
> The downstream DT also defines a 140_000 and a 310_000 point.. though
> the middle one is never(?) used and the latter one is only used during
> UEFI handoff and upon the first commit after (runtime) resume

If I remember correctly, those are also used for programming the LUTs or 
other big tables into the hardware.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad


-- 
With best wishes
Dmitry

