Return-Path: <devicetree+bounces-224517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27972BC4AB5
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:00:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CC503A15C2
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BBAE25DB0A;
	Wed,  8 Oct 2025 12:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D17arv5Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7752D2EB84A
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759924823; cv=none; b=lIlmeSqYFtKnrWtJHNf8VyHBRMgXxvzCwxlmuHi3NnIxIJSsgp1Vo2Sd351NG8uyRfyamzupEmaQHQoJKtHqU+NLaftrlpl7ZLuhfHAcizMrP7/TtjZTimTppkz/nGq+NuvVQXzt2HLh4dnTTQaTZK3HA4gBiBRv6Y9J0+FbcRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759924823; c=relaxed/simple;
	bh=4vMQxz8vJDFJ7PyFDHhD7SxqVaewjjy4uYlnHVW2M4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uoTEIU4UHnLElkCNXcWQ4QLwgK6MaSJkiJEekTY3FXy2dI2SLaaA7KnYer6c6BlesqjYd97AZuhP2oJEc/7jpg5z8ddj6NBa08AhuEyVYczDfQzS/BIfg6c7V56MPedJcnUkwZ/1QCGHZ0Q64H72hJKHQZ5WST2ywOmtDExRknk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D17arv5Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890fbn016028
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uLhdPwh176J3u3H4+MR9RBj7
	7/mlh5xjbvtuKbEqChI=; b=D17arv5ZdJZ6Qh4h4YtBT5rktlFlwB5RSg50OzLx
	bo/10mGSmD5ZOMtheohUoQA+x0+u/sV0Yi6R/oOBu2F+2C3jyC3foYN58xopGVJU
	L+Cx87wWk36FxetmlWo+ZAvoR12AxPWfEzaGoxBzCihmbJeqLRrFV48ru0Hv89yW
	yN9PiOdTRkKUKvIEz9vAR7yeZc3K1jo2sh++w1hMu7YH7Y3r0q1KPr5LMoz6fl4Z
	tOI40Cg6mSnqXD9AQId5wYlO9y1Gfv4FPgeeuTbliNQwrDmdDSnIeRx3cI7XEEQS
	cDZg4kmbMKp3w2FMkKXNEI3pz9Xjn/8ocd5lb7oZ5Clv2w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk72axj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:00:20 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso6657976b3a.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:00:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759924819; x=1760529619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uLhdPwh176J3u3H4+MR9RBj77/mlh5xjbvtuKbEqChI=;
        b=KmS9PAhCAxWC2eT9Fhka/7IZtCNuRZ3bFtZCOhdKqaUswv1dDYUcdaFoIPJNrqIxDC
         GDB3F8Hx3YrKNXXlRdI6CrVEBzDVP6Dx3r/JUNQkFtI6bra5RY3abOxL5dMUzvutgjNv
         E5UZ36jmpaBkBMPOiGBvgweuTeDGeKoBwpTpyTQ1reZYweeZy3cNTXn0z8pfLL0Y1lWz
         wTgam6K9RCWR+9m0jnNFnwHbMXG4pAEcuMzYulrBIj5QsVs7Q0F24ypCZl0VMDg2EvCG
         MnQt+3a+MutNt1j68rwnqoFH4oMU/6hbiKEVkV9iGmFcnXj5MLBDa3CQpBfbTTCv1ZH5
         Plgw==
X-Forwarded-Encrypted: i=1; AJvYcCXSVNsBdstev4eDShNDqGQPhTSHJHY0nxZTmiOeyCBnefmRaJ06voivYV7rFM7ZuEG7dhoQQUCyL4Hv@vger.kernel.org
X-Gm-Message-State: AOJu0YzfYZOlT7aWGIVO/qfmNr2bbUl2Zld4pOCN521WuJCTvTw1txlf
	snaBTUihtBhyvUXLL/ZB/BDPTgzjw5z2lbmPV0NPIttceHn5uNHvXL4l4hb6N6E0PGmcifnuAst
	WRehG/YI8whl1BYt8CVLsPcWQd79xehP2iEtwzcHCSmRWgY+nRi4c85Bp7Jyo7p8+
X-Gm-Gg: ASbGnctuaGR6iWgoVNSl+DrxzY4229hCktN3i5siBqGXPfciyuxma4UgNC+3F9O3y2Z
	MaYgdNR2IYOpo3cQ75GmxdXZRWpbe/CiP5HAhSj5L6SvM4c2pyygAQuyvB0CE9W9CYojvb8H/Yt
	cAeM/dXVtCjEL83RxEtD7nwD/xaOv6+QEBYWyEozLEy5gcb4EmWnQAmS1pEkteAamPQgSuOUHaO
	trdPuXwKB3ZKMz+5048ygOAdlWt3SOiibXqpAtq4S+Lc7JgJtZuZ56cEt/OzBxPzzaRJMuTFQHS
	lO5ShatK+n9NkvRdKnELW5Odn5aGrRaRFK9VimiH6wTJRODdz7WCTQBMRF0GHX4mdAy1Fq9f
