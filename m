Return-Path: <devicetree+bounces-262502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8O/9F9jTgml5cQMAu9opvQ
	(envelope-from <devicetree+bounces-262502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:06:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF24DE1A9A
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4429B3040235
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494BF352F8A;
	Wed,  4 Feb 2026 05:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hEhmAJTt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KUXonyIV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17290352F82
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 05:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770181589; cv=none; b=OVxQgKCe23v7Mja4KPQaUjwha5S4yy87zD9amTcISLtX0IvhtvgvC1wB+fhLjQafMmF4l5FiJ6/fYwTo7HhSEfuQTbvADObvn/rdf1rHRqASeJJlrGPKN5X+ZO74LY7EZXznE1bBNdj2NEkvXDT2sp6m1sLWDcLuED4hfRQR2HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770181589; c=relaxed/simple;
	bh=v0Nc2YH5z1X149t1QdEpqLjxkN1uvo/AhimP14jLGsU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rNUCZh1H/Twqf/VKvNL4A6EyRwC4yE/adToZ09CRJa45DQdlvKwciS3UvFIFs2bA119OIAK0hh3s3rmCiesLMqPosyH4sovxMXqOt6z21FnomzGT1dK47ibRrZLEvYUFDJu7URp2HW9fvRlPs9rcqgQwpxXs1Zii2pD1bTXadT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hEhmAJTt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KUXonyIV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6144DWCM2613570
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 05:06:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vaoYfgH1dPngMdoHN9hAnw+piYMLJCeQPOePWMinXqo=; b=hEhmAJTtPtKG2uOO
	fHDqNTClz4IT4m+FJPVWlkG5b+TT36V/KhM1CKk92wb6dGBSX3ViIEXg6RNvZcXz
	PLbb+dKu6xvWuZItTlXVdP9aoHypluZTlfcsh1Yi3b4nErw4FguXverwERvbckft
	2tizu3baEwjB0sLD3jMeFRhY0zNRLspR09ahM7o972xdZ52eVU1ziwzzfPgXkuvu
	m5a3tIzNuI/+Zikn10Fs23TgzOpQCqFszNwapVITtSqGAHAu+VDX3WslHPaRWksi
	VbFWEpnW9FxNzOPNbsORWPkQ0psNqdE71s7h8LlxMlfbKQFchSRCenKDgWPNM/Vg
	e7UCBA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3h07jypr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:06:28 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81efa628efbso6445437b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 21:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770181588; x=1770786388; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vaoYfgH1dPngMdoHN9hAnw+piYMLJCeQPOePWMinXqo=;
        b=KUXonyIV61yspXE5sk/39///V95AFAcf6kwWAxfZc+gZ5MlSHe4yuD1i0/13b0W7e0
         b0lgKpVCDLvW8B0UJl4yHrvMEBmX+Bgnmd3ih0aN4GwPnCwTKS/pmFRmqDqVGyQkCERx
         ConN4+ZS/4tnhPstCRgK0ADwrUXe1BX4vQB0MeXuNAMmLewqP7EKAVgIJ43xaa7WkNJ4
         8l5Bpa3MB4Y7O5B/wZzJ6v1PT0aG3zqjWFOp5CSg2N3xbb8XqU9a2XplLdvCikl4lr2e
         vXxFaNcvhSwQbaXdGirFzCT2kd8svJ74+47C87d08UUFaIgMPYMNWbzAkNqzN/3lQc/T
         Ja/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770181588; x=1770786388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vaoYfgH1dPngMdoHN9hAnw+piYMLJCeQPOePWMinXqo=;
        b=Y0sCM2qg8fXwei6FrcrXv5zCuJbSk5WtiSiUZRymNkZebXGVLQGRtVX1l/ttyj5Tre
         LCbwavBp63TT1TsWGdA4hI6KMt/8mp7bFXp3RbGnTSXEa6gnu2Nqf/SHY8dlUGu/PyqI
         TZQ82lxLN2K5YurKZnseB/V7jxE0wqi8YGITtM7P97iT6SSlVaQCLC0V2yYPj2qbpvcv
         B1NHXIbV5i2sjPlx9MDnEGV/T9yWQBmm0aDk2dqGSz+yOYEr+EjBazVl4y7qCET9XXhc
         6U/mOdAlD5mtGZdtkDbEjNuJ8Fh/9WQD0lGrVjk+cUH4HxsRhL+HEsIUK4aXp904rVCN
         Lz1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUTc1c9bx+yl8MzjpbqsTkl2ywPv/GM2/ZthEkNwwO+FZ+bhbCKzatldH91IXIZgfi7Op51ihiNfxFn@vger.kernel.org
X-Gm-Message-State: AOJu0YzlxzdLn9uevyIq+mFgPeaVoEqjG84xpHfceY5H6049Dh5ImvnP
	RMQY5rWrI6W3U/VXcX4iMM27B1qzVoclT6DvjXGZNGe6Bj8gZONSmkkBxccOFVkomnIWJXHufoH
	8iQF/zDCYEhTkW+bsWW4n0PktG6sVFaUgjDzFpbj5gEhLSWBivzIF1o3Ts1phrABJ
X-Gm-Gg: AZuq6aKOj000jvTNCoGRPjqqiDSW7iF0A4tVqsbdcUeKoBoZEWk2UGkuiFpejdEaox9
	0w0m8iPph/PNgP84vWEFZl8dGctOBJ3YPO8PzX9rmyl3RAuIlAMbK21yvSh7fFUl7A5dpwBT3be
	UX0yk2elcIWh4WQWSnHo/gS/o2evnwvNvcPYWuvhjPxUf82PKmwsczbzfr8Egq4AXe8FRKdj/Eo
	NMbcnfm28iEKiZhHsfxKfTKmgl+HQ2ZPz/U5llgSA+wU+itKItkePHYuKN7dxADT7eLjai+tOv9
	FNMtJSDMhEL3ckYv5LUr3oPyMWd7AE60VV9o85hZXetiLCXy+GLrfi7JZqBIgKfFb7icpZ6HCoo
	H3zWR4X2at/AHK2xsygSxhiu5anD8dhS07+oYykXbQQ==
X-Received: by 2002:a05:6a00:9290:b0:823:12cb:f5d1 with SMTP id d2e1a72fcca58-8241c1973b4mr1811709b3a.6.1770181587678;
        Tue, 03 Feb 2026 21:06:27 -0800 (PST)
X-Received: by 2002:a05:6a00:9290:b0:823:12cb:f5d1 with SMTP id d2e1a72fcca58-8241c1973b4mr1811676b3a.6.1770181587115;
        Tue, 03 Feb 2026 21:06:27 -0800 (PST)
Received: from [10.218.32.171] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d45b996sm995034b3a.45.2026.02.03.21.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 21:06:26 -0800 (PST)
Message-ID: <3466212b-802c-4ea3-8661-794da34c6c3e@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 10:36:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/13] i2c: qcom-geni: Use resources helper APIs in
 runtime PM functions
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
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-12-praveen.talari@oss.qualcomm.com>
 <7733eac7-8158-40f8-8887-44e458d33e9b@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <7733eac7-8158-40f8-8887-44e458d33e9b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAzNCBTYWx0ZWRfX/mLfJ5WLzFv5
 EgCVa9l7R8W/99f/PrtiLelYV0xPuxeQ4xMoWoKrcuAIGs9cv5lagp/L/0b6QJWwykyOVd2yeIQ
 wBfbipbd4rbiDvsjJa87rX8MivpdgTSHL4P1/lYOoPseoTLwuM512sLINHgQ9M/ORJPQ1drfkIS
 +Fsurm1FsDZn0QvBX9ixu8MwE77J/PI1T+39r4u2XNPApc71qec4aPWLj2LKjXaf8neoE8tKeJa
 cbS5t21N8GVn6zyE0YxKpop/Ry9dBicaYW4YDEMB5k94qfwIuE+vc5K+5nO/e73cBcf5pUZibUF
 UvM6fRTeFaR7hqFf85sjZI9HYyO42NVfEf/dB3M+gfoMlZXhaiG7dqrC1vd/WssF4jVgYQK2jas
 KeglAbrFgzXw17df/NU0vpHJwBlJ+hS1H4VK//fETmXClcI8h4J9jtwj8zrj7hklpRo+iRjwPAH
 txK9a9gXaN/HCktFFiA==
