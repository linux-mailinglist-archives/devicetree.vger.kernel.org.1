Return-Path: <devicetree+bounces-259686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBIhFVUfeGkKoQEAu9opvQ
	(envelope-from <devicetree+bounces-259686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:13:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF28EEF0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45371305261D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 02:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D67461F5858;
	Tue, 27 Jan 2026 02:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lvw8wj4p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wgjt+dMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728082BE647
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769479863; cv=none; b=lStXdavNwCuwG0UPj7I8/fE9upTCRB3lRF3qEpI8H/3Mj4DV25yDwJbg+rrbKHZLWtqprXARV9YTr1KvPsO7RIOaKj/QKgFIqfb5MfrlEMA9VYGnw1V/pDmr9Bnru8CPEgcGyoiqanP+WbNS2mLcRk1i46WVgfNOk9y8ARzXZNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769479863; c=relaxed/simple;
	bh=bH2rndW76lecUFPSb8AYCoiS80w8BqtvR9/+HxTLfKo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fs/ZQ82wU/E5l1Yh+mlaICQmkB3NnVlrQBVXyzGL8i2Q8Ae9Mw2S4bV2VuI7V7gen21gln/7/BIbhb9rEyTtHx2JRjSXDAu9EEGBBpm6dgogyBT7gfRQxDO5EJL+IJWK72XCxfljvDTDke0pAd8krnlAhhZmc4kw06cVyOz415M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lvw8wj4p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wgjt+dMm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgQff3384643
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:10:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dJJtkqEGuOv+EaZoqnfIX2mz7MwV6GmJfJDsjA6WM3U=; b=lvw8wj4pasmVDqdt
	w3PfINRwklO4/waFupWw3rBmS7LMUrIP++SmHpUe+RbMYcGHGefdKY6rOLr9VADw
	M1TB9kkp7IGXHqETMgUJkO7+lg9NDqyqGIFHGrEvRqgn9wcQcFHRCD80uttsYFkB
	66KcBvrE1BSH21ahVtt+JLdkaW7Bdq5cxBFre88zCwNoXhMQJCMeVqXsbe69u68v
	0dIgZtbb8JDcAQmdr7PIjnYFDfo5MCV1sAkjhhPrxHyXCjnRNAd+wJLnm03xdBfI
	T8STTaIzHlVTr1x7XTVy8F9ewYZMLNYo/2u78ccRqvwQTgjn7XxoXZmS+XOnNMpv
	RHM/Vw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a0sxy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:10:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c5d6193daso10387601a91.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 18:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769479855; x=1770084655; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dJJtkqEGuOv+EaZoqnfIX2mz7MwV6GmJfJDsjA6WM3U=;
        b=Wgjt+dMmGUUtPiICgHrHjWNkn1s+wFmKWBl/DmUd8NkFvhs7qTHTBNiRmXFu8BgVMu
         CjF9k5NUy8Vgt9qAj4zdRjJJGebL4jMWa+00we6vifsR3fwTXepSUt0c52EEozkcVLCG
         UMHPUY5w4ByznVWOKi+Ku0Ht+6E5C7VODE2YpwGqS0R1O8Nlvm81i4x8zhn8WQFEBgZw
         U7Dy6LGXI8tP1dszboG/W+I4HzBkuSJWkVc5fIAUDMPe02/kdv0ti/mecgZCDMCjLpIG
         y7FOoIRUh60VGJPPq6XZ5RXXfJrabZteMjTmkWAq/xXdbG3DKtYCeDKw6QYH8kxPNJab
         5w3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769479855; x=1770084655;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dJJtkqEGuOv+EaZoqnfIX2mz7MwV6GmJfJDsjA6WM3U=;
        b=VaAJzmJ3KNAUXbeGstqRWVbFuptOg7UZRlrsVcKk/O8W9tU1adfcGLqPoHNfdErEkX
         Qhd8eZKFgaPTfVNRKi2hTLtl1Ph3iHsUr+Nj8VRmDZ0ZeO+ieOj5v/GIeBx60qnWbD2q
         6Ws2SxRjHHnHtnyNCrtPFsmnDQ+KE/vpqKgkeRRSAIUIrtWzL2TV/LIejEzYVAAf8pPC
         6JWZHKPmLl3ZWk2ECgHzsr7lTdBfW10d+ygGXcWjIzgbp8IRHcqW5bQm0nVCk5Qopdar
         3S7YnljzgoJHd9SlYRISzMdydNoLKxO/BoExeY2OR6yGObFPAQJcvQo5cyIIgH1Vgs8p
         oXSg==
X-Forwarded-Encrypted: i=1; AJvYcCX1bO8qZYjG6+msfHEWGva11r6JhvtdNMzSOXBBb/wB2jgr29ODNvHDBcmTtZNA2xikJ+Acc0YXe2jk@vger.kernel.org
X-Gm-Message-State: AOJu0YzKpr8GW89ReYTslZTJpukZluOwFR2hk2cFtdn9P614kup8I7yp
	+soq2+2N5q2oa/cwxqMpcLC06dXiPtB3PNi5vcXwEPINsI3OuVggGvUJI11S6JamuTeK/Lyg2gU
	FcQ9v+QwUEKLentAbafMUN+rJxY12OEFZcWuafWTB+NGpYRxtoRI2lboyRsPkijIr
X-Gm-Gg: AZuq6aK7yUzdS0WpM49tXIM3yTBYrg1FzkpUoRnpOUDq86swuU1lMJUodXqC19Jux9h
	tug47BwgWSk+4r+RE2S7nwC8yMQedxW52mhtpc+YO5xyo9IMKwjTJ4icuPgPlR1+SqqjL8YjkvA
	J0lpTQFLDDuB9jUn+QiG57CB2o2ih9Aht7jXCwEg+3pIEziGvuB2HDGUWhcpMJFy55gfSjXS3e5
	D7IZbnsyS98REoh/+KMx6cNq25AsACxG8hu3pWQotc44IL0xeLQvTuNcEXBwehhPv/+DF3YYp12
	OUKeoTVDuAJYosxqwRV61dQal71Kn4BJ8ii/QStBKBka+Gur36c0XhpbHW6HJqKRoGtc2X/SbRa
	2VJwLDRVhnlNvCE2oMJrbdW0rEhwWZLOBtcF1jWygEWz2NPdT0ZlVdfa1f/9TM3XL3kj/IklwH3
	M=
X-Received: by 2002:a17:90b:5183:b0:352:ccae:fe65 with SMTP id 98e67ed59e1d1-353fecba611mr288310a91.4.1769479855256;
        Mon, 26 Jan 2026 18:10:55 -0800 (PST)
X-Received: by 2002:a17:90b:5183:b0:352:ccae:fe65 with SMTP id 98e67ed59e1d1-353fecba611mr288283a91.4.1769479854776;
        Mon, 26 Jan 2026 18:10:54 -0800 (PST)
Received: from [10.133.33.228] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6103e25sm722855a91.1.2026.01.26.18.10.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 18:10:54 -0800 (PST)
Message-ID: <e2dfb0a6-d053-4fe1-87d8-12630e605a37@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 10:10:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: talos: add ETR device
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>
Cc: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20260123-enable-etr-and-ctcu-devices-v1-1-5fbb3423a2d7@oss.qualcomm.com>
 <176917840185.2044151.8624555547965761091.robh@kernel.org>
 <2a8ff39f-7a78-4902-85d6-1267c319d8a7@oss.qualcomm.com>
 <179f8fea-85b6-489d-b710-e995319d9000@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <179f8fea-85b6-489d-b710-e995319d9000@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDAxNiBTYWx0ZWRfXz7yPp4lPnnZl
 SbPwNJo1+u1+2/HkRfHy6FUc5xExHBwvJXpCfSHsPtniJzlvNEm2w35/aDsFpZddtEqyrLxhg/P
 RTHrv2Lpus/mz4VKLEywm4wDaI3zsXTYCxZpI+pGBhUfi6Yocmxl6Nitt5JL22mj0YeT43xAhll
 uXN5kbs+g+n4b/vqpmtfwVsW/nWcFC5hdARFDJHMyZG32O0jcj4AHXz+tSgEdklagjtGzh7m9W4
 rT6L00/E0g9dxxphLzTjUymDxQVcIrBBwf4DO/c7Fw2BmCVb9CtW4pK73RBdywTSJ2kW+h0+/PM
 +43OXrmcxZFJ4csL6gux7KIEMzDOT8DbfGTY1k6Ls3TIyT1mE22jTjC22zxHi051f9YMt+Lka+g
 6OvASwAKk2o0MUAQZVnAYfpUHmDtwEA6PA/aK3LT4/lqrSbbmpp/fjr21qUl+B+C4XTailKMV/r
 jMfXdph5ZpThdc/RkMg==
X-Proofpoint-ORIG-GUID: LGCZwrflSm8dkLIsScVJzwx6sMvgKqe1
X-Proofpoint-GUID: LGCZwrflSm8dkLIsScVJzwx6sMvgKqe1
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=69781eb0 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=uIka3lIG_lpPmi6Tu00A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270016
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.1.134.160:email,qualcomm.com:email,qualcomm.com:dkim,devicetree.org:url,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259686-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AADF28EEF0
X-Rspamd-Action: no action



On 1/26/2026 5:37 PM, Konrad Dybcio wrote:
> On 1/26/26 2:25 AM, Jie Gan wrote:
>>
>>
>> On 1/23/2026 10:29 PM, Rob Herring wrote:
>>>
>>> On Fri, 23 Jan 2026 15:10:46 +0800, Jie Gan wrote:
>>>> Add the TMC ETR device to store collected trace data in DDR memory.
>>>>
>>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/talos.dtsi | 27 +++++++++++++++++++++++++++
>>>>    1 file changed, 27 insertions(+)
>>>>
>>>
>>>
>>> My bot found new DTB warnings on the .dts files added or changed in this
>>> series.
>>>
>>> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
>>> are fixed by another series. Ultimately, it is up to the platform
>>> maintainer whether these warnings are acceptable or not. No need to reply
>>> unless the platform maintainer has comments.
>>>
>>> If you already ran DT checks and didn't see these error(s), then
>>> make sure dt-schema is up to date:
>>>
>>>     pip3 install dtschema --upgrade
>>>
>>>
>>> This patch series was applied (using b4) to base:
>>>    Base: a0c666c25aeefd16f4b088c6549a6fb6b65a8a1d (use --merge-base to override)
>>>
>>> If this is not the correct base, please add 'base-commit' tag
>>> (or use b4 which does this automatically)
>>>
>>>
>>> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20260123-enable-etr-and-ctcu-devices-v1-1-5fbb3423a2d7@oss.qualcomm.com:
>>>
>>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@100000 (qcom,qcs615-gcc): 'clock-names' is a required property
>>>      from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gcc.yaml
>>
>> Hi Rob,
>>
>> This warning is not introduced by my patch. I think it's a false positive.
> 
> The bot checks for any warnings on the file, as ideally there would
> be none. This one is indeed pre-existing.

Hi Konrad,

Thanks for confirming, I found you already sent a patch to fix the warning.

Could you please help to review the patch also?

Thanks,
Jie


> 
> Konrad


