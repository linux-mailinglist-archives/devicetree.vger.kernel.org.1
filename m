Return-Path: <devicetree+bounces-263937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMuNOVq1iWlLBAUAu9opvQ
	(envelope-from <devicetree+bounces-263937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:22:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8078E10E1BD
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:22:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 561EF3011A78
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 10:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6ADC366813;
	Mon,  9 Feb 2026 10:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IZvHuuHY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FCAmnTH2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83991366809
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 10:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770632536; cv=none; b=Ap1thmokZFgsDDsHJ4sKTZo2qNZ7Qnxy9UFhZzcHlGr8o0AnoJKGh5Pnsw1nxlV6LrH1qZGacl/fwbixm5MBX1vuBA5KQ0aYcZmxvk/5HGu30gJd2mZCcrS9Ope4yGDw+DpRrHMXDvIcky9qJhQ+bq3BDrTDVYP8ofM0kMh+n8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770632536; c=relaxed/simple;
	bh=mZeHb0ft3xtwSA1cYDXI4BwlaPqvYtTNBPUDbmoRIIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uVdyT2Vx/42Rn+2kF29Kob5J0I9Cqygm5qSPxdrt9gDEfUTvjvWWlNPDXGe8bNpKJuh5U7edScsFmGj/TjZwrIOxjO9n2dHaW+tamL1otJ6YAfemytCjCJ7yHDMekTwgtmuHn1B3uY2A91w96IcFRhcVS7lirKenEuc5xhBR3t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IZvHuuHY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FCAmnTH2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6195Wjoj274359
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 10:22:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NKF8kecSERGBemVz6+xIf4ybkVw7pAwLpeHhJ4t2kWQ=; b=IZvHuuHYSFDIlt/o
	g4xDCFZL96NzyakzpM9RwU0zhGfEtMJHsIG3jIWA6dNkeLBdElErCfa6N/y/5K5B
	dljZae0ohbIRIx5dE8jNL7n4Bq4hLx0kojp3f+kxK5i/lP1am1gk5YLxiPUsHwpJ
	fcYRw8Yt79J1CSbzc22IAHXqccNTE0Bvgfgcd9bKWub3Gohe7wpoLM+W5rCJgoWc
	zop54s++Qy9kJk04pVpfWCXrO73ZRm+Mv+5I9Bfmulbcctu4xWGBmdUH3jUGh9fQ
	AfNh1aqjGb7NSHn7m80HB9+eLhBzdXoUiziNhb4hXW5lCwrTX4CnOSCCK9xuPtKr
	s21P+A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xhrct30-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 10:22:15 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81ecb6279d9so4575725b3a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 02:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770632535; x=1771237335; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NKF8kecSERGBemVz6+xIf4ybkVw7pAwLpeHhJ4t2kWQ=;
        b=FCAmnTH2HySED6FQZ3kuIfFL3eZXSyYCwCt1zuWHck6K94fLC8pMUGeGN3gjS2WUcD
         HqkaM1Atg/xMnfW0H8PAi+VFs54LleQO1oOkKvcvcqq+tRG6OmpNkVkK5nZfeFXk9aT5
         ujjNTqRZfoFJxHJ88ViQkMO9+oLDnE13y5fP232KcPh2VJAvmktqDHEfKPYWyNPYkriy
         PihcPhrqRDB7rZ57xDtq1U5sXjy0sovcRPdbTWILET4/3y9EIccufTybWab06C3/vlCN
         X4T8FUN79DkE3QMx1jNLRjl6FscGsySCRCrJVKLY+VWVXHSvSr+O284H+oP7+5lytedt
         PXdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770632535; x=1771237335;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NKF8kecSERGBemVz6+xIf4ybkVw7pAwLpeHhJ4t2kWQ=;
        b=cOHVqsCU1h+khP2WLp9vbYJACkNnuKWDVyyCkjBc4w8m0HMtwWwT9zmcH5ayYQ3BpC
         qUYeNRPeOrNwOv2xvT73QPkw9ZUYxOF09QmaCUPTB67s1WR+oR069IF8N9ieF52wojiU
         mp9Dnr08dGS5qogOGlrj2Y1Ev4SVLj1R808IZH/9WJqMdue4nAaaWOX3Jrhz8VpkeBew
         CHkV1OQWwW4oLMsymdV4FnRFRriNgQoVhMV3JbxMs2oRh1BuJEe5SlDt8h7G9qItsc/S
         t5FCpeUUEZEEsqCPQGG6YjoX3Gmyi8Fv2tXWbvQDDrBzWj7zBoIbyBr03GYxW/95gDUd
         TvIw==
X-Forwarded-Encrypted: i=1; AJvYcCWt2OxSdmoGuY8948IZeQTO4IAOk8YucZXZqaNK16VE64i5UzDl6f+O+JAteaL1h7BmI7SAjvvFqu3v@vger.kernel.org
X-Gm-Message-State: AOJu0YyRhPiVZdQ+OWpNatyllre3lYbuNa1x6WULjRZkApxCTQhVmQua
	TdO6wCE7k7DYZmbfgQ5jclOEpnxWdJ0g5jIYz053kE+U0hDKoq7+lK7j7NS7dvFQ4OBDzVkfycX
	aM2RPt57Kpv4T305GfHmemaBSbx3bDZQYVsoTA9JPZYP3rAF91uGxXo0LzOA352yg
X-Gm-Gg: AZuq6aKJYI/I0h8MhIPzomgOJuNMf+n0dQ/pFwjwyV9EJZvfjYcLWGSqCJovg+WeSIy
	5HMqYEqLkYg3Paq74LH7EjFwrFmUciLiKFhATlPqeeKaV1La34NabqDGHFAi/mEr+ZMu4t8zh7Q
	/pK0piTv7RkVnf6cEXofIAYsVx6s4voVFSEatEdYpCZ5hXSP3Gj1RSlVb+uolqKuUe2I4VoB2kR
	hoTU7xXlsel8CKdm7tk/fAn1NpULRJeIIRrR1RuVO88jqPEiUFK18v+lRkUgAgGpC+zx2YVDeT6
	A/w/zR7two6GXnFbEeZ77o42ShSkbB2T4lP21EcUA3ekp7W8S5WSPXLCY592JHbXcDKBCRa5zd9
	WY/O+LQCg59DU/hmBChz8Y4LfS0Z3ulqAW3lpG3I=
X-Received: by 2002:a05:6a00:234c:b0:81e:81fb:b392 with SMTP id d2e1a72fcca58-8244160a9a3mr9909182b3a.11.1770632534934;
        Mon, 09 Feb 2026 02:22:14 -0800 (PST)
X-Received: by 2002:a05:6a00:234c:b0:81e:81fb:b392 with SMTP id d2e1a72fcca58-8244160a9a3mr9909158b3a.11.1770632534361;
        Mon, 09 Feb 2026 02:22:14 -0800 (PST)
Received: from [10.218.12.237] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82447ab4d21sm9107394b3a.19.2026.02.09.02.22.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 02:22:13 -0800 (PST)
Message-ID: <1c9b22ca-6b8c-418a-bae7-7734c6dcfc2d@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 15:52:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/8] Add RemoteProc cooling support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
        Casey Connolly <casey.connolly@linaro.org>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
        amitk@kernel.org, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <2a39719e-e73b-4558-95fa-d54f94c43220@linaro.org>
 <6ae95761-6428-4a01-8c60-54df5e54b71f@oss.qualcomm.com>
 <cca414ad-0a98-467a-af31-72d40c43e27a@oss.qualcomm.com>
 <f36e3878-70d9-48e7-9e98-796cbccb47e0@oss.qualcomm.com>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <f36e3878-70d9-48e7-9e98-796cbccb47e0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LDZ0n2s0MOmtDAW1PPiGWeTmmhshNRw0
