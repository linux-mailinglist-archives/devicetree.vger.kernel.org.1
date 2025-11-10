Return-Path: <devicetree+bounces-236918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEECC49428
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 21:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6695C3A735A
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF932F0C6F;
	Mon, 10 Nov 2025 20:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h8QbNoBr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R+DlCnZh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0932EF660
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 20:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762806959; cv=none; b=KcePhzFWd+eDpMwnd3I4jmqc6tsSlw0A8ig8KQQYbK5bVpCob3rN0slpo0huR44bVEXiGAvO8IDicKWDb+psM8g2rdpYQsv1x4hxogurase7hHPC2eErY/tYaAR00o5klUu6t3NUo1jb1YdBhgSSJjaqPBj9QvyIcluKS/miLTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762806959; c=relaxed/simple;
	bh=6214/vB/U2T9ZxG1wVNkrl1tZxoGhwbwSuU0K4bc0oU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GMoFf13v4coW9nJb0StF9NPU9txSL4dNzwxM+UjaDeChSGXps+Kb/xtwn1B1X1o9EoLJOEr1LezxY110ZBXTb3P3R3BuoHcJA1cEZa6rmeXSek7RQO/gD6OLDLij94uL5/mUOyqFTggCNnpeLpZK1GIwnzIEf8DBUTK7Mqt/F8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h8QbNoBr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R+DlCnZh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AAGYODZ4070802
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 20:35:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HrusHWa4xpz02NNq9Rv00ajz
	hsc5feN0A2MEhrWFj7Q=; b=h8QbNoBrG44TqkkpXtfasvkklbUzYf28BBnTtLPd
	CVq0Gch/ivO9Z86GYUrPpG6y7SDtJBZvkdDPeQI2zrhP5LxpDO1zR4ACotuTaO6N
	2yoY+57FkIBCWaPs2Z5fbg8/okriYWLgZELUfCVTFCyzWKgCYT9ltpSE/dhpplLF
	JB7J2XG2WsCJHMh5/+0fg7D7GfJe9Kf17kUYhyG5SNrUclP7ATSVEA/+IzZFb/go
	yXMwQd10dGgodh6eqzdshBR8pV3fMzk7nbDWV49RvrsaZHH2P5Q4MDiuCXjUD2Hm
	JrH/eFeMAJWGegHu6rtMwwSFhZNdk8Tg3w3trcRQIGdX2Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abkpj8pr5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 20:35:56 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed7591799eso97980111cf.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762806956; x=1763411756; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HrusHWa4xpz02NNq9Rv00ajzhsc5feN0A2MEhrWFj7Q=;
        b=R+DlCnZhx895kSALsh1aux7PO7ZujQJrGYcJSH2B/s3b9ubtSC4q5OUFAviIzHUq3B
         UezoqTgT2HWm3CiR6vmbq1Ei4vGUKOrwslLOEm5w2vo391B/e7zNb22GKQSeEUIM2RBT
         IcSrAk7EFIcSlHa1GMQRzDSBrmYq2UjFNEBGr9l7pbivpBDanOOsMcfnwd0PfErwqCxP
         FZGIZTTemvd7OKd3wBwueF7nEOn3+Gja++0pUwr1h+l/nQdzQ3i4FRL6mKd1X8/JcPBQ
         JytFa2iPBfC6pnXpJLL3GxRF/IF/yMAnC8cqKsh8BQyDyZaJqXbMceyuR3pkix5UpxZU
         rbKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762806956; x=1763411756;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HrusHWa4xpz02NNq9Rv00ajzhsc5feN0A2MEhrWFj7Q=;
        b=k8lo5WuK6EFpb8FHRIJklbNCo6VFJY8PlWb8x2wLYOTRR8OKQzxSqVbTT2w7OX4y6B
         OlNVZt2j1Z96dYfwl1geZ/9arurwSKZApTr8OM85ZOYtR+DWEJ80xXJ6xxnryKvNHu19
         e9exQA3UD16rLg8oN/qZHxUo05e/2yv0grNBZhrWP3Ss4We7Bs/rOjATYDk4szCS399H
         N4Ws40WY8azwLoMbGlGqCJ6pRTuuT9Z8NGuRuQ9c2tNdOajbFN0Fzkh9HNVUGG9NfMdA
         C7/KQiL0kH2osqIXEvLIL0L08tcQa2zfQmq6DY0fl3/SzIs8f4wyF3nSxHx0EWYojFVu
         77vg==
