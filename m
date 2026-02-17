Return-Path: <devicetree+bounces-266043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AW0AE00lGlAAgIAu9opvQ
	(envelope-from <devicetree+bounces-266043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:26:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 517A914A5CF
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:26:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45CAD3025C49
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F9D308F30;
	Tue, 17 Feb 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jy2UUQ+v";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bOHTQN0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA613081DF
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771320394; cv=none; b=XP35ZShUc4ziQ6Svm9oVskcwU2CW7e7zWGyFcNsOvdlzleNTRCSTAi5J5o+k/aTLDldPbQHyRnvFO5gydLAtLl/S+mktnd35+GJeJLCKQORV61qtqqp1UK+FK1rTZU5JCuKwjvzcEEspI1MWhe/TSYjEPGUTSpxDEP2othMhyk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771320394; c=relaxed/simple;
	bh=91hry9pO4ZNwKwdeo15BNOS4GoTCbyu8ssR+zRQ4240=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tLXwVnKXhUlXOQ9JiDzgYzmOitcjugBmKhRN4IXHnz/O24VbThgKE5kezNGeOO3wm+rqnMiaNSDVkSzp9EmNbzcyKdgjQ8rnOpbM86gx34YQXkcA6HrcLoAmXE0NiIwhKGL7ZZwhsqElwVKLbVdxhLJ397p8irUXz+bCD2RJsDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jy2UUQ+v; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bOHTQN0u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GL7qiW850154
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:26:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sm92oAKENnOQEPvWXTMG/8Szy9/9PlOsPy6S0WKSvrI=; b=jy2UUQ+vmTgV6qDS
	NN8qM3z8U3nE8iYilOQUA66S7co8NHgQIgUHT5sOgHVoJc25PMUOjHHg8HL6tDJ5
	bSDa0adEnbzciyIYH2xnr9HPkBOi0dPAeCt1DxO8c/Is5n0pD1Ikw8qWAisi9rAz
	gx7IAo79Bj6yXf/3ZEqjmzF9h51VmWHXg8JHeGIElMip6cwCdiYciFjbcyNfXbmw
	RYsRP8aL+9eJz5EwUqhz3MdY+eaOl9d4Rq4SAN5zKrD7sS37chQNnGZqO+1nofqr
	o4ecH4ttUMDkY/f9VkmSrje0ZoSYkcstS03GUaEjpC1Bb7gpnwb0NnzWs3T+q8TK
	SW1BYg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrsrgy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:26:31 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5069ad151fcso29736271cf.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771320391; x=1771925191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sm92oAKENnOQEPvWXTMG/8Szy9/9PlOsPy6S0WKSvrI=;
        b=bOHTQN0uAytimfWY+fS1QCNv7u3y0LntPxQAnvV25N3rPPuktl+ASF+mTI041MADMu
         oRk9AACSLE61ovZUSTsi+1Ot7yd+1cM0lst1v2Z5WYFmGfPAYiyUvfM4bZoxWWcPIqTn
         O9i3TkLef3hN2zHs1g2xz55CYU8CN3+6j8fadZLDJMHk5RMjKDEC90ar/dRPX0OTIJ5J
         GdhDAsUWofyIICLbl78GzBgHwWSOMobIBYYfRPzaGg9+CdNu1Bf4t4FwNVL+n+k0ce3u
         uGXt2aFe4VTdtJIbACrtWpdwr585Nue0eQcziLeLEYheAoNGzzUyDAErJ+WoG7cRVKKi
         HCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771320391; x=1771925191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sm92oAKENnOQEPvWXTMG/8Szy9/9PlOsPy6S0WKSvrI=;
        b=eMIhH5fK4a96Dc9fete21K3P5bvvpMTuwZaE8c2BY/mWbfTTz0etjbweMqrLdkJed3
         MsK9Kd5QEhs5eW29z4Rrb71w2PZQF5Go1ibiVdOUV7fZ+8pNmpMaWAYCyJeaXbZR0Tl0
         3YJIokrkgXpqqFaztVCkPOji2hChsd21gxf7Lt2e06ICBjlC7EJ00uibn8KBnsVV9ITD
         moZ0lNo/mvts2MBkNxBfcUpKHAFHFFw5Fwu4Z3Bqi4p/6AwKlA/mZFYLtU1jPrR5ofKc
         +l1kryMEKjxicGovznlmZ3vTGKpIVJvTZhbhDljIgfvH5Ehx+lIbx1PIkxEsvzqkaFEj
         faeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxOs9n3cZnrOKf5zzxK4djW7JCmiVZlU09fuH8wrCy3EkcPqckl78ukNgiE2s3mThS1O7MvmwnEeKf@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn6ihGWBc147QdWOCnF0L4ZR/+47RDl/Ni8ncQT6+x6aNFYLLe
	d1D9vgXicFKHxMZM2KPXCUHn1toXJcvmq8zjtZzpp39ENQSr4VezPIjylSwKafT3FHKlwUbB6JO
	sGv+G2Xvb9/T3k68CojmXRIwr7YC1aEmEORYh7jzzrCMjDP3DDrBCteochNDJzoRx
X-Gm-Gg: AZuq6aLdca5hAIvHz4BKdswq9T2n/VsjH86AWbG6elnC10Aw3dXfkp7oly5hvvB/fAt
	ta/1pDB474ErgFNakrOZESg3siZSVPCIiNpNagRuDZZWqM9pgXxQt84aPNA9ZZBx/5viDChZxyv
	BxqrZAAKETLDmoXNT4zcXc23Z6I9sQijcphavpEyk6ilS8Rad2rLtfkckhx+3Q0lwaApKHxYzKK
	RuwlSXCXT2XdRN38OOxGpCVXIxQDcgqnUQjOTTHAZ83vDuTsShPTjOsSLb6xxCQdyauOGuezzS7
	NF47YuraW4xK8iWS5+W7E8JLQYRcoHb3D/nnX8/OV+xCAH04xnBNBc7Qcxqit2FzD7VXZobmKuB
	OH7YBgahBXCZmLJ8cc0qEFUwdRhYKBO+BDKKdd3Ky30cuPngALyXKdTWygAfM4PDLKOxrjVh7wa
	9onLc=
X-Received: by 2002:a05:622a:148e:b0:501:4767:a64 with SMTP id d75a77b69052e-506a6a4daffmr148257261cf.5.1771320391380;
        Tue, 17 Feb 2026 01:26:31 -0800 (PST)
X-Received: by 2002:a05:622a:148e:b0:501:4767:a64 with SMTP id d75a77b69052e-506a6a4daffmr148257111cf.5.1771320390987;
        Tue, 17 Feb 2026 01:26:30 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad4faca4sm2308272a12.33.2026.02.17.01.26.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 01:26:29 -0800 (PST)
Message-ID: <f3394308-ee08-45db-a0fb-569d1cdd7fca@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 10:26:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] clk: qcom: Add support for Global clock controller
 on Eliza
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das
 <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
 <20260216-eliza-clocks-v3-5-8afc5a7e3a98@oss.qualcomm.com>
 <0f3fec98-4d58-4197-82e4-41480066d42b@oss.qualcomm.com>
 <cqx6t5tcshcqyof4aaeawa7gyocaokzyqjmyxgxis7xsfc4wwg@jeggol3ifwu7>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cqx6t5tcshcqyof4aaeawa7gyocaokzyqjmyxgxis7xsfc4wwg@jeggol3ifwu7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=69943447 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=6ZlnZXRTM0lKxT0uN3UA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA3OCBTYWx0ZWRfX7E4xS+d507kW
 YYTyAZoNlASr6S0yJTEaneU1h/kAkdtDb0BU3SJ4b0OgnufVAha4BbojinOZCXgOuUlK1UGYymL
 Cw10Cr1It1r2kIoJVIl1OMkWxP0GMhPPi8DufGWqplrmkAp0Qg3mNFYsdLbHK6P3h9IjQ8Uf0qE
 e++Y3lQE6HOAH910eOdnBmhor3WlNeZzCeShhgt2Wah+1BPN/t6mxOOj1XLtoouyuuyllGB54xs
 kg3Tnc7v1ltFNaVm6G5z/oNrR6Bw2fBfc8Ge1bV+xN/Xjt+kQNE/8wvwkSQTL0FBx6JLQrdCFfY
 MXAyV+fhRzXoAugXlHO4wNZwhmsSBGk7Gg4bbHVuiCok75iLHlPF4efy77RwPnQBV9z7uAih2k1
 rDOt1ZZgr1a1JdVJr9XWGHS06hcri/8lOKyD73IHcoWyNH9cqiTGZ36yz8p8/iLmfWOWMYiuEDl
 ZX6cOyrwpSGPQkI6wNA==
X-Proofpoint-ORIG-GUID: TH5rk21h-A3ur9E7bfMasOV6uLp8Ta95
X-Proofpoint-GUID: TH5rk21h-A3ur9E7bfMasOV6uLp8Ta95
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170078
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266043-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 517A914A5CF
X-Rspamd-Action: no action

On 2/17/26 8:57 AM, Abel Vesa wrote:
> On 26-02-16 16:57:24, Konrad Dybcio wrote:
>> On 2/16/26 2:43 PM, Abel Vesa wrote:
>>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>>
>>> Add support for Global clock controller for Eliza Qualcomm SoC.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> ---
>>
>> Do we need force_mem_on on UFS clocks?
> 
> Not sure yet as UFS isn't up.

FWIW downstream does that for this platform and it seems to be the
case on most recent platforms too

Konrad

