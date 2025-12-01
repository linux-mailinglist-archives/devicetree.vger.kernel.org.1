Return-Path: <devicetree+bounces-243428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F24C97A02
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:35:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 487843A22F6
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38CCF311C2D;
	Mon,  1 Dec 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c2B6F0tF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gsvbIgbh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8663330E837
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764596153; cv=none; b=efDjy5o+dGLlmhAbEy8I9HSWnf8Y5QKahB2sNFk4AQv6roiFXE8kv/r0OiL71kP0jE+WA6jub7lElDIf8EVt0vcAaTmH6KfzlvYV3/XLiEJ1FDqCAYUC6H/btd9pWgdJYCZu+0z/pNxLxpDfGpwN6fOwaP9BdG4/OCxyiWabOOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764596153; c=relaxed/simple;
	bh=OZdWXq4I/E5WIteXnC1Jkbk3o/gu4E2QWIb40Icnr6Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HaKDV6NSg1wro5BgOOPcydlkR1Zd1aUpo1oOIiKkUZUb1FZPaFFUpny/HgNMsnvk2ySyT5uWhxQU/aou9gh6QrW6bLeZKEEj7r0kj+zf8bXaucnhyFE8QrNIpAuLH7liJ8c+tSS1StOm+WhGSAfYVj90Dpzfu3A1eLpNp5EU1sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c2B6F0tF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gsvbIgbh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B19a1Jj451837
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 13:35:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MGBpbvKiOlzvOmnX0NTD3FcdMyguWjR0JGOboZ7NqVA=; b=c2B6F0tFjcrU9BYT
	a0r1Ayf+l2wd9/lm03szYYU5V46n0Hnurl62hO6470Vec56G0gQq+4bziEN/J0FQ
	QB+Me7IsTSwDgOyUgWbkyTd/QenUfVOc3juvb5OiJdb39Gy+ZxpGXo7c/l5hCwa1
	Qu7AMk/JkF9VPbdsmkqgkqoXU8Hlz6JVtQYBIR1mDYDSiqy1grdgYGiUraL8lXm7
	eh/hAGhJITR4wOtigTrQhadCsXa7xyV0SWMaqPTwYG5cp1+D8HHrtj7qiNFTU2r9
	j1PZoIg/brkw6zGai+wXViJa6R87LAIla+QzDAvcgfkaXBf3PPL6it0DINHN3Jg6
	gBvS6A==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as8hermvf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 13:35:49 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dbd3b72401so411760137.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764596149; x=1765200949; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MGBpbvKiOlzvOmnX0NTD3FcdMyguWjR0JGOboZ7NqVA=;
        b=gsvbIgbhAtm91L5coOnk2LVz8L1qRXnX1bYytDAlh/sHm2iV1ajgkFtGW0/7ibMIyH
         EBdcgBAqzsKtS3SKAYrfAidfeOxMPhi80lTRwZKWJN8twYNqV/yoU6MWnBYMhfouMXLk
         wxUjXEZZjVH7Ml+/XFqTf7YvHV6fcwOeWdUG7hw+RjJ/t2Zbn0r5WzcorEwa7Acn1Aq8
         NLf5aL6C3MgdXxEjrnP/atiCnvvOOl0OHJpw0VEnFqiV+sYDqWQLrzmd+todrsyYA2Ge
         +8ZeSav43Ttl7F8vqQDTErBWaro/64FuKqGMZ7VE+gJbe6VuF2hgsrklD4UF8vpzalNB
         HqOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764596149; x=1765200949;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MGBpbvKiOlzvOmnX0NTD3FcdMyguWjR0JGOboZ7NqVA=;
        b=hTHzmgah0rBz5KTcvqnmFCqi2PnVp9S+4XZR/8E+HHgMUrJxVabEWbEJXK9SKW1NEU
         JHplM9/bHbd99rFkoWbFE/t3MD7aAhiJHI6CAl2CPHIYkzuyh0DFc2WsoxIp0wBSLm8K
         14GCTOogYuLpSJ8j/YtFMSM6pbOOdN/3nKvK9YMENnoD1lsh0iVDUPrLLhATqDdpHZgM
         00Cr2NW9q3xP/h38eWrfGjoBrM9W5/If73o2AyMnK9K58CWfeDCUYx43obsYdJoq+f2g
         5LVk8EAFa6E222pUGvmDHd5+Mn0r6ze6ndnUBjlYfMyWxp1vYXZlvqmWWZy+Rj2s4QCT
         /xeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFgNEAMY/UdwUZ748VQOXaAF5dvQvMjCRCKIVFKStJfKdjp7AaZDAxn1kHURspHiwSBN7/sArz96g+@vger.kernel.org
X-Gm-Message-State: AOJu0YwWk/fwC44qMubXy9kXEbDu6+nX9BLJ+IHCd903dFPfAb28JxBE
	Diq85I/mj6QMle11Gwo9J20oeE7Yy42myyL1XUuBJgI+Al/sWyABDfownshF5uuy4uPmaHsk3hW
	4YQgwj7FHNJ2uHFyJZTjpgEuryMbRMM8aKTLpHgJPr008OxlSAWziJgyGwgRexMDL
