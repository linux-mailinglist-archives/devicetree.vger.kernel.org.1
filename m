Return-Path: <devicetree+bounces-265048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKBjKZi9jWnL6QAAu9opvQ
	(envelope-from <devicetree+bounces-265048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:46:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A7612D21E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B3CF300C007
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F378434D938;
	Thu, 12 Feb 2026 11:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SGWlhgL3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BamOLR+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDA834DB6C
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770896789; cv=none; b=kijLlgWup0GBp8N4LeZhwdJaUZ6o2kfWu1lGX/269eItgmLGdRS/Sdmy3YzWv4oUX0qnB8qoxibiWUoVHnCi4u68BC19gr2BA0vW50nLV2h90DGVegETZ5K/TeKQ83eRvI5VL4d+W6cBYHD15ogDSB7K77/VfCLh1XpR9hEH70s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770896789; c=relaxed/simple;
	bh=602jFy6coVafTb/vn1a1ZEWgeZBgaljvs2qNyXb1SPs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R/NSMzEyVnTZhdXTaYUf4lM9HLHkbWoc8gW1mFN0NpRcEz+NYtsoBVqcjsP3LNG6sWFkvWde9+hWLLLd4M95vEQ0YlKRTtYDad3Efc+ntNwgFbIYRcMOFD3mj3nf3+oxhfRf3y3p/EAq5ZrQx0pcetfPPYni49ljgLLU9ZBTXyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SGWlhgL3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BamOLR+T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CABOik3143791
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:46:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	679b3bTwRCV6P+hG8B3eIy5AmvUKTpMaKAMYdenGuEg=; b=SGWlhgL3W5roWxHr
	aLW5/9Im6Ujakr9JxTCwcp6tHd1X+Ans6pJoq4kBCAobvkHI6EZP9C86yf4XjvXT
	GWUduG1KMv6MANiBng3Q5d9nsTo6NBs7J6oX87Pd3dzqRcbVmPluCQV5OgZrVkPK
	b52sIDAN5tFoOyPMQzGkFRRqdojl8j+AUXsAd0qiWpKUvyFPWXvLjvG1RhxLpqPU
	ABuBq1fKgEbD7dnSHdiYlJzmMke0B5gfbeHUrv3QxFdchkkE9nM/SXXWf5Za6hx7
	KlZhDLegRMmkmntZsz6DQw5VpIHHSbUTJd8QLiolFnFKuZRJAEqEPOOKZjlWwhDp
	wFH3Yg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c93snhyyq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:46:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70cb31bcdso166107385a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 03:46:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770896785; x=1771501585; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=679b3bTwRCV6P+hG8B3eIy5AmvUKTpMaKAMYdenGuEg=;
        b=BamOLR+Tbp2pGJW04556TH1h+XPnrg3FcExpuTMud0snlHLhOqer2P0cz9VyIidSNl
         lS/9v6Ty/8GIcE0Uie2QMHFBzUwGBMKNBqjLcXDYzLImvdbA8Ef7R0x1g6SbFexbql8f
         FXMpJrCzLtBzwKTLzmobbDR+XyVfg0Y4qgEzcMWla+zor342jQApyDK6z/mLPiFSn51v
         LUTM5jxyRmidcSqYKKQgZTuKr0XmVYdGi2lub3tXqn0scCcKDJrANV14ekC1lUJrZr25
         cLdUfxU8lAusqEqN+oiogQSKDEDMbrwDfo27LA8j4+HLFs3EpOTqDvQp82kEGEpO2EMY
         STzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770896785; x=1771501585;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=679b3bTwRCV6P+hG8B3eIy5AmvUKTpMaKAMYdenGuEg=;
        b=bJGTEOZIpg8QRLhF8aQ8XeETsbYnAMIxgQv2KME7UzjXggX56qu0ljzR+7K0Ue7KJW
         O4BuxbMF8pECjGOPwfopF4okQxOoj5R104JKer6ZrbzzFgoOU3qP0cV86PZ3SsL5bM3e
         NiKoMhafxEPPj5BM0T8K/Q45HJ3UgzM+/zgcZp7JLH2bWDpKj7PbgVu+c/j/BAD/KRLM
         TTlu5EUGQDziImQqiTzP6JnVMTPGVeLjMN82tZB10PiWJm/4LeNIvL9bIq75WPz9zj9K
         VHjh5xTIf72r4QHBOkCY3mlJzJxpbTXdfod5l9bzcm5ctxFa9GJrh+248Fgw7ICgJTzV
         oqSw==
X-Forwarded-Encrypted: i=1; AJvYcCVXQPGuMCkrRXThc1hfH16aNPhGHegO/5+RaFiipVN2jA2+4fZV0eoR5PXmDFrT6ISEvRStHz91X839@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/NmhTL5nhDtFeYy+2gByyes9Gm2Uhz6bbedKACUhTkPQlEkQA
	BVuQnGyJ8CH6vrj5twCmi8JvwWRdtzl4VgiY/hQox6xrZnd+XTIM3ur3fDOsxKu5rQgtNFMIqxS
	M/0oIlaBY3U6m3R2m3HStDrY+VmId3cX9ijLuqyVFm6zmC8U2bXxrKcK10Ml/N4ZGmuAQEUqn
X-Gm-Gg: AZuq6aKRiH/DA6dlaUQyRHe/CJ/L+IvgG39oYQlXiqhMYcwVmogXF7/J1lEUtG+L6qh
	aakVuMfgfmCIFJL92+jlbuiPwlkEdc82HOgab/Z0pT3VxxXjvlhQBhidfwAyQMFekW6rcUCqbE8
	M3DMX65irbttiUtxZXM40WHgjKD6QrkTkYC0C9LVfNtWykuWBE9BJO0aTpBBzvAfdYm4ShzuV/o
	hqooNQ9uIAA6A77Cj3lRgdlCdQrFhbLmIg7izJbW4bEaGnbdH2+cqv/GC/LqQqAuwqQSxaxU37A
	d+L0vrv1t298zYPwAMeonD05SHE3ZabhPNC1WxLMn76fXXrjnJXSCK4AH1Z22ji7eFyJ//ss77Y
	wLSFOTTAT1obLflMrF2+1P1wD4TKMZ9qVMoHbNR6nmsuoRnnPwUb2iCLRkXmQ7JbY4QxTzuOZQR
	zaP28=
X-Received: by 2002:a05:620a:370c:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8cb330bbca5mr242423785a.5.1770896785013;
        Thu, 12 Feb 2026 03:46:25 -0800 (PST)
X-Received: by 2002:a05:620a:370c:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8cb330bbca5mr242422485a.5.1770896784583;
        Thu, 12 Feb 2026 03:46:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f708e25dasm146980766b.4.2026.02.12.03.46.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 03:46:23 -0800 (PST)
Message-ID: <97af21d5-7457-4dc1-bd47-2e34e6df094e@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 12:46:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for
 PCIe1
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
 <20260212-industrial-mezzanine-pcie-v3-2-1e152937a76a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260212-industrial-mezzanine-pcie-v3-2-1e152937a76a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4OCBTYWx0ZWRfXzKCKTRM9G5eQ
 FnN+jlmzFWmWDyUlPZfprjNN+MfuVWuGq4UFIdIdSLfSdf1+H3OF2KBgYVd0J6YIJ1xeNn+t52s
 jBnx914bmYT+y6yotQPImC2U++h6G3gsFNHXobbM0GrfeR1aA772SpZa16zAAj1pJqi6AI9sr1Y
 t/KzE7+DMx+JPbQ0SmfAPLNYkMTj1FM5kSIEAOUaMQYfw5Y7QVi5yFT17cclN4amufHyTfUa9Aj
 WvvAo6FvcD6cmjfxLQxaYOX7GnJojMyLdbIUz6/osicT2nV6C6M4Dq9yShGnQi2MXA2+gQgOM+q
 54ARE4bNnv5pMq40hnce8djSY3fUe5pnRrUmouCoRmhfWQcaofMbIwl57IdUMPTai2bGk8X1O2T
 Hc2OObQObuXEz2BKO3fiBGdlx+Bw9cWyWwpQgmn0VU6/pusLXx2j8/mIt7OCoq0A/kk6Oy7pVHw
 2+aBJFwuQL3KowtcN1Q==
X-Proofpoint-ORIG-GUID: aS9Z00aFRLrOXjZvhRppzXFp5NecOMJM
X-Authority-Analysis: v=2.4 cv=dLCrWeZb c=1 sm=1 tr=0 ts=698dbd92 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=0eh1lDOh_YGwDaDwIBMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: aS9Z00aFRLrOXjZvhRppzXFp5NecOMJM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265048-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 20A7612D21E
X-Rspamd-Action: no action

On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
> Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
> in cascade to the first TC9563 switch via the former's downstream port.
> 
> Two embedded Ethernet devices are present on one of the downstream
> ports of this second switch as well. All the ports present in the
> node represent the downstream ports and embedded endpoints.
> 
> The second TC9563 is powered up via the same LDO regulators as the first
> one, and these can be controlled via two GPIOs, which are already present
> as fixed regulators. This TC9563 can also be configured through I2C.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---

> +&pcie1 {
> +	iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
> +		    <0x100 &apps_smmu 0x1c81 0x1>,
> +		    <0x208 &apps_smmu 0x1c84 0x1>,
> +		    <0x210 &apps_smmu 0x1c85 0x1>,
> +		    <0x218 &apps_smmu 0x1c86 0x1>,
> +		    <0x300 &apps_smmu 0x1c87 0x1>,
> +		    <0x408 &apps_smmu 0x1c90 0x1>,
> +		    <0x410 &apps_smmu 0x1c91 0x1>,
> +		    <0x418 &apps_smmu 0x1c92 0x1>,
> +		    <0x500 &apps_smmu 0x1c93 0x1>,
> +		    <0x600 &apps_smmu 0x1c94 0x1>,
> +		    <0x700 &apps_smmu 0x1c95 0x1>,
> +		    <0x701 &apps_smmu 0x1c96 0x1>,
> +		    <0x800 &apps_smmu 0x1c97 0x1>,
> +		    <0x900 &apps_smmu 0x1c98 0x1>,
> +		    <0x901 &apps_smmu 0x1c99 0x1>;

This map is not just an extension of the existing one - is that
intentional?

Konrad

