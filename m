Return-Path: <devicetree+bounces-267723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBztEapCnWkMOAQAu9opvQ
	(envelope-from <devicetree+bounces-267723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:18:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DFB1825C2
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:18:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E02A1300862F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89DA22D97BB;
	Tue, 24 Feb 2026 06:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SJM0S5xl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jTeGx+1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1518C2D7D27
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771913891; cv=none; b=DxfXTtFy60/Jdj4uAeduFH2kpseVP+A2Xfyt2g3K5QaepYpv31gY7/SYnlVRn10cHstHdQ05t9ouwAWbDczI9QZhJxTZFMQgci9ozWuuoAik4Dhx4QsKIXGw68NWn84F4Pl/sLFYc4XjSyj++n8ZNMnr5FxPA021AINQgJpG6x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771913891; c=relaxed/simple;
	bh=55ftLdvyOLNET2JD8Cx2U7172SmE3PQBBQsKretftwc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ApxZ+fVOaJibZfbgv+QrxPyUdZYkeFPZQFW5koel5hFyDKlD3rR4iwgaFFkTV6dzxdTn6kGLoVM7jW8gI2C7tPKHKbV/hCHFXVUTC4JipYp7ALQneHsJGKeXRVB6Y1tU6k4+y43b7US0nThhP0koJtJsyejYPRCoGktCp8Uk2Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SJM0S5xl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jTeGx+1O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LXfX1754259
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:18:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JIF3RzhViYYlwxx+OD/unsWmeMnNrO6XtaAytnKLG5w=; b=SJM0S5xliId38m0K
	yEeHtH36NYE+SuY/Jiivi5rbioKb+jvioZ0KTCFwPBsbt9TixdCi+zbsJiwsQUZT
	0gh8VH+1WUfX1G8tCK8yzM9LRRkBRXzYAVhncJEw/2wQCsdTcQeSydM/3ZJgT5c9
	dFZtguSyMcGmuv0OriC68j58AdtPaBW7girwYib3Vdsv8McKNnp3SaNuRjWQDFU+
	TeGs2DHWyoxECcnALatSSaqQkf8tyzUiFqFOaTt9XCWz9NiyNabV8yjowfjZ+2U0
	y4WJ+01NZTMcNnFnAT12oWjlGRpca/6rQBoBnLNqv0TmLFTLiyWe8Hf1L9jUHg2B
	87zx+w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn81b5f5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:18:07 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-354c0234c1fso4786938a91.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 22:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771913887; x=1772518687; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JIF3RzhViYYlwxx+OD/unsWmeMnNrO6XtaAytnKLG5w=;
        b=jTeGx+1OOb9eQnXAWNJAtlrQ6ePfASVtxcTx6IoLsMV8C6SM9NiwHvT11jHOBgzxwe
         pnn+mlu5C4Co8xTjKvvXYe26/Qjeg2lmY0zZAvfFFBSDJtWPUGHYyr92RqYecGFmD4YB
         v/ptkmeS9meuTE45Dz8WIOUlf8dFjY78aTrNKASuTxjH8CprmhqRpCYCwHNMXIJA2Yzc
         rCxEavu7r/iz0YUUYOwzqxiT0VbC3JdcK6FTsLMsV4Ja14//BpGIuQI/swEPfvlw22qO
         0e7pntsqSXDQscISWd0VE9iwC7lHFTxdc7ZguA5bC9Mo0Mt5+th0w8qCXu/9uh2YUdRG
         SWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771913887; x=1772518687;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JIF3RzhViYYlwxx+OD/unsWmeMnNrO6XtaAytnKLG5w=;
        b=KGPcZcREs/5AOtlrX1lcYGEh3quDFmXFRgkmM1Ra/7RM8MDliKf3+QdguVXMvqR5rF
         n2dHaGZb4I8ikywLQv8fWlo9GOFyB3ULUyOALW450DHwUPZ7Vyufr6ZhkYdMl96W8i/g
         wRwZeKnxFsmGFWSmpg82dbl08jP2ZOiU16/U81miBYSiKOUREcCYCNIwQCQHEAuHvClE
         Gd1zAorg6AXx1yhtm9syE0He78YuP03mnZNuXB4FzlE/7vbBC4b3daPvcCFDTyB6zONN
         DuH8IiIHCeZzttEL6niev4+xO/dQhxSnobHCXfd/n2e9gdUcxEIOVJLCLWRyU6P5pmF2
         WDqw==
X-Forwarded-Encrypted: i=1; AJvYcCWjspniV05VgXvKK9+FrnL8nyr5ypaAqwrWLfEWqkepBKI4B4m/tGYNFR9eB6Qb6Ps5KyIfys26VQBE@vger.kernel.org
X-Gm-Message-State: AOJu0YxY2nBPQ09uxEd0WII8KXkCJfg55lRsqd7GqODlJcwjHHTT0a7s
	qfv58hP357br3IiiLYZydlIyVlPfuVNjdVIceFGcrsn0lOmdRGyp+4lhKSXgvNVZU4bVGiPn0MZ
	fTjPF+CbUCwLREzbqnCGfBhUu2kRGMLOXwQ8oL9Ig/59VFV2Y81ErfqbLvfpGyQxg
X-Gm-Gg: ATEYQzxBbvx6XV9LtmkyPj84BJEPYJKbsD0IIxknW0MkjFhZz733Z74YjJzAtxZosli
	dw6iw6XHru7VKqYjgXx7VSGCaOlsZgWz/f1Qt6LZkvl4Fb3PgI7DELzaHa/uC4hAcftTfvyDd7N
	bC17PN6LJrkB6BWpx0KJlQdtfN3YUcIH+P36mBgxVSB6hzxboBCVrOpVsrvbA3bbVxkkd2OjOqp
	UANupylb+4cUvC3j+tkxJsRiRnWZBIyOmA2H3ptowpRcLRCVq7ldR/TqxsCT6dErW71sPD9vvKm
	gUxM7N25EbSJR9dkz45s9YF7B4IBSMHctAPGfUjawDMkdD2WD+0BpFzplGO/GvEypTfTmnlVssV
	FdC4zuGcXcXxX86xc4H0ms/exTPHh1XxO7/52C7up36R1XOhz/iXAhC3zmUZ1eXTFV4WgyA55WA
	ExszImWz+6UAsgwVRffIdRjLPgfUPMHHg1EKS15rc=
X-Received: by 2002:a17:90b:2e0f:b0:356:3ba2:1233 with SMTP id 98e67ed59e1d1-358ae8b3dafmr8115472a91.22.1771913886889;
        Mon, 23 Feb 2026 22:18:06 -0800 (PST)
X-Received: by 2002:a17:90b:2e0f:b0:356:3ba2:1233 with SMTP id 98e67ed59e1d1-358ae8b3dafmr8115432a91.22.1771913886336;
        Mon, 23 Feb 2026 22:18:06 -0800 (PST)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358af5f8b1bsm8333890a91.0.2026.02.23.22.18.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 22:18:05 -0800 (PST)
Message-ID: <48778fa8-b485-4c79-be1a-c70836f65f0b@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 11:48:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, robh@kernel.org,
        srini@kernel.org, amahesh@qti.qualcomm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com>
 <e658b473-6f05-4f83-a730-e586068d8742@oss.qualcomm.com>
 <sgomjvhwnnbvuskxqfybczvxtwn2lourr5eq4mw4qyxp5s6kzc@ccgx4wn5wqi3>
 <24973bc9-a082-42ec-89f4-12758ddca136@oss.qualcomm.com>
 <yaunylao3nefmhbdovpfoymy63hjfjtvbwm5quqvdyk3enpno6@7rmpnx7esdhs>
 <8d96ebc8-67e2-424d-adbc-0948dd3641a0@oss.qualcomm.com>
 <CAO9ioeUSJQC685K47qMBn51r7APReO9T+h_K3bZ_94Uwn1unBg@mail.gmail.com>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <CAO9ioeUSJQC685K47qMBn51r7APReO9T+h_K3bZ_94Uwn1unBg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: oHN-m_5xfd4Mb_O81JGFS-ih468Oayez
X-Proofpoint-ORIG-GUID: oHN-m_5xfd4Mb_O81JGFS-ih468Oayez
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=699d42a0 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=ePpz_JlwkyPc9ubz9f4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA1MSBTYWx0ZWRfX5ctmB8JYMahJ
 xPpPHKJUkNHqz9OSdInzeXflNGvtp7SyHLbTsEt++oNjNLfebYr+RNrBdJtoqcsQyyoOVgPVMm3
 XqEyjKfFzedkj4zg/7rlLDkjflA4BrkdHFfBEOc8gku/mrcwlOuCTZhg5U/H5SRkJwHBrlNKcnQ
 Qwah3tkQgSB7Kj10Xsso7WfS7+V8upFVkKNjEcxOCx8E6+W/p7StkJ3i3gBgAVCQU5tKWOZLPdo
 lmfGGDoh6NRLkjgVgqlg9K4TkmMjfIktdb6BRKhQzne3VqUCV7ISb0IJeo4KGXlGqutSOUysUh7
 z+d975Acx4XaCWaoq0/wumD64Mpu7aJTxcwBFebKciGgULRs5Q9UTLbaDYOLCnD7nLMQLYoPFmO
 A+e78n/zUtafzDHbYTKAAWZjQUSsdey3uUSv4H6Z0RnOkgiUmkcYs3k5dl/u4Ah37gL+8IqtaJX
 eK0yrx6Zy7FDCduPBVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240051
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267723-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 68DFB1825C2
X-Rspamd-Action: no action


On 2/23/2026 10:44 PM, Dmitry Baryshkov wrote:
> On Mon, 23 Feb 2026 at 11:09, Sibi Sankar <sibi.sankar@oss.qualcomm.com> wrote:
>>
>> On 2/3/2026 6:09 PM, Dmitry Baryshkov wrote:
>>> On Mon, Feb 02, 2026 at 11:16:19AM +0100, Konrad Dybcio wrote:
>>>> On 1/31/26 8:54 AM, Dmitry Baryshkov wrote:
>>>>> On Fri, Jan 30, 2026 at 10:55:24AM +0100, Konrad Dybcio wrote:
>>>>>> On 1/29/26 1:13 AM, Sibi Sankar wrote:
>>>>>>> Enable ADSP and CDSP on Glymur CRD board.
>>>>>>>
>>>>>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>    arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
>>>>>>>    1 file changed, 14 insertions(+)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>>>> index 0899214465ac..0eed4faa8b07 100644
>>>>>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>>>> @@ -487,6 +487,20 @@ &pon_resin {
>>>>>>>            status = "okay";
>>>>>>>    };
>>>>>>>
>>>>>>> +&remoteproc_adsp {
>>>>>>> + firmware-name = "qcom/glymur/adsp.mbn",
>>>>>>> +                 "qcom/glymur/adsp_dtb.mbn";
>>>>>>> +
>>>>>>> + status = "okay";
>>>>>>> +};
>>>>>>> +
>>>>>>> +&remoteproc_cdsp {
>>>>>>> + firmware-name = "qcom/glymur/cdsp.mbn",
>>>>>>> +                 "qcom/glymur/cdsp_dtb.mbn";
>>>>>>> +
>>>>>>> + status = "okay";
>>>>>>> +};
>>>>>> Please make sure it gets to L-F (only Kaanapali is there right now)
>>>>>>
>>>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>> Hmm, looking at x1e80100-crd which references qcom/x1e80100/adsp.mbn,
>>>>> but the firmware in linux-firmware is (now) targeting IoT devices,
>>>>> should we use WoA-like names for firmware on Glymur CRD instead
>>>>> (qcadsp-something.mbn). It would match what was done for the SC8280XP
>>>>> CRD.
>>>> I think it's simply time to stop pretending the firmware is generic
>>>> (some fw simply isn't and some fw may come from different/incompatible
>>>> branchpoints) and include a board name in the path
>>> Well... CDSP is usually generic, except for WP vs non-WP.
>> Hey Dmitry/Konrad,
>>
>> Thanks for taking time to review the series :)
>>
>> The ADSP/CDSP firmware that got upstreamed to linux-firmware got their
>> functionality tested on Glymur WP CRD devices.  Given that the firmware
>> has already landed, can I continue to use the same name as the patch and
>> have a different name for other boards if something specific has to be
>> pushed
>> for IOT?
> Thank you for a prompt reaction, it took just 20 days. During that
> time we could have fixed WP firmware filenames, but... linux-firmware

Hey Dmitry,

I'm really sorry that this happened this way :( but I was out
on vacation the past three weeks getting married. A quick
review comment on the firmware pull request for naming
change request would also sufficed in the interim. Also to address
some of your concerns there aren't any plans to push an iot
specific ADSP/CDSP firmware for Glymur reference devices.
Also, this series already warrants a re-post so I can still
accommodate your naming requests with corresponding
updates to linux-firmware.

-Sibi

> got released just two days ago, so we can't fix that anymore. Now we
> don't have any other option than to use a non-standard name for IoT
> firmware when it comes later.
>
>> -Sibi
>>
>

