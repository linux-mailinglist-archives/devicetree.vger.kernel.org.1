Return-Path: <devicetree+bounces-188053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6685FAE287C
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 12:06:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B4547AC169
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 10:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ADD01FBCB1;
	Sat, 21 Jun 2025 10:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a3Q/DNuB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95ABF19C540
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750500359; cv=none; b=n1wFvCosPIpmK1JiMZB8ukkrUaCRG9VPdLMeMAQwEP+T0a/pifVqMY46CmojKAIJatZewqDAkByq4vzMVM83Wdev3FWiQ7rdP8RPqHa1qJjfYAGTjx6hVwmRidy02ogMuGdO3k2Bsa2QuSJbkEpxbTcGctmNQS5AF6/pb+CAor0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750500359; c=relaxed/simple;
	bh=Hn9VgER12ug63dZ6l8eYWyg1/ICuNU+YVIfUpFrL9jQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gmzODuRcLGwMnCB05xgHZ7vkYslghxg7bzj7DMfxXfYXY+PpHaP2Xtuadris2+ivcgWkdotZ4wsl/C2phFUbhTyOssJQ0rxLOOh1kJUkFo9JeTQgJOjTJMd9E3TOLNqBQItt7yXnKTjXunJhjPtOFexD8wjI1fXAGQXYyeIKNSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a3Q/DNuB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55L4FS6T005133
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qfJxwg+l2c3JiL0XNVJZZ9SeKhv9FqmZAUKpxuPv/eU=; b=a3Q/DNuBe4NsTALU
	eHxGolCXqh/dU4eUoh4AwLwlidtt23wVf3Xd3BhkhJP+Wx8zWRZ3UhNBKkG2Rx75
	WFS5MSQ/vdllx4LP7MfVYWCA5VhCX+3OFHs9mG2Iw8/xNmgquykjidWqbmcHm3tN
	hPKEtXyFDuLnP116OrV7a/3UMz2wPz80rO7By/s4uqtlu0tTX83iL02ECjSUZTFf
	6q0Ci+IkQbpsMT2sObNnq2d1Gf8QUCpIDYe+Ek3So2EaNBC35yiZO8PVnRvbF9+p
	hu/CrQt4LfSzFnKRhO2GyXZBOdKz7aX8+nR5fsund8QNut/Fuw5F/JPjgQnk04Dt
	/xY1gg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47dngk8e5c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:05:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09a3b806aso53986885a.0
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 03:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750500354; x=1751105154;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qfJxwg+l2c3JiL0XNVJZZ9SeKhv9FqmZAUKpxuPv/eU=;
        b=SOYJEEQnJHZepUILwGLCk5UdNjPB+/h1b/YGdy7h/kML5NnGQcBtXxpC+llsEoDQ8x
         DxoCWsXgqp8cop72rNfnsDuL86noHyLOrsXtiUu9+NZBwURMJ2gYmmn2A/4zBGBtvMUe
         WiDwB0uZhZPeSb0suq3v3Pdef9EYk/Yf2KwgCQdV3+8Ol5ZGVsY9mqpCV3+JOkwb5cAT
         t5OwFnDRQQiFh5KaVaz+Pbt2/JxZmKPybDB8M4g2mnaD8/xpSfn4RyxfL9DemIVp17eJ
         4LTzdoDduzx39iDebomlfEfEcsV9poLosyoa7caQeG4qHvCcSPXPEwFiUJMu0hymC49A
         KJDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPaOHmlsOHBizbWQOlrp4RA0NNCyTjYi0lwoAb0OmwHAuA4N/SQC3yJXL0Ylnkku1h2e+uIS6hE4q3@vger.kernel.org
X-Gm-Message-State: AOJu0YzqnuJ6qq7lJf8UpjGEONLcSHglPtlY2HNSIzyBHOewfBnEDh9c
	LHkl5rpNVZp4wmwdzPw0ZSmtvpDQDlad/LpV7h19CHG40vzqiBFQn4+2OvICLVGUKHAfpSM5Les
	GO/QLdwqnoZYPo45rAGbrCgUbwjXqxA8SJ6JlPy/Ei9kUI3OLKHrmUn76CnyZC5Gi
