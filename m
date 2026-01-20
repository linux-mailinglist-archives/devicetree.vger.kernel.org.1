Return-Path: <devicetree+bounces-257208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6105D3C06D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3AB21505E0C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 07:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD07038E106;
	Tue, 20 Jan 2026 07:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dVx2MO8D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iIvMPRGc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C7E3876D8
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768893274; cv=none; b=rXqBkB0j/sUL8blNAWRUweHP3zREgY0+rTtjPzNO2YW9zIF/UHNhmO8bCb231KbMCchmqZPHy/6LgReNJA8OhcOdwavHjQ+2ktutULYEh5diZzz7E9URFJsb/I8gIrmgis5qSTkG2g3ODm+oXV2b4XaGhVu4L+dF+ThJ0P2VwZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768893274; c=relaxed/simple;
	bh=ItytFqBspuQoRyHZM+vKpFJFCBMwJ8g7ILTs3IO0lN4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A2Jbmkn4z2tvYFhEC3Nt+kvmu/C25+BQENxxFLYzUnVpmUZoUKQ5oGYXtRFvsjyEIlvOd2RIOMH7ClbgJuQG7MK+6EGtBD6X1xxsG/0et9Du/EdYeXux0ty2LwhjWCIMdPyWN9VbUhkWqx4i1KBdqax75Tn/2r2fHWZv8uhaGjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dVx2MO8D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iIvMPRGc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K2D8Jv1347458
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:14:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ODRG3CpECAB8QETWTYVocJq9do1PHXzWAo6LIsoH8YQ=; b=dVx2MO8DkA7uq6qb
	R/EW02Eo+VaoC0HAvB84a10q/W3NVLWSReg89E85P/j6cyWSPfc1i/GyJ7leVb/d
	NLXolCoSF+BSA7LEFdoiE4YlQWsc+/FeA5ZEryyVujHRuw+2ZW4yABYXvmoeBLs2
	9FZaYW+XN/74HqAwjY2j64bbmTlpS9xqDxftpFyAvoRuyLwKRjNuBaqKVihrbfFj
	PDMOXRVioOr45kLwZhGH1u13qArLPsjiETwQv2bEqlYh7VepRSXpKpyw06GRYU+7
	3A/cjiJbCxOXpFwU15pE8sWAsVRA+swdSL+r+MPCX32wNn2TvVPN2V2f1H1oJu2k
	P/We3g==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdja4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:14:20 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81f3fb8c8caso9715439b3a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 23:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768893259; x=1769498059; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ODRG3CpECAB8QETWTYVocJq9do1PHXzWAo6LIsoH8YQ=;
        b=iIvMPRGcw637U2wYL0tOSI5AyVU8HVDYYQ4r23BCvtO/vxEnHOAMiug/aSyC7qtB2+
         DrpCJbBnxLQJ/jYotThGTSnHbpiCZYMpWdOEYZiumr57ntFL+zK6E82YYAIZsBp7rvRo
         J9rJQNkEw/YV/WgSFczNZny1yDlQzWItYG0LXq16Ez9rNDpaWrQTP//XTxK20LouXPCM
         qbD5QwHRzZ8si6d3wxMgF110scvX4wo0LsH0qgnPOIJCVVuG+THcQtaMHz8YNYVUgTfg
         nn1xG6GmL+ba0k3qC3fpXGFIZ1h5EFHZfmHzh9HMLvNwVIENep+NsTa3pUnFdd5sNWS4
         2nqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768893259; x=1769498059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ODRG3CpECAB8QETWTYVocJq9do1PHXzWAo6LIsoH8YQ=;
        b=PPsSOEv3aP8MG9H37irxdKn+Tu9x5s7LbNtHVZ6FTLCNbksAqztbJJ0Pt5o7w1Ct4L
         iJAnAN+juFFaeQmP8dAUYsEDeAw5yhMJuy5O4xQ7Ww4Pz1gmrCwYUzzE1Yu4F+7/zWGR
         k/Q+NDmjEaK+ObkqcxiVuQV93V8Nag5pgTH/JUeHrs3qHtPwgk0+T56cnKk/L92mKkZj
         ekxOFMyoSxn3RKeMeenaqh0Wmuf49NZTur0AOl5L+i3cIQh8wn4pcSPChKOFGd9n2G5Y
         cWJk2cvZi9yTkvo3haYX5aJsh5b0RPdXL9H1sDE1rFZzB/d0ClGsaYVd4QN2apu02bo4
         lPGA==
