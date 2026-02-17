Return-Path: <devicetree+bounces-266090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aG/0HyVWlGm8CwIAu9opvQ
	(envelope-from <devicetree+bounces-266090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:51:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C6514B939
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 80E1C300678E
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 336D833554C;
	Tue, 17 Feb 2026 11:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pbz09iiM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WvwTaGMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF8733509C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329057; cv=none; b=rkyAo5PPjQ5Q3gtCLUf2oxsCdFrtGgI6DVqoX8qCmKaRzqkaZfr5AYaA6TrvKejOtM5VqpM4UnHnwfXFdSAPnLz3/FI0XybX5mwyW7RfmC+XGMo8XHcCltNiGitPe6CLd2/wBB/QfM63NQyzFDgWZExJyxI4nauSGKq4Uokn7TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329057; c=relaxed/simple;
	bh=GfrhspEOoj2X17wPsezEFlowPHO0fecFDfA9xsF812o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=miI8ivIaZGI7B/gac1/qC05WV1SxqNW/fldeWJd2ZF8Wv5B8CRMqb7LCzl8HLHeYwdqwfBJQto6+efSoNY/6dDxGDH1XyaA2TchouUR27yAXeV78mGMcnc5fyIGr86RniIwNyIggJ6qgu9ktKr0y/5YLhanWHI8loD+mPi2bCQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pbz09iiM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WvwTaGMD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HBMggt1613313
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:50:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HnkLXMMogq7XjsBUG9HORb7n5lxarzcSidwd8uzWC5E=; b=pbz09iiMCa8Qv3l7
	fCG76peBTjsmAYX/bi0yaJYI/Zuxn4XfHBQCpxum9jPLDShe8zpvJOtPZHx4arPH
	9oLScJK7Cukb5UgEeEBEvvt0+RR0t7InW2wps/R/tXO8seaGx88G5YCxphP3ICKB
	M5zAa1EuyPxNJf4bhBT6q8EF0Z/h6xMm57/zelb0ujMG/Jc3vWhoTWjPzbsAy1jk
	ZhW7S62E+21PUKpvQl6NWnkl7uxqwjf8Gm/5gvuGk15KxgJD+bc75S8fHY6NBQg1
	8URQS1AaWYRZ7MkujyH+g9/1VOy3cWpe6SLhcb/07CCveLSQ+IdmF2TyR0aQOPFL
	bDamhg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662t83b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:50:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89496f5086dso34238786d6.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329054; x=1771933854; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HnkLXMMogq7XjsBUG9HORb7n5lxarzcSidwd8uzWC5E=;
        b=WvwTaGMDZLXY/+h1rfz6S4iGnW35/Sdq4/R8yCWJn5IdGIYmSJb5RTNzCnKb3Oq2vZ
         jkhbpCXoFpC+Os+h7msE7KAg0MUgs+G+P921HuhnlwdQCghpruL/MyojVrbilO4k1tsN
         7LrJ2+GjZ8uSSEoUQbdl/6nFxN7DN5aVKeJJMF30hmI0YtKJ5XimriU5gjyUHCddawvM
         JYHL7bvp6+YkGUQctnjHP5jFiw+hTwqNmPHTzkcIVffnTIWH0Xbw//RV6UautaHolGFH
         AWMN0Ok18HwJIeB5S3JnESADKElLKgzMUwTvA/T1rhT1vXKITKyc8wnVtvv7IIV1Ej7+
         HzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329054; x=1771933854;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HnkLXMMogq7XjsBUG9HORb7n5lxarzcSidwd8uzWC5E=;
        b=Zyp0MjT9f5f0PM1ZUAOTXwFeM0tHzaF90ek9JxoVgK0KLby0vPReoRyiFwx6AVLpDY
         DeleMJDGLKZ/XEj58YZcVfO4pzKZT0Jr783CPNEQmizTnvrCE9rajAZsdsFoFC99uI4k
         7otdJYhMckbcWJXqleRrsV69HeYcIYBqy8axmLux1dHFSx6dZj6A1bHYHlMH9LSm1f+c
         fT5nnOQOr7vPKU8/jiEF9ehFjoUO3lVjGqrFich7gLXMZ1CmxUbXE44UhQVqEXmUgaN/
         rCtHIgoZy8bAW7gkIDyW9Y+jjK4/qp2xH15UXm6MnxhZRQAuKFoyorK+im841LQt3LjA
         Kceg==
X-Forwarded-Encrypted: i=1; AJvYcCUGpoiIvOmouhEugZU5DAMqqq89exwfG4fQ7i1upy58brDEFdBG+qBWvwh8gYTi2WUWDa3Z5uGvfd8d@vger.kernel.org
X-Gm-Message-State: AOJu0YyHu7mlZsMl3auSf/cs/UAHb2ujN8kAZf/F+X3u1IIGIvaRbQa6
	NUTf/aA1a5XQVBLRa+5yyQ0yemrK6cLxjppdkS551FLrRs4VZcO8U0QAkzIR6BYXdKL1jG97XOT
	xJM0Eu8+BFIlZbfFZk9slN0mCkQl4z4R8f2f+mSDeoCJtuBKGawAZz3yKGi6pCar4
X-Gm-Gg: AZuq6aL7qtI1K76yfjPe8JHB6BNOlfjbWavI72neIMplPoQLMwvjyOSC/cFexA2tPJ/
	nvz9yzxrxPmNagotZgwhtWUltidyVP0DqRWKAW4T2l4lFq+N1d7FOUCQbRi1014A6MLPo62SzX5
	0atdOf/dPuGcI5Q6IknuvI54hHbhoPoeamP7il22PbWvK+AuHnPM53T5JsBiwnIdFCj6t7bJEmK
	+U3TCZENowf1YS0mk2f/Y/cuh+Y5usHOCdYWpvz9wvNxcQlqO0dNYojpHlHiKJMihEnMFVwO1m2
	88BF4CuGa9yThSQQghbG8D2uFnbbPt2tNtBCD4qZvz5a7tJQAQP3EP6cGc0RXbElNi2z/1Axxpy
	09DHUbLvRsZYcBQXqbuenbKP9jkz7cUovoZkR+LTsmYXPRMcrzPLz0quTWcZAVrfF54VD1DYWrC
	kQb3g=
X-Received: by 2002:a05:6214:8004:b0:895:4afd:5dea with SMTP id 6a1803df08f44-89734625af4mr140112216d6.0.1771329054515;
        Tue, 17 Feb 2026 03:50:54 -0800 (PST)
X-Received: by 2002:a05:6214:8004:b0:895:4afd:5dea with SMTP id 6a1803df08f44-89734625af4mr140111986d6.0.1771329054063;
        Tue, 17 Feb 2026 03:50:54 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc766579asm337738466b.54.2026.02.17.03.50.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 03:50:53 -0800 (PST)
Message-ID: <270589cf-383c-4062-baad-d232f7eef3d5@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 12:50:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 6/8] clk: qcom: Remove tcsrcc-sm8750
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
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
        linux-gpio@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
