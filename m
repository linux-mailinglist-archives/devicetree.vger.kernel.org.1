Return-Path: <devicetree+bounces-262156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDlKCK/GgWk0JwMAu9opvQ
	(envelope-from <devicetree+bounces-262156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:58:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D6ED7335
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8BB0730E604F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA90B39A813;
	Tue,  3 Feb 2026 09:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="idUPcF9i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y4Dxc17/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA9939A812
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770112527; cv=none; b=qACdiZZqHcYsXE4nlLccmcfIzhe6CBlzQtQOzQv7/dEf+3zGnep3YGtBezybRRhbp9hMuBvVgO4jA9JmwjEWdutv1AInktP0vLgpF/dqqoPNDW76KEcubynI/wMvogX4lWf73Q/fIm/g39oOVDEo48ln9rXqS6ZTJIIPAaU216E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770112527; c=relaxed/simple;
	bh=ROYryKuNMnfB6aRUDt8sRIVxvEs936jHDxuq59NOga0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PWYfpWfdEkd1YMMqaIWHdbfOO36cFbCyK0wBtRGszqcV+7PzBwqQ6mDqiRJTCdSw1db1n3AT8ucp4IxiU9v7V46SFp04NGuavai6YxMi3WTieSd3HUTdzvzw0fP8b9hhqqsTWGGcwNTHfgLmP5b7WIh56NsLnbjmTjXod/qBUXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=idUPcF9i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y4Dxc17/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6136Ttef278102
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:55:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LRZiBkWOvp4q+JM+fpJuSm/nhmi1Nv8wYQT3DHaM6Uo=; b=idUPcF9iVsmkfLbx
	qkYFRVlgc6dkVpT3RR57dfYA2kiRP6YXjP9aLhpIVRLCR1fI5Wkkne0J0H48OsAU
	1OtBFhcn4ixqJMKko5uoQUIqUa3Lm4DG6Kw/AZab9+LMR/U2Sd1F6JPOONVMw8+l
	9xNSB9sPU8OurPS0LJ7CT4TkFD/b9R7AcbRlcbjlGNLzHwJzHDwpIqDwNDUCJMxn
	xSxlOXNbhMHAkD8ZKzkrICOh174R4f/hzrB95HT+vr1NjRGNg0j4FJFVgCqKr4YH
	yRzBpYIGH7FXwyUsIRbJYl04ZpD9gALVXELw+e4JsAnUoNFTe1aJXH4qWjQYM10j
	q/e2dg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c32s3a5f1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:55:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c522c44febso128104585a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770112524; x=1770717324; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LRZiBkWOvp4q+JM+fpJuSm/nhmi1Nv8wYQT3DHaM6Uo=;
        b=Y4Dxc17/w+MzECTyNKqByX9VwfZYoYF9OILADIyloMoT2w4VPVXWXtnAobs1dmvUsi
         GPJRo8Uc2cZ+o8xgZYkvVu6CCHgpFWevBNB7zGD0G4EN4N9H7E1YrqvaD0jaCZ54RmoB
         nLkY5+mv2NDcWFD8fV0CYjuT48hBzFx4DGXEsBboDTBGdeenyHWLmpy6tvSQqMjAN+zj
         XKxGjPWAyaLlsTLCSYdtWID28tVuqw4SCK70xof4IA9+P7p3LDimo0ySaHgA21ySkyp+
         w1CiysaWLm/g3D2GduFitz4ve3OSyUww1A6rvtiHvwEeYRgOFRP+VW/TQZjf7GgwzEbt
         uYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770112524; x=1770717324;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LRZiBkWOvp4q+JM+fpJuSm/nhmi1Nv8wYQT3DHaM6Uo=;
        b=jftT3AJLUHRPfIYOklQcWgW7yr3OrhyzYDCdlQ5fYyuzQd+Kv7K/4ZdZhwE6YusoVi
         QtkJLy5haMovVCna0u80VN6I1Zy4d8toqstDT1NdwLOZ0LbepwNnKmvNFScCo4U44Nfp
         1A7zSg77/GL4a7ADtApGDpYhSmmCbvtDCz9970ajach/eZ7bfvUaIHIYgVUbt7wvIK9M
         3LODN0IUeqis2Ksuz+q6+CowYdQ1VjcgzDib8NDflmbItuATlxqk5ZF7UitIJvyCn1U8
         srMYkahDHu9bgkt7Wm3irFUCkNaOS/mk4SW6IHXMuVYJB8kBjjiv7nJdbPODWAsjVFmP
         h9LA==
X-Forwarded-Encrypted: i=1; AJvYcCUGGi0GcoXL1iPVCRg9oUGeDipPg/vryPhpH+lFOT+TpzuWKkTsf8nsG28gg/rKsWw3kf9+3DK10w2a@vger.kernel.org
X-Gm-Message-State: AOJu0YxaX/CaOx5TCQdSg/c5Kb/7LtUXV1FwrkGFXLHYHS/qZePxO5TU
	jN2s6w6+t7IujKwhJXuRYUqaNrOuW7wd+KbOrP2Yu/iyhWvTz/WvSt5sqV7fjJKkwTRrupOXDvs
	okVt3039pZMv1TkkctmXlf/I9QWrRSt4J4gmHzX+bmhX1Q8Eer4UrqvMy2LCdkK0j
X-Gm-Gg: AZuq6aJeGgETLkrZxDqasBJ+Krfjv1J/m4GjpBSEZb9p6bf+7H+rx1asc0HVhoe9gDk
	hO04nsrWyi1QnTvqEqg1Anx/dDLgC/o8J1ILCzq8mLPJZp3M39WhJlTR0R0v/JFtZWQSENna/qI
	bFRAfiryt4LnbfU/7Ki5oRqTVYy6M+oTh3n5pD6VHZd7A2Fx7buPhmd8d2MYHZGsX4M/Edr3BsA
	NgE6t57P5feFkowh7RB5GLarZVvwSD6jOnhgigLCKccCYd5Fb3U2PhS1kZm5sIthIo0LFWQdGDF
	kpT7VJmQgIpZzq38K52+6bHhBXJPkOSo57T0G1vhwiXAf0brN+EuIjhqz8JhPt+leCCCeH/7aVP
	PCCNXx+y0SBGrP1079Ek2I9VcpHuKMm3ZU4Q2D8UA7ckX8sGqbwCJEXkASXgT6W/EL88=
X-Received: by 2002:a05:620a:29cc:b0:896:ead2:a657 with SMTP id af79cd13be357-8c9eb131963mr1404880285a.0.1770112524480;
        Tue, 03 Feb 2026 01:55:24 -0800 (PST)
X-Received: by 2002:a05:620a:29cc:b0:896:ead2:a657 with SMTP id af79cd13be357-8c9eb131963mr1404879085a.0.1770112524075;
        Tue, 03 Feb 2026 01:55:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2ed584sm1018869666b.61.2026.02.03.01.55.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 01:55:23 -0800 (PST)
Message-ID: <776a83ea-5739-4ea9-962e-c14ed822cc6e@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 10:55:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: hamoa: enable ETR and CTCU
 devices
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260203-enable-ctcu-and-etr-v2-0-aacc7bd7eccb@oss.qualcomm.com>
 <20260203-enable-ctcu-and-etr-v2-2-aacc7bd7eccb@oss.qualcomm.com>
 <c739da90-de92-4d84-bb5a-e653a9fbdcef@oss.qualcomm.com>
 <c14ba722-5195-472b-a4d6-3b8f6421df7b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c14ba722-5195-472b-a4d6-3b8f6421df7b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Zc4Q98VA c=1 sm=1 tr=0 ts=6981c60d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WGD1OUi62yeOWj14Vj4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: MtPVHU2F6pkkv-YJXRCSKedg9zejMwzD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3OCBTYWx0ZWRfX9XOLadmyk4KJ
 jAuKzCLLN8wyFTepqLe9jZ8biezJt2v9wqaake6EulrYriPq6S1JpllpCRVu5VeABzB8b59Ug3b
 7Sh7rmKSW9/mlUghnz3as7T3ghqqZcubMnGVEgoo2z/9aT2VCDrtTIFcrUr0vhe25WMFxREF6lP
 7zCKU7tJFnPd98Tp/zF4JYjMe/JN3QY5JdP5GBYQunb5FGvWx1Au8sjsODJ1v1ZV5RoQiAeAEiT
 NLewYxzinetYAxYV1ZhtTgOpTeyRh4w4snv/oCI5zV4oLGD1Wh93EHVNjV288VDa4+0TsMk1zpc
 9mDcXGvRT1lWfYTWQuiBSf+QkEFFljGz1TrT22gIXDETH26Eu8/m7Ec0Py1z0dih5MP/6zz0N/y
 j3BQNyY2HNkSSW1IepV/rv79ohVWUGjxivMiXamIgpCoe3ZfXRprPO4ydUDCV9ewSbSjjBHtfv1
 jHvVEgNOV8AyHFJCbtQ==
X-Proofpoint-GUID: MtPVHU2F6pkkv-YJXRCSKedg9zejMwzD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030078
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262156-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.152.154.104:email,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B0D6ED7335
X-Rspamd-Action: no action

On 2/3/26 10:50 AM, Jie Gan wrote:
> 
> 
> On 2/3/2026 5:44 PM, Konrad Dybcio wrote:
>> On 2/3/26 10:32 AM, Jie Gan wrote:
>>> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
>>> tracing data from source device.
>>>
>>> The CTCU serves as the control unit for the ETR device, managing its
>>> behavior to determine how trace data is collected.
>>>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 160 +++++++++++++++++++++++++++++++++++-
>>>   1 file changed, 159 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> index db65c392e618..88ec29446ba1 100644
>>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> @@ -6771,6 +6771,35 @@ data-pins {
>>>               };
>>>           };
>>>   +        ctcu@10001000 {
>>> +            compatible = "qcom,hamoa-ctcu", "qcom,sa8775p-ctcu";
>>
>> Sorry for not pointing that out explicitly the previous time around,
>> but 'hamoa' also falls under the "had numerical compatibles" category
> 
> I saw the dtsi is renamed to hamoa.dtsi but we still need to use qcom,x1e80100 for hamoa?

Preferably, yes, so that all compatibles for a given SoC are
""namespaced"" consistently

Konrad

