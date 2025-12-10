Return-Path: <devicetree+bounces-245528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B71CB1D98
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 442FA3009480
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 04:01:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE6B30F81A;
	Wed, 10 Dec 2025 04:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JjcHBXKU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wb8AEiDA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEF4230D35
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765339302; cv=none; b=MuU7U7mpWZKO9BD+sfuIJyBTj5jkCm0OpVP2q7UrvF5Tk7nKBvex/pmz1T1GO3UgICZM+HCUTHRS8FR6LdvM+oxO6he+hJQy67pKfXog87g7l1s43nPC1mWF/Q4yRHtSZr/jXlUzAgnDOy0bAvToy3JNlCk52o4LslnLNd1LL5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765339302; c=relaxed/simple;
	bh=VtECjHUO3xGDK9B/G9gi6XQmOhondkiYl15lGVWWDj8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rw16ewji+tulsuTSlDRCHRSTLBQzugP/3KBro92CFHYieEfgjSoNdxKXLg5rxrBYKjdJ/pcxvuPmWfql/Bo7NwgAFag6/9Myikg5OIz+lrjG0JuNQlVlET1cWO2pIr90iadbai861M3sWRokmq+7kBMslgXGsp0iNCJb9SGyyYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JjcHBXKU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wb8AEiDA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA3LYKh879135
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:01:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MqiK2oV4ydfSYTKR7Zx8jO1z
	t60wSHlnWIxEEXBfXUM=; b=JjcHBXKU77FDyu/9srzsR2eJZHcVGnZAIAVSJvWU
	8iuzpG7i1SzOJhvPML7i27o94CyGCZwxUCIm02Bvq91Ux6XvfqqRMX+XB0bNHyHA
	CG+HY5f3MiIDUlDp701lzkPBa0RabAmiyNuhFe8mMEnNH1NqS9MBbyxGnFfKs9DW
	fLaRnL6EX9i5XfLdgrvIoqBI9eIk9ffLlbkoNB4IzfJ3Eag55Ywy7fS8qy4G1auN
	PIddMznblOcGAbWa0I7qLkBIqhx0iZ9btO+IChPDGsEpUaa/XbW5QJV3mwCknSOS
	WZcmmaqYTWL1HGtClSBBDa1dKZWjep18cmk1qpysenY4Yw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axp4vtc30-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:01:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0193a239so72068121cf.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 20:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765339297; x=1765944097; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MqiK2oV4ydfSYTKR7Zx8jO1zt60wSHlnWIxEEXBfXUM=;
        b=Wb8AEiDATruQhaYECrk0DWRN9XzUP2bl7k2UPD0UiYb0814CeN4t2iTHaB2I3GRIwA
         iCDcyy0w3aIOfjrVp58TulHKkRbaJ7ibBXTiL6vyyp3yfCUMAFJyT9Rp0jBM2ePSlVgb
         D8P3YameJ2/M0pdTp1FBA4LHxvcsMEGLO9ugMEFFUj6RZWZsfdgox6tGrZ7n3ipIVIat
         10n/XIKKuhBODke83pPEB6coICDRJekIJGecjyvxXmqdB5WFWnaztdQAu9sTwmPJJtI5
         PiUrCxyRAZlOB0iDcdFNXirmeBxe9ouNDprjdRjafGiuM4KIIK+xsoURyaviXRJRWz62
         JkiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765339297; x=1765944097;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MqiK2oV4ydfSYTKR7Zx8jO1zt60wSHlnWIxEEXBfXUM=;
        b=NGgyOo4rPyfXuqPakQ6sEtlQSyZczS23kSCoMiu1F635nqjzxX7RXtsOoStSpRjUw5
         f9nxmo8MRGuvEL4D580fBQ4sQq4Mu/O3XS2OeQaRtc01/hQiUGyQyTu4NSZu+TfWrEOv
         jBffMU717PYKCoVL7XrBCBamV0vCkYEsxwC/o6Szfrw5yEZrna2HYkAkBIlBkwSg+Crn
         wDgWhm/bNOrM2h2lNiatPtLdFB/PVM6CsrUvJxYXS4ZnIUWTM3qv+ocmpcFjEjWEj5zy
         uTjpO4dc1wehKteIVjIl3QKPdfP0C9j40/Cvk2PhuaEDPNv//zoZsWoZbc3HcX1mm8sZ
         0KKA==
X-Forwarded-Encrypted: i=1; AJvYcCWAkd3wSbGeSiy9cjokgNEstszebHeG4mjUwOHkIbX6yAT0NYLO63BvVHJUwK4XFV+iE7dev6M2sCh6@vger.kernel.org
X-Gm-Message-State: AOJu0YyyWNSME7ygbR4SYNVpNAKDsGWk6QvsVkG7HQJtK3/2ii1p1rX6
	HTcJvZl9izd8QyuNEuAS+8+vjPMj3Gksx+9vBWZjW+2jobCwSh1sryknTbd/ewe2LohHA+de5yb
	4XA4L2wUV+X7ePTgJEZxHgeUn7CJncEB05+gIsSRcjKvmDr4TO3+iWA7JjuXjMC0v
