Return-Path: <devicetree+bounces-259907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uH48GQO/eGn6sgEAu9opvQ
	(envelope-from <devicetree+bounces-259907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:34:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A698194F4E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DE22307BB24
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BD4222A4F6;
	Tue, 27 Jan 2026 13:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CtXIs5uw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HGuRbSls"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8752D22425B
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769520711; cv=none; b=GQ2fQ+S0nRZ+JRdMAJWUPImoATrufyHQGi4VYEyfIGsE1XCP5C+gch/zUB+f6YH7cs0kWDaeDfq13okobTMOr4LzzZZSwi8UjgpulXzYPwauX8TxWesUMEm2yOPTIoSQuWTDCoxxUs7bKAT69dloyEKLkJmt6e5uPDtHX8qbN38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769520711; c=relaxed/simple;
	bh=XQcAqs8hsoVi4a8LJeZBgh8kC+d3rnvYY4ZHWhmPL4k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kgRkM8YdClVsLWIllOs4mETEJUGJ7JNvBVQy6Dg3UlqenUt5irkgntzt+AHf9TRS4ZNhyJxBnwf1BmIVVhXKcWV1XxSVrsuNCH2CGluI3XdX9q+O0zBSMWBjwTFbrL40IdS0+3M23FXYnPeXTE1iiqo6EOdeHXkbq/oT2ZpPNJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CtXIs5uw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HGuRbSls; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RD9TSc113343
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:31:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dQrXPsx2Q5RC6LTlRCVXVFHjoj93pICbdA43O1s5rBM=; b=CtXIs5uwLayJp84U
	sCveGKqi/6+2m9giezzFJfFpcDqxWaR49dFNiFhx8IO1DLw3RqR3OC2p4EZAAnP0
	EGNdfp0HfvwCEICE+zkYr4EGJ6GKjixc867y8NN9XMaY4503hTIEDjASfoHRNgN9
	WEk1lZeduGFIH02aciWDmACCUXh4PpledJyDg37ch2EgtuQBLUqa/3I+zWpzJrbN
	SVotvAZ+/1Z3QwqbvvZ42ftw8W7AgVOL+yLm51Xvi1mS53dMPJJnG3bvwDcsszDD
	ua+L7XNUddSkIamgIAGM/WMtVkUssh5m8HxNHqYwF94dSFZNaDy2VeFHnb1C0i3n
	9co1Ig==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxs0e17cd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:31:47 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5f546b8df29so936662137.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769520707; x=1770125507; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dQrXPsx2Q5RC6LTlRCVXVFHjoj93pICbdA43O1s5rBM=;
        b=HGuRbSls0ANgi6YZEowG1z/Z6a16uotht65Uydv6wewN2fNSuoxHyg7RpwFDJhAnYf
         v0SC5bjrsL4+C0+2fKVdvL5hNFbuPeq5u9AjtDfCopYt0rj7hzXrvEqzGg7Qe79zTTHt
         kLzQsgJ+Hk5vR2xkDzLR2KAiU2T7DpragK3bjFIsD6mgfbquTRhKVn63R3fBqT4bYcZA
         /7JE74bMcgd1FUUQDwIOZ5i1RFhQPZDLQtZ1jwsobzL4DDVHn3gbJYzP8PgBXtSyc8uJ
         jSamUpO2YhR9jxevrXvraVt2V04RLdfsV1n0ttRYyAciAirkazbkaeQ5ogvKLiULsbxi
         WmCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769520707; x=1770125507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQrXPsx2Q5RC6LTlRCVXVFHjoj93pICbdA43O1s5rBM=;
        b=oi0pedkiyf0QColbWQQZsRf6dyr38mBZRX9qQZHu0ujUoeaDzO5JUHFbtLQm0wQfJI
         Zn7UIaeneNnwJSc/HXKK+4WD5OVYVZuuJqo+/KBSRjasNvhxkO+N3A/LaGyog1LXRjdM
         yfE+YSX9UqV/OAtvMvREJklE096kZ4w5yUbzED6ag6dC71PE0cl49vZ1uBqyflr9vesG
         +kgjt8yA+qEYbRccqzjqW7aSqE7WbinzYVIj3YDhMjZCU9bWTti8Se5jwQajXjS2ux8t
         LX/UTMAqlpSAELx+1mhU/e5pRa80oQV2zKxpytCnIBsqpP99qDHlch4sqcELYERn/jni
         MSiw==
X-Forwarded-Encrypted: i=1; AJvYcCWvrp1K3BFFekzzZBG3JNRUi8txQHqepvCL/qyWkj6J9Iz93WMKeryIa1Fsq4O07r7ui6n/F2Rh91Kx@vger.kernel.org
X-Gm-Message-State: AOJu0YytVw/rlSgDj8mauFyw+kCozX7wVdQRcgxE0Hq8HA0vzaJalY9w
	7E21tfs7nlpqrnI+jGi8fy6E11WLFkVTQTtgrxV7vYiH9NQbInpMPu0LJSlcuOEViKOGIhtaf38
	xrJX/IgQbwtpBdkD0QllHscp4ov70udmXmjGCBg8qiuKZsjPeZ9MRS8ea81UtbetP
X-Gm-Gg: AZuq6aI2ObTNTu5/ANic2qIS7eT+LHYsxQVZkVoUFPCkQcnWDpGHqASIRWpEVp7nCO2
	eiglgNieAlkes5tHl8QbREgWGkjdqCb0YnLcUBGvU+FfAZKgNAkNlIqTg7SJqzmieh2fdYlFG5r
	1v6XxHFDBCYe88u3GKGJhAe3luDiulP15sf6cNUQgXNSJCUSu/eA3hbaMpkk/Yt/1WwIJgLN6Ad
	OErwWhIXEKgjxJsxszJ9p1jk0dA4wYT0idx0m5iyrnKdBPLdasBN88e4+JHqe3f455BBOPJFiH1
	otHtCIejlmfUTG4ngQYa2THQ2etkeRHp+rDwBEIsogiPDWA05qyW7rGjseQsPXq9z2LGl/vdGu9
	xus5OYIraLeZScYDGPDdLBqygZtY1jKyLtQQUlAcBsSFy1npLPTvTVNKoF0ToHpDS+Xg=
X-Received: by 2002:a05:6122:e01a:10b0:559:ef6d:b3fa with SMTP id 71dfb90a1353d-566796017d5mr185128e0c.3.1769520706765;
        Tue, 27 Jan 2026 05:31:46 -0800 (PST)
X-Received: by 2002:a05:6122:e01a:10b0:559:ef6d:b3fa with SMTP id 71dfb90a1353d-566796017d5mr185116e0c.3.1769520706276;
        Tue, 27 Jan 2026 05:31:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b77806esm782777666b.56.2026.01.27.05.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 05:31:45 -0800 (PST)
Message-ID: <bfb4c798-1520-4cee-b597-440791ac6372@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:31:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/9] usb: misc: qcom_eud: add sysfs attribute for port
 selection
