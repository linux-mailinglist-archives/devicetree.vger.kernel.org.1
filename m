Return-Path: <devicetree+bounces-199436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B17B10A20
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B224F5A2BED
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28A82D1900;
	Thu, 24 Jul 2025 12:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mfr1dc8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C532D12F1
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753359927; cv=none; b=LUs/DeX5/6FDlj1pKwBAsT3iEQQ9QY7yq56A2tDvONpvGqbAcTwwrLZaw6iMpgNLlTSaCuOsYEdEQylyNYv7/iJO3mW7VKyXIUJeTXMOIY0LCZtzEdovJbHX/bEYK2aCqR26ImX+sVv63VjgMEVDhrs27Bq96DFssVV60R6Q+kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753359927; c=relaxed/simple;
	bh=m7mnvsvZsHXBpWj7n28YYrnKFs2IYeSdflZGX9/AAqI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gnaBuYdcNRQX0RbE/rQ0JPu30P8KfDZ/VoQy2IUqLtw+JE1j0CPXT4N5syw1qlpT2jfOUa53iZdZFTr10Bq9iBAvDOsXFID8J1hS+q5Yz/uugcC8tRAc5e5ohjaCpI+EoEtZqz9ZIrRv9xMrCEjpgogZ41q6HOhfUsT05UAI1Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mfr1dc8a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9aGP4022538
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:25:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	616i8C2JxPPICwxxSnMg22TWk26CQbgVBwMD64cTZdQ=; b=Mfr1dc8aR7HOqg8f
	g76ke8SbLoNMiTccOAkKmI5QJH+wm9+MTfcbcIMA038PYN4gtttN8znq57+zH6zH
	6YJaQt7kWWaVir5sYQyI01qovePtvFueTA+qMG6jXIFe/XC+jWIGGnMiute9g9kV
	qu/vDSQ/JH8urSJmuyUPuxQMrDbe3hjOjEVxm5bJZPqBSRXYteRnZZNwoX8lTxDE
	bbkPs6EUxgXcFZB+y/+0mT4w7ylRAGEy2tyzuSXE4T67g6md2g6fob6Ax85w8W3p
	R9fNytR0uGmGQnGvZFcygzuiIlSEnHCpDSa2XNwa+55N7omxpVE2QPiKTa2DU312
	AWqSFg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48313kkbbn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:25:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab5e4f4600so2554471cf.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:25:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753359923; x=1753964723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=616i8C2JxPPICwxxSnMg22TWk26CQbgVBwMD64cTZdQ=;
        b=ZYU0WJGO47bq9UnjkZNlZRAVSYcOcd355fHhUAiGAM1p2AaHaKtKzWvZexDd6NVQfK
         uPpSkqztSVfc/hN+UhTGSAlN3GxQGEi3rAQ42LYuewfPZeXHEsax75IjYGfWhy9Kwpan
         7spiCNM896zttwZBNAQ3+HfUsWbRhL/NC424RDVvvu3NlXahmUSjzcKDokxE6RXYsMty
         CGlwFbPstiPfTWlK2LzK4egkJh2Y/pfNomeJBz4X01oDZ1udUmxmFxvrFiLngy41UwS1
         3G84Ikp3bXM8UZxtrWLF9EiPE1WRT2iUyJU+93h1+fN1rGC0mh7oCGYsvOdWxHa0DYp2
         XUOw==
X-Forwarded-Encrypted: i=1; AJvYcCV243Q4bPLoOBH/DdCI4WczMbgP8EdBiWm1IJTQt4NIGTInqCIH6RXcd437aMQRHqOQZTc89v/E49Is@vger.kernel.org
X-Gm-Message-State: AOJu0YzBLV0JQOxN40i7o51q2+Ow9V4gXWoG3j4iadiUd/fkeRTe4O5t
	u/fjl6WAguD4buySPcS1C5rus7q4ASvuAlbVNAUHOfiHM43hG9L327rg/BoC/ssHpxE9wu3fPtp
	/oGdBZbjRTy4+cvIQwl3r+c+P8B5fzXqIJpN09TTYchBTaO+98MdGTinjmD0OVXBUJqHF6I8R
