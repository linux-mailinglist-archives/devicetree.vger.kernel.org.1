Return-Path: <devicetree+bounces-318334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id acm3IhLuRGqn3QoAu9opvQ
	(envelope-from <devicetree+bounces-318334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:38:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE8A6EC3CD
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:38:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="RZx/Lttb";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ZrqIUbqe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318334-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318334-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45ED13034DD3
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 10:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0AA0413D9C;
	Wed,  1 Jul 2026 10:37:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCB63F23B5
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 10:36:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782902220; cv=none; b=Vc6AiRnlYFw/NOCsBwR22VDrZ7Q3XX0QXWguT7ewbd5rWgq15O/qYzfdVAq7LH0LFz2/f0ctPRlIUq4eRUM+faIrpNQT9hWmi5s9sSvFDSOU4wC+m2c2KOzihANrnNzj8NhpGg+b2r0DZCH/bpfzmkh1s5ysurm1CIiO/kNxfF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782902220; c=relaxed/simple;
	bh=KIgAlnVjO/BDlv/DQ780C44pFtzUmnCoemXQ8Jn6Bag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ijbV/zxUOHL8fHU9AZ7i9WZpnPXaQ0XDPJe9U+PNsqmrGdeaLEnY7ZEgAszkpVOgvcjTxX9Y6131ojvNeyxuyYdqo57Z18YPJ7VXTjW4fyAVUpXSWpJfygkMJEnhxTxMjd8xXktIeplayp61xSErdgG7NWrnVWN6Vxed1Kdk3Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RZx/Lttb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZrqIUbqe; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661A8UFP672923
	for <devicetree@vger.kernel.org>; Wed, 1 Jul 2026 10:36:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fc2tkNpOohA+tSSWrN3nTCDx1S7JmvYT1YRhgM1ybfs=; b=RZx/LttbQc12SfCO
	oRxTFvMIx6vP0coIhfCZB082iAq0kiE0NVhSaPARcmKMoWCC8k5DZpoAzOLDWQyE
	vKuIqXW6GuwrrHWBVpoUccATaIrmDAgObE0+6IKr88uwlkr07Xjnozf0Vj3yP9eG
	wIMB0a/YgQqENtjiJWwkOLzPzT5gr1w7FFHad5g7KSibW7kh892FlyMZHt6m97xV
	LZrBkI5ZTisnJ7mWpjA5RyD7aStAwTmui/xGJVz5GqxQhe/QsVhkm1y1MglPyuBe
	l/WJfLbDKkVcRi8W1ES5LExN2v5Dg+fw2pnT7JrezUUb8YjWmn6V15NmC82M0EGd
	rwrEWg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f502urbhh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 10:36:57 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c07313be5so934331cf.2
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 03:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782902217; x=1783507017; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fc2tkNpOohA+tSSWrN3nTCDx1S7JmvYT1YRhgM1ybfs=;
        b=ZrqIUbqeLnTkAPl6wkPYDlEbrMdsh3Wio3ouim+SWizw6vBGVOvxPmbcUgL0WG0fKS
         OaEsOE3QPofwwrUgi9eSR+zE7g29o/mxCMGLsTJdCjxEYW3joPfPUZo1f2GFiv1Pz8eF
         MS3ZWcj9YTlgPiNuoHhvHMzVWsreM/kZJnjcMCG/+XUJk2fvOt/vvzHti6Gjy1/3M1pc
         RJO9DcE7fBNRTPAfmiXWkPPZ0GG/WcG7/JsLIxl49LTTtbwIZJd6LChKBz0nP/NIXNh9
         MDfDCPuzEM5clglWJGa2TqASkVYI3heOVxLStAaadYg+Cn10rD6RFUPA0ZQZjg2NsH34
         DLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782902217; x=1783507017;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fc2tkNpOohA+tSSWrN3nTCDx1S7JmvYT1YRhgM1ybfs=;
        b=POk0THWQFJevjVBrQyVeeuB2hO4be6kfS6Yuu0xmhtt4ntVF6wFPMLeKHUMhppZGDl
         NMZgSDMuqaM8FtpNbOk+5XDEapDszG9YMweyxr6I496I7au05M/rMVbgIDN9OhPwvlB5
         LvfbcWMQnQ9Lekj+VDE3W2Kz0GroFv+1Fhk95BbUSNc19DXAee29OEfS4764oHOsGyTR
         rmJL6HM6u6E7j5qzYMX+QYK0tWy37KqosqA5oIuTu83y8G/dGdJhC3Omk0PVCzpLMdNQ
         zjngLIz+AaWKFNclYpl05ZjSWO0Y60X0BZWnMDA6Ud7HSerm3oDXBrXOBcdDA1Rec2Hx
         kHJQ==
X-Forwarded-Encrypted: i=1; AFNElJ/Gx9o419TxVzfVP2jsg/4b4ewheZCBx15X/r3T63zWdFmlRR2mvS6f1PHMBJoh0PFOtT/m2YwV5eDG@vger.kernel.org
X-Gm-Message-State: AOJu0YzN1i1jKDP0HunX+aPKRVX9KWlZXGPAXNL2GoB1mNK/5osodcDN
	BnrGbrCq64UX6GrMkml2hr8+q6XtHszcz3iBvavgVnvhpjgZxL3GCZalH5TwziBFi3txR0r+SE6
	+6PEX+5DQt8KbtN94L/uozNGeBWpFDHnzWhQCZf3734KpH34mt0WhNh0WjzEbb/Nj
X-Gm-Gg: AfdE7cnISUJRgMUaHYJCCm7wFmZmuS+6UtfEH3xXalM+7FtilqPXCuASfVbAsR9P1uj
	EkrtCAieQzUJkfsW0f7r19gGLMjcUYgPHhODQmIY8ORAiUiPKHkjvxH/q0qtg+aIVM0swd4ulbt
	zMcFBNXH0uji0k02cQrFlwB2HLAJAfuAQOz+YGySXPkW2vUzpScVo1lM2UT7P0xt/RLF/HbMTLz
	D+xzAbMF/k9EMnNIzxLYfaFwA2E+K/hWUpHZ6CREjcXGWia3+PzndXXxKmhfGsQi/0qTK/N3vCt
	a6iDjtFDyuRUAgjjWSdaHR3B3TTDz5c8oTJ/PKi/xSLkq+TfKCVmGFt7gYrOAYMT0m6JUA46VZv
	VdvAwAmjLc1O/hxVwLD3jbQl9sgHGunp5zeg=
X-Received: by 2002:a05:622a:14d1:b0:50b:3489:5495 with SMTP id d75a77b69052e-51c26b3920dmr7346231cf.8.1782902216876;
        Wed, 01 Jul 2026 03:36:56 -0700 (PDT)
X-Received: by 2002:a05:622a:14d1:b0:50b:3489:5495 with SMTP id d75a77b69052e-51c26b3920dmr7345971cf.8.1782902216423;
        Wed, 01 Jul 2026 03:36:56 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c128917536csm254439866b.56.2026.07.01.03.36.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 03:36:55 -0700 (PDT)
Message-ID: <6e42bc67-9a2f-4e64-bb49-30fd845263a2@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 12:36:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] arm64: dts: qcom: shikra-(cqm/cqs/iqs)-evk: Enable
 PCIe PHY node
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-9-e1a721eb8943@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-9-e1a721eb8943@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDExMCBTYWx0ZWRfXx9pq/UjOS1h0
 uAO/aeyQaOopHLf57Rjvoey7YneY5JQRhu/wSrx3hEW8DEIG+/SCezIJDxKXKGzG1MvMkOtDYlq
 YqGCAXKgGn1S+EUq8cQ8/WSMppDAtTs=
