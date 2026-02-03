Return-Path: <devicetree+bounces-262225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GGKF6TmgWl0LwMAu9opvQ
	(envelope-from <devicetree+bounces-262225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:14:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B48ABD8DCF
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72314300950A
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3CC33D6EC;
	Tue,  3 Feb 2026 12:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UVMwo7JK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YL6/xAEa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA26C33D507
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770120562; cv=none; b=gSBPsMVbTEueOYCgzTCH9MYFkLA/qM/dyGdCd9XbqlxLDKNtmsmeF9hGla0qN2ZfLsh2d2RUzqt3NpJ0umlnCsjVRfIOaP5iaaAxP+KBK0VatehKLAxmeHUPIpViL0rtL8uHa686BPVdSswEq4HwVz6bl8PDbBrf3qvWslzOjFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770120562; c=relaxed/simple;
	bh=LhX4W4966WbA5RsY6vvGNAKLc5ZklFBLRf+iIcs0fLA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MZgL8QDA46Uf1lenLjUXojcrYium91r/c2/7uJb7wlUKuoF07Pa+Yycu6DlUVvl4NRteVpp0I9c3D2XrLHT8UJGpYoTSK8zYTElJ1UwBLbJ7YJHTjrTAn15CfHriUoMOm+Lh2xZxSd8vU/0PgwpwxpWaz752BAxrJtGdItSmDY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UVMwo7JK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YL6/xAEa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6136to5s2884449
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 12:09:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GPoB5vfU+XGoctzE9w6IbSeTVRMHd7Q6eL3ax+WmBsM=; b=UVMwo7JKrp0aSnNN
	MzC2V3Hmrn578A+I4RYHamWF/NMEGQ/mq+YgWorxlsvVa4nyNC34yODoazIpGE/D
	l/uScc8h0Z+z03Jb8FfyWWHYXoX0iHbUMjJRBksxjeKqLkzoMHHmpnEUoxD/jBJr
	cpTYWe48Ax5Xfz+FkvNxaAtBg/UrCEsJNJSA3die0nfn01Ve5TLbD9uKhLTfy3UT
	KKHSFYa8Dkomk+vWB6WzdFI4jUsxRYXHGaRwGMWZ8LhycRdfwal/ebDJ37WddCgq
	Jl9bur7MaXtwQmfzqKahXvqqI4uksSam3v9bpGfPan610lrDDQoq8C7iAZV9o9OQ
	ElB+4g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2uu3m10q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:09:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c536c9d2f7so160450185a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:09:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770120559; x=1770725359; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GPoB5vfU+XGoctzE9w6IbSeTVRMHd7Q6eL3ax+WmBsM=;
        b=YL6/xAEahDazUv6MUYDt9id15vAv0h9hkg2jpyDMdsFaI/mOBC+JM6f/DLDAnqBkX+
         CJcLVzHueWPOJfUZVK0WG9E2Cz0M4926hgoAryK9UuvgiTKQsJFosztpnYT59+eGxMgm
         4Oc9UfNOt+2vO4b/ed8Vyp07MtNo80Ao2ltgnpALrQigmmkdVwKcN5r47WvHq6ov2M/i
         ze6TVRGhNOyjc95m6V3HtvaTZ2/TynPv5OtB4kqPsjkvYHVQ+ut1zXf2IQIL1piyc5LM
         krtuqVpqHW/aZT7DcT7xCXvR26QPEUmwjX5Y2n9HeNtQMBANKT9dBJYMG59PcCj+SZAa
         likA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770120559; x=1770725359;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GPoB5vfU+XGoctzE9w6IbSeTVRMHd7Q6eL3ax+WmBsM=;
        b=bzwDFweWaAsdqp91cY/Sux8UQCMIPoaxqNVg2RZiYgXz+QUhMuclX3+sKnOFZWrgOx
         /UcJyQab50OJ8skUAgQZqR0fvz7+kxuohsb8GXiLtuMa9/ZzNMfcQ4DCA0HY9J7vL3fY
         5mVctWg4X3VJjRz0t7BVUlw7fDW8qjeSHxJFE6G+lDMFFr0+amU9r2nVfWmhsCh9HJ6Z
         Dc12hYL3CQ3vYMaBjXrG0gYiH2QRxjutu6s+WO8aVZ4emIbe0sE3kuUDeduycMT5LSux
         +SWmeA63Da2pasCjIYf5UEVYnv/g1eFnA5CVgFTXBeRz3zUGzqvTzobXEyHW0UkpuKyV
         4VFg==
X-Forwarded-Encrypted: i=1; AJvYcCWTriG+4f7sfrpaYIomfqkF1RePb3cuegu4lhPt4Ofa086/vxzw+X5XCzL1zUc3PVzac8PgSb52DJCy@vger.kernel.org
X-Gm-Message-State: AOJu0YwxYJUAMfWpPTBB+ud70jCyoMnby0J2Yk1SSEtyoQYvia0jrY4l
	4lDpXUdYCn6Cdx8KjP4nUTxS6dHzBqSYgEhQMMCkGG5jgwIKJByh183DzUDm4pKriLEKwcqpiyf
	Eeheu2+Vpfrt5sEsupdByIPKrEiCureOUeYJEsuRGsLpagIG76n9jutGhDCdwmyRC
X-Gm-Gg: AZuq6aKsWBkzf4aXJvdq6nk9OVU6DVQP/cI+N6oaom/TBPptk7sHtStH92y5Dpj5v07
	P5QI+lOEmYrfiDTCpNXiI7wfOpLtTtzhR4jfRHU4wEyABTL8Jfrm/rbFJp0yF8hR9LAZDdISUiE
	sy5sOjAjW9YYeVOUiCzAsRnW9FDF/CzbM8Hjcw5SR+4WiJ1VzxvpeBHIU2lTQnaT7riOwQFNpbh
	mPjEkGQ4vhJBWKmtpaxbOoW975YnbJdCDD0H1V2NX03L8P2Z59DLTf5vib+iQp+zgYwdGdzff9h
	0+oJVteUpPpm753cOa8KwUm8DXzY5HSvaRjEvn5dUdYwnjfmIVvTElhlg1tCnJJIwDEXAsCx4pE
	RbndUuzbM1nhsLM2uCcccqyc8qAH/r2xaoz2AVR/7wPONIk/RDlhQGyvHhBVYJvFdgFY=
X-Received: by 2002:a05:620a:bd6:b0:8c0:cec5:148c with SMTP id af79cd13be357-8c9eb34ff20mr1529517485a.11.1770120559092;
        Tue, 03 Feb 2026 04:09:19 -0800 (PST)
X-Received: by 2002:a05:620a:bd6:b0:8c0:cec5:148c with SMTP id af79cd13be357-8c9eb34ff20mr1529515085a.11.1770120558684;
        Tue, 03 Feb 2026 04:09:18 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-659390c08ddsm751708a12.11.2026.02.03.04.09.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 04:09:18 -0800 (PST)
Message-ID: <006f6c19-d923-47c8-9890-c7431c8c1e77@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 13:09:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/8] Fix TCSR representation on SM8750
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Linus Walleij <linusw@kernel.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Taniya Das
 <quic_tdas@quicinc.com>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Jishnu Prakash <quic_jprakash@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, stable+noautosel@kernel.org
