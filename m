Return-Path: <devicetree+bounces-257283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 70478D3C5B3
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:41:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B73715A93BF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAB313EF0A0;
	Tue, 20 Jan 2026 10:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XsBdh0gO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SGyX7bHk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443CA3ED135
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904901; cv=none; b=hbQjuwRa0Sf1RbA5L0vsTY17IC8v22Mn4e3U4rPJ6AodPVQw6Ax3Xv+0B41Bb+eg3LCGecrNiHXo8p5oC/GnPQOHrGmmCDkgNXNOBWXJwoJdEssnz3b6Yl9TfxgvznQ6UefpCMOUF9O5zdcxHwL+/7dpYOkoGl4LNEJLdtr7YnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904901; c=relaxed/simple;
	bh=TY5qQnkr/Pb8Ou6iqJK29XJmO4JIFAiFZzQ1J33xdNI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pDwMRAF1URAWP2Bd2dnFXCUhmUERCEpy7lwTs21QldlQQE8M5ppxhvhDlGEfcPbSW1KUyKcl7W8fvqb+dQPjBawIMJdDmLmeYHKAxdw1FYmpdp+jRymz/ccYpl2A1EUrny5M1mku/SjNKXE3i13qrZA0jM/YqLJosH4xpfqfeXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XsBdh0gO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SGyX7bHk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K99sAC3256443
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:28:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1shmyDtjl7JzNfLWDCQha71j8cumzBtSwogmSFUnB3E=; b=XsBdh0gOohdz0SlL
	m+9he5yCfJtMlog6VlTfxSnARPQtn5uPVvEGYNs+IOqCdZTWXSXOhSRjiu72Pyer
	3SaYUJNNT8ZrwLvBKXFfGDZrjcAaNBhYvJG4jOUeJsAy/Wl7yRX5aUlxx3eEsfqc
	hufmVMDT21URDXCQY2ad8RFLDAUWpNWwWYghHVbYMOpfEOQxR2wpwlOhuJu40XCP
	ZRYcZrS2MzOl3/99mPvF+AKFlJwzdPNR6aqe5mruQHV93RX9DPcfyPC7K+wdN7nX
	mL55fGtz2a08a5shDDHxP0xWiida54xxiqtIwWQ/4lTiJuEYk68zBzmeRvucVKmF
	uKW5oA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt6u7r7hy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:28:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c536c9d2f7so194153885a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768904898; x=1769509698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1shmyDtjl7JzNfLWDCQha71j8cumzBtSwogmSFUnB3E=;
        b=SGyX7bHk3dmMraFCclRUD0u67+vS9Jq0e7slRTGdndm+/glwvgbYsXTKv0iuU/LwdV
         VNtJgNSP/3HrbzSP9BCTm8bBhm7TElt5rs7wOxM+SqZNQFtB2T/5NVbLp22Z4/m2genI
         a0ozcCL722CsXiCvfniSBks8Ub1hfG7pNCwztDls1kBMObDaZ3ujRNa8T5LwJYTKlNY5
         hMYTnGSkM0xItbNkXZZwbYlPacsxc9brv58LL7lu14d9QI28xsDHx65xGGjLdZpp7xFX
         XQ/rKkbwUcJdOIdIpvj2DQewbkpUKV+IFi3KLpbk9RPsgazej6aaz7meLYcZyehm0Bhe
         gI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768904898; x=1769509698;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1shmyDtjl7JzNfLWDCQha71j8cumzBtSwogmSFUnB3E=;
        b=Wbld3UkC7S9u/Iqp12wwm/dHuNcEjkq3Stwn7YrUwF+G2+6itZ2atyQZ2YEZmnIiXd
         XHBzlZh1wyxfoKlG3WC/W3pkG2WM8a7bcqRBdNE9auCLUcZ/UyP+fYE7utH9g7hoVBDU
         nrFu+6S2bBEgKvujtfZRiDR+0N3ZG/QhJhsDkGkkLFPVBAze0Fm+C5BhvV1pp/wqx+4m
         ACIyImCnYGNTMoxENHBHE0DhLfEHyjvMqlijRhhxDKkIoeCvevq4aysMVa8NqtareZlI
         elHbYI9eMl7e8n8y6LcLTc4D3ItD/EkuV8+szaaOGFc8Yjx4yLLDJB9tgZAKzN/8Plf4
         gXvg==
