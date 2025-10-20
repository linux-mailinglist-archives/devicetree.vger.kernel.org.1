Return-Path: <devicetree+bounces-228791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB94BF0BAF
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7166A1891A63
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616662F657A;
	Mon, 20 Oct 2025 11:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HUEhM1CI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF62624676B
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760958425; cv=none; b=D8dzdff7bkb7Li1PjkgxeNLg4Sdb6CGWqg4koi+udX2uAtCw2Hkh7FQzBrGjLZKr+PGg9RvnFSY5t7TWeGHKPlN6DGCr0aFHTS2sqj5li+2ZnbrXjlyMfQp3uCx+8K6wns98yM98KgkUC+SXkUA4h6Ow4UHonUjbNKyuNMZFD9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760958425; c=relaxed/simple;
	bh=gnjYFPak0EJqXOMJIeFPWg6gTRvFdpKtV12xixzFsEM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f2tEFh6FSgl089CXKzQqTW55JCyBnMI58GTK3dWbYR7on1i4DR+sSJj6as+87i6tI2nRvrSI6sMhH0YF/fJ9BeQYwhAndv7im/SVh+HaMsFTyE9kE5uWJ26uY4vI9ARJXKXeUrBEY65OH59ggCCWCoEokb0Ulz0PT+GMPnFJyu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HUEhM1CI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JMfcZo001706
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:07:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QwARkMhltT677TdXPdgdzsla
	GT8f6DdXmqDptEd8yFs=; b=HUEhM1CITXNSzgZSNTvZk88Lf1OMEyCK4UjBkM9I
	r+CJR9t6zTVN9jLM7pjIWbLhmbF5urUlyJpQl/nEnyO7PE0z63QO7VD0lQffU16R
	gIdXEK7lMVY6wv99FjoVyLq056HuOsjqNSxG5E7ANSQwsZNra+5WbwyV/LoKCuQ4
	F7RJB2RfFG6SLU/kmzF1fJObkCak51ulr3KaNvkXPd44RYbOIUMiFKJVCi6HAAF0
	D8YA/EqCQ1kDoRhwlX/VZbfD0JlNepXBZqcB6JIdFVlWzkf8wrAOrpxWwmW/dR/a
	8cEE/ziyPWDnsWN8tfK/Juvt5witnHgn9fJtE7DE1TvnIQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08w25kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:07:03 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87c1115d604so179097036d6.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:07:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760958422; x=1761563222;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QwARkMhltT677TdXPdgdzslaGT8f6DdXmqDptEd8yFs=;
        b=U25UigtPhtc9v+M8pCfLIrBYmX6iSL9wyryLQkfI1HY4EhE1Qr3rqALIaqAVenAHc4
         +r/IFcGBugBFOnlHiwGqAfMoU7/Cb+HX9Q21brCBfd5PzVOxWv2Hd9JLtfGzMzBTshTf
         N2vbuMsant4LOCrJwTnwaCRlUFR2SpkH1LTOQpuGNAZqUieH+EMBVdeuSPMtLUdgDmQT
         jR/EqVVRTHZnx4SO4I6AZEzkeviBwZ9bS3HIgDzbr7EFbV7wpFDdARWJixRipsvl41wb
         0VnW1tUzBb5MeSuKNOIqeTwg46++tW7SHjjpkKpk80sClyTNXa7ixl7xwoUVDlkH3lWH
         8YOA==
X-Forwarded-Encrypted: i=1; AJvYcCUIgLU+QFpW7vrq70LqimQdfr1pwk+LwcMZmBD5qjuoqdDnrUj9NCKsL+WLe7RDqiX36+JFpXWCxHT+@vger.kernel.org
X-Gm-Message-State: AOJu0YzUV3EBINI9OgK+R70BOCbH3hoHT96+xTjk9QC/U19iwgxaYsmY
	Gndv1UCtIqAHcQe10pi2a74/M1Eq2wO6DOWLzX1vtbYmFNDf75iLk27Au2ApGPxwd8nXeqJTWmt
	dkvdL3tcWmmlDGB8ooP2volLOlnRKqvhqZ09xl6lw8GKdR7j/ghtP/Z/cszAifxeq
