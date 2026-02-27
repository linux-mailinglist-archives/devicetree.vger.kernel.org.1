Return-Path: <devicetree+bounces-269042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHcpGacWoWkUqQQAu9opvQ
	(envelope-from <devicetree+bounces-269042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:59:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D12741B272D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:59:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A90813083E0C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 03:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD7AA33E347;
	Fri, 27 Feb 2026 03:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xo7ot54E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SU7BvwWA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7AF33DEC9
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772164771; cv=none; b=VyfzOekjtadFUqCOHhGWptz9Amw8PSxFx8u0YcgrZ+hz1+PI9Z62oEwo9ElGjrlVA8G+dzbC6ApUegPK8gifGMe6Clbrj41Msio6xnWPc3GTqvXA1hdrvtINmaGdtjWbei7HgACLmEiM4npt3ueuOypF61ulmWXUl6ygcgoanF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772164771; c=relaxed/simple;
	bh=gxEYHXuxvHBCiqxOF6wVGXUMG9VsVqQNXOCka8XkgoA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nnk2Sp1UR5VfQbwX80OnxJnsMmeQQgj2SP89tq4ERw0luSNjpDWxFUMZMS9X6eV9Slx4wEMyernZ4pxZphGso1WPQ8DMwHo5wXzQn0Fmvc93M6i2aGLM3385c92k7VoQEhqDg6it+IXTSy97UsG3Lm9ZsThf8vsq+ZINuPQV2UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xo7ot54E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SU7BvwWA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2Kn332440656
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:59:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gxEYHXuxvHBCiqxOF6wVGXUMG9VsVqQNXOCka8XkgoA=; b=Xo7ot54EFPVQkFRr
	BOaxbvTBO5zI84gjBxziste9V3AwLVS3CCz/pE+KonBG8rAkiuAkIPPjbxsJVZCa
	aqZV0ateyq3Dmn+AOpT/meTOAWJ8ER+lnGhRKEJ4q/kALNqdca9qmCGn7JczTQrI
	gca+u+Zjv4MG2aLrbxNNXGdyESE/Daqxat5CPfJUZFtq3wbCGze6api8KNkjBjyw
	Wiqpv7meyXeTXpNUATZqmpe3qrWUNYPECWLkSBihY3wRmRjqJKC6tQ8NIBVkedaF
	9pr0oCfqZ0ziGRX/rGgNy4OaFYNru9K//qkgxUTYo3bwxlB0GMykQsZkTKyckbmN
	GUVIlA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cju4r1sa0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:59:29 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aae3e185a3so7207885ad.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 19:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772164769; x=1772769569; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gxEYHXuxvHBCiqxOF6wVGXUMG9VsVqQNXOCka8XkgoA=;
        b=SU7BvwWAp/AeBGVszCpUWTlM8/CrKJdYrhp8YNYq+I0ap+Wwfr97o5ZYo+meNM2S9c
         Wy0EUwX8BDylNbJ7xBewKWVLNJKjITTcb8Hjqqu6ggufLpfmqPjvjWH0Ya4FOAwaZ/7m
         pPozEY7fNYtclYAJ2v9rTARgkMyeGGLnkh5QdOQtB+5F9X8fjwMcCLdNFFOLY7v+zogR
         hiSGsHptCYKw4GAKPB94+NsZulrotHN/2l2Ufff8NnAZ1FZ/aIIcSmqNsmWH7knxkxc8
         A8fhSbD9u7Fexu48fVibLkaYMGu3B2GynAVGv4k3i9d6X6YuHZBWHpcU/CPNESTO4ovT
         Qa0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772164769; x=1772769569;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gxEYHXuxvHBCiqxOF6wVGXUMG9VsVqQNXOCka8XkgoA=;
        b=Ir+1nQvNQJ0y8knJCIk7uq+NEvFva+0mLkmDn6v2Wyo1Fez++URE9LH92RTPMP3VzD
         JSn3MrE3AbON2WAFaJVDPGTaTNbwS4E/DAK/ZGgJDqGGkZ2U5yp7O6YeBbAkCxz+aWtZ
         VO9mTFg77sLUirVPVrG6IKAampFMoHQElJNCJ7+OLt06DmvsT4hFl/UXyVnj1LxrYQHm
         rj2reVLApHUk2/EAznFpadKeStPjviPy1TCKqPR15utqtEEVeQuNV+1I4HK0zNP+FGw1
         +Wdsn+FfH2mVZCrTxuoxP9KbKhCVw2OZJWPCcwDEqfXXO868stdKOpcLxl6HUXn6sGCS
         LRAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTG6V0sbPdp0jHqKxaAbaKCS3Qrhzfc7rn/2ZR7MIh1DqMo1LH1NUAE7JU4OECuDVHphxGWQmECKJP@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp5RWz9hST8s8YPNAZ3TRjOQNSRiw7RcvFjT7ll2gNiwxmChK8
	7F0s61f/nNqiQqDOJWVncUPPq1cLjwg5fhv9czNAsynVoN8bv0RYkjMhwuHM/tYHMXoCG6RC19K
	KtakEonvuI+BdEwgYKqYHjfrpnJ6WNQm5IDpwIfgwf+2Afb+AkA+iQ3iwjytxw80=
X-Gm-Gg: ATEYQzzi6kel1tUbYbb+dw11dCGGDVRpykFPneQMgpM0Nyr3RpXTDsDaCRGsF88aqQi
	w8sVCDbzQzYv4jdX9HIUpc6mqSG8cL1ROfAdNVQvItgMsTbAWzlbzDoO8xeOHwwCOM/GsCn0y8q
	1/383XrrHRZxjiXXBGWqFHO+/r+H60fbkXKZK8B177IHYfUVeVIvxn/qLaThZ8OmAqqt/7PrINX
	eBwQLDLOnMlITjIaUrEx470PnH2cEVeOJLI9AMhRXHs/RgeIF3aepuoisxo/GowqsdVLJC5Tipn
	8aAP6IOt2QZzgxdvy7saoORm7G0A1gUfsufNJCcgMWl7wAmPfFID0SLpMXx42Vs49csjXd1C1Z4
	l4Cut6Wsf9UArDPWy+b/55Hr1MbvSSsC1GuGsT9a70spELIAzxw==
X-Received: by 2002:a17:902:da8f:b0:2ad:ec0a:b946 with SMTP id d9443c01a7336-2ae2e47a168mr9747375ad.3.1772164769288;
        Thu, 26 Feb 2026 19:59:29 -0800 (PST)
X-Received: by 2002:a17:902:da8f:b0:2ad:ec0a:b946 with SMTP id d9443c01a7336-2ae2e47a168mr9747165ad.3.1772164768831;
        Thu, 26 Feb 2026 19:59:28 -0800 (PST)
Received: from [192.168.1.9] ([223.230.67.147])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739ff34fesm3435271b3a.42.2026.02.26.19.59.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 19:59:28 -0800 (PST)
Message-ID: <738ed5dc-b018-457d-a516-5ae424854fe3@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 09:29:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1] arm64: dts: qcom: hamoa-iot-evk: Add SDC2 node for
 hamoa iot evk board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20260211093045.2595126-1-sarthak.garg@oss.qualcomm.com>
 <ac78f12a-b10d-46e4-97b2-57d826ebd893@oss.qualcomm.com>
