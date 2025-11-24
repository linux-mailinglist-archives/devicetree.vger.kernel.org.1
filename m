Return-Path: <devicetree+bounces-241598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 05960C800E1
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7A74C34162F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 234AE2571D8;
	Mon, 24 Nov 2025 11:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h8hXWE6p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SGr1O8f+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8956013AA2F
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982084; cv=none; b=uPuNNOkGYOKbU9GNcHvmXMXNMhRnu+ruhDcKeNbWCxs2LYUnM+u11YqSxNyNW6onjWjq4TpyXT00ErRS7dY7pl7+FTPvSu7XyY9uDOrZzmwjWFx22Z/Zrn2HG6FrGSYVookXwjHSJMkrN5Sg8+82Vd38KY1IdCQHyKDj/Y3O+34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982084; c=relaxed/simple;
	bh=kmWnFKuFNtcDWt9VYmAJ6yQ/jTKnqbkS2w3UokWd2XA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uC/KKsb/eSOvkFckz5ikPYjD2BcfFHcecOZKufO8MDAlrsA7gIEEOzRqAjU//kxBsEyoi0VEQtnASft3YmVxnN+n+FIPNUFzSiwquoWdeRCXzeStZr6lbJDzNfg9r/pNrSHgyNWCB+/Wlu3pfHmFu/jeZQGGN33LwvsFygTF5GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h8hXWE6p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SGr1O8f+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8RFJu1946548
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:01:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kmWnFKuFNtcDWt9VYmAJ6yQ/jTKnqbkS2w3UokWd2XA=; b=h8hXWE6p1UNJGR2w
	bJenDEb4N0liD4ovo5hL8e4kHmedUtZrPntvj9Lnp15Y748baQBPo/H/LLT6CCE3
	92+yxV6MA27NodhuYQM3WE/hWJwG+oWl6g+1dEBTJGSoj0sZKQCzILJgzqYyPp/y
	f0zBFNmvJFexj9BHEbi6SA4nuSMfolpuhxaJ05M4llT6ko5aQQAkWmkZHXyPtsq1
	h16o0RvHEwIeiAPLIIqvFtm4iLPMGLx41pDQZZBlNYiSztzQ1zmtGAwGcCDgU4hS
	Vi6zCNlEmDgRqxRp7T/AK1qK/eDFIsl+mFWQbPY3Dj7kllYqWNh8jiEjcJCmMVlr
	oWyMeg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ama099qu4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:01:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee409f1880so9414751cf.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763982081; x=1764586881; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kmWnFKuFNtcDWt9VYmAJ6yQ/jTKnqbkS2w3UokWd2XA=;
        b=SGr1O8f+rHJFfjPFDNjoigwdi2Jli74p6ClpprZpm8qNwNekCHm+eupanKqYH742NZ
         K0lQwfnjf3uFphpYFBu3v2ervnqpux1JX3JJU4Iwv3uNAxIxA9bNWpnCAcKAv7k9GwLA
         QU2RUj/tl+eZV5QHMq/UAkkj+JECPMNBQvlQVmk9TOXaI9IYrbDAEoVXSfrguvycu7jv
         DIApftNbDXJf+yCk6Q33KIMMWq/9ttCpgeVVic70ICF1y8xUfeaqX2bQg9UTCUMNJ8XC
         fS1js3Bxz7Fz6gJXmOKMIUqZxhKIA0yCH+Wom6PRjxOCK9qiHwSVIMs69vQvlcqBISb0
         /giw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763982081; x=1764586881;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kmWnFKuFNtcDWt9VYmAJ6yQ/jTKnqbkS2w3UokWd2XA=;
        b=XP6ZiPSuCjl/+bBFe+ygoM+2GBfwa5rhPky9oMMDJJk2p7vaFVe6uo8CluGLnFuh/Z
         gs9YZ1j8EM6RLUmCB9ZzM/z0Q95qkR8TMH+QL/EQ3a3ViVL1hxpKTSPZz28VYuBPlJpg
         29dK77yMTupwmmmT0qlhY7uGZXkX8RlJlPA1tIOmHXfsV8icI5bSGZ4PEv2LeaTD8Pu8
         zpdpUCWQBKto1LFvqBN8FyfGCMQIUB3JuRUkppu7FMlYTjG7Qxb//jYGA2ovySI7ts1f
         f/6GEA5mtcF8lLwSfoAbGrgqg09/8M1Z3GNqA3Ssf6iiZ2MMDOcPdU0tA9ET/9wuaTY1
         TVwg==
