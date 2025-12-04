Return-Path: <devicetree+bounces-244280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AECDDCA30B2
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4C1C730039BF
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDE86331A41;
	Thu,  4 Dec 2025 09:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FAd4rC37";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ImmArLeS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE5B3074A7
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764841210; cv=none; b=He5Ez9s9OG69fhMjwlR6BwHj5E+e3vLemH9CbmTTXP55g1QI2p9QSaZq8FlVofcbTFVvUN4lD5plkPEpJrYLpHa2uQOvdJPCLNWORaup+6ez3Ks+UL06pi97D4mG77ueXGl+ijNyXVKk5vgL+WSVd+uW9LvHjt1dNs+I3wkVrQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764841210; c=relaxed/simple;
	bh=/KjdDTjFPMuq3AlNpVCnxeT4H1s+plorv3pbBcLOZYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j8kVUM0eFcapzUjPcYWvD8GdSDrJoj9GjGnHIaccyC9o48myWZGZvOJZ9JAMPuUtscXKUDa4on8gWiE3QG+CU2DSwvlfoQi+WqfAwBi92LcZ08lJJ0ujtGwH6+udwTbtlomEcrx/dqGJHp1FklGkAtU0aeWms5kNB+cmrVMl9FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FAd4rC37; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ImmArLeS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468ija551544
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:40:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JikH6CuvxtFtynNDua121q67
	xU7F/+XQYBioxN2DrD8=; b=FAd4rC37sQdoDlQoxQJFJmEK9rfP6kdfZ1ifzXY7
	KxV0pN/JnffjQVYov9XRFzPfsj3MWnTosK+aE1hG07RfayKcmk0alpoom9LXhPzU
	XkzIV0xdaK+5yKraBSEBO3CD7hQvkXoYfIC4jOTPQ/ZEfLIu+lejb4sQLPN+7B1Z
	rpB2FiEC82Xi0QC0qvyoWcLP4OAyMyEt4XEkgkXN1tStg9kDZzRBbOPKqm98FXrU
	Vgi44LMqEsIgUKpoet/SxMjyWSOE1jWpYqooW9UW5w7LSkdTrppTr9ROpgS0wX8z
	TFtpG20i8KKqs0wWe/CZw5NU8Jj+ZLgOCOBuw2Xrz7IIqg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmmdbjcv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:40:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b26bc4984bso271185785a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764841207; x=1765446007; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JikH6CuvxtFtynNDua121q67xU7F/+XQYBioxN2DrD8=;
        b=ImmArLeS3HZZ17wYQJUnPdKOJMU/Ir7sBf4ai71yQdm8fM52sFUlVEVkprHLHG8R2+
         YN+pDbJCkihbV4DJxnZKfE7YYzSvwv4F/TmuNSg6kr2xTn+b+8vXcCiL2yN+GEIPXCiY
         TQD/y4iKbeObaqUX2RjCLDLLOBfXqf68ASMXnKLtaSOlYmaE4oWthYQWcP02WAEmFot9
         Hp7jj/CGNJzPqD89YkTzRMEd4Xs0dAPPw/mdezSGtK7UxmY2RyjC2rbn3w+MqF44GbC8
         fZ4tEsgZzXDeuS1r1yzg8XfKsipaoeWXMqLvYsYxTIllodm27/4Q34crATx0y0a9Orck
         K9oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764841207; x=1765446007;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JikH6CuvxtFtynNDua121q67xU7F/+XQYBioxN2DrD8=;
        b=CFFxCVSMrRwwTYWOIGY5lqnUnD4TrC7vjZrMWYsgh2rvruuxc4/SrdsA9fENYxMBNY
         a/o1i/XBLo3ZDpCvfYBSHximNXJFjRr7yp7pCdPlO07SLBIisyjb8Mv9Hx0elNmuEXvy
         w5/BM9afmaEDb1JeXZNlqaJPTRYfqxQo0E7MUQESIkrwssXqI6QDsbh2yqmvU3pzirry
         X9CFQe7uqhnkIdU0Y+z/j1frfDZEC20ECf4xx46ih4oaFPua/AvrdAXnXryXWTsz2VoI
         7vAUaEk5vxiOh5Af3k3Q4tllIHL14bAohZN3sf2fLYLDjqMPh2m/poE7YtDw7LFBoYqh
         H48g==
