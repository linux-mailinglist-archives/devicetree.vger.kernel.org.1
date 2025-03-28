Return-Path: <devicetree+bounces-161579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE7AA74A1F
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97A3917AA4A
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 388294204E;
	Fri, 28 Mar 2025 12:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="onXs0/Bn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55FE1DFFD
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743166316; cv=none; b=ikKwwCtA0iyLF/4dBg7Si8Iy5uGFcnv8u9fS0j0bsiyFf+UB9nNtbTe/y5/gWl/JvzPtFXCUdKqNDNRPE0us4JHfQ5i64KrPdBmTLuel1NvHlSpmjuZKc4LgbGWZuiRqJ/bAYHL7tYzrlfvVvPcaLrbdwLnzyzB+rakvK7So0l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743166316; c=relaxed/simple;
	bh=P51lyPtYIaWufS2PW/z+J76vQUqLtFOCmPEWcPktrGc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nfyCK0pp2QRS1ecrbFZuRtEHzPyuN+BYOKBzlIwJz6VnTZG9htuDcP3DnFcINFbBvcSvfCt/UVVdYgvfUCyOSXhfBupXj3leNP4uQak0QIqfbyarYruQyyYFn9Oj0z8Ac0UdSzsDYUEUHyKQcU64D0wPoLWlN+zDZiop6cR60sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=onXs0/Bn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52SB7CA3024727
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RYCw5PvEh9OU+l9yPIOtQ2j/
	U8/p+CNWwRWTj8V+LZU=; b=onXs0/Bnn5+srvrSsm8RWk7wW34c5P9SEZSLL5wA
	CoNqyBpXTAtgJhFunui9YHMYsPce55rjsy3fgOzj7ls8NDmt7jKQzTOVn9eygnZf
	JJhFdTVh9rLLDrBMND+rJ9QUYlWB9+FD9wD0AUwMLSKq9yjw+szeS2Uzix5Q2txK
	8pL+t4v0y3Ab7q+0Z3jQhOwlLGWsJAsnptdYK0CBYfhERaPD+g8D+gryqPO7kuE9
	ni8qKxqGIi8l3agKG2tqsIR92W3ex5kzB2mm4Kmm6bZfw+uushIhLbMToVncmS9o
	INPbz2XJ/vv5AU1U/BiWuWyPHSHYictW2n5nFG5E7rd7Gw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45njsc1rtk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:51:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7bb849aa5fbso444321585a.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:51:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743166312; x=1743771112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYCw5PvEh9OU+l9yPIOtQ2j/U8/p+CNWwRWTj8V+LZU=;
        b=NtNNkHczqDmLU6zHRnBuRcKclqtNBtmVPeQU2pHUmZfeBp8i5rDAHUfEIh1RsQEBMJ
         zYaZAkF0EiWci+G+zrn9qlNBEbw5+GNoA1EgSTLQ07CKVKOZ7qJOxb1npQCKx1FNlv5g
         juYqKiBvzPHGOdc/qx1K+BYfVTiNaibSeC4ZUEGIvMCMrQFk20DfD9xcfvEpPg6y5lDP
         W03BArK1maTJcf/Xq3KjMnE/G19usQCXK7aGGTq6d9+sGROWsyC9SU0ItKSOX46HIH2e
         RIFHtoS1uStouTZI0YvoG+TyX9EXACdJqb0Ah8df2lZQ6Fh5B9Ln+/wdL532MNGJQbYK
         xEcw==
X-Forwarded-Encrypted: i=1; AJvYcCUo0o2qn6iNoTGqlO4yXARXH2Vu5R4a/mLK3qzmff3QZq3wKbql5sdQX8UZ1+Vk1cawMsPslzi2HeGw@vger.kernel.org
X-Gm-Message-State: AOJu0YxnPUi6sehIlxmUNscdaHhM8asXX9YvcsrMVpwhZD+zbf7L+IMg
	4EF6vsn1gYkY9ZwO75Jl7XG13qybDEaplyF4sPFSu2mEfb8RzLba3G351GjH2/trZ5HJwkG6JZS
	EtHN8cwJgtiiQ6lLnpACPQ5XB7ZBKSF4sRV1xOYB8Qup+rJsy5Z3rKMNjz9VU