Content-Language: en-US
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
In-Reply-To: <ac78f12a-b10d-46e4-97b2-57d826ebd893@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAyNyBTYWx0ZWRfX7JYJt3AWZUVm
 2IM/LC0/OUjJoqd0J6vXciFhtdtT/SYq+7IWqNepOxh8qW3Rss+8YrFzknQSAAmtaeDA/8v+rj2
 i2wZHpz8vRxWB1ps2mDoemfPtixa1mK9thPS+k7Hf+E13nctp3XAjM2inTErj7DcPV0ZWk6GXwi
 6pIY0ZbgaKxZQ5JqVsfXytEuFcYxIsNlIs72RkKhybl0O/Tfg83GSfIM1XE6AsdUnxXDnm3OYP/
 ujXN+NVBWvSJsmv5HbZRWO/psykDreMxHOpYXJ9BAxWEkLfXRweB5nFQ3GzlvPQsjR48p+BXFPP
 Tvq2htw9FKigB1OepFkoUEy7rp8peU9NPA/6vy7W07Eo3iblnim9HLI88vzaw4436/DLOmWGNnd
 7OoxBLNXa3ja2l64Vgl1BD4p5xw7xPN3cLi3QqIlGnRQUztb9YRSntW9qWc3gSbv4iMlzSLRK9E
 xjqHd/9KUMt+7yYuIBQ==
X-Proofpoint-GUID: Lgfz9SAPqV39myJ7VYbUVd0kaEYUcuqZ
X-Authority-Analysis: v=2.4 cv=KZzfcAYD c=1 sm=1 tr=0 ts=69a116a1 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=vlOeVC6CDfVrUwm+MHYtFQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=-Bm3z7QMHiO_7TBOdAEA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: Lgfz9SAPqV39myJ7VYbUVd0kaEYUcuqZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_04,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270027
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269042-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sarthak.garg@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D12741B272D
X-Rspamd-Action: no action


On 2/16/2026 6:23 PM, Konrad Dybcio wrote:
> On 2/11/26 10:30 AM, Sarthak Garg wrote:
>> Enable SD Card host controller for hamoa iot evk board.
>>
>> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
>> ---
> nit: omit "V1" for the v1 in the subject
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad

Sure will resend by omitting V1 from subject.

Regards,
Sarthak



