Return-Path: <devicetree+bounces-211633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E48BAB3FC15
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:20:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99D1B3BC8A2
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 10:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ACE927FD6E;
	Tue,  2 Sep 2025 10:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OrY81uLT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31F827EFE3
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 10:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756808420; cv=none; b=YTms7SDieACjv+bGuFBGzqgLM7BX53mpBN/zJdaerTEohYIqOig+Ax7ySzJwnXPS3GFh/f6K8pw3v0/yAu5M/TWIL5wdlGUU0mgr3CwK9soiz57gxRb1Qdowo0SBTThFihLQHSugSGBHOXmQ9kkw8hUBPoss3bPkY32z9POUua8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756808420; c=relaxed/simple;
	bh=KhqjrOQrOyXMwzO0tGi4lNXWqZUxZo75m/WEJwFFTn8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SKqGnPRNFHmmbh413KkZtt+HwRlJURQ6biYmEL/yDFGGIVJanAl1sS3+xiXg4AbqgUH+dXVpKoHL8lRb8O3MosodQF4LaDO2WnUq4vFIupPOkEbNnJ75j/8h9WpqCzgPv2fEu9xlKijP8k75N69O8TXsbvFcuc9BT62EFZzoL6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OrY81uLT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822S6OC025232
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 10:20:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sk1VaVcSz0D6MZp2YEe09AG+zx/xwfxMGDZWZMcPKJA=; b=OrY81uLTtmDuEheZ
	XO+DUj2z0pG3ed5a9vwmIJE0eP3mKIP2KH1l8dbGEzmBJzsLk9zQviRVHoC2eqqp
	/K+gUl0AlA6eFGf/D3xChHnPsSXHE+qOTXSfI7s6Dhp+mXQliLlhT6GyFyqr97p+
	ASg4OSklcY2xP7z0R5kj8+bs9+Jg+HZpFNKncawFf6Y2KtWAxRILS/SZ+6XUH2/h
	z1St7r6XDaT9XNihV7//qkM4uj+1HCsonzhvDHyvfuvEArMl7Pr3kRQ7JFBSImlW
	DRp4RUpyvwkkxlBPFjehYVkSVU63J/32M+otnw69DwFT1qg5HgvzEWplFAZK6ZDK
	Mh4tXg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscuyfn7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 10:20:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b30f720e1fso11137371cf.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 03:20:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756808417; x=1757413217;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sk1VaVcSz0D6MZp2YEe09AG+zx/xwfxMGDZWZMcPKJA=;
        b=hz5JqM4iVyKaUbRIybW3VDmCkFEVq1mJFqvj74E31HvhuCCZ2URG10f/HCVO67p6w9
         glsbvmnwIKHbRDIJ759FJfJYKBEntsV296L7yCKW0Ov9EJ1XJSTqx7+fAVsHBCbF35xX
         NUJj5naQ/F/ggNl0r43ryP8rDhvWCGyh9r9/S/O9CB1I8Q516wk94lP6KmSi+W/R6ZLy
         SZLwKTLsirvMPFEwZczsyAYFum4IpnrWjkxo93yrSYCjVfsWWnY96TzwbSIhsL5RSrgF
         PBZkSyzXR9m4d8m3cq0P4p6Dk0Bep7/yrbi5d42IPpMtx2pXNxJbHJd2/hykuTd8yjna
         MIfw==
X-Forwarded-Encrypted: i=1; AJvYcCWiUfKkPa397ge5wbj/uy7Yk2DPBEEc4QWTQWjrQe6DM/syn+dUlSBuluXf1566MPDJbYCNToPXG9je@vger.kernel.org
X-Gm-Message-State: AOJu0YzxAUt1KH4F2a2YEwfGmEmnTJ/p+k5melZiKJBfEbvXwSt/2bnN
	fE8Fd1/YsunqBX9eXDNvDOhQbmUopXiDhveLUfVbwoyof2P6e0XFUfNFLmgRSQz5ekSDZhXQLxm
	oPNrkM8mJIMa2bIvHJt2RllEwOAiu2lmJ7bwVmqiieXkofqNZ8zm/r9Ljo7d7wyO+