X-Authority-Analysis: v=2.4 cv=AJ+v8NAg c=1 sm=1 tr=0 ts=6989b557 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=FMebRDQKz-nL5NJ5uJsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA4NiBTYWx0ZWRfX7sh74Idrn6zL
 mI0RmkwRbjzepBomVV7pnqsLAMHwItqzwdNdZ3DoVJfnnusXkfiKmozbZGDVmZaYG7xB5nZdRwf
 6KbJamunTf6chWAo5t7a/EjfF+vlvxg9G5XEyj7qpdptlIhXuRJS0pyfL+FFr4KJCUfs14DfSuS
 rbbI+34/H1ioJ0tMNohnxztXvSqzApblvE53xlIM1f+7deBjKV1F/4vd2PL8aq9hXLO0SUmICxt
 erpQ0tQQuPrtdtjk11Yy8I3S4n2E5uLXO9SP/opviIyh5EMyiLocEG157szGco3iMYlbxIvO7Jb
 lb3LaGkIY/XsEG0Ug1BjmELz4ZtTnq4HuQDiXgCQp+7BOK0OVeKm62az+5a1deH7gO9RRv7tT0w
 3Ngdi7McGXstVwhewD2f3tjO30piqOoXFco51RyYqTDAHvTYKRs6Kguhd9/MsEmObjFDo2YqWt7
 m/xd3EaGaqqWvWg6weQ==