X-Forwarded-Encrypted: i=1; AJvYcCXaoEna9EpufOkSsDX3FrMtkdzS3WR7c9mf+GixpMt4mmDj1rEByOS76dP/ERO25xQxGk+5YdjYpgSl@vger.kernel.org
X-Gm-Message-State: AOJu0YxlR48bfd+kHn2l/ZIvWdegYpa55EhVjJZfeWIwqmrV7Ywoc+hH
	ubTx6zNsdASq5PTYTpMfp+OmbNGDiw38hy1C05aq2dPEkoAsXdN0ELcBadod5Adf9Zoa7ljHyrk
	PUnLTrVFB/R1n+/n41DzI7p5We1m6zXB7kQraYCW/UDvp+A99J82Iy1Wyda+sfOhq
X-Gm-Gg: AY/fxX6b10jGSi+DuzW//WukukUUVLQjoH7HincTjV5pQOOrNsbzhpsooBPgYNR/zAx
	j6FQ5BEL+indh8eZaITtznyTtAbYRLoVqvUwPX1RJ1QvjjLZisTMhy7Pw+oJg9ZzSqVI8cKzvi8
	GfE/YAB7fDGNBu7B81zVAFEHWAlTUWpqBIb73BDdOiJSpuJPA0phkE+NckA6p3EFlJqdD+PyLGy
	l+Cj+O2yoVayc5R//Gtrotd/nYLO8tbrxOQnsZfHwudqnADNIzJg5p9SmeOiH8u2MDai8XVSUOx
	/o2iRxWHdaSiTNia3/fJm370esWdLdooDUr+0hjmCGRNQib0hxZOKbesdtKzizHIl3suzfRLhIg
	atH9hm2vNXwt/+YUjenIL5OD1LyGL2jHCQLHxFvphxEr59HspG+6An5upaiERt81G2bVFReAufq
	2URhs=
X-Received: by 2002:a05:6a21:1505:b0:363:bb19:ed30 with SMTP id adf61e73a8af0-38e00bf65f8mr11516698637.5.1768893259562;
        Mon, 19 Jan 2026 23:14:19 -0800 (PST)
X-Received: by 2002:a05:6a21:1505:b0:363:bb19:ed30 with SMTP id adf61e73a8af0-38e00bf65f8mr11516674637.5.1768893259104;
        Mon, 19 Jan 2026 23:14:19 -0800 (PST)
Received: from [10.133.33.151] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf24dd2bsm11223557a12.10.2026.01.19.23.14.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 23:14:18 -0800 (PST)
Message-ID: <554248b1-1c45-4950-9b0f-ec6fa0a5bd27@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 15:14:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Initial patch set for PURWA-IOT-EVK
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <jeyj5wqu4uw7tnm4h5ryatoqupdrqpkjcynnydgbum6oj2d4jj@qvvbbifrvud3>
 <ed49abf0-c2b6-4496-a3b0-ef040fd94615@oss.qualcomm.com>
 <b3p5yhstng6nbrrdavx67vlv62hqqlnms7742txbimpeswqklv@eomkmkkearwp>
 <e2dfb857-1fd1-4d29-b04b-6dec0b7563d5@oss.qualcomm.com>
 <45f650d7-7369-4a0d-b931-3ba9ac998f75@oss.qualcomm.com>
 <f54f4eda-5776-4a68-a661-b66619ef9041@oss.qualcomm.com>
 <8cea513d-c1b5-41b0-9455-abff0aec3c36@oss.qualcomm.com>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <8cea513d-c1b5-41b0-9455-abff0aec3c36@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696f2b4c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=qrmmpx7_Vw25L0xD5q4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: WF6NoOM7fRq_IqvcYY9MCTQB5dnOf2X0
