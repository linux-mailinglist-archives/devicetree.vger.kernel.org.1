Return-Path: <devicetree+bounces-249441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C11B9CDBD56
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EC3B30456EA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3742133438F;
	Wed, 24 Dec 2025 09:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p66wrAbq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P/XeHkW8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8C9314D0F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766569230; cv=none; b=lxBPsRuaPQTWhOqLN3VPJWI7JyTzxqV0yU54M/LQegzmAmip0IxYOYKl9ID2xQ68h0RJTr/MgYk+ucCRfXY2KjJeNpGhLfLAs6Z9FhOR+byeq1bkWaFR3BznlTabx2dsrawPkx3ttKSOxV5RPp19rSP2sqM8d8NWP2+rTPK2DnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766569230; c=relaxed/simple;
	bh=VUNWnVw9H0LhkGkKWLjn2gtjU59fpxnI9WWSNZj7gUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IZA/Zo5RbY7IwKlB0TlPjNSKBgL0qngKFg47aMezaEBE4OMBs05ULCU2UApGVjFa0toHBXTozSxqFxnvzGHQZAcRwW8R6cSE9ngCF/vsH+HVF4MdJ5rRbeFJJ5cd5UXv2KXzXW81WePgL9YDI8G0qD+QsiZgb7Z8NLKH5hhrAtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p66wrAbq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P/XeHkW8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3Uqmp4134161
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:40:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bRQVHfzN7CrzKyMWpIbORoFD
	gLii2d8HNdpnpnafAhU=; b=p66wrAbqVk5QU8KJlXNdEWriiKxL16SmeLdFF9/7
	CAaj2hySgp6sOKDLd4QKvTC6Tkjjt/Ms4TFJ1MbQ05tCHcGfv6DZ83WsPKUD+rKM
	EN38/rxbjAmq/IOtXI5DINH6o1UHCytGxotsbC84AKMMBS5iBLbmHoUE5yh/6kVe
	Mrnk8gT2r3deewzMASvNKMVQL91bJfBwoCcC4xjza6em5xrw2NhVNA3us/5nue88
	4PM89FT9odm5r7EBXxTdZupbAyUgo0dwrmWztJ88ZkxXZp7PpANhE/7uNMongxoI
	SvmLTPpFQsequ86IfTSzyjLhwkYLjJfII6nCHcwXwCjaow==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46tn56-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:40:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0193a239so60026341cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766569227; x=1767174027; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bRQVHfzN7CrzKyMWpIbORoFDgLii2d8HNdpnpnafAhU=;
        b=P/XeHkW87R1WKc7n/4DgNCh8mTy3XO85Uo6irW3Ap2S0hkBoAphdlbOn95hLK2zb51
         hUkwN2r7povFIXKh+41U/6BnCd/lO1VF1QbQn8mC0hc8ANJPvmi7SkQRbsInJHzfNHkk
         plhhX1crxIm1g3CaBdGEjTzX7vAGPCzJoikV+TomAyHYIv6/XS4cYvjcaaCJEaB7Dko1
         zDeHn4rxdTuYQFggddehZQv5rKp11+jKUouRCGs+ALPXdXfWKUZTO9+bGYM5ASqzq2Hf
         MzMdtnAHhZGc5cheUT9/fRfceGS8FwriyRyfoOoT9U0iAiunEZHABVFgDLsJos/nfBPy
         tQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766569227; x=1767174027;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bRQVHfzN7CrzKyMWpIbORoFDgLii2d8HNdpnpnafAhU=;
        b=Io/CxlNJ06nMdZ6H1Cutoxh5ATlOQSQKQHdiKPKJisRo9z4f8n9N4abVSuDPsSUuaI
         hgVWYiNf037kUz31bjnUsxLfABaAe/l00RaoTXpnrrrSP8HFbp95cW0jDEl8ZBUmxHEH
         qIGI6dyKb7UZkfrGbN79+xe2F4QyYGOccRYiqFJ0VxUcB/k5PEbhNP0WlNfT9krazTGc
         4OveAgy9DYPaI/Npgzv9Q7pRJWVFMZGCheTyeLOMyPrbX/5WxgCGsIeC+mP0YmzdN65U
         PdBUQvwm0X0BGDHQ34BaO0GW6dq6dYEIRF3GOkVuSYDX/Q6mfmEpTETHwZqAYqmFGOXc
         Q4wg==
