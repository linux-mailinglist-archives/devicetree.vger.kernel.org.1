Return-Path: <devicetree+bounces-249300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC83CDA84B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB4183018741
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B330C35CBC2;
	Tue, 23 Dec 2025 20:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MX2lOfJh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XU0+T1mU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BCC35CBBB
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521431; cv=none; b=dpQhtFscG74SjuFMMOJjrq2gLuKM0MLSaXBbaRc8rYZjyD4vorByGm3o2rt0S42TgaLzbzfpIsDhE4N7PeguNsIGoZDcjJ0aG0u1Tg4J7BO7uiG41kVpEszvIHyDxNA1pmX1BIloQQr8lhgM1vZqYhR/vu8+1LmGRQ89//zwYeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521431; c=relaxed/simple;
	bh=5k3GqnBIUwRcAN/L9U6np3mM0yc3ZSwLA/BgASPcNqU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qs2R84VbHAPpkyyVmN4rmXKqYA6QZ2ZdCZWvl58ahsRJ7Y+SqNQgkIplbO+gRXXjHgyXQHIBahGcdHGhyBvgEubq8HG+GJYH4sdWYj8YZTQsbe8ySakjHRdNruwDWZWrCze1r5tlEt0brsfRBP7E+5GYCAeHzPEHItBRHAcUJ1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MX2lOfJh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XU0+T1mU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNJrIrT721275
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:23:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4QrGzx61qhM/UDOs3f4wXgOC
	4EBQT4yao065xPxQiMM=; b=MX2lOfJhCjyBpnLM0i1M/d1eJdz4KcyI2/HM/mYG
	PmPqm88d99PkXYw+FR5BYiJ1g1yFJM5ZyLzLoii6sqaKEwQIwlhNENMv+BTnH6Eo
	TcewCh2AI1edNLNrlHVWUt3JH4sxuuYlpyotz0qTZSeuGQhmhLYz+nYNwwSaKmqu
	e+9Xo9zE7M3vfOvVqQMSJy9YK44nOh7OoGRXeixnEJK6+SDBTukyzmfYZV8RdbqC
	keoLQLq52/EfslSSgs42+2kXCj0jbpVPyOkV2Vq5XtH2PnFmnHnEbcaUTIcc/t9P
	rMEDLjswxofNPLKWn7k5hQXDz/XQpM83RuaZIBIunKGHtQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b81mt83qc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:23:48 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5dfaa43070bso8977110137.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766521428; x=1767126228; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4QrGzx61qhM/UDOs3f4wXgOC4EBQT4yao065xPxQiMM=;
        b=XU0+T1mUZLH2iItF9EO48GTHtDRcCpi71E1HCEMb4SFBoEaX3UnQGBhtDQCUZqMXYj
         3lSx0pe5CEFaiQ+W64hUhkWmkJEIKqPdtLrXppgG5azbE6XHD/ntsHHErIJ0IEGfhyqB
         feo2Hv9v1Gyk+cQAyIcT4prPKTWO19vF7SEwLGazxOBc9+FA6UlifS/hp8pxtM/P7xXp
         Nm/6MClV4Up/pnIqoXh3D50DUPV+JQNY1ChQCQ2g2Q4Tr5CT+8WbiSAbdCw0fN9tWzfc
         fy7EmzZBPR6BDkZr53zrLbFefoIoxe1QXObprYrCJuSa9ITL1pO+HlocWn39vpoHKVOO
         ud9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521428; x=1767126228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4QrGzx61qhM/UDOs3f4wXgOC4EBQT4yao065xPxQiMM=;
        b=lx75ZnqOy9noI5r8Yj0VYOWwIQ1Aivv9q3pTUrsclwwT04Z6e5zXMfiqK5oQYtb5Fq
         /IbvWOPXDTBiPkBtEAAHhGePNdc9BtooUd71VLalG/AUE964/p20QDzzeV6baaV719i4
         asTHfzsJnpDXhX74KlgXpFDfhr3s69bDRiMXhPHn9MkHV534+O0fAsCL92thhlhrixhg
         0cZPBIpA9NHu8yKugGFPjjbiDDFcxjlr1NR9jK0YVSR2YhiyuUZpHKX71EEqym8AhTyZ
         tzXMQsSF4qA6SjEfiLfz1oMDojMmTNm06gb4yh1ywc+6R3KxEX03SbByjwAAQKshKfuW
         /xew==
X-Forwarded-Encrypted: i=1; AJvYcCVZoZGwCRcdPvrIICn3vNXirR4FQV+9Wjs5C45EjbkC97uenHrmirc7gD6Fr9HEyIZDbngT2tb42J50@vger.kernel.org
X-Gm-Message-State: AOJu0YxAJlQCMrtufA15jf8inyxRgaSSpyV/k/diUyIsuRBiCJeZyxgn
	Y0N4Au9eeEPI4QZJlmmuqjEMOVQ4FJNjPVVeRF6iK63RfeyDzI7j95Y5J/jEBT3n7h30SFpKEuI
	1rum2vMrmA3Xedn66uswKjTVF8KsLl16uV1VJ4G8IElSbRRGqQAHr9FiRd5g3V9bc