X-Gm-Gg: ASbGncutaP69l5Qc3LXPG3k/QdnBSNn7nhcTHzVpkRWLLtYNVkrRz43UBvhED3qerMx
	qPDaNKahlnBGZim3aiQgKcdVRjhp/Mw/9fnDTQk6HRDWk3kcFp4Z1Kln1dqped71l1AkzXRVLfo
	FPWQ6k33lZfhPdriQWb2BYOEHbd6VU6IdQ3+0SnCyugqRjMbx6uWrNqZePEAF/UOj/oN0U6SDIA
	gFYMLN931Wgv9bpf6GqjCy9LPrFNjKteWQ/h8bVFbVBUsPl26KiCnSsre5HrN8qs8Kok+2EBrDc
	tGeds4Z5oJWUAtbcoX/cv6ICBiJIE4CgHoNkPvarcD4MZBW3x2N/f38O8T0+DMzg5fjD8EJiHdq
	4cnseIvsozd3+gdNPZiQ2GA==
X-Received: by 2002:a05:622a:447:b0:4b3:37b:d853 with SMTP id d75a77b69052e-4b313b8b709mr103026461cf.0.1756808416664;
        Tue, 02 Sep 2025 03:20:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCcotXg5MvZt1PU3uDiIFM/arWPB2u6LH0Lj+40jupDbU8ueQ4n7VQ+cVQhsS/D/WR7TF8SQ==
X-Received: by 2002:a05:622a:447:b0:4b3:37b:d853 with SMTP id d75a77b69052e-4b313b8b709mr103026251cf.0.1756808416044;
        Tue, 02 Sep 2025 03:20:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0414241e1bsm644579966b.39.2025.09.02.03.20.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 03:20:15 -0700 (PDT)
Message-ID: <09281121-e8d9-439f-b094-9df817acfb00@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 12:20:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8953-xiaomi-daisy: fix cd-gpios
To: barnabas.czeman@mainlining.org, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alejandro Tafalla <atafalla@dnyon.com>, Luca Weiss <luca@lucaweiss.eu>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250830-daisy-sd-fix-v1-1-727e83a987b8@mainlining.org>
 <q4t2cmg5xtzbga2u3nnxayvb3mom5zaffhyidki2h7pmctk6f4@syj4byco3pwi>
 <e9750a64c761c0e66a813e206696dc7f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e9750a64c761c0e66a813e206696dc7f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX6bM8gCLIy/C9
 r37203TzcjV6mzAC6HhZZNIiL04zZnoK/KGe89r59dGZE3ogbQ2nOjRhxbQu7hpGOJF7L4UExNr
 qa2Ym0RM1+g8k3lqKJcMM9OPkPabDOcqwthHMFcJ6eRyPx7Yp0IG/dI9kWSUWNNQJzP3eK2OeUo
 e9RZ3vhYJvPAkH0U8cP+jJcHO1EzUWoyOJmpuHQSWhd55Jxvz2EoIZVoPwvUiHjEhd7qb7AkXRN
 XC4rBzsFWW2f/DPtjD3aIp5upMg4GLXuA02URZpsXN5Tcb4NdBlzb5RDXRZNT2sRoraDrG7f3uC
 kQece86F+t8jiH8Mt5NWGWRzySYpF79nYn9OvRpvQOK/JV4HiwnoYPeMd95F/L+BgTe1tlhKF+n
 pm4mtzF5
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b6c4e1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=OuZLqq7tAAAA:8 a=kNptk6tRclfZ_PHBQXIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: a65tnkYuJN6gVPPkd48XaNGE3piEFnHx
X-Proofpoint-GUID: a65tnkYuJN6gVPPkd48XaNGE3piEFnHx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

On 9/1/25 8:32 PM, barnabas.czeman@mainlining.org wrote:
> On 2025-09-01 18:01, Bjorn Andersson wrote:
>> On Sat, Aug 30, 2025 at 11:59:30PM +0200, Barnabás Czémán wrote:
>>> Correct cd-gpios in xiaomi-daisy according to downstream sources
>>> it is using GPIO_ACTIVE_HIGH instead of GPIO_ACTIVE_LOW.
>>
>> Is the problem you're solving that the DT doesn't match downstream, or
>> that card detect doesn't work? Does it work after this patch, or is it
>> just aligned with downstream?
>>
>> Regards,
>> Bjorn
> 
> Both, it was not matching with downstream and card detect was not working.
> It is working with this patch.

"things now work" is a more convincing argument than "copy downstream" when
constructing a commit message, the latter can usually make sense as a
sidenote

Konrad