X-Forwarded-Encrypted: i=1; AJvYcCW/pUkc1jhYS+OYoLTRWFOCMnJn9NHm8GBc8NLilfVw7JigvnorjAqZx314s5kNHqGXRAlCb7YBspks@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6ecYq0GQY2yK8huZeUxI1U+RBbKaqmuf2uEHznyoFNvATrChD
	oix/o5yQAfX+u8fJ9vKbOK/DKEvmsf8mw7duEdOOMcSw3wCuck8ekcdAMI8BWDsDG+y4FOaTykO
	p6wf+HSXBYRR1LOE+JD1Rkj6brswrh+HD23Lw7j9xM2+Uqx3K77OvYWeoIZHRRU2/
X-Gm-Gg: AY/fxX5di5GM6zd6REAqTT0feYbEOivuiYfJYBVvbNgQrMV0ly0KKmUY0FX/B9nyZy2
	H7Bu0yvRQib2BRlkUufEc5tg6Elmwxvy2PdUh+Hha1k3e+DDDiA+75Un5afthAMRoB+2i5cnuEQ
	69LFK0qgyloV/zhPx7SwMI9EdKhZaTup5sd1P4iT+HuzSi9mUbC7tosgjubUJybhXwHbjIdI+Cr
	cdDaa1lJNBlwLRQ3ZP1G1pjKoAPpQ3HLcC0QxE1j1VbJH7/I2Rq9+VA2rFnml/sv3eDO2CzFtYA
	gBs/n7PXDjYi2uhWzkvDk+LcpHTtgaQZT9noSZ9FRVaVw7j/fhu1ub6GzwVZNx383L6htEMSXLN
	p8LBPaDEqTwqypkIiO4b2UQ==
X-Received: by 2002:a05:622a:1927:b0:4e8:9920:be58 with SMTP id d75a77b69052e-4f4abbae21fmr256306431cf.0.1766569226891;
        Wed, 24 Dec 2025 01:40:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIjgIFTjjMCgzWvqS0ktmCtdbY70tLlfjNOEUQmmhChSiqgNC2StLDjeOQZTRDtY5Wv7/mnw==
X-Received: by 2002:a05:622a:1927:b0:4e8:9920:be58 with SMTP id d75a77b69052e-4f4abbae21fmr256306201cf.0.1766569226374;
        Wed, 24 Dec 2025 01:40:26 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b90f53be0sm16177518a12.2.2025.12.24.01.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:40:25 -0800 (PST)
Date: Wed, 24 Dec 2025 11:40:23 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Use hyphen in node names
Message-ID: <nafboxqpge2egox6hogi72tco427oegk5zn3dhuwkwakvb7nvx@zughp6drnql5>
References: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20251223152559.155703-5-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223152559.155703-5-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: FTQECXIUeNEhOLtDZJ8L34InDk5xVM2D
X-Proofpoint-GUID: FTQECXIUeNEhOLtDZJ8L34InDk5xVM2D
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694bb50b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cxglbGFaQTsLusRpAB8A:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4MiBTYWx0ZWRfX9w9xlBL6ctan
 Wuz8iCDHETIR+6JQMXhLdVl/B5AH4Ng+q4teQObUTXAQJPvl+bFEXWnoVz+iixpR6sgox6ybzBs
 WnmkLV8IJ/edDs7BVDmGtPpeDo2khLJ7Ayk167//icMjUsjhRZ12xvqm/XKsJLR3eXVjXkvRHQf
 nSVxKn6nNcOpzMS7lzdAiBP/nOHMX8LzwVskH04tqcqAoMLV3S+oL4AxOahew71PxtkddRMCISx
 JNbJizU2bayJi5I0dh4p1s+YGUt6TYx24uyu6qjZpqMpbppt2AhP18MfshmtzYOIvtcnz5fDHmD
 sMd5fwXB9be4o+zL5rLfV0PB14/Heyf9UoQ8qIadBPBvIVU9cv/s2KM4ThDSIfYCLzqPhpB4BUd
 hGCtxhlk66nXXCZWnl4lNHQ/xg2M/cXhqMUrvJ9Ohd+yqqHGFpSzBZnKs7Fh4V54wY9WGUEJrin
 jo2mj4Qnx7OnMFs92Rw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240082

On 25-12-23 16:26:01, Krzysztof Kozlowski wrote:
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

