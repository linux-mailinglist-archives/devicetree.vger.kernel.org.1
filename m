Return-Path: <devicetree+bounces-261730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MV+DcR8gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:30:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3B2CAF61
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:30:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0555E303AB63
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 700303587BD;
	Mon,  2 Feb 2026 10:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fTuI6cCG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WCVtdW7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC163570C1
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027822; cv=none; b=PM00IOgaZ8qXmfnX84nuiR38xtbojkh6DU1ZZa2NiYRXRjiXDj2dlH+t4cckm0wzX/iJtRf+NPYyiOGrVwNtvMQC7WyopK9anpAFti+knYOD9es19E/gWbrPIpX8nfPuRSiLycIp/AWfAmjrDXpnQlaEH9h3IOZ80S3rnhAAJP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027822; c=relaxed/simple;
	bh=pIZITcj25wsKvhmdYdBtu6+GgTflgSEUTVbI2jUl8XI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IJ7E1HWMt0IY+J1TqKke/WdrOWDN68FdVwpwBzu9Yz9VntJaWQfwkiuJ1uJyzDIUiHHdJTgRdEIcjjehWR2fGvUjXjWstIgeVYL2a6HzhgpDYrc1UPwFsgWjaaW+kmCqiQ8HXQOZRU1SpUvVmlC2L13REViPO/ZlSb/nspsl87A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fTuI6cCG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WCVtdW7m; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6127Z5pp1603985
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:23:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	60Gtl61u9szV23kiNEfQyeK1IjsNzPwJCAQmzlir8q8=; b=fTuI6cCGly41adYu
	yLjItYvxpBFlyEdQ+v2cTHJlDMiQLZJbk4LL37y2TwZ5gHcK5lmtNq/Bg4VDPAf+
	Hc+rw/HeeW8lZFUXpjvkmuh8sLQJUh75FnFkwMnwcT6KtwDtakDlBUFfR0g6CXQZ
	F3/4dmcCdTd4Q8j6t0qW6EtdzxPWv4BRIRu159EJhoe6/hmCmRbhA0UZr6t3IQQh
	8V0FwMlqGuIlWfRm/xc52wfU5U5aJ9woEtd8a+Z95/ubamM7obnP4NmQsRvskiw4
	u3zTmTd0Usqn7I7ULg/9erZUBkghYcffTvBIIcCYiWU9UwneQPsIWf4h8qOba8zJ
	kWhZCg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c23h1jre2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:23:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a182d4e1so72198885a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770027818; x=1770632618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=60Gtl61u9szV23kiNEfQyeK1IjsNzPwJCAQmzlir8q8=;
        b=WCVtdW7mKD9wtdVYH/uzQqYQQeXTR1BdnkrIeRekZqblc8VI/r4nXeCqUS7Eh4jIol
         OAqUCV03ON98tMPrLgeAAVrpQsCbvD8i99ZdbrHpRfnKsmciiDZVufq6WfqWu8/Y2bOW
         rhPOFJvq2YiMWGFa1u58B+4pgbNmEWjHHL9XMtogGIBVLrNsd2iHNpJAekNVbr/6Gh1e
         Ju4io5msnfp4vYG2XGHCDtQmW6WrEHJ1bw89qTjlzjzFNMuulRoVm5aE706kXD6DojWy
         6AqdyR++dLYHH8Wrt61eLOkaimVASmdYBhLYhvDBsSH2faoZWRamB1gVBZFf9AAHrdC5
         /uGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770027818; x=1770632618;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=60Gtl61u9szV23kiNEfQyeK1IjsNzPwJCAQmzlir8q8=;
        b=debU/hu5FD9spuLA4qhKjFAXKnPAdgbEoRxQQ517ps1v3aC9a9x76MiAxCGA7fTYNn
         Y2h5abZjvGsz0IywaFQfufuQYzbT+5UnS4x4qEDelryZN+h76R45sL755vUGyFAcBgXX
         IRGJDI9dtqWWez1JDpkIkiCzOYR2Smix7Ll2NAuuTG/QihCTVvUzhn3SjMIR2F46q2G0
         MiRVJ+FmHNtcP5vmbnjp1NSFg81N+AL7cMZ9Q7l9WUgrTuQO1kNG1hd5s/XiUgCveboF
         o9+I8bqebf2X7tXzmyTrUdwDP3rsuE3heaF6/TMBL42cRVZykktL3p+QfxIdPSZPDd7i
         R0Gg==