X-Gm-Gg: AY/fxX5La5sl3/Va0tAGIGEVf+CzItniSHy9xvbA/U5OshDxv2JOoTTesk6djTnPlMk
	8GoCszKUzvQsEsPxg16uNHqh8MVkEegl4y3S3RLJJA5sEo8aL1Tts4XLuSkB+JhyXzFU8XEOHBs
	m8eDpcin3yMiT62csASv4++aIVfdY3vn1JSPzeiAP9EOsLn4+5eI57tbihg5zs1zT+GhkvMCYlB
	SMeVYOAMjXOiPlam3j1I6RUH3XH1nmNu2xQFqhxoSnopvkNrQNTzg5twhD/ApsAxocQg530h4i9
	ssQmZK2qrlA6zwb5Ri+taJDsvniVpL2mtwja+HnHdh718l+SHFSx3DxznGqzv5Q3p63OvSu+oVy
	7MDGHMjE3bfKpuHtoOtIJxacl98eQuZjiwvQkceltlRO1D/3kR7L4z3JhR2YftcolnH0PgyDXeZ
	oY2GnyuzInm9SWHVIBr3th7lQ=
X-Received: by 2002:a67:e104:0:b0:5eb:56b4:529b with SMTP id ada2fe7eead31-5eb56b45557mr2574236137.26.1766521427786;
        Tue, 23 Dec 2025 12:23:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5N1al9pvDWsasVilJZaQZJ6zEB1fhlD0vue+d+GO8ZcLsbjBpz59es5DMO/amtZE1Zq2PzQ==
X-Received: by 2002:a67:e104:0:b0:5eb:56b4:529b with SMTP id ada2fe7eead31-5eb56b45557mr2574222137.26.1766521427357;
        Tue, 23 Dec 2025 12:23:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812267964fsm37419901fa.42.2025.12.23.12.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:23:46 -0800 (PST)
Date: Tue, 23 Dec 2025 22:23:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: monaco: add QCrypto node
Message-ID: <ggcuy52ishtss4xcghigxlrkgjoc2ssojdm7xx5chkmdpnp6f4@6guglelys4u4>
References: <20251223-enable-qualcomm-crypto-engine-for-monaco-v2-1-6274c1f6136f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223-enable-qualcomm-crypto-engine-for-monaco-v2-1-6274c1f6136f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e/ILiKp/ c=1 sm=1 tr=0 ts=694afa54 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vwCS_d1Up4WPIWwfMTMA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: iRj-2OnGtE3TxRzxefdGKzNYzEn8qigg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE3MCBTYWx0ZWRfX0JzmqoK/iIHj
 sFwOH8YWWCReKq7CMCO/292KraYsNyo3O3ClMFQuwpseVXvqbismzP9dtGGMuBWat71TbI0Jczn
 zwN13N6jhj55nHcxV4PXRKbcmun3TfsCX6r32w3KI27dgUJK6d306nhpXgtXw2HGUIJG2yBab+v
 bBz3a7R+O7vrLYKDhvXOYyclv8UFDoNQ2Y70sb2Ko93ASQujSKqqZpR+etn+WwN/OF7bdgYYr6X
 99yZu7nheZ5yg+SwgCNIdxuU2QByu/1HTyqjZGwdJ7lXpf4AaXGMLSVjnllaqEn8VJkXuswrQ9t
 uloBH+s2LtQTpkglMzPFD+iuxUfLmTMpHIuMo9cKJfKoGvmd0sr9WlrpN9Pua3n8nq7Aj02rCge
 82IFd5HS1qXsyZ1/A7GVHOZrzSOfR2q0aBs3SlIsyG4HRvgCwyWBbgZB20qNktjhtBzceecqa1P
 vS6XCcL7KJleSH3apjg==
X-Proofpoint-ORIG-GUID: iRj-2OnGtE3TxRzxefdGKzNYzEn8qigg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230170

On Tue, Dec 23, 2025 at 12:25:18PM +0530, Abhinaba Rakshit wrote:
> Add Qualcomm Crypto Engine device node for Monaco platform.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> ---
> QCE and Crypto DMA nodes patch was applied as part of the
> commit a86d84409947 ("arm64: dts: qcom: qcs8300: add QCrypto nodes"),
> however was partially reverted by commit cdc117c40537 ("arm64: dts:
> qcom: qcs8300: Partially revert "arm64: dts: qcom: qcs8300: add
> QCrypto nodes"") due to compatible string being miss-matched
> against schema.

^^ This looks like something that should be a part of the commit message.

> 
> Resubmitting the enablement of QCE device node for monaco platform
> with compatible-string being aligned with qcom-qce schema.
> 
> Bindings and Crypto DMA nodes for the same platform is already
> present in the tree.
> ---
> Changes in v2:
> - Move the description and history for the patch in cover-letter as suggested in patchset v1.
> - Use 0x0 inplace of 0x00 for iommus SMR mask field as suggested in patchset v1.
> - Link to v1: https://lore.kernel.org/r/20251222-enable-qualcomm-crypto-engine-for-monaco-v1-1-06741d6ea66a@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

-- 
With best wishes
Dmitry