References: <20260202-topic-8750_tcsr-v1-0-cd7e6648c64f@oss.qualcomm.com>
 <20260202181917.imo5lk3smwott2ue@hu-mojha-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202181917.imo5lk3smwott2ue@hu-mojha-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: O2qIe-cwigLWXTU9TKAXI0RygJrc8OW4
X-Authority-Analysis: v=2.4 cv=OrRCCi/t c=1 sm=1 tr=0 ts=6981e570 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mv6jPIj4YeSnJgRhVR4A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: O2qIe-cwigLWXTU9TKAXI0RygJrc8OW4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA5NiBTYWx0ZWRfX3WSw2e8fLmxa
 Z29GRaSrL3ebsC7+bdDnwvJI8kDGuMn4+Bp7u3hc99IRYlq5yAqzPEnh3giOcn7xTDvWXdAWydm
 ZmayTZnS4/Jbb+bT5MkyLBzgmlsJoMLFElhrGy1UBFLBmEUBErw9xeau/6YY4/1Kte4qO7UcoZG
 rhHBVaT84T0pZBEH6n9hj4zRq/QDoiOYJf0IbCpyreYjU2XweSQzD4RpJ8Vlm6NTGowM0rvA7Ja
 cdwyXQEjXHoSTa78e8RN2IrQeRexqzy1YC8qHzaAH092Ibv8wYQNVWarkAULk1JJ9YrH55evPt9
 cLKXa9VYGc6/tJfmvKvhkpdC4zKEUxvwpOIuqZhfda91VeIMFp1sTB3NmLDnWygq+IkKoreujUJ
 Ag3F6lW0T4XQ8BHLHz/goJPB+yti30cMAfKqcbuj0ZNzllz7uFhRGfKlJ9A891p8A0LXkck3FGI
 d0/SKyh53uMIAPValUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030096
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
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262225-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,noautosel];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B48ABD8DCF
X-Rspamd-Action: no action

On 2/2/26 7:19 PM, Mukesh Ojha wrote:
> On Mon, Feb 02, 2026 at 03:57:32PM +0100, Konrad Dybcio wrote:
>> As sparked by this thread:
>> <20260112151725.2308971-1-mukesh.ojha@oss.qualcomm.com>
>>
>> The current representation of TCSR is wrong.
>>
>> On platforms post and including SM8550, the TCSR had a sub-block in it,
>> containing gate clocks used for distributing the XO output to various
>> consumers. This is what we refer to as TCSR_CC upstream.
>>
>> SM8750 however, is notably different. That same set of tunables had
>> been moved to the TLMM register space. This is made worse, as the
>> sm8750-tcsrcc driver consumes the qcom,sm8750-tcsr compatible.
>>
>> This hardware change had been undone with the generation following
>> 8750.
>>
>> This series attempts to unwind that. It's difficult to merge, both for
>> bindings and functional reasons..
>>
>> I think it goes without saying this breaks backwards compatibility, but
>> it has to be done to represent TCSR at all. The patches are ordered in
>> a least-destructive order..
>>
>> I gave this a quick spin on (remote) hw, the UFS (one of the consumers)
>> still works, but more testing would be greatly appreciated.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Thanks Konrad for taking this forward, while I was also working on your
> suggestion to make tlmm a clock provider.

I was under the impression you abandoned that patch, but indeed I
should have asked first. My intention wasn't to beat you to it, but
to unblock it. Please accept my apologies.

Konrad