X-Forwarded-Encrypted: i=1; AJvYcCVikf3K/Ehraz01d3ShEobiDRnaTlskTDQWZuTMosKKHa/nkUIY7HVqVpsWmM2GkR/Ygt1JBOsa3xbF@vger.kernel.org
X-Gm-Message-State: AOJu0YxSbu2wsM+sWFPlXhml/LM1bOd7SAxw208mdBD1hi9YII468Mm2
	LujzSw9Ii2L+65QDNjYAPYGaZlv4yFNiL6yVBRUXPNxIEehuH9ESBO3hnNqrMtkHbKp96YQ17Sn
	t/oOvh5Gu3ZhnF1o1V0uVxhQ4cAJFxnHmz4tWP3mID+Jy73ThSRu4NFPJEhRrayje
X-Gm-Gg: AZuq6aJGo/V0/TJDALSq/tlnxchs8Icxfw4snd6ZZj1b69MtL3jDLmNOLMIkrXyBYCP
	1VNBPtX8zQHxK0E8W4jyiHAWh9PbhP+CidmfEXlNxmf1n8blfGoKX4KMHz7hthjyDZtnX0AmeFI
	4IfjUG+7tIfijc0rH+FvYiHx4bCui3xE+pQheiS+gNfz33zTFeK7AUA4zZGuXGIMdfu3oPyy2CD
	FzGkSkR8cJtF/nOlAEzBmcigcCDJbg/+y50pycozCHj5E2bXwpvbLPTfrA69I3ZACmosUeYYxv/
	pdYQt4u+gIlbkqYUZVELknYcQap4abOg1kmrnY1d0xVxM/Im//JKnxCTfWfHsxxvxBqdmYZcWrq
	lOxvkPIwGGg8zpO8VJSzQ82fCL2DeApHT4eR3rIuGy7rlL3YDKyPvuAK6mwEz9Q3i84s=
X-Received: by 2002:a05:620a:4086:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c9eb2fa331mr1081611085a.6.1770027818358;
        Mon, 02 Feb 2026 02:23:38 -0800 (PST)
X-Received: by 2002:a05:620a:4086:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c9eb2fa331mr1081609785a.6.1770027818003;
        Mon, 02 Feb 2026 02:23:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c02d0sm827884766b.55.2026.02.02.02.23.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:23:35 -0800 (PST)
Message-ID: <70517c7f-92c2-4b2d-ada9-9cf0fe9371a4@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:23:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] media: qcom: iris: increase H265D_MAX_SLICE to fix
 H.265 decoding on SC7280
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
 <20260131-venus-iris-flip-switch-v4-4-e10b886771e1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260131-venus-iris-flip-switch-v4-4-e10b886771e1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: o9kKDlGaTE0a4P_TnB7-UsRc_O9gYFiD
X-Proofpoint-ORIG-GUID: o9kKDlGaTE0a4P_TnB7-UsRc_O9gYFiD
X-Authority-Analysis: v=2.4 cv=Fu8IPmrq c=1 sm=1 tr=0 ts=69807b2b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=BT5F1K3s8IvAzqF_nA4A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NiBTYWx0ZWRfX9hHVMAynCauJ
 uTgmmoOsgjGlgkSqg73naSjKB3ZkQShnmSUVsq0T63bKHVug/3jj9ByZaIl45bUJ5xiJf/jPKmj
 fKV+KjShFmTlwDzAo2ZvxsmIrzTA5l6ml7KEgn/evtf8r6kYHom9oyHyA+wuu/KSlyv5syhZOy7
 I6k2qYPg44KkctT6t6e3BT3+7GvWKCVR/f8MoRXCh45j1+q406FXmbbdcOG2bzIl+FsgLc3XPeq
 EoTBSPcdNYRiPeKsgbUVbVctvXoJ30F6zHxdv+eNvs/+BHmAkFmTsJHSGlTfwQn3FSmqKwAytOZ
 raydE9t5QeSoASK4KD+tG3AP52eumSghD4RdMKFZZ+hEkkii2shWsUKRsKtjYB9Y2cWgvWUZlAs
 0oDVz+bkeDRuQ9mk35L7mGWmAShuPtZRBoXoFwX1SjiyvCBF7iFm8fw032mCCRAfpHf1znzPUEI
 IcRLLvFmhacyIqekaAA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020086
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261730-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: 8A3B2CAF61
X-Rspamd-Action: no action

On 1/31/26 2:58 PM, Dmitry Baryshkov wrote:
> Follow the commit bfe1326573ff ("venus: Fix for H265 decoding failure.")
> and increase H265D_MAX_SLICE following firmware requirements on that
> platform. Otherwise decoding of the H.265 streams fails withthe
> "insufficient scratch_1 buffer size" from the firmware.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Since it's matching venus:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

As a side question, is there anything wrong if we allocate a buffer that's
bigger (or say, vastly bigger) than what the fw expects?

Like, if we allocated 10 GiB for $reasons, would the fw just happily
take it?

Konrad