X-Proofpoint-ORIG-GUID: LDZ0n2s0MOmtDAW1PPiGWeTmmhshNRw0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263937-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8078E10E1BD
X-Rspamd-Action: no action



On 2/2/2026 3:23 PM, Konrad Dybcio wrote:
> On 2/1/26 9:20 PM, Trilok Soni wrote:
>> On 1/13/2026 1:33 AM, Gaurav Kohli wrote:
>>>
>>> On 1/10/2026 9:43 PM, Casey Connolly wrote:
>>>>
>>>>
>>>> On 12/23/25 13:32, Gaurav Kohli wrote:
>>>>> This series introduces a generic remote proc cooling framework to control
>>>>> thermal sensors located on remote subsystem like modem, dsp etc.
>>>>> Communications with these subsystems occurs through various channels, for example,
>>>>> QMI interface for Qualcomm.
>>>>>    The Framework provides an abstraction layer between thermal subsytem and vendor
>>>>> specific remote subsystem. Vendor drivers are expected to implement callback
>>>>> and registration mechanisms with cooling framework to control cooling
>>>>> devices.
>>>>>
>>>>> This patchset also revives earlier discussions of QMI based TMD cooling
>>>>> devices discussion posted on below series by Casey:
>>>>> https://lore.kernel.org/linux-devicetree/20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org/
>>>>>
>>>>> That series introduced Qualcomm QMI-based TMD cooling devices which used
>>>>> to mitigate thermal conditions across multiple remote subsystems. These
>>>>> devices operate based on junction temperature sensors (TSENS) associated
>>>>> with thermal zones for each subsystem and registering with remoteproc
>>>>> cooling framework for cooling registration.
>>>>>
>>>>> This patch series has a compilation/runtime dependency on another series [1].
>>>>>
>>>>> [1] https://lore.kernel.org/linux-devicetree/20250822042316.1762153-1-quic_gkohli@quicinc.com/
>>>>>
>>>>> Casey Connolly (2):
>>>>>     remoteproc: qcom: probe all child devices
>>>>>     thermal: qcom: add qmi-cooling driver
>>>>
>>>> I'm glad this series is getting revived. It would be good if you could explain what changes you made to my patches somewhere.
>>>>
>>>> I also remember one of my patches adding the DT parts for SDM845, would you be willing to pick that up for the next revision? I'd be happy to provide my Tested-by.
>>>>
>>>> Kind regards,
>>>>
>>> Hi Casey,
>>>
>>> With this remoeproc cooling abstraction layer, we have integrated your patches for subsystem cooling. As lot of comments came for qmi-cooling driver, so need to send v2 with cleanup.
>>
>> Gaurav - the question somewhere in the series was that why you had marked your patch series
>> to v1, when you had revived the original (v1?) series from Casey? Should we consider
>> current patch series as v2 then? I don't know if that comment was concluded.
> 
> Because we have effectively 2 'v1's, there's already a certain mess, but
> the msgid is different between them so the tools won't be confused
> (i.e. just go with v2 for the next revision)
> 
> The outstanding request is to include a high-level changelog of what is
> different as compared to the original series (as well as picking up the
> original 845 DT commit if still relevant)

thanks, sure will update changelog for the actual diff/design change in 
next version.

> 
> Konrad