X-Proofpoint-ORIG-GUID: WF6NoOM7fRq_IqvcYY9MCTQB5dnOf2X0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA1OSBTYWx0ZWRfX4BD/p2s/jrEF
 lmEiXHNt1DVIRNjLuvJaTAhJS5wvZmV+pxVSkmknGAr1v39yCqBFEYVvCXGQ5KVWdCk0QD6lfe2
 1Nej5HWWlhQF1TzaEFiSs/7616+SKyJo2W9FOPMqUWkeHIJIMCQC2HbxEvQjKNt/HTv2kPN0TtV
 VUaj+/6eIXt911ks+GNEdyGQTrTArAQLrT91dYcS3lOXcGTo/+qGUCH2Egm8NVgy2ZXj5JO0nH1
 iV6g7LU4fhn3965Rio82fqSy2gfx9bFTiU7k+omjbw4kbzEtccvRk9YEv1i6NhCn6ZWg9uqUOG5
 HHDcfNTYtjPc7yFa9dV10wx9y8laUoAoSXadT1skpwofFebmKdCViGIEsUg8LL3+EV6al/2GIHQ
 nuI6L6O1cSorSPRq9u2sAIIlc6l+qG8CFu1HzlNqdr3ynwV0kOYxVS+h4SMj47uhC1/GN5BTEQu
 /Fppm8N4//C5wynXtcw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200059



On 1/19/2026 9:52 PM, Konrad Dybcio wrote:
> On 1/19/26 2:51 PM, Krzysztof Kozlowski wrote:
>> On 19/01/2026 14:35, Konrad Dybcio wrote:
>>> On 1/19/26 7:54 AM, Yijie Yang wrote:
>>>>
>>>>
>>>> On 1/19/2026 2:34 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, Jan 19, 2026 at 10:39:04AM +0800, Yijie Yang wrote:
>>>
>>> [...]
>>>
>>>>>>>> Changes in v4:
>>>>>>>> - EDITME: describe what is new in this series revision.
>>>>>>>> - EDITME: use bulletpoints and terse descriptions.
>>>>>>>
>>>>>>> Oh no. B4 probably even warned you about not sending it out.
>>>>>>>
>>>>>>>    From this changelog I can assume that nothing has changed. Is it
>>>>>>> correct?
>>>>>>
>>>>>> This section was generated automatically by b4 and was not reviewed
>>>>>> carefully. The actual list of changes is in the section below.
>>>>>
>>>>> But why????? Why do you ignore what was done for you and write it on
>>>>> your own, reversing the order, etc? And even if you decided to ignore it
>>>>> for any reason, why didn't you delete it?
>>>>
>>>> The confusion was caused by mixing b4 and git format-patch to handle fine‑grained patch formatting. The Git configuration Konrad suggested did not work for me. I ran b4 prep --manual-reroll <msg-id> to allow b4 to track the upstream thread, which caused this section to be generated automatically. I did not notice this and mistakenly re‑wrote it myself.
>>>
>>> I found that I have additional options set in my *local* gitconfig:
>>>
>>> [diff]
>>>          renameLimit = 999999
>>>          rename = true
>>
>> This one does not exist. You wanted "renames" but you set it two lines
>> below.

I tried this, but these config options cannot replace 
--find-copies-harder. Since hamoa-iot-evk.dts and hamoa-iot-som.dtsi are 
not modified in this commit, Git will not consider them unless 
--find-copies-harder is used.

> 
> thanks
> 
> Konrad

-- 
Best Regards,
Yijie


