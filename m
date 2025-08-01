Return-Path: <devicetree+bounces-201236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE8EB17D8C
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 09:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A82C1189E1E1
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 07:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30D0223DDA;
	Fri,  1 Aug 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O1uFdYDQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7232222AA
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 07:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754033333; cv=none; b=KIcuPn+VG0I19XODh1dmrBbphQeci1JoIzWmERQlchZscTm22RSnhKdXkFONCDPD3H4IzLqG0Ju18yVFcGX1NX+4mq8zvUrU9Oe0tmRB0dNBqWdgvR8Yl1rs/SMJUWSmE8RntCCL38CDv3eAXN5lCpc3x+TTTn417RAsoyEXHvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754033333; c=relaxed/simple;
	bh=uje34Clhxc9ed3OvxabKenVPdmt0CPXcdy8D3hIZoOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RCRyUnrGq8xSZEG1sHt+g6YfAvsAbRMIMA6KQ8dqh7Iqh/Ti1ITVfSI3rgMfgpE1/Tr2z08k5yDbyMTWqJuF2a9xX/o3XGMaHB1/BfLXLPmMOA5pGp8r6QOLBO7eLXTsJj+z4QvuMyjO0O/YG8yL/IPKjKWQcAyppUsl0GjAvHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O1uFdYDQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 571102Sj002435
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 07:28:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SEaURvMuhrpISmuLvcJOsmjb
	sYKo7gxuFeBHJJuHpIs=; b=O1uFdYDQUFjkt3tWSJopVDpW4gHMl3YUg3/ZmnCp
	vyXVwxKHRaaXtxLH6QGyC5SsEg8RstRJXYyDchnCnX2smDhEwBg3RPBb5kjbmODF
	OiCvdSTp261A82wqCsLMdQ3VjSxPY2F405rtwCCnIjInzuTxKKzc5HLFery3SBRf
	01NNE2JjX+ItOyjW8BA3LKPbAC4t1TdLDI9oe2zc9t4Mdnaw0WGFMKWGELFQNmto
	J+xw8Vd6aenmrluBIVwcDNNssypSTSLQdsPnq+5AQLb3CNp0Xez98GyP5sK/VJYg
	7MKH8I4z58tHQEmW5FjSHVbrXWyypimjJQlop4wseOFR3Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbmanpq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 07:28:51 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-707722d08d9so30486006d6.3
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 00:28:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754033330; x=1754638130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SEaURvMuhrpISmuLvcJOsmjbsYKo7gxuFeBHJJuHpIs=;
        b=OlujMQ8ttacBn8G/nJ1tiW0gc2+bbDDLQht2hwUlv22KjfQnmfirecVRcYcKNQAogq
         d2Qexkj4YcuHOvUhnppxID7oqxpP6gIwQKL3PKzt5HkJXU7OkF94VlrhczOQlXSxW9oz
         uL4xOcTTILDIQTmScXcDJVd5Bu5iOgpRQg2Uom2rIr4Lh0drZk9e0aOa1/yOHjpey+LL
         Sxf5QORdc7oukm9oSxWRCPizm9hSuoOaYHdeGMcMOAm7FBUyUmH2lk98S/SKIKKrDfuK
         RXhleK5B3Nz6hcwRbK++KqTPmQ824SCN9xtv91AvaMAEokddR1zOsnPo5Z6z5c5NhxtZ
         hgSw==
X-Forwarded-Encrypted: i=1; AJvYcCWaFFIEyixvcGeyntxQr6ceZcUBdK9NE4qpyudg18v69nZGetISALuGb39rHa8e4bL+YxyMcbov77/1@vger.kernel.org
X-Gm-Message-State: AOJu0YwjvZf5SIpzyBlif+cqyX/U6zE2zEiuoj9cGv2l/ZLnY0gB0XVs
	drDU2ywZGh6m1JTxwCV/RcBKebt3Dc36XhykK0Z0yOfJPHcoi3T2p2ax5t+C3QX9zmkZmiCQmo4
	yp0XDGdVnuGCKLPNvbMdL0Ny9MKzrZ5kYLS7CBHZSy2WxszPtOZVCCoZ1ZiTp/sBq
