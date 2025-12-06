Return-Path: <devicetree+bounces-244869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59584CA9E34
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 03:16:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66E65315055C
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 02:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB18C23A9AD;
	Sat,  6 Dec 2025 02:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gb4QUNNh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c4aRuxTO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59991238C0A
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 02:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764987077; cv=none; b=BJR/LIiApFK3Bp7gFPkmk3fECARiPtt/tcDC8pQDi/ZGrjwMrhlha05bDRnPSXwc9Lt1e4oW1/oradfqw7RdD+mLtVpJFDX/yYtRUX7vSXUQk//8OiEkgtenqd2YwfXjCyqampNyTC2nRLauiw2kM5/IlE1+gBrXKRH5Y1GsWD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764987077; c=relaxed/simple;
	bh=x+U9tS+e0THz8xr64Aoo0N5Tbkttz6dX6tU5sJ8+UsI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ssq9RrJjiuJkIcWBZvxO2lwCG9uwrPI6C3miFlbMLf6E7OWA9sSSjNXMYSiahO96wP+XDlPF83opYnHu7Z7RPEwv2j5vYYCrBdm3yuESoelDu0T/7r/bONDtgz5sWtFWy7i1+104Y1yUJHkSJx2B/ivMkIi87kYtB0fpRXAkMc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gb4QUNNh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c4aRuxTO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B60iFhP2069498
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 02:11:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HvNQOfKbO9RFDYeuz2gybVEN
	gK3IMZF711m7vFLClV8=; b=gb4QUNNh31up/8ecEXbcpv6opENxEppOfpQ9m1uP
	0GtRXL7GEm6M0s/P+BoUeKkmOmaFOfsFYKwwXYpf1sCjXwIQCRLEJii5GyXPz74B
	TD8viEvlilA4w32eW9JTHLVXEjl+C0uMo+BhdDRHy/kIdx1/nZmP4V328Bu7VouM
	HdQOqeCWZzr2yEG4ToB3nt1+VK+FB0eo+ttrQ1npLwPKoUA7uOFW36AGZUXedL0t
	wzt42mpKl2f/SZyM43uocrHEO3YFf7/1eKIoEVGHyiayWwkAb/4hQs3SLklzE8VE
	Ff7hGhGAuhmi3ajioEkcnx+TYQC+6lboSh3nA//2pdZvEA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aurwvk4rq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:11:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b17194d321so319439885a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 18:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764987074; x=1765591874; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HvNQOfKbO9RFDYeuz2gybVENgK3IMZF711m7vFLClV8=;
        b=c4aRuxTOFpaD/6jTruXCtte5OSPrEq+sybRdVxMF8V8Gi6US04aYC3hwA2U/53tA8N
         aoRoB+cxZEbE+MqD+zT8cTFZrVrBwlog929q36V16o5c7pOeuJ4Kci2ngnzTFqgd5LgC
         4tUXgKOCx1SdV8FylgynN9Ve2o8aJL4uF46ghXDXU/K4mWrfrUqlcoejNcRcgqHGH8mo
         CFMAqGukDuiwxVMmkka4kyIpujxZ5d5WPWJCXY9eKpmvspODUEYQSmoycEy/Mr49PkCZ
         kMe4kNryRclB1BzRxrcY2x0w2+UkR1h2jUPwa0pHJNx3kv7Vf7O+nWa09dbksTR8mXXa
         c5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764987074; x=1765591874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HvNQOfKbO9RFDYeuz2gybVENgK3IMZF711m7vFLClV8=;
        b=Fc/BbIzku2y369DuKQEEsOTkwYxGbrr4b3LuopJIpZ7jZwEW59lHSFznwjfWliCvJF
         W/dyGSaPJoy+1BdtH3PpxZ+6gHJ1HwZ01LuMSnGME3MsmWt8HSk2FAAdQ3fGYWdKPY8+
         kOfmEk0xoELSZVoHkr6PTwslSEbVBoSUShsAi71bUpy+wfYKtf8GdNo5CxZndq1y4W1E
         EnCiTsZkOKvWtyRObmwB8W3t2Eysk76Hc2iEHTJvSwRnVse0EE4UBmPxNGrBqCV4mXXw
         s31aYuuvB+Piqv6xUh0FTtwS9GjAE1kn0ZuEzFLhAbASPO3ERA9CQlZ5XjRd1r0fqjfn
         sQNA==
X-Forwarded-Encrypted: i=1; AJvYcCXNVyFD/Y8n6Qy+LtGK7iJF3tT2qEVs36ikLo8ijr4gRxrvUx7M4Iwg+WCH8bXplL/QoUqByZrF53hU@vger.kernel.org
X-Gm-Message-State: AOJu0YxCjTMWSgejPS3zgZ85CjKv2eiaC1LNJ4fj7mmfarSXP3QyXCfm
	qP5Fw6/3ETUthjemlDevbQT/xwE0ZnA/mohFrOP7f9aQqj83onwFjcqpU2FgQ1njYI/NIY5x7pm
	zWFmt7x4ye5irRtglur2sijfgKTpigqzxjiIB3ENEDaYtA1aWoGgk1/xnj2PA+AXo