X-Gm-Gg: ASbGncsGzLBIKWUWAp6xAj4FIsMTmLtL2SqaoAijYUm/i5TVErvxwvgAcCnPlRDsCev
	9GZpHYe3ubQk3nol0pYuy6mkVk7IlzOvoGLYV3JufsE3S0dY1zF6v6POS3iJVmvke4zpXW7AXsV
	1c34SK+D0AiTGqjjZHnURnTJHcHs0clBVZkaVVPkobgTUOdhPKYcx0ePxq9oq7AnUoh/IG9OSmb
	F98frz3ZxP7Xhs5Mej06mRPjEro/u/3csaj52ITFsfIZddpXHBjWkoz4zve7mNHFF7r9wwsH+ws
	MXm0sUMaMhhUbWXjqqrYmsZYnL1dndDK1T5I50+gqFQm24RL333j6Frlx2aoVfzwLBOWWNeu1Ov
	5iHwcI7NAR618HY+nAA==
X-Received: by 2002:a05:622a:189f:b0:4ab:8107:6c0f with SMTP id d75a77b69052e-4ae6df46e42mr41888781cf.10.1753359923210;
        Thu, 24 Jul 2025 05:25:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvftYunv/MazVjRvCSyIsGgRpyDGuWrEWabff4oLUu1zX3oYTlb9qbheMaUUAmqLP6+s54Qg==
X-Received: by 2002:a05:622a:189f:b0:4ab:8107:6c0f with SMTP id d75a77b69052e-4ae6df46e42mr41888391cf.10.1753359922601;
        Thu, 24 Jul 2025 05:25:22 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47c58b3c4sm106943666b.10.2025.07.24.05.25.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 05:25:22 -0700 (PDT)
Message-ID: <8a55bcae-46ec-4a2b-8e2f-041c3a358d9d@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:25:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: sc8180x: add empty mdss_edp_out
 endpoint
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
 <20250724-move-edp-endpoints-v1-1-6ca569812838@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250724-move-edp-endpoints-v1-1-6ca569812838@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA5MyBTYWx0ZWRfX2gBV1u7caB/Z
 NOX8qmOKV99MbT89h07VbzoZ881y94t1pc6d4b7rJGMNtT+9qklQkQPtnoCXPFr9WzPKMclUOsh
 KrurRYUodEwO/ovvOdk5FZnWKkU9AHWymHt4a+bDTXnsmxmhhJqV4UoNqA7RqBy/u+fh0qE95mZ
 Mi2hYligLrzkGA7EOh06SA7mIqgfKJBFd0XDDTn+2d/kbn8H7etfqybJxhdLes+tActYJv4HM/0
 WiqksgCsTWRerv2kYAlULo6Y7RutaTfjY4yFwDEue2OywiSbh99IqP+nrcYnFJBJgibsK4GJLRR
 jFUAkYpKiD0HyiypbR/osT/rWd06eprxqUyj4K52VT7VfYIQH9aJ/DtWnn+tltzeRNXXBsBiaL3
 mcDohScS8WSx7+o7KlwpH8D+Ogcnjf2ZqSnQLdS60UbW5SLW48AlxLLxdOiDExY44YfNkdth
X-Proofpoint-ORIG-GUID: T9SZj6usLoyU1ojmKTmh2gSLk8qu-Wag
X-Proofpoint-GUID: T9SZj6usLoyU1ojmKTmh2gSLk8qu-Wag
X-Authority-Analysis: v=2.4 cv=C/TpyRP+ c=1 sm=1 tr=0 ts=68822634 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=B7dxrb8V9Gn_lHFWds8A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 mlxscore=0 clxscore=1015 impostorscore=0
 mlxlogscore=718 bulkscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240093

On 7/24/25 2:23 PM, Dmitry Baryshkov wrote:
> Follow the example of other DP controllers and also eDP controller on
> SC7280 and move mdss_edp_out endpoint declaration to the SoC DTSI. This
> slightly reduces the boilerplate in the platform DT files and also
> reduces the difference between DP and eDP controllers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