X-Forwarded-Encrypted: i=1; AJvYcCXYHAMopQtqS/YOUfeM6n1p5u5Cl/20bNK5hiL0GRr77sIwwraLbfaOxO0rkgNsJi4pqMVNEZRqAztV@vger.kernel.org
X-Gm-Message-State: AOJu0YwkrY4WUAcSV+kEJ5r7wnb7hyGAkASbaqri/zuPm34gwYWuT4YB
	mHl+9apFVYl0Tf1zKQk59ak+rDhx4caHkHH8es9OgpcLSPwH56FAkIssNS+FWy85UPaD4yp6AX6
	QQx3ijlM4RCuzQPylNKa5UD4PPhJZsD+FLfV9ZNpjozTxWk4r8qH5EtffHBgEgBZa
X-Gm-Gg: ASbGncvW4VdCJVyJ7jQBsZbTMbTfROMcyFRrVG0XM6METZ++4Fr+bgbcJuPl+owGDE0
	ybGx0fb2uk+n8rM9ODfR7uzkk1RvQHJnIjEbNbAIzpa4SIuOyiin7lTt6mgFln0a8T26kYnnykD
	PW/kA3Q0LJsmzOxTzrOmXCfYxOn1/LAvWcU8mQXFqiLISfp/9cLWCz+gy4EVYitxkLh2jo2UoA9
	zyHER4y9Y1d/EvQhTfMtCvsH5ETI9VOXtqXKQtAVTS1wIjgGsKBrcW9F+MHkxDrHrHHfmTyamTa
	hLb61S7hXR8Rphcs67uW/PWhQ4fPHNw7cPfyioIbo+rk18iYdOYJdrcFAqqDzW6Ibx2XoxZHG8h
	926xMYqSTJBzA50wfzFS5edTLkY0xGEKyXqfW2detzOQt3K+m/H8yTjz8Uwe1H/pMOWWLFch+ab
	Vir8H1fUil0JA2Hv2BoyItNDU=
X-Received: by 2002:a05:620a:1714:b0:8b2:e402:20b4 with SMTP id af79cd13be357-8b5e47cefdfmr802776285a.10.1764841207217;
        Thu, 04 Dec 2025 01:40:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+EK/19r4BhqMPSVWj+wnOQxZraqrA1MNMVHJYeWrjREIFYX8mvGwTkUZkRliMkpHdTiDxdw==
X-Received: by 2002:a05:620a:1714:b0:8b2:e402:20b4 with SMTP id af79cd13be357-8b5e47cefdfmr802772485a.10.1764841206584;
        Thu, 04 Dec 2025 01:40:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2e949sm328954e87.98.2025.12.04.01.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 01:40:04 -0800 (PST)
Date: Thu, 4 Dec 2025 11:40:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Le Qi <le.qi@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: talos-evk: Add sound card
 support with DA7212 codec
Message-ID: <3j6quxg5wd3uipy4azfz2i3vmkhlq33tb3fgjidihdpjzx7lnl@22d6evqemjtw>
References: <20251204083225.1190017-1-le.qi@oss.qualcomm.com>
 <20251204083225.1190017-3-le.qi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204083225.1190017-3-le.qi@oss.qualcomm.com>
X-Proofpoint-GUID: x9TRg01FjYGtw6Rux6GCFzVYkcLF0YYl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3OCBTYWx0ZWRfX5w9NZ1pzKRUx
 p8WLumaSwH5yIZBHGIvmyvOrkNqtHfAJben+pSIne41LXrp1JPZxL3uNCMMFCJuvpe+lAL6rcuk
 /XO/g5o3JXP8NmF8yxOWnWU1MGlEaM7nPtKOhvEUU6XjYRFzZtpgll+AIORpbJYsOkX0mHdyxOI
 yzftgXTXJmXf3UlcY5K3IscJ/u65bWDhrk1pgKHCwDIpZ5Yr6lPCRCTq7AHh4KeivDxn+jrlKCN
 mcRuJbq6milRkIfHE42E3LJxRW5gKpqnotJkL2+Cq0Yb5tWhVzqdO8CP+NKM6yQKJYyL5HTxYDI
 FLPM6JZh/qn19QFhQkaIY/zqx1w/TZreRqLe9ZRLrFagZwynJSY0HZ1Q/6Po1zUiD1x6H6PbrS7
 VdurqxAZ3reXQMBlBpyud6bch8O7XQ==
X-Proofpoint-ORIG-GUID: x9TRg01FjYGtw6Rux6GCFzVYkcLF0YYl
X-Authority-Analysis: v=2.4 cv=Ctays34D c=1 sm=1 tr=0 ts=693156f7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=eyE2PYJumBGUyiyYskoA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040078

On Thu, Dec 04, 2025 at 04:32:25PM +0800, Le Qi wrote:
> Add the sound card node for QCS615 Talos EVK with DA7212 codec
> connected over the Primary MI2S interface. The configuration enables
> headphone playback and headset microphone capture, both of which have
> been tested to work.
> 
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos-evk.dts | 54 ++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

