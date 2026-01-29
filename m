Return-Path: <devicetree+bounces-260899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHYyBORme2l2EQIAu9opvQ
	(envelope-from <devicetree+bounces-260899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:55:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 729B5B0A28
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43EF5300B9B1
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23AF2346AC2;
	Thu, 29 Jan 2026 13:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XTF+Ud1y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="USL9tTce"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C462DB780
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769694943; cv=none; b=M4yfo0b5cE737hvPeBkyH9NRKOh/QonlnczWf4NOwvp8QKQFuU9zIFHk/CDk8EQggDqnm39IZS0a6MobJgrfIKwgOCOayOAV8AGpG2X82avUIq7rfCqUzX7dUJSwEINCJuv4X9g7wtIo6VpJiV55k0FukFYQwJj2CVDxkTX4WFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769694943; c=relaxed/simple;
	bh=9rsmLNzFHZsMCjXq+TdAtlAG5K3aQ6AUx7ZH3w7++4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SCTqxmDpWHfY6OcKFDWOAnnc8FxdR0m0If1LNApNfrP6xLmqaD1pchJ9JgsYF17ja9hT24/hfhtArqPio09B8JJjSJPZLJHOvei4q8weTazcbX++hHnD0MrN6JY5E28lI2o5kFwVBpXpMqVABZ4wv6VbZntrGj64Ru9eXa4Rcpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XTF+Ud1y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=USL9tTce; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T9o55n2061737
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:55:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MXzI/QWcUXm4kzUtdwZo1pedyn+G8yDXu1CMr9z4bTk=; b=XTF+Ud1yFzm7I3pc
	ouhBWBevgJNasoD+ejzK+zYAIOyPl4pd7Ve4yfJ1HS84UFumyJfmEoOjMApt2vVL
	JRJQJCgR2fgN95/aiWT0Qh9/TxweWXhiNy/aCv42rwNJMMS/RYxqdiK9JpBTtv2D
	fruEy5UUkthhcZ410vcCe5k9MDaiOLFvIYHM9tTxU/pnh9x/yui9ZWRLNH85p11M
	MPYDlXAxVOJaaQov76jCVOOxCOfpINezpggJjEmG50m9bVWBmuihptdpCjbL5yo5
	mQpUHNfo8u9RWAQptk/i23FJk65Vvi1/RhVYoXPv9LQtzqdlrpgxZvqwnR0xsJIC
	sFfmpw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bypgrkkkr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:55:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5029a8193c0so3542361cf.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769694940; x=1770299740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MXzI/QWcUXm4kzUtdwZo1pedyn+G8yDXu1CMr9z4bTk=;
        b=USL9tTceoxCrhU28MjjQ6XLnLoPJXcPL6m91vImfnF3PFFC+bBBUNSNqAf4CjXIql7
         wiojiam7j5B6ryY37qsupKhayVwlKvWCX4YVxm5IR5+kmPTPmlMBMWCCZKHSVjhHzrCS
         DL9ptSTc1vDsZwNzw+RZ71y8Kw8c6UntgnyGTMbeeBq+ZCoZb/QEY0AJunC8v6LnPCmk
         9i6slR5VV39ipN3NxOmUp0AUm2lH+dlvsK9zK/Y7Zw4cEwlqpa3i0zEJFeUGP3rj4jrL
         wgfMxS7QLDkcf7kOrxSCuMtkkdXt3DIDDN1JaPZNORjM/aAEyejm0XghdHvIbnwPCOef
         n81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769694940; x=1770299740;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MXzI/QWcUXm4kzUtdwZo1pedyn+G8yDXu1CMr9z4bTk=;
        b=gPPQLumRiT8SKNkgBC3InZDmZuytio3vovr6mTzEJyhxPWGvbhm9xZ5Gjh59SDjKic
         Q3GMJ9V9F8+RUKK3vKT7fAfooERQhRf/op7kB0fPe6r55CwlrkuorZAfqF1eyuUwIkUZ
         E7aKGtJocAdU6TbU8lmf+8XBLE57BiNmN83FUb3oPFaHuEqZOFuavyIiWGztz9f4TeEb
         7K/hTjYWhDwBNAldBnWQ+w6YVXeJMLQLv+PZCucgDT5lOq6+/mizvlxU9NGcOuJETUBm
         UIGP87Dk8SMpX5yG/u0hAehdC4Y9JOqsziYeRMgEQiKM84o62Kwq8RYXTzslDSTg0LSA
         RY3w==
X-Forwarded-Encrypted: i=1; AJvYcCXq+DllaDyrxzUJp91KuVl1KS4LxnG1hS0luSeoLXA+eDBI0Yu4RAxBHV34jP8CdqrDLI3x2rmHjVmP@vger.kernel.org
X-Gm-Message-State: AOJu0YzugVKZ7CbOAPXKfOKMYr31NBqcRzBa+YSmU6tek7cgCKeUypWg
	VWhhldPu0ZlUrgyAF0bew8Kd58yLKfez+axgpdeZ8NuM/ATLK9eagGha3d39Mfv/3Rs44dsO+uF
	MhqQSzUOYsOZyjVSG+TpwPguX/wNljqHx3KcDra3rPsHs7csjGiob/TkOOh5tD02I
X-Gm-Gg: AZuq6aLeeOjKffjvSG/aQ+NHvtHRHcYjv8ry7xNK1XiVy1FNTicktYzyAcJxDQbinbC
	vzBRv8m+g/Tnn5C4nrSnOpgYISwRXA5jYXXTMXTiHz+pUfJBNg3LImqqWjfMNoIybX4OoT0kAPV
	i74ZiTBqtKg8Cy8qJ8IXpb/zAxKdz2C7Gm5zKbiX90UhTBgcDkkBhff03TBYgnGtYz3DERTzTvt
	+x5VxxKJ2hiGVZysJVTjiIBsxlw5eZMdej8UQHMUvl2vu4c34iVjrpuOKpQAEZBzT+id9U7xBlg
	kry1sCpn6CwRAGgjKWkzM59eakwF6JpEHBmUS1AmwC+VBaEfSAabHW+O2xo12TMjHNg2h3HtDOj
	V8EorqsxO5KRrIGnD+cVK+wBdOtcjQwdHV9e/yezpjt+3pzKiLEZpqcO2zKqW/oyhxXc=
X-Received: by 2002:a05:620a:4721:b0:8b2:e704:55fe with SMTP id af79cd13be357-8c714c2db75mr518419585a.10.1769694940022;
        Thu, 29 Jan 2026 05:55:40 -0800 (PST)
X-Received: by 2002:a05:620a:4721:b0:8b2:e704:55fe with SMTP id af79cd13be357-8c714c2db75mr518417785a.10.1769694939521;
        Thu, 29 Jan 2026 05:55:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b46aba2fsm2925268a12.30.2026.01.29.05.55.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 05:55:38 -0800 (PST)
Message-ID: <209905e5-fad7-461e-ab9f-521149b0248a@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 14:55:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: monaco-evk: Enable SDHC1 for eMMC
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com
References: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
 <20260116214354.256878-3-loic.poulain@oss.qualcomm.com>
 <0ca0920a-aebb-4072-a098-48c4c9938c26@oss.qualcomm.com>
 <CAFEp6-3T1=+fZ1x3ADPpu_9P5d+bx3w0XdPzip6OBiWuk32KzA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAFEp6-3T1=+fZ1x3ADPpu_9P5d+bx3w0XdPzip6OBiWuk32KzA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=d7T4CBjE c=1 sm=1 tr=0 ts=697b66dd cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=124UOl5Lhhwps9Am0HIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 5h4RugQaItBv50xDwdauPF9HyN6iDP-v
X-Proofpoint-ORIG-GUID: 5h4RugQaItBv50xDwdauPF9HyN6iDP-v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA5NCBTYWx0ZWRfX8NiOThFCp9au
 HeKfdMT/DacahkgGC14eo7ou0sMyxlyxjvkqTLEPbTUHwPi5Jtm2WyrolaK+/OtWD0nOtXdfauc
 kKO6ATiH+YR/wwHIoXt4UOuPiMRonPANaF9/0zhMNthESqLpqa6PY6wT9ZYz0JZqP0783pIS7sT
 DEO/Fut1seacwqtcqhVKxtMvvtbu2t4t2ddTr5ES+38pi3gqaJm91ZyYuFhDPAFMOKM5+oM4uMZ
 1m+ux+w7EAVUSfE5PKtX5rqYwXIvMa6I/4jv+wMd8C5CwNK1RR3w4cA/WFZP7hr1WMCzlQzHELq
 4HZZTwy0yvl8/uw9RPsYdXfVVymRNJbdg6bT0RdpjhP+WJGwGm04Z7Vb4Qe+8qOOlr4PHez095Z
 sXM3UBdO3QG6HI/Q+f/Xn0nsTwPELFSGa9+Lphdo7sMXbkjVacWc55Y87bzLDu5UEFJ80VMoKwf
 RdnjH8M9c6na46IF/pA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 adultscore=0
 malwarescore=0 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260899-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 729B5B0A28
X-Rspamd-Action: no action

On 1/29/26 2:48 PM, Loic Poulain wrote:
> Hi Konrad,
> 
> On Tue, Jan 27, 2026 at 1:00 PM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 1/16/26 10:43 PM, Loic Poulain wrote:
>>> Monaco EVK has onboard eMMC, that can be used either as primary
>>> boot storage or as secondary storage when booting from UFS.
>>>
>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 20 ++++++++++++++++++++
>>>  1 file changed, 20 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> index bb35893da73d..c272d7db80e2 100644
>>> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> @@ -76,6 +76,15 @@ platform {
>>>                       };
>>>               };
>>>       };
>>> +
>>> +     /* This comes from a PMIC handled within the SAIL domain */
>>> +     vreg_s2s: vreg-s2s {
>>> +             compatible = "regulator-fixed";
>>> +             regulator-name = "vreg_s2s";
>>> +
>>> +             regulator-min-microvolt = <1800000>;
>>> +             regulator-max-microvolt = <1800000>;
>>
>> Is that the case for both SAIL- and SAIL-free SKUs?
> 
> To my knowledge, there is no Monaco‑based SKU that can start without
> SAIL. Monaco depends on SAIL for proper initialization, even if it is
> not subsequently used.

Perhaps there's some nuance deep enough that we don't have to care
about it

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


