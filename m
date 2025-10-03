Return-Path: <devicetree+bounces-223597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CEDBB83EF
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 23:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A36F64C14C6
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 21:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB68B2741B6;
	Fri,  3 Oct 2025 21:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CPj43sYu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46184270EDE
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 21:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759528583; cv=none; b=OxDZZYTofFfz6i83E8J6OmGc6T2jM5ar6k+m/O/vuvX5aJL84r3FRkIQjz6hBWzLMqNhEKQRNFzP43vdvi1nCwLF797JYoB5HT30tkSgfuTDQLvDWfVAAEDkpvCnHjvsnJ3MQJwBwo7xhRLkaHYNGQHIBEFVGlMzgAuTgWkkQHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759528583; c=relaxed/simple;
	bh=nfvlN7UkEb0nKtNa+S+QZmXeylN1f1PtuROfmyWs9K8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ha0jd4g8qCbDYYuCK09vBOZr4zMxKZ2l36nmE2kVVJRvwNdOhsYSIXC8cQPRjpslpMEQKf5qLBmQB2Z4+RUQbRmDG11EbGblfVqAhw9jMC89eVtkzbZahxoA0Zt0N0rtJtcT1R5sEmUOSvKp/5J44eBPFruFza7MUYv7Qyjdiyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CPj43sYu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593D0LPN017999
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 21:56:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VZ6THAdlV/2oZwMcMAMqnt7w
	sTsjumTkUR0dkz23Wf4=; b=CPj43sYul8guz+t4yr+JQFycvTuXMbn4d+gOcKDP
	5eGOfSe4ZzhX7rnR9G+d0tz5TP82DfkcieYpkytkmcIDX4MZi48C9v1xOKjdXD4P
	lEBEyD2Gd/WFwyeytUu7/lbCoYs9LIPciQOlpiWdT2a26xqHzDu2sUYoIwM36tYP
	tmnjLdzW3EjB43AUmXzVryCYavzIdfznH3SzNPzfTDMoA0yAQaXSdK/+2vI4zdTF
	puru2U12/gIuLy2lpMdlXJlXjonYQsDiKVGbiNLb+ax4DH/agEPbMN9atAkZ/kl/
	dkm8qisHuCz/51HBOooL+XTlObWlNVyUjQ2dlrm5kqXgXQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fyrfdjtv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 21:56:20 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78f6250f0cdso54620916d6.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 14:56:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759528580; x=1760133380;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZ6THAdlV/2oZwMcMAMqnt7wsTsjumTkUR0dkz23Wf4=;
        b=RbHM8BKNOmHShVaTafGxaZHZKBqOuS8O8BdW0bSBIIgdlHHDKxqQ8LXETtK1e8YzzF
         Aw42XMSNd3H25XfwR7NoLy3GE3nbJ3gUcIQHqtLo+vOW/QkOwy+n9i3ZbQ9wW3nDA4M7
         3s4uOQXTjgMIVwgfw8qmaws5em52TreHKV1YwZECKu6sFlOgq4hLRQJeWKMVQM+Fe3tx
         SF7KTVor6uaHSdWvdAW9qtN+pJiVPlLNT4YTmS2zz6nYCL1svOgjkoOJEG6U367cgoVS
         xmZYmTP3D9HTPuyWf4kjxuZOZxhi+iOchiMA3xFIIG1mflxTWQaMedYVY7wn0+t4a6tf
         G0dw==
X-Forwarded-Encrypted: i=1; AJvYcCU+vDZGgi9hbwXRZl+lClZYYs7egP4qwxHn7+1giLmDkKJylHTZRc0J2NAXNCbuMCTroN5RTGtLx/cX@vger.kernel.org
X-Gm-Message-State: AOJu0YzgFyqaVA6YljvvWPeU4u2NKW7Msw52nCAhxxi/MuA9UD1Jque1
	HwOC+4eXG5nqWeDNtbjr7dKBwbWdQgeLi5SwSd/gueQa1+zwfxBjQsD+brH6f5Xo7rEWCcsfJ6W
	N5XOphTwTZmLp1z9wevQeYHtH84vgOQ6Kpgj+3M9Nz7k8sGAZHuwpHOlUuviQ4h58i1AeRFlH