X-Proofpoint-GUID: RE_1GLAbN9hcf50os8l5-Y2imjWlm51w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDExMCBTYWx0ZWRfX7V0zNRe6JILE
 e0cc7ccQhNSJjtkeFD7cMHNj9hHtmZOiI/JsHNeWZPUI0H2vzSKMY1KB+bfk3+cQyVuWBO4QNvS
 CQ+9ymqt3ahjO9yWQkvk3WRC6eCMprD26ihazlpXDkkIZ4wOQFYs9GO5cVt/wVYw8zpWiMpEfel
 4IEKldCw2UkDXdN7y6LHPIQr+ei4UiVXyKVMD44LzNH3rAlVfZopBm7R74nKU2K6QkUP9Jc7VZI
 CYzhQ0Szhl7/RmjTB7xrtUOhec0D3b3QUIjQVBMCZd6d3Wd9b6sDfU5xZt+lXgLJ4it7D+aHyoS
 57n8JvFVu0KjmLWK4sMhtdpg7qyaJ3ZGSub4yJdcPB12Cy5vNMA4cFXxUYGPFX+W8opI1ml1/+e
 MXozmcNlwSXtCmCow0tUmrsdXgvtK20XZxr/R5HTmuav+YNVd5Gjv+dxqmoU5g9gAHdYQizyg9v
 Z6qWl7ivIrufUwTYWkQ==
X-Proofpoint-ORIG-GUID: RE_1GLAbN9hcf50os8l5-Y2imjWlm51w
X-Authority-Analysis: v=2.4 cv=PbLPQChd c=1 sm=1 tr=0 ts=6a44edc9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=-pX6LU1wS3kVf0kvi8wA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010110
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318334-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:sushrut.trivedi@oss.qualcomm.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:andersson@kernel.org,m:krishna.chundru@oss.qualcomm.com,m:brgl@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pci@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBE8A6EC3CD

On 6/30/26 9:02 PM, Sushrut Shree Trivedi wrote:
> Enable the PCIe PHY for the single PCIe intance on the Shikra
> CQS, CQM and the IQS platforms.
> 
> IQS platform uses a different powergrid than CQS/CQM which explain
> the different PHY supplies for IQS variant.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 7 +++++++
>  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 7 +++++++
>  arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 7 +++++++
>  3 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
> index 683b5245923b..06ad32041546 100644
> --- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
> @@ -60,6 +60,13 @@ vreg_pmu_ch1: ldo4 {
>  	};
>  };
>  
> +&pcie_phy {
> +	vdda-phy-supply = <&pm4125_l13>;
> +	vdda-pll-supply = <&pm4125_l9>;
> +
> +	status = "okay";
> +};

I think it makes sense to push the status=okay to the evk file
(because we already describe the PCIe switch there) and only keep
the supplies here (because they differ)

Konrad

