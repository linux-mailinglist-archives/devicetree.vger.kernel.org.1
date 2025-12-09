Return-Path: <devicetree+bounces-245491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09408CB16A9
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FD24300B804
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F1B2F9DBB;
	Tue,  9 Dec 2025 23:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P+4tW0v3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gL4xWe+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AED62EFDA4
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321950; cv=none; b=iKaH3oFpJ4pLOI3Ss2LLcPxZoFQhSZ/gnJBdu2DKll6nmxXWZJl8PKvc0EOYqE95UhNfEfKnDIJ2Awvn5PaXI/eUjoY4P/znH1pyLLtHdnZmrBP/Y4QyqxQPYFTqnNZ4T1fLlxBCPWxsH/HoJXf2qxeiSPyoJ/kb0aIqfyuPgg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321950; c=relaxed/simple;
	bh=8iBLLQuXehd6c+HS2HC1NeD7OxpHfpVi90jrVsOAWOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PIb+w6NsER0YrxAJ7TLu5UrVOsjLsZGgWNJe+NkzBF/1R/R7K7nvFAFppXeic4Izf7UzaaAQm9qUOZnnTYRVP6kLsB1XZsXTZ+w6I9+VyP4tNMW1YWoCSlZdXinIagqs4BEvZDCvkneWfos1d60OT2XRnqdR/aEUPOx4q5rdNe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P+4tW0v3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gL4xWe+F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9NAq9j700702
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:12:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aZTDtwVzytWLbvwBtAYBieqx
	n8lDgoGYKkc/MQfURtI=; b=P+4tW0v3gTocph2gtfR6wiD0ZHgR1rnpeAYuwVhf
	Yt/7Fcv6GxjrUHd7iQCvoYEaaRjz+eRkjPb4ZvD1PovunFLRlMY87hfOAopNzKGC
	UgOfMNUgckSbzMVV2LflgIDDm661frUUpMcufPgA1kF/wepJtN4JMYSZS3DtmrGC
	A02oXFnGLlgdN1g+oodC/JZdzH8oMS66Xw/PZAAHGyByZfNLLrGH8uud6N8chgVu
	NuF+XxMmgjQ3lkygdH+bHRJkDwDPUPbxSaqUtgeRcO//PznRoWq22+mkdEogNtMU
	K8+4drMl8M1yOf8uVq5UYlJc9ObJwJVNiNajqqsuwGH10Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axjk528mn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:12:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b8738fb141so70684485a.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321948; x=1765926748; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aZTDtwVzytWLbvwBtAYBieqxn8lDgoGYKkc/MQfURtI=;
        b=gL4xWe+FbEQ/ynPknHIFFgVE0yVyKld2Gl1TWUg6S0LLzfTZ8Mi8Xt9OR6dqTUV091
         q8gClLHN0MddQlqOuWlC5KrmbUcXmGVhRGZaFM/kPu/YxyRVrV0WxF0atzfznPNHOvio
         2If3KCLn7ROn6z8/pX+nANA7eWlLnRixvpTGM34YJuSV1G6KpudIfmSc+fJHtVF+BdEC
         EIcRCNxV0F6gZ7uc4cs76Beq/Pdkw1zgSzbiMvuZ3VPOnzwvInjbpp3Xuf3JW+hiRqjp
         Jp6mfTyzXu0UmuRH5NvwF8ZA+ax8TNztebIvNEpwjvDJuNFqloKi0Xs0fBBvIfT5H/WC
         0VaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321948; x=1765926748;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aZTDtwVzytWLbvwBtAYBieqxn8lDgoGYKkc/MQfURtI=;
        b=dCD/fBsz/htbM8sZ1HV/um8YmRElHaZgLrqDrfFqpvEz5YUQMUdwF1PZKzJz8ahNul
         Yyg7hTfRE9qNn3mPT+a8+bLM8r4Wv2LzEuM/RF/pAhJ6IZ7s4cUJs6zJhif5QgIqORsM
         uoPjTE6QIRC+8RV1fqPwLZsWzIZXU0iuiSzHlGJIkBfJ34tT87VcpnWLLjBYbJRDtszQ
         +ocNq7ZN81ohxbRYZCkSTWdJAT2kRTG3lToFN+paap7xiEXbedhAGqrtAY0G2eJc8TIj
         MzCHoBQU24i44V/GB278Tydi2f20DK3oO6aX2T1kE+p1HsYUDHXu4jiTQ/cUn87xf8x4
         AXZA==
X-Forwarded-Encrypted: i=1; AJvYcCWrPdg5uCLb+wTBgRLiFjVJY1di5PFeMzjVPwWM+ilxWy/ok39dYvKZjVnxpxvg6XWxBjjmgIVoWbNP@vger.kernel.org
X-Gm-Message-State: AOJu0YzUK12u16UlhsTtP8FlxgGjnRfQyMNRQUEFiC16ECY50zcxPiA1
	IJuLdIE9nQrk9BKMnMmDtIwGl3RUekXISwY2pC+KRfh9cMoHu2wARNMnGQhQRiwgtBJSv9sUn2g
	SaVUJQtUwpY1wXBONXy8Bq9uvYUsrXNfe1bLsLtQvBciiK17j3MgoDNN5eV2+Uc3Y
