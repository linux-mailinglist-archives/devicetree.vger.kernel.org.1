Return-Path: <devicetree+bounces-311585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sRD6M7Z6L2pJBQUAu9opvQ
	(envelope-from <devicetree+bounces-311585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:08:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C617683344
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:08:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=C2BE0zoP;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="B/6GegSu";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311585-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311585-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DEE5A3005781
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 04:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79D182DD5F6;
	Mon, 15 Jun 2026 04:08:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623033C06
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 04:08:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781496500; cv=none; b=LUAIT3OO2UKcBgdBe0WQHxkychvp6sxXCeoUbwCtsPSO+/olH8nM/t3diLuo+Xa7W9ag1c4cmIJ7eCn9GKFEyLt5Rg7T4A4JUkpkZcfCXv0Ua2whYIktLDg8BD6CIecM5AHZiTzW6SKmkZ+NhY6TS+VhsL56Ad73Nl5NeAGMC0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781496500; c=relaxed/simple;
	bh=wgSyVO0iIUWYE87p1E6tP9DPgnR1SJcFx3srHn++h/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cLFqPP0vGKZGALZnIuCY9fnFmfjbhWd+6q1oL7UL/XsSgtWMM+BbJdoE0F3uZmYl6VSoCPtwuBLb+MS/cxQRCPbmKUR/Buzxec3Dxoks3clA8D9ZB20kwWqBhBCVPYSyf3VGNc208dcqEdt9yENN6PWqbJGPw8Po9Ma9nCiOU0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C2BE0zoP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B/6GegSu; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65F1htqR2741821
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 04:08:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0p0MLtTlWKVebvI15ppDtod3gdrxS+s7urCWzK/2WKM=; b=C2BE0zoP8MWDEFHB
	53blho8FUzbbLHQWDG+xvyYaTwwBnRl+W7DTbswzcMzHu1On38a85VmKA8nphGiD
	j8FH86JQ7C4x8F0/qLziyiyWkQcTF/eXigfGhOWx5IIgwc8LC2a1UG2E/u9bOOKV
	h1sxXVsdk8Fgl3vXhiQe44JksSnt4jQ233EOV0t+cg1Emp0iJA4cHOVHe0oJ5lbf
	aKVkXs+ELB6mzvBHRdQwWegjtHzksBExvQaTLArhRAWLb8Dka2gABB7wYZ4kEeeV
	/raoq07b/xheeM1EX2+vNYuRJeobIxKwWY8Ckdc1ldAf1j201tfRTjSsrT+mrkxi
	IpzuXQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4es0g85e1k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 04:08:18 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1383414cf84so3291950c88.1
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 21:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781496498; x=1782101298; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0p0MLtTlWKVebvI15ppDtod3gdrxS+s7urCWzK/2WKM=;
        b=B/6GegSubAZ8VBPUuqBkBrt8yXLm07B8s6KpwwbELmycLB7NNr68VbVYjh4Kc1zaW1
         BaLP7x4xsV7E3fzfiCC2MV3ZXItN1tVPro0ZJ2OAYYCzijDDlHAcuWfiMUlg+MrlooJg
         WLMH91Ksb8RIMmRt0xtsKKDgT36GvmHwcWuPYkhdYsDpwnrvPFba4TR3gSOffRwRryft
         PKO9q+b5YpooeSkv2BYOiRtYVIV86+qlhs7fErJIVupqk6IbrWlQs+dnw/2WYGHtgNRV
         6QAkrN/FUizaISYzwjX6i74HIsHTssXgbQQ8HXtebVfbgV1s6/pJqRioHt2oZ5fSXKjD
         RBVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781496498; x=1782101298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0p0MLtTlWKVebvI15ppDtod3gdrxS+s7urCWzK/2WKM=;
        b=VmUb+Gkwm1UC8EkNwb+XChZq25VerPZQJ3g3teUqHCz2hNyZglEKrbVQQF2lH4MiRZ
         5zWL0I0bbVG4nLUbBHbnaEaH0Od3LflDQvsLSPa/DJRUVZorK1xH5O+bQH/kBl2+A+xb
         +/QFZ1tnW5FWZpF0X6UEmhhjyyHDKg48zrUVoQZ4lngaz/niR00IwImIKIRXwBBxQhkA
         dvt+MKw0JjQAkzNZ8WTpOQt+tCuBNZf394cbLeGUK6udmmLSTkBifSFMmVg+PqxFKvQq
         6EGDTNfPrV44Hahf47NwB9cD/rqc95FeNpsEEVtI5xdibvWzXqgSuq6SoUjUwB2vYlvH
         xWRQ==
X-Forwarded-Encrypted: i=1; AFNElJ8YLgoAGAXDhz/3bVkc08vRzIYqUuq9sH64xp3guu31/XAd3pEu7cyBEt7OUFLU8W8FxVR4vhG+rdsL@vger.kernel.org
X-Gm-Message-State: AOJu0YxE1Dy0cRXHkmsYdS9RYbkGtYkk/6/Tc3LnTvxcr3aRVNZxRz8p
	TNEgq547YYhEe7GOelF26PfF2BT/mrcakSZFI/p0a25LHb/GZYEvMbIZId89dOuZU3EYqilTLSU
	BWJ42uTZfnA/AOFcLcjduzAauzRKs4tVP/4+mPHGGGmRDOq0jAIE7CW5wPkD4odF6
X-Gm-Gg: Acq92OFQIeqUt0gwZqiEZMOKAGkO3CH2YDNuBNDHh/ob+QVM/pZVIPBi1heWII+Gpny
	PodFK1o5p4HO5t9UzN1lau3x0LeOVthm0srctwuLgMlgxJTZS00GS0pKklgMooz5YYv5ns9ciz6
	5sY7DNwBb7X70UgAQjhwQmhw0xS7KodCZTmQDrwvTkggH6ZpTkmgYZCAB5IqSsC1nMYBOdxAr2r
	TUtvyMqL1kaXGu7/u3AoK+3NtcHhABKQQ2z02ImWwxI5Tiwd2cn0o2/1pH/7giXNokbHUpErIBR
	VOjdlOiBdWObjh3qmuoSxDxLWscuJopA+YHD1SbdhhbJ+ayC1xxJ7947RDXRhsHqx4ARn9iltLx
	7mQjnxVLrxAfTAETBsWc9A0PSLv4nIGn3N1z+qYUs3TJliendSxgO
X-Received: by 2002:a05:7022:f9d:b0:138:177c:b971 with SMTP id a92af1059eb24-1384bb7fef1mr5255592c88.29.1781496497903;
        Sun, 14 Jun 2026 21:08:17 -0700 (PDT)
X-Received: by 2002:a05:7022:f9d:b0:138:177c:b971 with SMTP id a92af1059eb24-1384bb7fef1mr5255559c88.29.1781496497227;
        Sun, 14 Jun 2026 21:08:17 -0700 (PDT)
Received: from [192.168.0.5] ([49.204.108.63])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1384b97570asm8790480c88.12.2026.06.14.21.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jun 2026 21:08:16 -0700 (PDT)
Message-ID: <f7391beb-bca5-416f-920d-cd9a1a9a4ca1@oss.qualcomm.com>
Date: Mon, 15 Jun 2026 09:38:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] spi: qcom-geni: Use geni_se_resources_init() for
 resource initialization
