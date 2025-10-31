Return-Path: <devicetree+bounces-233608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9368AC23F64
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:59:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C3ED1890278
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAEE1328B63;
	Fri, 31 Oct 2025 08:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="djn2CHHI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UfpmAuOw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5127D3191B0
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761901027; cv=none; b=aLeiFzFdc3zvmJUUGFOuqlAH9qhwqOWZit2520O/JnuXeQ/u+aQq1f+y1PfPxJeGAkjaHVuBkXHdosmLzpfiZW4ijwQxr7uF4yWtGvd41FOntMIBJN7dR8vq1c9h6QByhtlY8tzIJ61A2izMcLXwgs1wpeRXpCOncendi8XEjaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761901027; c=relaxed/simple;
	bh=yQ1jDNw6nw/+w3jdr16Cul8rj5akl3On7MjQTMOOtI0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MJm78m+eGF5FgGwhYWGXV7mjpgaQbPaj47EJdEWxDIPY2TIIq8pC2Pk99SxsIClKO/EV+ijdS+ZltALDT+iWyAo5dR6fxvpI/86eIqknV4bMYuP/ySGQ7BUEBC4oJ/ZjuhrWiGDe2iwcFttlh/pDtIvjI93+76Mc/+TdkG+Ev4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=djn2CHHI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UfpmAuOw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V17sAI1416935
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:57:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6dBNJpoG7oA7MdXWziFc42uzkOgfkuUA/2lceCPcpVk=; b=djn2CHHIJKzpmj0Y
	LpiVxcrXYyyw/KJMCIqc88ykufILLr2MARmeI29XNVsoy7LlTdg8RydzTCmSNbgE
	/CMrooXFUx1SITNWAQyOrALUWt0N/2mWzznMZ9hFRsa79k+hfeJEuCJGBjgvFIeD
	9bRr4p8LbVfxe3V85zgVhD8Dy98NuM7oOK3vfw/po3o1zZri7bRx0eA/veWsuFJQ
	+4pzFwp5kdYik15r2IenYCl6bj2QZMvTLNRzF1akxHmBJ47Og8yb5eVhJRXo5Niy
	G+Z8TJfUwP5AcbRKrSV4qsBkWILUyuRIVPUtOT50Mpy1OrSu5zph4NuPeNE8/NBP
	Po42LQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4k69h3x8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:57:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ecf8fad13dso3927811cf.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761901025; x=1762505825; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6dBNJpoG7oA7MdXWziFc42uzkOgfkuUA/2lceCPcpVk=;
        b=UfpmAuOwkDhWO19I6diqeirkUqOPECYuRZGgNEkXF4TdIUbUMtMf4OhIOKz83Y2iXg
         e/yTkqRv+e9vc2ACo2CF5qLcOXYVQKdT0LSJH6mtgrs+IElVuhH1gagTa0zTZ4j4oMLv
         J7wM/OGJRnhTCLGmOItR4GJQPTZhdkUfmI/zElUAkZ1WnDSKpzD7LmoFr70vRjh5yK3J
         w7KI6g1xZdGL9uyE5wjhIi9L+N1eW62jxKJE04MEOrHalS6qHNOVzdnVtzcOEB3JNQAn
         gBPIDazQQeX13Tamte7uIzuhU4VzOLv7xpxSSGQV1whjFv8iujTtoT28goPkcguhdHl+
         NI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761901025; x=1762505825;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6dBNJpoG7oA7MdXWziFc42uzkOgfkuUA/2lceCPcpVk=;
        b=Cw3Uchk27N0HlsLsjjvdXZg8EYHU22bzFNtuwKGabNvzHEC5MeotbRkbfrV+dCM9v2
         B3fIRxMjznLpRp/9q136CnvuJ9Je7F3+HeWFlYLWoQ8CSBtN6XW5O54OA1mrHg9Yiz/q
         OdhKzp7f0EH75MHn3Au+opkk/Xf0qA4uycdDmSAh6w/FZuqX8O9m9YOYbrBgwihJJaWL
         SI3NA14uzz1SkG3kFigjv+BwseUjpc/x/QAJIYYVpgO0BwGr68VeakYZXR8dspOl4Ov9
         OtWfoYlx+C6+tHkL7Caj0NfGfzgosRAdUeI3GAs3qH0v8GnYWr0DJR+625HWMh7Wt/bN
         K5tQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoJ3FsMRkZV9g39VWDZ7Np2Jph6bAaQCI4ihRQu53LgOnom8u3to79zoTfov2B4ZZT9RbT/rHAwZVc@vger.kernel.org