X-Gm-Gg: ASbGncvObyYqFgNGzgcLm/REVQOd+8Z7Li2NWwimF2xek2iXOgsH29wjI9icEU5s5TM
	G9DbyjAI3IhyWDgA5sOUr+7Gljigvhj5Sc3KmU37RTl4xjEcC75auVrupAkZbz7LLz/L4u3c2Du
	bHVPFxlUAQDJ1q5gj+/OdcVbQNJcykVzRf+szLVaKaW5L/3GeqoSeZCHeOH9c2j/UPjEtT417pa
	Qk3GRI8RmBETUkZEEqmUEDRS8Pc4sUjl5WPkdUorzDOAh2ZlK3yaD7P6tlDDCPgrpQkuU/p4bI0
	IxUQRFiq1gkeFDUcLlXSC5TcO0C1q7BUugMkVjuA/CxWbItZ9IrBW203WqjWv70+pw4UCYwGTYp
	nfvNgcJKttdtjFmXw9GdQYWi/FOAbOGC++j+5jSxlH3UjkzbTRk9IaVSXRvNL6wM4v1MUxynRVd
	3HaYyxLsUTlFmRV742yE3aRSM=
X-Received: by 2002:a05:620a:444e:b0:8b2:d56a:f301 with SMTP id af79cd13be357-8b6a233156cmr172725685a.14.1764987073942;
        Fri, 05 Dec 2025 18:11:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZPNMyTxsMzxfytNMRMe8+8/wii7QnaK+HU2IBoABH8YBoCv8QBteXW81W3/Io0PTJGnBKPQ==
X-Received: by 2002:a05:620a:444e:b0:8b2:d56a:f301 with SMTP id af79cd13be357-8b6a233156cmr172722885a.14.1764987073443;
        Fri, 05 Dec 2025 18:11:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e4d7sm1979656e87.46.2025.12.05.18.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 18:11:12 -0800 (PST)
Date: Sat, 6 Dec 2025 04:11:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Amir Dahan <system64fumo@tuta.io>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v5 06/12] arm64: dts: qcom: sdm845-lg-judyln: Add
 firmware nodes, change path
Message-ID: <jj6kmfd3cr3k4hiylzkhrwzt5b5vrrndcfoo347n3eyzj56tc4@66fv5bagydyz>
References: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
 <20251203-judyln-dts-v5-6-80c1ffca8487@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251203-judyln-dts-v5-6-80c1ffca8487@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAxNSBTYWx0ZWRfXwd2Y6WWSYONe
 IS7sCHq33IVD8VYNqxYNZ4S7/zHUdcxymZlSDmwUzvIvUUmgzPvHRh8qOCN8GsP6ztu7Qpwa2qR
 L8U7OzEMzZ0W0X79H3WB3e/nCOMR8FK9hytKX+9M6UEOTwKueZVOWRs4SEk4jvZU7Lsenb7Y0df
 5tlH3XAolOSzTFHU78siOfYJvdnhBZDtHdIa7qrWoc7FLoW4SKTQ3cTCneLUYCEeb3BUHGK5U/D
 Ton7h3MgOIXnZxjM8ffMQ+3JIf3+2c/gq3HF7RAPYrOJyiO1HLdEl0gW4KP2S74CVMNh4ZjWDdJ
 ZSPGYxe299Qg3xlya6b2pVVB8FyM2Vl+EslamFp9zfN1jTfJfRDJbk6oqYJ5bx9T57KU+d8q6Nn
 hqMFuINmcMCGu9io3SVFfyBB6K5cvg==
X-Authority-Analysis: v=2.4 cv=Yd2wJgRf c=1 sm=1 tr=0 ts=693390c3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Gbw9aFdXAAAA:8 a=xAAzZAXW8IgVFa-X7UgA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: ijmvfl-8P2efTivwikrWBpn7m0txwg8q
X-Proofpoint-ORIG-GUID: ijmvfl-8P2efTivwikrWBpn7m0txwg8q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060015

On Wed, Dec 03, 2025 at 01:40:55AM -0800, Paul Sajna wrote:
> Add paths for Qualcomm firmware, including:
> ipa, modem, bluetooth, venus, gpu
> 
> Enable adsp and cdsp nodes since their firmware is present
> 
> GPU and bluetooth are confirmed working, others may need more
> testing/fixes
> 
> But regardless they will need the firmware paths specified here
> and firmware added upstream before they will work, so might as well
> get started on it now.

Two separate commits, please.

> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 10 ++++++++++
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts  | 20 +++++++++++++++-----
>  2 files changed, 25 insertions(+), 5 deletions(-)
> 

-- 
With best wishes
Dmitry

