Return-Path: <devicetree+bounces-266144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLTpLppolGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:09:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D2E14C695
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 602D1303F578
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B46A35A95B;
	Tue, 17 Feb 2026 13:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YBnSHuoh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NfPDKXtF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35F235A92F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333611; cv=none; b=jEmZTaIcfSL/fD0FL2WE1e/GKFvGqS9BX37IoDBUvMC7Saxj7VDZg8I/MTI9iyMvJ9uL4/nb4OU+LtZVPQdG+6yfH+UdmriGHmh1P2axTtldnlB8F4zXBdmX9rVv1tcahnyEX7mcp6+XPAk9YWE7YYzs95XD5ITGIQmT1uGCOnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333611; c=relaxed/simple;
	bh=XGDYv8+ChssJeftiwtVClAwzyktY4ZH7V/vRcYP5oVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=pavnQWDNMVfXgAA4efZk3vzaKwSuDXlMJT7PqFwfdatNA5cMtuE5xUUM0eV3AemxlKbCV4nxEbBL3JjKz2obDzPtKJOQ2Nhk49b2xPXBSEhDtSX864VGa1sxgF569w8QDOtCaWc8F4YQ7/oVn8eHb2LBk19gxzKhQL0LoERKci0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YBnSHuoh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NfPDKXtF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H90SUp985650
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:06:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VdOaicgS1QlU9kJAG8SROo/OuWOziM8P6FqTRQFlr2I=; b=YBnSHuohiPZ1+rDY
	JZG16BZ81CpuyCOgyfb9gP9NchG6ZzRFEhXYFjyT5MuqcxqiuNOj73MvgvcVjXbp
	q9Px8ak5VRNr4ZvVOBAoXo2MF9/OtaY1nI9819WJtUvdK03jPAITARsitWwZfvbh
	auliOhdsFFx956NSsTq+7R6/QVEvwFPhBYg+cwknkJrShmwjMYM87Dc5/nSy7aPX
	ILg/6+I+2W51z2otn84ZdSA/TWeSXvyPAOc/CKVuNsVMG2KeS2xmCR9CH5APLrnQ
	Zx6gD+nt0K5pg6IC+RapKAanupfFmvQMwTch15Xmn/V3i3JPT2GlABqizmBgsSHp
	OC1lwQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ap2asp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:06:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb485c686cso314013385a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333608; x=1771938408; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VdOaicgS1QlU9kJAG8SROo/OuWOziM8P6FqTRQFlr2I=;
        b=NfPDKXtFi+csuCcX0STrNxdFaFhfgBuOdII7ZYclZvgK4aORLN/8J9C/fAWVs0LJgu
         03HikB5tbPUgtVs5om67U5N0UFVQ0YNZmmGsnNH1AT/a931t/LXrjbCn1KxcA1SARyAQ
         34/uS0REjOp0R8lPmagQfGJP6i9GjZYNkBMbhK/hysDTE4/d0uoD9Wk5k97e4OKz6uhi
         bx2F/WYMtTCxwOZm17jSI1gfdEa55zYOH0/6eZ2ctjHp4Dp2Le8XXvvkRN45dPClH0dX
         42dOHwO6sK0B5a9vo3Vq36/dmbm6Q34N/Ps/mRm3oLmcxJsW1X+FawxlSB4VZFruuKv7
         8uBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333608; x=1771938408;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VdOaicgS1QlU9kJAG8SROo/OuWOziM8P6FqTRQFlr2I=;
        b=jsLdPtn/TWcYiNyrnHVyWJCD4Hh9wIpMkJFA+NI7HJ/uqb2Qpx+ikHdEG4lYZAnASG
         lBdN8YgtAA15OEfrCPTGTqeT+oyE2lrWoxugNPOSxc+KLLrzlKH8Pb1c7zNHE4831RjH
         SaZ2LomFsj9JDCTgZnudYz07mqYrAocdj7bnD+KY4oGjAFS7s878b+DsnkVQuaGjFUrw
         fZ3/PVD5/OLDYvzTaidJja4aU2sgG4MTbdcQhEdmkWlVBRzuJgAhJ/kr/RWOrqEkS37I
         Xr2d+gR/4tqI/tnjyXLinoMI9bhbKDQkZdeZtHbVcR0fF+2dq7Y3fUw8vgU0EtItEJl0
         TLow==
