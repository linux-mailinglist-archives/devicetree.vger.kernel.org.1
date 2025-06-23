Return-Path: <devicetree+bounces-188609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF57CAE45A8
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 15:58:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4C8516C383
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B1A5253939;
	Mon, 23 Jun 2025 13:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j/XkvTZE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64297248191
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750686865; cv=none; b=fEH3rIhHDWHDcHJVK5QWDvqjGCDwCHzSxNf1PGnsmsnpO+L6LqjGIkk3mywjZqOs1PcT+m+vDCps83ToFXhgY7/KEh91aifCHUKEIKgHVrM+nCvd0nVtVyJfwU2y1Bye8UP5QmAlMZhrknoAf0WrqpL1/IzadINgJJ6Mta64CnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750686865; c=relaxed/simple;
	bh=5UaWLeWfA2H3BSBC8mo1Q1o/t/JITNtEQ6bSv7COgis=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZpKnm7BKDKuWCAOEGxtjwJd9A52xIJu0YKQvqA+sFsAoqhA8zVyMl08ZqOl7n3c+8Fc+KMZAdM1+6hOFZ9stUqAKMjzUETmL/dfpIb4iVIzJ3zApzeZ5nw2xto4vEHJ1wNReYlVlC1XJyrJprids5WNHoJPnooiMPJLUGBApwU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j/XkvTZE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N91QjP019632
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:54:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rCjSuQgV2k3XZQnVF3MO5kvl
	tLvO2sISxvZYNm/MRjM=; b=j/XkvTZE+OGSvwP6sz7+kVIB//iRCIoX55EIfmRB
	AVZlY879uDe38R+NFHu0cYAWy5ru1/ta7YoroDhvcAkD+m0Y7XbaTyeCSQD/WZ14
	tsBS38BZUqNWImog+z0+4k7CYvX5gQVbXASWWwqJMdIOHzV0N3s5w0kOAme6uimS
	rLVyiGA+y2Sc/jfEv24qjx5iJ42i/kF+bUlzuzEtkUs2aBvTcYeS5nJ7yUc6jp5F
	L4DEkxEP1ZpI3giv9WVX3GTCmIZbqO9S8KsaC4iA/CVix8Bd5UkfrwA2gpW/hHCM
	oF9zinHBGHRgk1a2ScrVjV00/EsijDGnc/VOhI90yP0+Ug==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcmjf6v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:54:17 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb50d92061so61995216d6.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 06:54:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750686856; x=1751291656;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCjSuQgV2k3XZQnVF3MO5kvltLvO2sISxvZYNm/MRjM=;
        b=lNB0bYXugU9HFw3z6/G+mm9BvThrcHl/STfRduaQimog9Cbu4na3evP8HWYhpyprjk
         FPJgJ7IgSrL+LTuulzsczlzKjkIqWIinpgzQZnn8M+kclkAYc0GUIA1pkhssNw4FIqwN
         m3109FqSJXrdl8dnDNFRYlQdF2j77n1MTEKjDIGRUgiECJqIgD8BnDYJ+8SCK4EyuGew
         w4eWJhB/BMAGWtFX+MLlbpMTolJo3Erq9Xwnhp6Ch7t7mDXxp+3wU+Rb+LGmXJPbPiVS
         NiRuPidrchavKHTEJnTK1M0PRIxAA9MPmSWnMPTnJrD9s8w4jZnBfe10E3sMalHGVJsE
         3obA==
X-Forwarded-Encrypted: i=1; AJvYcCWohsG1URmR5ptjOH3KQUvz2WNFpxVS6fFqddbWApuGiFQCIIvlsICk607rt3jDLDxciakZdNDPUiR3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz48VCO0coJ5lCc4E2OuVgU9nr5X42VeIhDWTUEULanKnt87uMu
	6i29QrNTC83m6ADEnD2H0ZDbdDeQotSMbhSpR4oP6n4iA+4EzfBMV78TygESjWQcOOnERY4rk48
	EmEly3NHguv/N2F4tXVkWsP5gxWgJ3PLMVCXYZqmAtsXdxShwb2NlK4UtoB3zNFF1