X-Gm-Gg: ASbGncujH2OZiysTvi5nBJ6VKOYQZWScsgDDuDWnNOoduf9O1s4wkIjUSkVIdF6QKLQ
	fsH9dEynVC2DfcHbJ0MpErP3OCU8eCLtT8w6ckH20mAkV4XkY52xGIoUNBtXbgZiImMwEIZMATL
	mp/e0wwbUPgVVIWwuPjqRH44lQlHon9Y0YCb3T0GK3jGeSvuTnfhvBHzx7FAiXoBX3c8PT0e6dT
	Tt+2BIyfWhP+HyN0WZl9jZJd1pmVHb0sk2diUgmMWTb/XMphd63LryH11jkq59n1uy5+XTaheGk
	O1CjKToXBaciDCjFj8voF+6rqxZsh2+kzeJ/N2JKplFOoLTaWkKHP9fKUCbwMLR02VLynbdE8d8
	gBjaF8ud7Ut3vOMGWR5Xl4ymN6sUYChJ72PQDFc+3aUSnStdIgum+HoqOLw==
X-Received: by 2002:a05:622a:1113:b0:4b6:299d:dfe4 with SMTP id d75a77b69052e-4e576a7eb77mr62757561cf.32.1759528579646;
        Fri, 03 Oct 2025 14:56:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEV+3BdKX0PD5OIi5Zi3YgLxtsWp/Gk+LWDDE0zSja28BemaejJGH9owPkl1jZO6iNfl6UQg==
X-Received: by 2002:a05:622a:1113:b0:4b6:299d:dfe4 with SMTP id d75a77b69052e-4e576a7eb77mr62757221cf.32.1759528579043;
        Fri, 03 Oct 2025 14:56:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118e04asm2179885e87.64.2025.10.03.14.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 14:56:17 -0700 (PDT)
Date: Sat, 4 Oct 2025 00:56:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v3 11/11] arm64: dts: qcom: sdm845-lg-common: Change ipa
 gsi-loader to 'self'
Message-ID: <g3p6yi32y532tf4luuzew55s2qjrlozqyggm22sog26oacskdw@fovj54wqxyan>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-11-b14cf9e9a928@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928-judyln-dts-v3-11-b14cf9e9a928@postmarketos.org>
X-Proofpoint-ORIG-GUID: bYHF612QOKawuT0XCxdnkst3uUs4A1Pv
X-Proofpoint-GUID: bYHF612QOKawuT0XCxdnkst3uUs4A1Pv
X-Authority-Analysis: v=2.4 cv=etzSD4pX c=1 sm=1 tr=0 ts=68e04685 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=Gbw9aFdXAAAA:8 a=v8E5xubLk08JJH_buREA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDE3NSBTYWx0ZWRfX0AfsbKGPQj2E
 Ss/YsUWnaxJ0CnnZy1EVq0v/I4x6lqOGondsDoVo2YZBuS1vrJ6MvKSEx6k0URDxvZZtVgaXQsT
 EdYN7djtdMI1BfcRlc4qaHUZ05jK+fgrzOndJTeriQUD073o7r1w4L+PYdO3kBYImoRQEcMKNqp
 mtOhHZ081OLASFdqMF1nZGfye23y+bs1cTg1dBkSrz756asGqaCx2JMPPfsVwwIBriGRdq+m8gz
 mxrxR0aIMlxcZtjsoK5XFfNgZN6iubo7jRLL2xCKgJoWEgGRq7N/SVc073GimgoAPB1ifgrduIe
 bK2XexkkDnMMcFfUb0ZtIRAPeMJg8J0ZWJYzquskiwKBmJ+EnjiM8r24F/4tVcap06qFtvKkYR/
 bBUkg1TpREby46DgvLsrOiPDFFuTiQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509290175

On Sun, Sep 28, 2025 at 10:05:34PM -0700, Paul Sajna wrote:
> This lets modem get a bit closer to working
> 
> [   15.885735] ipa 1e40000.ipa: channel 4 limited to 256 TREs
> [   15.888550] ipa 1e40000.ipa: IPA driver initialized
> [   21.038968] ipa 1e40000.ipa: received modem starting event
> [   23.097401] ipa 1e40000.ipa: received modem running event
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index f309e6ebc075a691c7a522238b4a93ba9e63f3c0..898f87818d3d4d028cc762d7ffdf33b3c2352c92 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -484,7 +484,7 @@ zap-shader {
>  };
>  
>  &ipa {
> -	qcom,gsi-loader = "modem";
> +	qcom,gsi-loader = "self";

The commit message might need to be improved. The patch itself LGTM.

>  	memory-region = <&ipa_fw_mem>;
>  
>  	status = "okay";
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