To: Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
 <20260126233830.2193816-3-elson.serrao@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126233830.2193816-3-elson.serrao@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDExMCBTYWx0ZWRfX/cCuyKVY6gIG
 EVk2Cx294XyAn5F9f1+520XBLot8cT0zNuBy/uk+tbvdCn52IQbSvye9HkiUevdQjWk013JSkCL
 7En8wD4GkjzrX+LvEUUBicsZYaR2t8aiB+WupHz2KQ1caBsLWL6rWWr1FScp7zIe9ex7L/IVNNf
 AAse+hKjhz6kWSnFI0pMCt029U57rD+2JBYrB8pXV5uDLb5VH/xb/yLClQoV1O/yGMsc3XkBuIw
 Bw0Ga4rVsKSO0unCP0yaRRIRt91EhoVdR/tyf5lAUTXD5SK+q54nCGFvu1JDlJd19yzcYiNJhyq
 rGlt8c0gXgy3PC8T5I4x0szRIIvZeB6d+LKbu5a16RDOyecxJPYjBoASKYn3sZlWpnwBAB+6ZTd
 1ZgR37SOS7ZVHb31vLX90RlrtCQJHnv55UldUQwblhe943psr1XlhhVQhMtCF5mgfShuucnG1p/
 Rjg8GXXk4ts5+18MKjQ==
X-Proofpoint-ORIG-GUID: F07cKHbCldVO0SZu-yXXnDSoqRWO8bXk
X-Authority-Analysis: v=2.4 cv=Hvh72kTS c=1 sm=1 tr=0 ts=6978be43 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Mi7szx8wPLqchxB2UhAA:9
 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: F07cKHbCldVO0SZu-yXXnDSoqRWO8bXk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270110
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259907-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: A698194F4E
X-Rspamd-Action: no action

On 1/27/26 12:38 AM, Elson Serrao wrote:
> EUD can be mapped to either the primary USB port or the secondary USB port
> depending on the value of the EUD_PORT_SEL register. Add a 'port' sysfs
> attribute to allow userspace to select which port EUD should operate on
> and update the ABI documentation. This is needed for systems with dual
> USB ports where EUD needs to be accessible on either port depending on the
> system configuration and use case.
> 
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