X-Received: by 2002:a05:6a21:e083:b0:2fa:52a0:e838 with SMTP id adf61e73a8af0-32da83e39ddmr4358387637.36.1759924818338;
        Wed, 08 Oct 2025 05:00:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKO7wqlSvx59P2vS6UzWzJ//dvnD3o/iZtvddrv03NuT9ONGsnUOVru90lpyPYje4cnIJpKA==
X-Received: by 2002:a05:6a21:e083:b0:2fa:52a0:e838 with SMTP id adf61e73a8af0-32da83e39ddmr4358306637.36.1759924817502;
        Wed, 08 Oct 2025 05:00:17 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01faf086sm18623699b3a.23.2025.10.08.05.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 05:00:16 -0700 (PDT)
Date: Wed, 8 Oct 2025 17:30:10 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 11/12] remoteproc: qcom: pas: Enable Secure PAS
 support with IOMMU managed by Linux
Message-ID: <20251008120010.kygbso4vw2ouwlzu@hu-mojha-hyd.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
 <20251007-kvm_rprocv4_next-20251007-v4-11-de841623af3c@oss.qualcomm.com>
 <65e6d61a-7648-4125-8550-8a8c6d476b0a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <65e6d61a-7648-4125-8550-8a8c6d476b0a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfXw70QvGv6tWub
 1VLxl59Aucr+OjhEim24i7ZWJYjOyBBe3bymdoVrH2qY4KGtkd/5BlkJnhWVKzcVb1yaU3tlNEI
 vgxYs7Lns6xqPZh97J+3y1R0B6iaI5ASjaKL7RK0DWz68nSrxeJ9b0TUv7X1WzDyBybUhJKHUxH
 Q4yA4FczFu46hMdECwBDrKcGz4elgLKAkvpMPJkuhj+NlUxso06CRBzVyH+ZIAKeXQXyV02Zn9D
 yPnDFLD0ux6Y91WRgw/zBAM9crJvMYKs8k+5278yGj1AA2thoq1R9g/IuLjX0g/4+j++AvG3ZI0
 34H4xSdufYYRHZRie8sTt8iG/25qwzrJOoeAkbl3uvfmyuMeGf15NMxV1xwAiHT1DPcEJegk2Y+
 WcoPPHzHPzA5Z10R0o9tQx+MenLiDw==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e65254 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=qxcRfBPHBTAMjdSr2WsA:9
 a=CjuIK1q_8ugA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: Y-7TFaDl0xk-O-00e6_0qlooSIagE85M
X-Proofpoint-ORIG-GUID: Y-7TFaDl0xk-O-00e6_0qlooSIagE85M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On Wed, Oct 08, 2025 at 11:19:32AM +0200, Konrad Dybcio wrote:
> On 10/7/25 6:48 PM, Mukesh Ojha wrote:
> > Most Qualcomm platforms feature Gunyah hypervisor, which typically
> > handles IOMMU configuration. This includes mapping memory regions and
> > device memory resources for remote processors by intercepting
> > qcom_scm_pas_auth_and_reset() calls. These mappings are later removed
> > during teardown. Additionally, SHM bridge setup is required to enable
> > memory protection for both remoteproc metadata and its memory regions.
> > When the aforementioned hypervisor is absent, the operating system must
> > perform these configurations instead.
> > 
> > When Linux runs as the hypervisor (@ EL2) on a SoC, it will have its
> > own device tree overlay file that specifies the firmware stream ID now
> > managed by Linux for a particular remote processor. If the iommus
> > property is specified in the remoteproc device tree node, it indicates
> > that IOMMU configuration must be handled by Linux. In this case, the
> > has_iommu flag is set for the remote processor, which ensures that the
> > resource table, carveouts, and SHM bridge are properly configured before
> > memory is passed to TrustZone for authentication. Otherwise, the
> > has_iommu flag remains unset, which indicates default behavior.
> > 
> > Enables Secure PAS support for remote processors when IOMMU configuration
> > is managed by Linux.
> > 
> > Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +	if (of_property_present(pdev->dev.of_node, "iommus")) {
> > +		struct of_phandle_args args;
> > +
> > +		ret = of_parse_phandle_with_args(pdev->dev.of_node, "iommus",
> > +						 "#iommu-cells", 0, &args);
> > +		if (ret < 0)
> > +			return ret;
> > +
> > +		rproc->has_iommu = true;
> > +		of_node_put(args.np);
> > +	} else {
> > +		rproc->has_iommu = false;
> > +	}
> 
> I think the above is a little heavy-handed..
> 
> rproc->has_iommu = of_property_present(...)
> 
> should suffice.. if the developer puts something that isn't a #xxx-cells
> -marked provider in xxx = <>, that's on them

Sure.

> 
> Konrad

-- 
-Mukesh Ojha