References: <20260202-topic-8750_tcsr-v1-0-cd7e6648c64f@oss.qualcomm.com>
 <20260202-topic-8750_tcsr-v1-6-cd7e6648c64f@oss.qualcomm.com>
 <sxjrbxwi64ky6dcntpnnbi3y5ujtssz7uno22xiwiqjdhp7rxi@b2nsnmb74vnb>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <sxjrbxwi64ky6dcntpnnbi3y5ujtssz7uno22xiwiqjdhp7rxi@b2nsnmb74vnb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OCBTYWx0ZWRfX37ilWY9VrSoc
 BBjUxYeiLnisnmZBfyZTkQAQW2L7TUfjql4ZutmQUuOwFC+Wb3FJ15KhKZkhhN0eKO8ldmu+ijg
 bI9it0PPQ/btGue6Y7Scnh/bl7gxjMJQDhSmBbk5OgTy27cuk+YJGEyGTzx1yFzTuK9/3dXXbEm
 8Yt5WPMF+eqXGdWOTVVbIMVZuFFudkR2sGqemME3L6GIqmT57H8zMLn6EcNDwsDAaqDonXtlCba
 vggR8YPHXUKKz6XFzNZww29AnQfWmSkf8aNBqcPzX0DN3LdPaK+NolIO8jCVPHCBA3WPWz5WGwn
 +AwvjMhlS1KGZzb4SevTvdSHQ+wEGfg7hvBi4yuLaOiEEKux7eIAG8LQMFynPmWfZLk7+8TEYwn
 387rpNPuKVfZvUfOqsInnnYLYXp1uZo8ym/UJcuXs6FM+qj1SysboKCwtW0skvX+jt/76LmBu2c
 O+k+G00/aIUcOHTMo0g==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=6994561f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=QE9C4deyE4KVDz0N1ssA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: GrvndWXncYGl3tZqTLee2UeMrK8HgB9x
X-Proofpoint-ORIG-GUID: GrvndWXncYGl3tZqTLee2UeMrK8HgB9x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266090-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 23C6514B939
X-Rspamd-Action: no action

On 2/17/26 12:48 PM, Abel Vesa wrote:
> On 26-02-02 15:57:38, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> This is now handled from within the pinctrl subsystem, since there is
>> no "CC" block inside SM8750's TCSR, as the corresponding hardware is
>> present within TLMM. Remove the leftovers.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> So bindings remain in then...

Yes, to limit the explosiveness I decided to reuse the existing
ones.. I think that's the reasonable way to go

Konrad