X-Gm-Gg: ASbGncu7Dt+szLAXJRpzlnPu+69D+EAxL7tFhk8lyUjruAVn/sb/PJKwctg/3NmwNpG
	douEJffPPBD87JM7lOU5eSIKc9hPCTtMGv1gXkLvtSdZEU1g3Ypz2QEQrOAbQ3uI2cZShL8De2l
	VEYbMrRhPdm7iw+nBFF66olGQq0nfl/Lbv4ZRkHOSFpLJvojDzU+2tJnQ7wwalI9BNOOlsPA7l7
	4JROZWU8VDtyTxi/DR3xYgnyppPRtEA02QVSKiArjeXDkitx+YP7+s+aAM1h31AVqUoslVQaxHd
	EGaGOkM2kv3vwRH1L2L4b5A0uiF0xIJV6ogdHf5lWBL4z3qMAuOc5/rZPjltP6h6ZEkelTQ6I6i
	SM2iqPvFC5mEaE5dSildrOjOP5UaszCZfXTvitMWarT3cQykVQzBydZ73RXCXwhU/jYc=
X-Received: by 2002:a05:6102:5e84:b0:5db:36c1:17bd with SMTP id ada2fe7eead31-5e1de56cb5emr7410323137.7.1764596149120;
        Mon, 01 Dec 2025 05:35:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIEwD4EDN19spY8zdgqRbNhH3BpetN0hw22bq4r1xGtt1Ytiy1Dj8is8Rgsg4LEhNka2bT7g==
X-Received: by 2002:a05:6102:5e84:b0:5db:36c1:17bd with SMTP id ada2fe7eead31-5e1de56cb5emr7410299137.7.1764596148634;
        Mon, 01 Dec 2025 05:35:48 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751035af1sm12781918a12.16.2025.12.01.05.35.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:35:48 -0800 (PST)
Message-ID: <32f013e7-ce2a-484b-8575-e98f2d23f59b@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 14:35:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: lemans: add mdss1 display device
 nodes
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        dmitry.baryshkov@oss.qualcomm.com, marijn.suijten@somainline.org,
        swboyd@chromium.org, mripard@kernel.org, abel.vesa@linaro.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, abhinav.kumar@linux.dev,
        sean@poorly.run, airlied@gmail.com, simona@ffwll.ch,
        alex.vinarskis@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicinc.com, quic_amitsi@quicinc.com,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20251125105622.1755651-1-quic_mkuntuma@quicinc.com>
 <20251125105622.1755651-3-quic_mkuntuma@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125105622.1755651-3-quic_mkuntuma@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LewxKzfi c=1 sm=1 tr=0 ts=692d99b6 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=qKhk4BsYAtMBMWEJztUA:9 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: kBa0gJuWSK_WXex-XurT-UFCn_L3AHAm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDExMSBTYWx0ZWRfXwJDJIeLRRnVh
 jqL9MZEUghlIQ4ub3QORDKyKirW3wnAndBA9yshSkZW+WQSZudhW5BqFlfTb9gs+ZdZpZZWRMop
 dmhvGt1IChpE6E+S+mrZWKN5pH8SyZkfnSdm7muOEiPkUxW7TDVKuOmAVwi7sXc7PimBCZiVtbx
 PdxgZOhRHofMNRfIH7p1c+a5BOuN8koJUwPa2YNPwiPKOR25r9jC9gP9ItWz+BLVPkoD3n9LYEw
 rZWj8crjD+cXGwW8X6CSuVOTfZ2WBO6cVz/nwqui2JbNJtrUCqC6ZEREkMBaqSkO2XYPU6LkGK8
 zl2OJHWDi3SKCQmTvhOYRUOlZB0g4gv+gSzxPuf1F61BNeQ5mPpzvXnsWL2cgKtV8SZjgDl3ogm
 6UvcjDqj2p693O9iF/I2aItmp/7OFQ==
X-Proofpoint-ORIG-GUID: kBa0gJuWSK_WXex-XurT-UFCn_L3AHAm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512010111

On 11/25/25 11:56 AM, Mani Chandana Ballary Kuntumalla wrote:
> Add devicetree changes to enable second Mobile Display Subsystem (mdss1),
> Display Processing Unit(DPU), Display Port(DP) controllers and eDP PHYs
> on the Qualcomm Lemans platform.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---

[...]

> +			mdss1_dp1: displayport-controller@2215c000 {
> +				compatible = "qcom,sa8775p-dp";
> +
> +				reg = <0x0 0x2215c000 0x0 0x104>,
> +				      <0x0 0x2215c200 0x0 0x0c0>,
> +				      <0x0 0x2215d000 0x0 0x770>,
> +				      <0x0 0x2215e000 0x0 0x09c>,
> +				      <0x0 0x2215f000 0x0 0x09c>,
> +				      <0x0 0x22160000 0x0 0x09c>,
> +				      <0x0 0x22161000 0x0 0x09c>,
> +				      <0x0 0x22162000 0x0 0x23c>,
> +				      <0x0 0x22163000 0x0 0x23c>;

The last two regions still happen not to exist

https://lore.kernel.org/all/vc2hen5r7xdaj4nepkoy7pk2jmj4y4hgog5o2nfndrff4yti2m@g46svhsdyy7m/

Konrad