X-Gm-Gg: ASbGncutwZKRujEKRsvheGfk2CC5Df5JqaprdnC38kezn919jbAiocFLaF9smplUgxi
	426rq9SffbIZEbC2Kac5EgHMF8QaTI9drAGUdFLKOAF4pFS+MduGBqdUBl+grkklHIW+ypm55EW
	bpS2PbeSYr/7Yv89VR5/mhUdmghw/KCy/bIix2LKOIlpMzZYxEDJtJxYZimIpnrCL6KtY3HqdkH
	A9FilfY4dqYIoyGIO4Cz3HrwFAAAZRzXFwnVAnMiAx3ltH3LUcKlZikIW6Ka/psnP8Y9TlICdTm
	KegzIEZAscDkKrhPmW+z6sUtenWZyPHTRDUP4PYv4bl53E+2I5gSnA3nwwr4062lmff8p6hmEaX
	CQvq/SaB95UKwqgLub34++KwjlNfNS0lj7pYpxv/J0uPgcIkEd26yJltwdSPKmeDyInXu9Lw2mK
	bRd/Obk9N4u7Y=
X-Received: by 2002:a05:622a:84:b0:4e8:b270:aeb1 with SMTP id d75a77b69052e-4e8b270df4fmr81413301cf.52.1760958421846;
        Mon, 20 Oct 2025 04:07:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECGSfBuSQKnPmaCRmRZAaNbAZ4uXKdc3BnEN3QaNW/fLebd3lRA2J85RGIO1q+4dVSjU4yrg==
X-Received: by 2002:a05:622a:84:b0:4e8:b270:aeb1 with SMTP id d75a77b69052e-4e8b270df4fmr81412931cf.52.1760958421385;
        Mon, 20 Oct 2025 04:07:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a921e3c0sm19964621fa.23.2025.10.20.04.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 04:07:00 -0700 (PDT)
Date: Mon, 20 Oct 2025 14:06:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: lemans: Align ethernet
 interconnect-names with schema
Message-ID: <ew3x5kajsb4keyj7umnzsid7ltdveumsafl72vt53iaa6rz7rs@sdqy6pmfigzy>
References: <20251020-topic-lemans_eth_dt-v1-1-25f4532addb2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251020-topic-lemans_eth_dt-v1-1-25f4532addb2@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: M9xpgXjVGW_HBHVRFhRJbiDHelC-iRsD
X-Proofpoint-GUID: M9xpgXjVGW_HBHVRFhRJbiDHelC-iRsD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX8duSnH1Ymaql
 HgSRXpGXA+zqSCP8P6t4fc26ivbIWUT7ccl+Neus0Asr2YwVBR/se5M/kLODyz9Egbk4yrP8vId
 6WtUHoPoIGgZ8RPuNnWUcDtdzlkiZUNelbdJBw9nd1qY0L88xREf2WguHRbTnPRuwVi9nYisK1e
 IsF8TN7tletSdc92yfHUey5qk6wPl8K7FwR9QDj7uXafqhK9Ahzpx0nTB8HNFIUALD+ooZ0qG8K
 8V9JjnB4k7j7t/a1OtTKv8rHWcRSWkIZaMNQlkrusOM/lSBooDW0EELTtX+TdNWZgmcrAdh7MKD
 a2whH8TktwDV9yXaRLi8aQMBbVYRXGob+VxZlR0Gxg4illGqFdJ6uf4uok6PBHpqEH7y049ZY2R
 tiLoQCOj85ZLV0yq7hZSEiW2EKwwKA==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f617d7 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=RIJzAXRtEeeaT4_sP-YA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

On Mon, Oct 20, 2025 at 10:31:22AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Reshuffle the entries to match the expected order.
> 
> Fixes the following warnings:
> 
> (qcom,sa8775p-ethqos): interconnect-names:0: 'cpu-mac' was expected
> (qcom,sa8775p-ethqos): interconnect-names:1: 'mac-mem' was expected
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