X-Forwarded-Encrypted: i=1; AJvYcCVyeXv2EOhtyXh+6klQayeBBRzdk/Jq6MP7q6E1pwgSHwA/pFi3MHdCzXqUH7a8E4Yf5lG7puADrx1c@vger.kernel.org
X-Gm-Message-State: AOJu0YxUi4FlpS0VG928MiWcmCzvToP3xzvbhCNHZgJR32+IBRh9luWB
	/nayQDDludwsClYXKsz50pd/IrPhe/4wA6ojfzalp/CzDCZUtPSFGG57Gd0a9LbtVS0ECcaeVQy
	zagUDONVEdubi/C0Ioyn9+3qyuFGqVT1vwtfROc81cSvNe+h9jkuuqt0J+2EQWMX1
X-Gm-Gg: AZuq6aIFZ8hoUxk9yfavRkRgyrejte4e1itfCY7iYoUZVZKhmbzqD682tsuwXpsgqp8
	t/8OKM9kZjPtXr1xpbzrZXZFiYxgjKRv8KAlcTy31xrjB+B3DR4urYKZgaA18a1v6NSqkhvtgmT
	8CM1BvRRnznWmpq4ZplDrNLT14obS6dPeroMJbbRp9Fo536of8Hlifp7yxxGo1H3vgOUknf1QeS
	4HRYFNFTrG+u2EpLHespw8xcg5/4AA7H1WWD4yuPIiVyUUic8fdJOCAqlrWweGZFMvzmvkWreF4
	ZSeKeOldubkLFtQ+xES5ZyShvE/MIyY5Cl5Sq8ZLBrm8XH4DTSRBAR+9CIwhAZkG+7207ebgtT9
	zhku5vsvPaP6BWIendvQdzRh+0ythg18zvtCEi8qzMbZCNM5p9vDmMlmlL8i5oLzhLo/LGSzh1O
	uAVis=
X-Received: by 2002:a05:620a:400a:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8cb4081e176mr1414383185a.1.1771333608240;
        Tue, 17 Feb 2026 05:06:48 -0800 (PST)
X-Received: by 2002:a05:620a:400a:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8cb4081e176mr1414379585a.1.1771333607755;
        Tue, 17 Feb 2026 05:06:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bace3fc4esm2497219a12.0.2026.02.17.05.06.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 05:06:47 -0800 (PST)
Message-ID: <271de5ab-3023-42b8-887f-f7ba565a73c6@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 14:06:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: interconnect: qcom,glymur-rpmh:
 De-acronymize SoC name
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260217130035.281752-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217130035.281752-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfX5e0enziTQimy
 kIupxpXTRX86mjAzlDREMeOk96Jh9u7pteNyzIYfB1Vew0jT+zRL6NPnx+tCtRharJCraGwxPu4
 bvZ5y95rjHIamWbVacwxoT3reF4yDIfdjdfdl8cEO6FJwmIXgiOsMAu/3s3cUc6RDaY1o+0cGQf
 k3FhIb9OLE/0QqkZYx5QtFKqMId68kUjczchyvUJV9rz4PcFqbTnOVXm2uiDAkP0m8N5Ps71M60
 tESx9OvKF3TEH7k8UitCkexn3Lrn/ErMC9pmYmJSjdo0tCAe7EV5Vd7B0i0t8cWA9NNu4JtlJRj
 s3DjAElJQzOYO5jj0FjuvCQZsRvyGyra99W/1cWL/Uz6DpPbVBqDpksyJqjPJVoe0nCYId4Y8DO
 7gUg9IdqY4w6MRFJMpzWKJqWD9vNc3/l/dxlhXVavmnoAdB8AmMZrIuRyGveeP9Xm+5dvZgR+bJ
 PsQXXsQi+sQ7aS3ZH9g==
X-Proofpoint-ORIG-GUID: Z5BqDGRj7WJRQ0SxreWPKnUXQzYSUSnO
X-Proofpoint-GUID: Z5BqDGRj7WJRQ0SxreWPKnUXQzYSUSnO
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=699467e9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Rh8BIR2qzSpX2dRZ-WwA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266144-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 66D2E14C695
X-Rspamd-Action: no action

On 2/17/26 2:00 PM, Krzysztof Kozlowski wrote:
> Glymur is a codename of Qualcomm SoC, not an acronym.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