X-Forwarded-Encrypted: i=1; AJvYcCU5EV9qtgxLwJvmZPG3T/sWIwMSeHTTP/PxgQhyDXaidmK81jBnF2D7Cg7Sz6rn8VtZcuys07A8mjkw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5McEaDcziPvnIxHHZrwxpUu7J3NiDCkb7o8gGhl20ieoWVZAt
	ToR+CynWfjmqoLxswKXN0vJs1knMwQPGe0s3poZfyoy23w9Q32TXrko9VoEwWZxoyT5AAfdgK5S
	Iln97M1aHFbsf47NRN+MN7m/5vUvBo8FgPTvdXFB5elUkmX5rwx2XdYdILsqRt9qi
X-Gm-Gg: ASbGnctrfouMjAiVdi9ibChKd+XVgd6DhwiUpfsIxdInvAxMg5HJBrSLyv3OQxjFuDM
	B9dXHg01naLBMyBx2Mdp14iO+5bVZdQbK/5j9iDwypVZ9uR2im75COZl0zTErKqGDhZs6JwkD64
	OYB/eWCVlApZjevM93XUqqtv++XZGU7RwvFvlywv3RmKsrGJHc5+4dclIGS/IP5lGmGuPe+ByP0
	Jd0LXQbC/KeFm5ydJgI9t/nSQR5VDoRpOKKsMcn1hyqie5kxa/8uFvJyFyPj1LPzsErEW8c/jFF
	zsiPcM4SbLFNUAUVC3kBBJmC3yHL28xdIXJNcwN+op9G4RUOkud8S0ukBSBZBUkBwrP2poiT8xL
	Y4eceJSgzZy2AdRxagdm8cLpmqqtcUZhjOn7OtN9DpE+Y7cojyhaRrcy4MeDOI6trB9Q=
X-Received: by 2002:a05:622a:151:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4ee5883a43cmr108927981cf.1.1763982080623;
        Mon, 24 Nov 2025 03:01:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGL5sXsmRBw0D0XCsDUFrVI+NEx70UqgwcK6a92gGa0RVxZdcHmClSbnmd1vrTkeOCIyt+AMw==
X-Received: by 2002:a05:622a:151:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4ee5883a43cmr108927301cf.1.1763982080014;
        Mon, 24 Nov 2025 03:01:20 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d502fasm1245441466b.17.2025.11.24.03.01.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 03:01:19 -0800 (PST)
Message-ID: <4ec493de-10d9-4a0d-b00c-d6e0f3d92b34@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 12:01:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: x1e80100-vivobook-s15: add
 charge limit nvmem
To: Maud Spierings <maud_spierings@hotmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
 <20251116-asus_usbc_dp-v2-5-cc8f51136c9f@hotmail.com>
 <378c611b-f8c6-4f89-a3b3-6d8c22445e83@oss.qualcomm.com>
 <PR3P189MB1020E7393F72B285173137A2E3C9A@PR3P189MB1020.EURP189.PROD.OUTLOOK.COM>
 <ff773af3-d843-42ff-b4dc-e5a9d85c2285@oss.qualcomm.com>
 <PR3P189MB102003218DCCE87EEB69A0E4E3C9A@PR3P189MB1020.EURP189.PROD.OUTLOOK.COM>
 <57bab427-d8fd-490d-88f6-358b79367ed1@oss.qualcomm.com>
 <AM7P189MB10093041E89777C2AFAE2CEEE3D2A@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
 <d6018a1f-12a6-431b-9367-65c65e1d920f@oss.qualcomm.com>
 <AM7P189MB10097E44F277EEC068E4B847E3D3A@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <AM7P189MB10097E44F277EEC068E4B847E3D3A@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: kVuAE36F5FFpPeT38ExJMTYeuCuTBVGl
X-Authority-Analysis: v=2.4 cv=PdHyRyhd c=1 sm=1 tr=0 ts=69243b01 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69EAbJreAAAA:8 a=EUspDBNiAAAA:8
 a=b1RjkcaNCWOaYSfdytUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5NyBTYWx0ZWRfXwAkF47yVfKfn
 nHevtsjOl86dc8VTlMhVgrdS/sh47/gAfctAeIVsuYn5AQ16V18sah7vMjMQX27rzf49IpzKYXO
 J2pcThZX1wPXD+lPO1Fm0xKgD7dpPS5l9cR+6ZtGotgsWNOtn9vP2OhaZe/ZryuFwslI5lDuv/N
 A3Aj58gHM8X24Zl2fF92fqYkkJhSRFah9xt8bxR0A/CudUYNkxbHwkfW12p68XDeh36rbadHiIo
 LEqDlocPI+k3HC1QXCx6bGapn44TQ/W9frVi9OblWmbLqXZe0N6UfFjI8yvvwoBO3kzv/nEYB2q
 k0WlSEeiGAlvrNnq0W0f2OsGtILCeZX5Ed4ZfkcLppLpvZlaKgIEC947NWN0u5R6tWiNaIrl9y4
 L9MkCmBj84HFyhlr+NlmqsIdndZcZw==