X-Gm-Gg: ASbGncsoWzo6lWGX19AYkReZjs2NSqa8qyO77DXyx5HtzOWdZn+jk8sgU4LIsYv6fP7
	suBI1WUb3/NrpUFv3FCrM5GwpnjspHB2Suz4C7hnQKLlRb5b2FwgbbIQyYy40f70pnVQahYg7TP
	iY8Lhhg9P7/+fq6dgaxwIK6wm9gWsjOxpO83XdH4gkZ2f7AxQ8ZaEVbzmG9SomM5Bf7UzLU8pq9
	H3mnrb/IUmV3wbR5q62TycvWh6hdufhhiMaD74q+a/O8Yzc7cANQ215utY+u9piJ4PkDsXf8p5S
	imanv9HNnpZ4LRAo2++9MEvgNl68fFDThuD52WKlS3xRHEBAwtM7edb4ZXHMDVh7SaisdcTA7TK
	+14jy/BELOZR5a44GgxRWIUjP94OwpQEiO12HF+9mgucCF51lWO1E
X-Received: by 2002:a05:6214:5014:b0:707:5ff2:ae87 with SMTP id 6a1803df08f44-70766fd9ee7mr145991216d6.18.1754033330134;
        Fri, 01 Aug 2025 00:28:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrm4INQ8xRvxOiPxAKfgqSB4rKDWYbtrN2Ds4wiRVfGNrMLXg9m6Lrslh3Tkn/TEPfHOs1iQ==
X-Received: by 2002:a05:6214:5014:b0:707:5ff2:ae87 with SMTP id 6a1803df08f44-70766fd9ee7mr145990906d6.18.1754033329694;
        Fri, 01 Aug 2025 00:28:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898becdsm489500e87.37.2025.08.01.00.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Aug 2025 00:28:48 -0700 (PDT)
Date: Fri, 1 Aug 2025 10:28:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, kernel@oss.qualcomm.com,
        Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/7] dt-bindings: clock: qcom: Document the Glymur
 TCSR Clock Controller
Message-ID: <xkjmukefiaiect3x7b56dsn4zrddl2fvlgqtfa6yelanak4tih@owimyvx5qlf3>
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-2-227cfe5c8ef4@oss.qualcomm.com>
 <20250730-mottled-myrtle-bull-3ae03c@kuoka>
 <9cb06263-2a61-4acd-a9cc-157abb832d62@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9cb06263-2a61-4acd-a9cc-157abb832d62@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=688c6cb3 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=6kVuSvOnKxEqxX6I_6UA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA0OSBTYWx0ZWRfXwi/A/nYVt/nd
 6ohqzCUsal1yRS8DrzkfdTGYe3mUrYYWCiEu227NN38xKNsRFVUTPtwaVm9e/qjG38pDF7zOMRg
 TrFV+fGQRD9oNdnJilJ0tNuD9x9XV2ksrdhJC4aVWkGtXDoB8Yj5zrM2I9gnzZ5vRiW5+8bRgK1
 9DO7W4IgLj8yO0rwUFmzzw9suzG2fBlGtEy0f9E1z8XIzlWI2y4jsJzay3yLK031xyxpP5i5BpB
 nRTKKZKGeds+hJ6t0QnAiHPLrNSS6FRdE+8tlXhKFobIerrdVYrb4w4j9QbCVTUq9DKWTmdOIb6
 Z+qeBSL4rtK46M5ITXKuhWP0NNb9GxjNA8t/IwW5312vKIc58q2JqGls8sKZywuJD9YkSd2RZts
 WO9/K4Ur/BmGldwS3r+Ygl1MvagrqpN+K+wppYrdDMa9oxqCMeC4Zm4UYQyNZhWhl6WlXCaa
X-Proofpoint-ORIG-GUID: 3kSb5P2QWOCoLkyf4LUxP9bOZfKFEeRq
X-Proofpoint-GUID: 3kSb5P2QWOCoLkyf4LUxP9bOZfKFEeRq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_02,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010049

On Fri, Aug 01, 2025 at 09:44:47AM +0530, Taniya Das wrote:
> 
> 
> On 7/30/2025 12:47 PM, Krzysztof Kozlowski wrote:
> > On Tue, Jul 29, 2025 at 11:12:36AM +0530, Taniya Das wrote:
> >> Add bindings documentation for the Glymur TCSR Clock Controller.
> > 
> > Same question as for v1, what is Glymur?
> 
> Glymur is the Qualcomm's next gen compute SoC.

This question means that the 'Glymur' name should be explained in the
commit message / cover letter.

> 
> > 
> > Where is any DTS using this (or explanation of lack of DTS)?
> > 
> 
> Krzysztof, the DTS will be posted separately once the driver and
> bindings are reviewed.

Same here.

> 
> 
> > Best regards,
> > Krzysztof
> > 
> 
> -- 
> Thanks,
> Taniya Das
> 

-- 
With best wishes
Dmitry