X-Gm-Message-State: AOJu0YxWaEpWrzuzDh60XgRI5pDG3sfkxiECZ7bTHDPSn2z/h2fI55e2
	9JDIIBVzzsAFMSRGfIj5kBWY29fP/kxhunblNivbhOzTBY2zQOrtq4AqC5ZFG4x3gFBMGzpc5Bh
	Y34TdHJEYfgtBChfAX+pC193hcGm5DXw7C3ktkHt2JVPEoWB7hdvQdnRt928SHsg6
X-Gm-Gg: ASbGncuFfIiBki2X5qk71+vRQ80naqSba2MbDPvQITKoZSJuMEtAkMIl1ejAFbbFix/
	WE+SKBFYiiLKnuncKeAdkmLKsu9bquHixTqQ7ac4UkS3iXAu/UnnMGXWU7chq2CD9f9QPtIYY+0
	XEEwwUwKyK18o/X1ff7D26V04DwfmiMWedTMVaXJHRL+v6+PjsOhHa9VDiAS19TZHomHR4k+ko5
	lzyYq8L16xcbMON7Q6/j/c2PTcSiAbnJVCdNQxRW4Wdnna81JfMOZyEN38vob8VJWJkgXcSASyE
	ssNuObLBOi8yy9Z4quUvmj4G5knZwiOfDcu67tXEHgubEWB3Zjps3texC5r3hD+T3vaxP3lsyTY
	MlOdcBgjG+22AtqNOt7ijZWENaR05hC46sloeEeKB5t60QFnNrZCcVYCD
X-Received: by 2002:a05:622a:2cb:b0:4ed:7ca:5f33 with SMTP id d75a77b69052e-4ed30db06fbmr20600411cf.5.1761901024835;
        Fri, 31 Oct 2025 01:57:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh6P0sdOosomYGx+CFxn2zJIvjMK1mpVwzKuR4xrxOpWGgcH0e1YP/0Jw2xV2c/IQ2wtaAtA==
X-Received: by 2002:a05:622a:2cb:b0:4ed:7ca:5f33 with SMTP id d75a77b69052e-4ed30db06fbmr20600271cf.5.1761901024350;
        Fri, 31 Oct 2025 01:57:04 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077975defsm121917366b.11.2025.10.31.01.57.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 01:57:03 -0700 (PDT)
Message-ID: <d9812a14-25be-425e-9b69-20eb998cc4c9@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 09:57:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: rename sc7280 to kodiak
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251030-rename-dts-2-v1-0-80c0b81c4d77@oss.qualcomm.com>
 <20251030-rename-dts-2-v1-2-80c0b81c4d77@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251030-rename-dts-2-v1-2-80c0b81c4d77@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA4MCBTYWx0ZWRfXytnhaW6djK0X
 jWM4FrNSxES/aDlCy3jWDXvQPPhzqnh39NVqo/rq7cK6LO0Nj9jcg5qeMSOjkPzV0IFu+QQlwam
 qGVF0/ZsPcPfKKSGUpSlmWPEaEx4/p83eFBwM0rQuNlvkNaKsdKv0dL1SgomKpY2nL8i+QL51Ht
 dxVl7HkwizV6Fjd25O3WOlfcArZXpGjWHZYT6CxYkMaCChTB28I5SLwEkBDU7ZKfNqRJf7eWLZk
 ScdcYxdO8HweI+U2ppq+2ve4Ecmy3wTv7R+68FKJldvweBdvRpnAFPk22PBGasJdILnjwTk5RNn
 Kow0urFkTcND90xFqB2jjqUPfqXkkGHvi8z3Tr8IVadZQni7OGahHck/1WIcv0YjYHJQTwoNtXt
 iTDKUU7CUqkhaDSajJuaOSZFjzolzg==
X-Authority-Analysis: v=2.4 cv=Bv2QAIX5 c=1 sm=1 tr=0 ts=690479e1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=SCbu04D-vPvkWQ6b-rwA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: uCdc3M_S2v-3piRvDTOq70nSWtJYOnwW
X-Proofpoint-ORIG-GUID: uCdc3M_S2v-3piRvDTOq70nSWtJYOnwW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310080

On 10/30/25 7:20 PM, Dmitry Baryshkov wrote:
> SC7280, QCM6490 and QCS6490 are three names for the same die,
> collectively known as 'kodiak'. Follow the example of other platforms
> and rename SC7280 to kodiak.dtsi.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