X-Proofpoint-GUID: kVuAE36F5FFpPeT38ExJMTYeuCuTBVGl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240097

On 11/23/25 12:03 PM, Maud Spierings wrote:
> On 11/22/25 14:37, Konrad Dybcio wrote:
>> On 11/22/25 12:07 PM, Maud Spierings wrote:
>>> On 11/20/25 16:36, Konrad Dybcio wrote:
>>>> On 11/17/25 4:44 PM, Maud Spierings wrote:
>>>>> On 11/17/25 16:35, Konrad Dybcio wrote:
>>>>>> On 11/17/25 3:13 PM, Maud Spierings wrote:
>>>>>>> Hi Konrad,
>>>>>>>
>>>>>>> On 11/17/25 13:59, Konrad Dybcio wrote:
>>>>>>>> On 11/16/25 11:52 AM, Maud Spierings via B4 Relay wrote:
>>>>>>>>> From: Maud Spierings <maud_spierings@hotmail.com>
>>>>>>>>>
>>>>>>>>> Add nvmem cells for getting charge control thresholds if they have
>>>>>>>>> been set previously.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
>>>>>>>>> ---
>>>>>>>> Have you verified that e.g.
>>>>>>>>
>>>>>>>> connecting the charger
>>>>>>>> setting the charge threshold
>>>>>>>> rebooting to windows
>>>>>>>> rebooting to windows once more for good measure
>>>>>>>> rebooting to linux
>>>>>>>>
>>>>>>>> still has the settings persist?
>>>>>>> Hmm I have tried several things but I can't seem to get the values to stick. I the spmi-sdam driver is compiled in, I am not quite sure if I might be missing something.
>>>>>> Hm, I wonder if Windows/UEFI overwrites these values or whether they're
>>>>>> used by something else..
>>>>>>
>>>>>> Can you set a threshold in windows and see if Linux can read back that
>>>>>> data?
>>>>> the values in /sys/class/power_supply/jada-jada/ are zero when rebooting from Windows into Linux after enabling charge limitting in the Asus application.
>>>>>
>>>>> I remember my old vivobook (x86) also forgot its settings each boot, but given the nvmem cells that should not be happing here I guess. It is odd that there seems to be no collision between Windows and Linux. Maybe the Windows mechanism is doing the old trick of writing it in there every boot?
>>>> Odd indeed.. Does it work if you reboot from Linux to Linux?
>>> It seems not, I seem to remember testing it quite some time ago, but I cannot get it to remember any way, at least it is not popping up in sysfs, always back to 0
>> It seems like the driver currently only populates the sysfs start/stop
>> values if the "enable" bit is set
>>
>> Could you check this (hacky and wrong) diff and give it another try?
>>
>> diff --git a/drivers/power/supply/qcom_battmgr.c b/drivers/power/supply/qcom_battmgr.c
>> index c8028606bba0..9ebd8adfb8eb 100644
>> --- a/drivers/power/supply/qcom_battmgr.c
>> +++ b/drivers/power/supply/qcom_battmgr.c
>> @@ -733,7 +733,7 @@ static int qcom_battmgr_charge_control_thresholds_init(struct qcom_battmgr *batt
>>          u8 en, end_soc, start_soc, delta_soc;
>>            ret = nvmem_cell_read_u8(battmgr->dev->parent, "charge_limit_en", &en);
>> -       if (!ret && en != 0) {
>> +       if (!ret) {
>>                  ret = nvmem_cell_read_u8(battmgr->dev->parent, "charge_limit_end", &end_soc);
>>                  if (ret < 0)
>>                          return ret;
>>
>>
> Nope still nothing, there is one err about "failed to send synthetic uevent: -11" during startup, but I don't know how relevant that is.

Hm, I'm a little puzzled.. It may be that ASUS customized the charge control
functionality, but I doubt that

In any case, this patch should let you limit the charging bounds within a
single boot on Linux, so that's already useful..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