X-Gm-Gg: ASbGncs+4iBjprJPPgo11thvRsJqNNHq9ZjDUnxoRHcpI7jrY7OHQvBPeb/tuSqXUXE
	UYD7Xrj/x2pDOoPB/GwZ8cVTntt8IzafUXycUgVVqqhmi8OVVBbjwJwRMK2MYV1JTZ4dFJlXoOj
	Qqsxv78cf6sQw+bXmkgKrfjDLbIR6fYnU1st6T4CSDkUCH9c7dSzFwxiaXlGqfoag7uucSGCWOi
	VlqksOxNvNBhwugbIJtTkpmH7kDkOl2/3kAUlyyfWD9btR1NfqxBj7oBzPbqlllj+8UWKt/6Zrx
	A85kq7RFVzU9rqebGBVz+ljtFbMtXZ0rRPrdxwFXqD9YUPR1UlUZJJY0RiNPrE6uaD98JOl2IRA
	11wKRSecupynbTTl3Prjo9I8BFKO/IyoLMmufSiSLZky+B2/QkJi3KuSQWguzrmX1eZXw+7iri7
	vopogQf/ua3HrBdaoqAMYX/gQ=
X-Received: by 2002:a05:622a:48e:b0:4e6:df3e:2abe with SMTP id d75a77b69052e-4f1a9ab2644mr46847201cf.9.1765321947872;
        Tue, 09 Dec 2025 15:12:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoMUyzT1cjFiHOGtjCqXvQSCukG4MAoCnPqlOy0xxYdv2NNMWNWiAeXyekIHS4ywW/HCE+BA==
X-Received: by 2002:a05:622a:48e:b0:4e6:df3e:2abe with SMTP id d75a77b69052e-4f1a9ab2644mr46846861cf.9.1765321947413;
        Tue, 09 Dec 2025 15:12:27 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a920sm5709451e87.12.2025.12.09.15.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:12:25 -0800 (PST)
Date: Wed, 10 Dec 2025 01:12:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Sam Day <me@samcday.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-oneplus: Add framebuffer
Message-ID: <3cbcthx7ptgigfogxa6c7qf2r3o2nxqujro53ynqnpl7hll43r@xb4dl5ce4j2c>
References: <20251206-sdm845-oneplus-fb-v1-0-19b666b27d6e@ixit.cz>
 <20251206-sdm845-oneplus-fb-v1-2-19b666b27d6e@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251206-sdm845-oneplus-fb-v1-2-19b666b27d6e@ixit.cz>
X-Proofpoint-ORIG-GUID: I-OKJIwp_mbbsAtL1xMglHRBUcH8noFy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MiBTYWx0ZWRfXwIqvPxXuiCWL
 H1NIRQcjudLTrZyabZD5iLUf7X5EgkwTkJEfE1CQotiqgaAIGsHikcLDqGO4K3wVwAtPRb068YS
 +Dj/HI5gYioWrCdbdaqRe4aTopVDVVjTA7DnU+mY2MUxmSQjXBavNY4ozE+l9VxoQF7Uw59eg7I
 T+/afbse4s+XtAjnvW6/RRqzI7DWvoZAtS780e7UNxMvBq4xABeuEebvH4A7q+4/ENN4sDXQPAF
 4IxYj55FiuR8QchISNE1m/uODsRvIZWP8eBc3cpwlfD7x6fcgzoZqy9NXGyDJcu6CQ7rMLOfLFy
 hW5hd/9gLPdCtdHuZrX+Cq4/U1Ldfk/MqKah6gtT9osjLi1G9QDlWh4rK9oiaN8Jt+PmzhWuAoi
 nJhurX4Lm/bIkcFA/HVODjExOC3AjA==
X-Proofpoint-GUID: I-OKJIwp_mbbsAtL1xMglHRBUcH8noFy
X-Authority-Analysis: v=2.4 cv=RqvI7SmK c=1 sm=1 tr=0 ts=6938acdc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=lKQ-AihTAAAA:8 a=EUspDBNiAAAA:8 a=qqtHS12kPM96W6o4Ux8A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=K6G5NyU7usMl-irPePdK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090182

On Sat, Dec 06, 2025 at 06:45:43PM +0100, David Heidelberg wrote:
> From: Sam Day <me@samcday.com>
> 
> Introduce the framebuffer node, mostly useful for the u-boot and early
> boot stages.
> 
> Signed-off-by: Sam Day <me@samcday.com>
> Co-developed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi   | 18 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts |  4 ++++
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts    |  4 ++++
>  3 files changed, 26 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