X-Gm-Gg: ASbGncuVQcfDH/VdiW3Br9EEyH61roF/L9deGSX8pX7rdhFFK5kHAI2g2Cx7x/AGBFE
	2zwGX5i3ahNzbLOr7uF8prlQNcewKTjG8+71uRp9Hi373ARVL04xElue2aF3YacTNad597u7/WJ
	VP8C2AZhLJzsB5jjYaBPZMGXXYuTedHDR+DRjWzUaOJ1M38NuJZTcgV1Nl8WaA8hFCZdXL6Yej9
	Ijk0+dXYe6gM+OgTnIvz90U+Pygd+lbHmgOkgGIhxDkw0/GUFScty+6uWhnThJueU23MDCguK7O
	0FetXTWoDJZMAJA2F6qYZLgix6ynWPbO3V2fdZOryRRMEiglPYHfDBUGnDslUniwI0j0z1Rf1jU
	V2Zs=
X-Received: by 2002:a05:620a:3946:b0:7c5:53ab:a745 with SMTP id af79cd13be357-7c5eda8004emr1119595385a.36.1743166312403;
        Fri, 28 Mar 2025 05:51:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLHWJDVexfcfN1+NGX3MiwKDhXPz98Q55VXKXn6p8zuyiPk/WOy8hqfdFTzfBTyzGyU2dtlw==
X-Received: by 2002:a05:620a:3946:b0:7c5:53ab:a745 with SMTP id af79cd13be357-7c5eda8004emr1119590685a.36.1743166311943;
        Fri, 28 Mar 2025 05:51:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb32esm300210e87.26.2025.03.28.05.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 05:51:51 -0700 (PDT)
Date: Fri, 28 Mar 2025 14:51:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        manivannan.sadhasivam@linaro.org, dmitry.baryshkov@linaro.org
Subject: Re: [PATCH V4 1/2] dt-bindings: mailbox: Document qcom,ipq5424-tmel
Message-ID: <ru37oebencfqbepop6ka5i2fc64ifk4nnwqmb4o52nwccpplkp@b7xxxpp5snip>
References: <20250327181750.3733881-1-quic_srichara@quicinc.com>
 <20250327181750.3733881-2-quic_srichara@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327181750.3733881-2-quic_srichara@quicinc.com>
X-Authority-Analysis: v=2.4 cv=fJk53Yae c=1 sm=1 tr=0 ts=67e69b69 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=1dbY3mfVnfLB0jaK5iEA:9 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: jcOZcUaGIjLJf6vJhZ8kuQxe1DfanPbi
X-Proofpoint-ORIG-GUID: jcOZcUaGIjLJf6vJhZ8kuQxe1DfanPbi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_06,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 mlxscore=0 mlxlogscore=858 clxscore=1015 phishscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280088

On Thu, Mar 27, 2025 at 11:47:49PM +0530, Sricharan R wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> TMEL(Trust Management Engine Lite) subsystem provides different kinds of

Trust whatever SubSystem (TMEL SS) ...

different to what?

> services like secureboot, remote image authentication, key management,
> crypto, OEM provisioning etc.
> 
> The QMP mailbox is the primary means of communication between TMEL SS and

What is QMP?

> other subsystem on the SoC. A dedicated pair of inbound and outbound
> mailboxes is implemented for each subsystem/external execution environment

Is it implemented in the driver? Is it provided by the hardware? By the
firmware?

> which needs to communicate with TMEL for security services. The inbound
> mailboxes are used to send IPC requests to TMEL, which are then processed
> by TMEL firmware and accordingly the responses are sent back via outbound
> mailboxes.

-- 
With best wishes
Dmitry