To: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        bjorn.andersson@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mukesh.savaliya@oss.qualcomm.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260604-enable-spi-on-sa8255p-v3-0-43984eac4c67@oss.qualcomm.com>
 <20260604-enable-spi-on-sa8255p-v3-2-43984eac4c67@oss.qualcomm.com>
 <aixBtqPq3MNgYOkk@sirena.co.uk>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <aixBtqPq3MNgYOkk@sirena.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OOoXGyaB c=1 sm=1 tr=0 ts=6a2f7ab2 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=CzlE4M4Y721Tu1n/tZ9MRw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=rXPX3GvGq0DlZHiU1VsA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: mp5lv7F1CYERfwfDt_KvphSBicwWrDba
X-Proofpoint-ORIG-GUID: mp5lv7F1CYERfwfDt_KvphSBicwWrDba
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDA0MCBTYWx0ZWRfX/lTmGoOyjCpM
 VkPrvIvnfMAs3FjvtjPMtx8mliP2K6ypjy5AYZaJ6ZsBIZwvjTmvwHxrebsmxnS0Zi68k7c0NkZ
 pCEaS4QjABSEKUogMHXq2POq7S9kR7pu3fo/D5UjQC2T4zNBiN1lYzSMiwqZ89hz+N9ZAQvNyDY
 q+QpIlAze+/JZpZzvVWEs3nWFsJ8YGSTobA49m489MlSQzfDzXcR8hRv+ke+QqVACB5Di+QPhlP
 tobB/fLyzJIJTFNs0oN4I43wVzeG54QvgwaH0htStiETTbJ/RRMYsOrB9/WLHTlOB2fhDnjBJAY
 gfeTLNYq5JvTrZenSvqauxH39OsAlcxWiXhk2FHqIVTKnmRFzT9MVYMIhlO4lKPz07yUElGK1e5
 u/nxFN32Mk439Ud2uZE03pFu6xUayxG2S5D/FoRjmuz0ZUO6X0IlFPoPCoWC+q9Qf+5/VDnWRyj
 0lk5eqqj5/Nxqu3GC0Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDA0MCBTYWx0ZWRfX3/JFltkwmS5p
 FLKN4DvymwiU57k0JCEkMtbpc4gpzbamF8Kvin3ExAfxIEM4rhtJ5O/Hjac97nRUUXB+uctwOKX
 6sezNiMh8zUNqL3m3IIMMwzbtTLv2gA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_01,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150040
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311585-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:bjorn.andersson@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mukesh.savaliya@oss.qualcomm.com,m:aniket.randive@oss.qualcomm.com,m:chandana.chiluveru@oss.qualcomm.com,m:jyothi.seerapu@oss.qualcomm.com,m:chiluka.harish@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C617683344

HI Mark,

On 12-06-2026 22:58, Mark Brown wrote:
> On Thu, Jun 04, 2026 at 12:20:36PM +0530, Praveen Talari wrote:
>
>> -	ret = devm_pm_opp_set_clkname(&pdev->dev, "se");
>> +	ret = geni_se_resources_init(&mas->se);
>>   	if (ret)
>>   		return ret;
> Doesn't this still make qup-memory mandatory, breaking existing DTs that
> might not supply it?

No. "qup-memory" is optional only.

Ref
https://lore.kernel.org/all/20260227061544.1785978-2-praveen.talari@oss.qualcomm.com/


Thanks,

Praveen Talari