X-Forwarded-Encrypted: i=1; AJvYcCXRC2CH0sQzP92no7ZlnjOr9uwYY5OdnSR0CDxm/mT7LjkKhHvLKvzw+ogoHpzHh/Yu7yrFk9SAtzNA@vger.kernel.org
X-Gm-Message-State: AOJu0YweHfbenbQxLLO5VpIKhwYQ+KhXPTPWcT3+13ZFQTAC0mhYSmJI
	jb/AFz5ppqJzzOjcccVcghRjpq91n8xeXDKStjwkNKbh4UcgHalnQ/cdLLPlLfPU+UkcyY/DPKf
	yG0xqQf6aEsac6VsHf59G9n3dCBf7V9dCPbRqJ9dd+pB3VZb9Qj/aQuvJYUHjPB12
X-Gm-Gg: ASbGncsZ/HWzJzpz0Mu+T0ra/+9ddJ4LQFqfeQ3UiZVtY5BrXc+hGVMEhTjiRpcxK21
	wssKyy4yQhP7B5xagPFspIGv2uCIkY9sdE8yLrRFUPHxIIVMaGlR3mNvN/eASTwP3AgvvLE1aPL
	jo0dIQlcbG2ibTKtCAGXAgN8F9GkyOWvNoHlaGLqOxvuYtBbfBpCthmRuryI+uewK9N32CEdPII
	H/s7P4QGO77kNw6p1dlZ/kOj5aXbCHhWhFeCEiA94yrBu3sLiHsK0m0WP2MiNU8tNhQRy6BDjDA
	9bl3TIlmIBQPgJE4D95qhGzkK2nAdb14dGF5Iy+IrctIBJiWzXKlILwcr3mD9Ox+qNI1GmIDMcv
	/0w2ttaYpK6+G78isQYjufL/QnAV/KXzbbZlxxql1p31XWz/PHUhOoLwBsn5lj22mH35nn9EEBG
	Gahu1TbWh0Itc3
X-Received: by 2002:a05:622a:15d1:b0:4ed:67bc:50de with SMTP id d75a77b69052e-4eda4ec8bf8mr113490321cf.24.1762806956111;
        Mon, 10 Nov 2025 12:35:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJ5ssDcgmggW4lpYvEvrEq74tSuo8cOVQiuKY1y0jHjepaZLONK7Do79X9y4s2nxZqgmpA+A==
X-Received: by 2002:a05:622a:15d1:b0:4ed:67bc:50de with SMTP id d75a77b69052e-4eda4ec8bf8mr113489431cf.24.1762806954848;
        Mon, 10 Nov 2025 12:35:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a013bd8sm4360891e87.1.2025.11.10.12.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 12:35:54 -0800 (PST)
Date: Mon, 10 Nov 2025 22:35:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, ath10k@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org, Amit Pundir <amit.pundir@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: wireless: ath10k: Introduce quirk to
 skip host cap QMI requests
Message-ID: <xgyd3ofvv7blcfo2iw26p7sh3p7lkb5w6kkbogryzrgytkrmva@foo72an5qs3y>
References: <20251110-skip-host-cam-qmi-req-v2-0-0daf485a987a@ixit.cz>
 <20251110-skip-host-cam-qmi-req-v2-1-0daf485a987a@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110-skip-host-cam-qmi-req-v2-1-0daf485a987a@ixit.cz>
X-Proofpoint-ORIG-GUID: i013rc-ggktNmbEK4OJPq3NoLOE_rFyU
X-Authority-Analysis: v=2.4 cv=GZoaXAXL c=1 sm=1 tr=0 ts=69124cac cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=bBTs48EDRqzxHWfT9_gA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: i013rc-ggktNmbEK4OJPq3NoLOE_rFyU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDE3NSBTYWx0ZWRfXwdYirk0Qjc0T
 VdDtEPSncG9MZt0QyhfKKKotC2nje1wniUud/020kr9ONxRA2bHmOLuBypkhF8knuoCZL819BOi
 d6rL5E7yVtaBhIVgxTeusND/vaEJcuxiysNxqc6rYUWXrtImAhW/68oy/6ksG6IOU0mfk5KpmLr
 kqqCQZCdi4h9wpwLu8g4wDT1SLn4rqFG0NMsKviXC/EXRX0q++Jx0beox32+mSq1/SZgx3oMqj6
 B6TYgK2ewD2TozT4Q4QRhWNpkhG4UREoe3I2kZGeI9cGgYv9hhLJbRIKAkDe6TLglNvRDnuB64O
 kEb8B71UdYrLx4u12Z1XQAW+ZVpa8hHwoL+7t4M4aISSW+B4gKJvCY7srKvBzlz2y9onIdLeRgP
 IQ141XdUjAedLEzdsIWZoPpbXO5R/Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_07,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100175

On Mon, Nov 10, 2025 at 03:26:24PM +0100, David Heidelberg via B4 Relay wrote:
> From: Amit Pundir <amit.pundir@linaro.org>
> 
> Introducing this quirk to skip host capability QMI request for the firmware
> versions which do not support this feature.

If it is a firmware mis-feature, why don't we describe it in the
firmware-N.bin file?

> 
> Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

-- 
With best wishes
Dmitry