X-Gm-Gg: ASbGnct+HDLlrv4f+LpST+rt11jhipT6iVL7csQblahOpjr4oq1oSZRrY5zaoEK1q0b
	o0InoFRsmhrtqGhuk/MBbk1nVWz1kVbYKGlOTdMhW0UxEPv5UxxA5GszR0zBs0MXLUFt5S3SqR8
	RqLDDpcYkRSoY+5wHhVxH13XXoH+XpDfHMGQVguPyNNsigN+q8VDuZQ8DjZN9OOJfKxSMdG62M1
	d+Atddy7eSm/6UPbjrT+avBUvUobyfdM0sDkrtlOtxEEHRNB1SfgtW2GmLE5y6nqyoGdiX43w9m
	Txv15wsTAzNgFTRFC+ZCag6v8ZJPkdYbpcQr7wiijkfmgyCHXbbsWT5LRQ==
X-Received: by 2002:a05:620a:1920:b0:7d3:c5b7:2511 with SMTP id af79cd13be357-7d3f9920e96mr2207551085a.36.1750686855822;
        Mon, 23 Jun 2025 06:54:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9qQcWJAD/t7Ve7pZBwfhZjG7ipvKtwIHDAMc1m8aD0vO6qb0UcAOpl6wYycIHRg7QbyXceQ==
X-Received: by 2002:a05:620a:1920:b0:7d3:c5b7:2511 with SMTP id af79cd13be357-7d3f9920e96mr2207545785a.36.1750686855360;
        Mon, 23 Jun 2025 06:54:15 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d1187cf0sm9480249f8f.71.2025.06.23.06.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 06:54:14 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 23 Jun 2025 15:54:13 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/5] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <aFlchcdWjh4AvWNr@trex>
References: <20250623105107.3461661-1-jorge.ramirez@oss.qualcomm.com>
 <20250623105107.3461661-5-jorge.ramirez@oss.qualcomm.com>
 <53aee5d3-ac5c-4f6b-aa01-9c2d5060b17e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53aee5d3-ac5c-4f6b-aa01-9c2d5060b17e@kernel.org>
X-Proofpoint-GUID: 8jzqHkEU2y5N-YCy6JFi__dY609yvVwS
X-Proofpoint-ORIG-GUID: 8jzqHkEU2y5N-YCy6JFi__dY609yvVwS
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=68595c89 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=JM561_q83E0Icr2UghcA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA4MiBTYWx0ZWRfX5SeJg2mvaG/2
 zEhTjydH6fkFqcz8hIuyBWd23qsBqLAoUMXtEBdQCe6DouyPTECspYUd2nfFFM1iXHDeF9eGeIL
 VeAKmieoopimDUdYTeIzMT8odO8mc10lh64XWPoWV0Vqpmbb5dNJzMLGIHlHTx2rLMvSREOnqgd
 AfYuyzXAdIsyymaFycP4lsFCSpvkMWU1IHR4G6pPq2CnAB02k7mqoPQ3TT+6XFxQhEFw5XREQlf
 T32PcXazpgkVb70BV+HVDiNrP9qnudSd5wHsDsG3kyJI38rnIgAaCaEW5J/fyiEVarWjRSEKc2r
 rBtVl9XcoRF6Z7kmjdnJk7IWr11SW6Wn9aBOO1LnMQ5oaV8pfbul5HkSsuIQy0jwlGyxNfX1S94
 D0kfmCvNxQysuUu3WECNG7mOdTcO17bFt1DoNSCIo9n+x3tc3Eey5RFg3OSvRTIMTg0asSME
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=729 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230082

On 23/06/25 13:51:51, Krzysztof Kozlowski wrote:
> On 23/06/2025 12:51, Jorge Ramirez-Ortiz wrote:
> > Add a qcm2290 compatible binding to the venus core.
> > 
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Wrong order of tags here as well.

but of course, this was not an oversight - I followed what was done in
some other commits (but yeah, I should have remembered not to use past
commits as reference)

> There is a direct example in
> submitting patches, so it is confusing to see something different.
>

yep I remember now when this was pushed 6 years ago (you can find me in
the patch - I was part of some earlier discussion on co-developed. ok
will revisit this doc).

