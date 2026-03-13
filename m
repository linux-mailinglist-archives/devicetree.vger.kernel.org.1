Return-Path: <devicetree+bounces-274916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG/ULhe1s2l5aAAAu9opvQ
	(envelope-from <devicetree+bounces-274916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:56:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 732F527E674
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6764302E841
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42EBB35CB6B;
	Fri, 13 Mar 2026 06:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eL6cErav";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="agrBEDao"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F14A33F5A9
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773384964; cv=none; b=eJrpYJ1x9t0G1zoBMNpDIVdSN2PVTJBfjAkZpVNqgO52q+VMUrtaFaSmn/p45+jjP9A81wyKYSLwhuhpEA6hty/YeQIC5BmIFahf8E+AkY1CE9kcX45ug/Qt+yNExe0thEYlYtaPNVwFZHvLwyQ3SrT051TKuOWSwgpk+O4NbUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773384964; c=relaxed/simple;
	bh=uF95rIddmYlrMzYa9Kf3n/hva62Lji7bAUf8s7PNsYE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eKX+P8jovE+mp4rD90Pgo1HBX7PSAvgttQvHXfJr2hda8vGNppCRFrbR4HVr4HVy1/yFSGfZEYhucS0/T+25m8zuJPZNgG12riqDMtCYu7h83JVmyuGHvMW3XkhTmOQo33LLxeNvXyWOKOJW/c04nYOFfGV45A8CmOlNb+FzIaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eL6cErav; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=agrBEDao; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oKnO792852
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:56:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bPZfbfumfeK3hXgzqvEDf1QRNXOajCPeUAJoFy2K1fM=; b=eL6cEravUWJWbYEV
	VbW+jlgiN3+63IntwGwDr3LN2mB4Vkc0EiP6+MUO2h4/alASxQCagXzp4tiNK7Ya
	9ReVk9MPCCUKIZ1H0G37dqwrJ0HdLa0JwoCCZi3wtIjt7aLPEoq0rcWms4Yc0zQm
	QpkINSixvQ7R6BD59yxF98NFm/5HrQZGu2mpAQSQoCwFd8OTxCYqBgsEGbPvCrz4
	bXMEg+jemy0PRhU11qXhGbNcYqqA6T3KojQtL7AylzjmkRGUDD5uCARFE+i+lRTB
	QlAiig/bcfO0au9Ot2SQJcu1dCuecEnpA1/bqpr+trx1p3clrKlvrwmHC9Tjy5IL
	UpjWbw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt00kn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:56:02 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae3e462daeso12314685ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773384962; x=1773989762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bPZfbfumfeK3hXgzqvEDf1QRNXOajCPeUAJoFy2K1fM=;
        b=agrBEDaobD8iInpIavWXRC3SR7Mcp/mEaX0Z+fAVLpjqbADsUGspwVjCu3GOcf51M/
         ZmtO95Bb8BKlXjrzWCplT2Up5NMMA6JooevEU/jHnukqOpBpTbqwb8DT7Wj7Uhj7+L1J
         dmSy759NxjcUGckSmQfNdXb9Pz88KcI3KEmTzJ6rX0S8fDmJYYA+9l3T0fXQaf+PEqYE
         P/Exoos4e4a5HNqDYyM1HY+2B0QXdFP8bGtRTxeTrR2Fwep1dq5BVy8SjY6zmW7PBMX2
         oTghkgL9dWhrFkRK78MrH7TnK72ig+XvIZi+HrWCv3nA+FqEouQCWis2pt27GxCOXs2C
         fnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773384962; x=1773989762;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bPZfbfumfeK3hXgzqvEDf1QRNXOajCPeUAJoFy2K1fM=;
        b=rj9teOuw1TxhPZ9skGU9MkKlWb3CV2HnfUYHod+4J5sk1ahAyvDkc/izNRH51Fl7oZ
         tp18/JAF6msXIbsyfmyqBHlQI00VM1UKukZ+n08Xb7l8CVC1aA999VjT2h1bGaWgXQOL
         1DoMTuXi3rTkGcavbxlGNuCGjZPyBhHpoQBNJtngrlF2rvQTqG/SsMVsw3BqDSpspsgq
         KhrXnjKLnF7IguGKU7fBNT5tSRn5/1IJ0moL9VmrYdp/yo5sGglGerepdRD1tYguaJno
         8HAyTh6JxHU4djgtGNEXaqC60UPSPnmdV3vv6uZYyFggZ4pXx6He/C8d2ert7H6rEnV8
         d6iA==
X-Forwarded-Encrypted: i=1; AJvYcCV5PE+zr7axRMtAYFtOBQyc97N87tqhJWPwCiowsv24+1RV4SBkrIS8xFN2HlNjIt2nJ/EuaBY+EY7j@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt8sTV44jZCoyGRlaLlPu/zXN6WzaTGoDHwhOAbVIrTATlKrbF
	1ERWYrvXcivvFN7otrRfEhhcnFK6frSeW4jeEjyQRp/rSuZ9cSPy4qHvHaD8I6GSfeV9KWht+l8
	qcXiudsKlRuZpexwWAxKZlynaGsqIcuhqYwxHTYRf2uutUF4gJIuSTxicNwNKFkNM
X-Gm-Gg: ATEYQzzOdQPPEfLtj4hSlpUkF0PzeS09AV/eRbHMO3HmX6v+91S5LKeEK1+sqmpUdAB
	aN1535o3YElSTyvDNghJ8nBTbF0CMlA8/wz40Td+Or8ZsLNtme5QIr8BA5eMQof4SQFnJ64X9qT
	KexaJXmKjc/xYXpXL0eN51aO5m4ePPmYX0c2XzOoh0ah/jYl4c1/SR3k3tS3xpXkOlu+iEdo/uN
	sMeS/E9/1q8HzajcW29uOWQWYSLIL3FS/kpAO6w6IwPldMf+++xj6x4o5YcfZSExNwlif9HfUwn
	PTQqhg0cm7Rm4dMfru2SwlqhXEYHlNb0wSCzgBmNTcmkCGRMNKeWi6Mo9ytB9TWE6vzOHq3Pl5S
	a1SWF2l2e5YTZ3SOP7x/YAtwOmKaMq72eY/VJgpH+NGo0rMk3b9Yn6kH5DKHiKfxGow==
X-Received: by 2002:a17:903:2b04:b0:2ae:ceb0:d5f0 with SMTP id d9443c01a7336-2aeceb0daeemr10380335ad.47.1773384961688;
        Thu, 12 Mar 2026 23:56:01 -0700 (PDT)
X-Received: by 2002:a17:903:2b04:b0:2ae:ceb0:d5f0 with SMTP id d9443c01a7336-2aeceb0daeemr10380035ad.47.1773384961198;
        Thu, 12 Mar 2026 23:56:01 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece7ed9cdsm11279715ad.60.2026.03.12.23.55.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 23:56:00 -0700 (PDT)
Message-ID: <0a8996ac-a9ea-4c47-ae44-246d8ec93b4c@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 12:25:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] Add minimal boot support for Qualcomm IPQ5210
To: Linus Walleij <linusw@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson
 <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-mmc@vger.kernel.org
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <CAD++jL=P+0nY3yVM9MCrRfG5xLtg=R6Xgpi1xrbzzLPD-Y8KKQ@mail.gmail.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <CAD++jL=P+0nY3yVM9MCrRfG5xLtg=R6Xgpi1xrbzzLPD-Y8KKQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b3b502 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=TA_BZAN9T5C4Y3A0SdkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 2dZ0HK33tgiyvDwqkBrQWopYiQU38MJW
X-Proofpoint-ORIG-GUID: 2dZ0HK33tgiyvDwqkBrQWopYiQU38MJW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA1MyBTYWx0ZWRfXw+I0EMrLCH7f
 FiJdXyoCVtYOmslMkQO7nPhOPZnSQ13UgiilRGpp52a38CJPZgtfUfLfSyMk03uOuN5//sDgQ8E
 dJaBe0Pm4Qmu05wU2C4f8oRWF4gSgwGjg5QYrZpsMQxamFdym2nRGfz6uE2Oq3OBj7IbX2MwEgP
 Cizw55yea77C7v0kqC+6ngpi8WcB93kLDYCPE8/rAU8OgmtnyZLelqdbIlIw4bx4sqU5/f52CXR
 31Wt9jeR9tSUZG4lATqYizpmZBlj4TLi5vz4ISVDSmiML/XdJcVVOV/g0s24oe8GAIhBoUSn2FM
 4LfkofJN/Lj0GuExLUoBtmI8annboKoksR9Qo5fRGAjlYLPJqNGbSQw2krvg2qK4xpZew2PbknC
 T/slCQcokG/RnZrXgTvz+8GPSEnI0ajPkKvkP8NrZqS+ECuan24fGnK3lrcmIAeLF37cMgzK/Ue
 b/GBOEiPjuqWM+uMugw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130053
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-274916-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 732F527E674
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/11/2026 6:31 PM, Linus Walleij wrote:
> Hi Kathiravan,
>
> thanks for your patches!
>
> On Wed, Mar 11, 2026 at 10:45 AM Kathiravan Thirumoorthy
> <kathiravan.thirumoorthy@oss.qualcomm.com> wrote:
>
>>        dt-bindings: pinctrl: qcom: add IPQ5210 pinctrl
>>        pinctrl: qcom: Introduce IPQ5210 TLMM driver
> Can you send these two separately?
>
> It seems I can just apply them to the pinctrl tree after review,
> no dependency on the other patches, right?


Thanks, Linus. Dmitry has reviewed the driver. Should I wait for the DT 
maintainers to review the binding, and once it is reviewed, send it 
separately, or would you prefer that I send it now?


>
> Yours,
> Linus Walleij