X-Forwarded-Encrypted: i=1; AJvYcCVrnzyDd8UDG95riO5S4GJ6Ah5P/POZpCXff2TqsWH8J+5oI8VKckE1ruNhcJSM8AAwYVYfog9OHBoX@vger.kernel.org
X-Gm-Message-State: AOJu0YyTP2Uivv4/7N0eLXEqzHqUDTdfOuzdkn1zdJTaWU66Ye4htixp
	mo3a21BHJSNMCimeq/D+Ttcj9eJYnO4lv6OiRT+u9qaNSrRlQk6c3AfYarWVkUvcaVgotdWhHIb
	T2EQb6V+3bJuqcSSNJd8cvxKBOzjm7gPl03VcFqnFvckj27xFMyJz/ZPsjJTPcggJ
X-Gm-Gg: AY/fxX72ZMD84bfTTvGIzFgeMFqfEIz+bY8juqom1IOl1l+O5H9CzRPHz7mfNGK+IHQ
	TDLYxd5lZahhl8wGpTJA43JywAwcsSVzXzJ5vZg/SJBO2X6MPT2WbYB/ske1UVgOO95Jg+OLdf2
	dl3sDrYhm1eZjUiZ3z5UVbOj9TQFdtNKyQyHrw5tu/XwV482wT0cqzdHCqVpfI6IkBHpnGphd80
	gxSU183N1ujZrk+vwGmobhyQLpIbZ2dssYVc87WwghUmUl/i7FYH54T+VVCKGOYftrh/qTOihtm
	/Zp2bAjd8E8+l7sAMPjv9hiXq0IrdpAy4FfDUwADq0ahRP4+IP2Csom4mTW/IKIamTIf7JnonK9
	tc5bmfuh/gwWD2pTMb6iDCfKbS+mBI29QZ31fZt1jxSMrt8UjouB/oApw2SW1ilbXGac=
X-Received: by 2002:ac8:7d47:0:b0:4f1:dffa:7834 with SMTP id d75a77b69052e-502a1633cb1mr152637621cf.7.1768904898314;
        Tue, 20 Jan 2026 02:28:18 -0800 (PST)
X-Received: by 2002:ac8:7d47:0:b0:4f1:dffa:7834 with SMTP id d75a77b69052e-502a1633cb1mr152637471cf.7.1768904897884;
        Tue, 20 Jan 2026 02:28:17 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c4aa7sm13263543a12.34.2026.01.20.02.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:28:17 -0800 (PST)
Message-ID: <57840e58-c224-42da-a505-64f07f585397@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 11:28:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Enable RTC
To: nathbappai@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260119-xiaomi-ginkgo-features-v1-0-3c8fae984bda@gmail.com>
 <20260119-xiaomi-ginkgo-features-v1-2-3c8fae984bda@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260119-xiaomi-ginkgo-features-v1-2-3c8fae984bda@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P/w3RyAu c=1 sm=1 tr=0 ts=696f58c2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=gUDVtYOI8mDOn9tmRc0A:9
 a=QEXdDO2ut3YA:10 a=fFR93BqyA14A:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NiBTYWx0ZWRfX09+aiIPvQV5w
 Y4aXDqa74MI/aejdJO6QpvPt7ZdkBSqcM8RZR5xHEBnsQKX7ssVe56u6KsPI5zTmJV6QqOrhJtP
 CYRFvHysAIfTpbWecVRHfcMdleXeB7tvROI31Ssrx9QRWStVeFc8kVt0o35GEelC1coOaMYDnAs
 S0jY0MpukS7Nf4lJT/FINS7VNKIra83crFZOhAYAJPFFCGTkOUqgxft/rC2hQ7RJYXq4cXYVHVw
 qKqzreWCqCeS9tNmHE0/GAA69dcSUStoDE//wG+ugwt1W4uYewC4/bP0fSFQzoNwPoFplNm5yyo
 kVetO9865lSZ/QfR801ySBLjwZzYUErfHzPhcA9E1pq1zas28gnMw/ul9/Es0ooVRm9LwzEukgX
 +UNk8bTml5wVzRkU6VE74uDCmwbe6rv4q5nA36rgJHaDUd7W5Rke5HeZvrJADtSZ8i5SAVlOpIp
 cpzH5fyocynjWbeAtKQ==
X-Proofpoint-ORIG-GUID: wDBp0nW407nF4cI6vltk7UvplrJjhBo2
X-Proofpoint-GUID: wDBp0nW407nF4cI6vltk7UvplrJjhBo2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200086

On 1/19/26 4:13 PM, Biswapriyo Nath via B4 Relay wrote:
> From: Biswapriyo Nath <nathbappai@gmail.com>
> 
> Enable the real time clock from pm6125.
> 
> Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
> ---

Let's remove the status=disabled in pm6125.dtsi instead

Konrad