X-Gm-Gg: ASbGnct1sqjHbHTBxzKg5QEq41iQPol4NbgV561iLy4ySFp0kA763wfzSYfiVffXGYv
	PXdLAf+xEUDASYFRDNymW2Esc8KPGdhTsqkSOPf3wW3l2b7+pZ819xtX0Y5Z6DnZOzoWW4pqQpf
	k3R3QpVhYF23w6Dr4d/fS9nwGVAKOftUS0qZ6ma1wlvzpE38VZ31DGfE1q+dMiD9c4PJG1QvGFy
	KHFd7NYRwc5dq1b31UfGFOF06kbBglgrGNSgRLf1OrYaEAWfACGccd/s1wOyfAeXVrl3eKxgnYV
	WpMg9UU/l9/Ww+bvIuysQle0Piq3+Aq+gVzX3TBbH+dpOShxXhbNa26C19YeqW34KkEXZfs1+3v
	MYQHAiM9hynlzQFKP5Fuxnzk/hqtPTJHHEJlZWDzG3j/5YpxiSSN4e5pWvrozj8ZCeomvemepJ0
	0lioGiooZhSJF0Czdl0ne3Bsw=
X-Received: by 2002:a05:622a:188d:b0:4ee:2080:2597 with SMTP id d75a77b69052e-4f1b1a846cdmr13831331cf.38.1765339297495;
        Tue, 09 Dec 2025 20:01:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFR6q8iXUcqUwTpaJVE3qBT3yDxxuu4wFZVSU6r3pLHR6MDtUDQJs8YgKtaZD9Q1cInJatE+g==
X-Received: by 2002:a05:622a:188d:b0:4ee:2080:2597 with SMTP id d75a77b69052e-4f1b1a846cdmr13830901cf.38.1765339296829;
        Tue, 09 Dec 2025 20:01:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a7c5sm5946794e87.11.2025.12.09.20.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 20:01:35 -0800 (PST)
Date: Wed, 10 Dec 2025 06:01:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org
Subject: Re: [PATCH v4 9/9] arm64: dts: qcom: Add The Fairphone (Gen. 6)
Message-ID: <ysncf5bdxklhcuvxunmzd3gudx3qt6oq4ihzip6afb3fg5z27s@eonocdzxxw6f>
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
 <20251210-sm7635-fp6-initial-v4-9-b05fddd8b45c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210-sm7635-fp6-initial-v4-9-b05fddd8b45c@fairphone.com>
X-Proofpoint-GUID: vLDpsnES9izq7duSvejc_yfCZT3eL4W8
X-Proofpoint-ORIG-GUID: vLDpsnES9izq7duSvejc_yfCZT3eL4W8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAzMiBTYWx0ZWRfXy5TJKX3hzsJ6
 2LwQYU7jatd5LsbZl2aOWY/CS5Gj0VmrgKML20aKZ0mghfj3OMmJ67XAE7cx2TOWSjpPU9chk58
 QFjN0fnUjZw5/eSNHBmMQzr9IqGOMFz318k/gaglpAGhiCIcjHG10tFKGul5zAjPCfHPnL8wJjI
 Y29HuSxMYZH4B8dMSAG/9YglI+v/TLP55biEwpVRcjh1SCRhqq9/YJxmp/qPeaVUEuRWxeRabH4
 Ft3DUOexqY4XOTaLErExvlMvSXORnsadWYxog5hTFn5tqxYkHxxpkxZ41lkHXpMvtPjHvvgifMf
 8iBdT3IIvEENAvvTCuY9u872E/whMdtTFwa57hH3j73kw9LFHXDeRopUy08+VgeYWAca6htveHh
 gMiWIGz1bpZ51u94f8V3T20xYoF3jA==
X-Authority-Analysis: v=2.4 cv=IoYTsb/g c=1 sm=1 tr=0 ts=6938f0a2 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=9_MgF4w4W-WW1lAcsO4A:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100032

On Wed, Dec 10, 2025 at 10:43:33AM +0900, Luca Weiss wrote:
> Add a devicetree for The Fairphone (Gen. 6) smartphone, which is based
> on the Milos/SM7635 SoC.
> 
> Supported functionality as of this initial submission:
> * Debug UART
> * Regulators (PM7550, PM8550VS, PMR735B, PM8008)
> * Remoteprocs (ADSP, CDSP, MPSS, WPSS)
> * Power Button, Volume Keys, Switch
> * PMIC-GLINK (Charger, Fuel gauge, USB-C mode switching)
> * Camera flash/torch LED
> * SD card
> * USB
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                |   1 +
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 790 +++++++++++++++++++++++
>  2 files changed, 791 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