X-Gm-Gg: ASbGncv0f04VEVmscXc/mrT38FjD5350/DZfMY8+lacvTbtC6v7GDhxkrGTT+/6IvPV
	iaOhZnHR+FN22hvqfDWVmIBGbwPN4D0d7W66UaE+5ry7MAUBpm8ejTDv+QJRf0mvfN2rDwqtSvT
	kTzTEthl54rS2XKSY2JVjrj6FLmw1h0TUOZdoNmi/YNxEqW26Rop7KIv3Db1IIQ3maJQ4xLbQkI
	mK71ZyWRJDVF6VNOBOdLD/4fzPWayeBzYVHvbHoW4ibcAxLi/cqdeIHV0dRfiuOj2gZXCa61zG2
	aCq/+ALUP2466zpt9YtJjpPYCBQL74l8QNWIg/PtJdkOXAUj7vi23Pi669PwoKVtpi7J0F8+LIB
	lfto=
X-Received: by 2002:ac8:58c4:0:b0:4a7:64d1:1f63 with SMTP id d75a77b69052e-4a77a241458mr32278651cf.13.1750500354344;
        Sat, 21 Jun 2025 03:05:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5pgyeeYbXGzNX2jYyLlrGsQtTqE6d4IrhZZQuJtWfMycA7fDBUtRHDWtlBfsYFyqCgifoZw==
X-Received: by 2002:ac8:58c4:0:b0:4a7:64d1:1f63 with SMTP id d75a77b69052e-4a77a241458mr32278541cf.13.1750500353965;
        Sat, 21 Jun 2025 03:05:53 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b6894sm334915966b.111.2025.06.21.03.05.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jun 2025 03:05:53 -0700 (PDT)
Message-ID: <6e39f8a0-c4fd-42d4-91e9-48ca1d154c6c@oss.qualcomm.com>
Date: Sat, 21 Jun 2025 12:05:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: qcom: msm8974-samsung-hlte: Add touchkey
 support
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Adam Honse <calcprogrammer1@gmail.com>
References: <20250618-hlte-touchkey-v2-1-2cf188b57e31@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250618-hlte-touchkey-v2-1-2cf188b57e31@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIxMDA1OSBTYWx0ZWRfX3AYN/nNAFeV8
 uxakQffg9qUwoOu8yMhCZHSKsQGZZPlQtvmWJ4XD6a3UvRdLTGOLxCT9p1lO6PasDK1oxpdhPoy
 mJsX7+B55mD+i2f0K3kfkHhKrXk6Bqxt/Jd2VW3+32LgosQPSzddsWwwkofYNyN80QhE4CY6XBQ
 8FaLsNVnlfsOqKPIhc68eZZyI+okF6XEjxGgjxg2e2VZTA9TPiUN05bZh0lO5hJRHju3ShfIkct
 HBJnY/dt1pBvvUh5iEQtQOV8HD3qarbJY5CCCcwTdlMa2nL+s+TpjQoT5O8OVNfqI9Ci0Hr3HK3
 CPK9YS8h7HUFIYPmWFFX6aVJJa/Zom6ktqt11ldNPR8xDfnoOkyyCg3EN8F8LxLj/WpLBfSAefy
 2+M6hZhB28csLqTZ/SmJgQPOLNjJ5DBQ5x2EhzZF83wkBYuvqSMMW+nPx6OV3fZccHojVvdh
X-Proofpoint-ORIG-GUID: swDQttkM7Y8jdt4pYtY9w6HUQZ6rOgaT
X-Proofpoint-GUID: swDQttkM7Y8jdt4pYtY9w6HUQZ6rOgaT
X-Authority-Analysis: v=2.4 cv=K+giHzWI c=1 sm=1 tr=0 ts=68568403 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=dlmhaOwlAAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=wwgquuRBh95SaqRAEc8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-21_02,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 suspectscore=0 mlxlogscore=999
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506210059

On 6/18/25 11:45 PM, Luca Weiss wrote:
> From: Adam Honse <calcprogrammer1@gmail.com>
> 
> Add support for the touchkeys on the Samsung Galaxy Note 3 (hlte).
> 
> Signed-off-by: Adam Honse <calcprogrammer1@gmail.com>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
> Changes in v2:
> - Fix schema validation failure, adjust i2c-gpio node name
> - Fix misplaced S-o-b (hopefully)
> - Link to v1: https://lore.kernel.org/r/20250419-hlte-touchkey-v1-1-9d93c3e2b31f@lucaweiss.eu
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