X-Authority-Analysis: v=2.4 cv=CMknnBrD c=1 sm=1 tr=0 ts=6982d3d4 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7loHADMVyoySppEGI2kA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: YAFG8M-GpKpp55FduRDHEMlLUKsT24yF
X-Proofpoint-GUID: YAFG8M-GpKpp55FduRDHEMlLUKsT24yF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040034
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262502-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AF24DE1A9A
X-Rspamd-Action: no action

Hi Konrad,

On 2/3/2026 6:18 PM, Konrad Dybcio wrote:
> On 2/2/26 7:09 PM, Praveen Talari wrote:
>> To manage GENI serial engine resources during runtime power management,
>> drivers currently need to call functions for ICC, clock, and
>> SE resource operations in both suspend and resume paths, resulting in
>> code duplication across drivers.
>>
>> The new geni_se_resources_activate() and geni_se_resources_deactivate()
>> helper APIs addresses this issue by providing a streamlined method to
>> enable or disable all resources based, thereby eliminating redundancy
>> across drivers.
>>
>> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
> 
> [...]
> 
> 
>>   	disable_irq(gi2c->irq);
>> -	ret = geni_se_resources_off(&gi2c->se);
>> +
>> +	ret = geni_se_resources_deactivate(&gi2c->se);
>>   	if (ret) {
>>   		enable_irq(gi2c->irq);
>>   		return ret;
>> -
>> -	} else {
>> -		gi2c->suspended = 1;
>>   	}
>>   
>> -	clk_disable_unprepare(gi2c->core_clk);
> 
> I believe you can give gi2c->core_clk and desc->has_core_clk the boot
> with this patch since they're no longer referenced anywhere

Sorry i didn't get you. Please share more on this.

Thanks,
Praveen Talari
> 
> Konrad


