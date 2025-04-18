Return-Path: <devicetree+bounces-168507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC7DA93408
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 09:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46D511B627D1
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4106926A1C4;
	Fri, 18 Apr 2025 07:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JBcJp/FI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E371826A084
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744963121; cv=none; b=lmCK5ZGzb6NtTWr9o29nkfIgpSPgYsbQhspIu699cEROYt0LmtfwefAQlEo7qrtrh6E9OWDBpCMggGFZHV/cxoM5wj0VEm5XmLSH2b/gWWtgFktA6KjK2W2QVouKfWEJLphFz0B9jE1gcZ3RCtCGSrqpystIZRrVD5+DvGmiLGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744963121; c=relaxed/simple;
	bh=fARSdJJG6kbbQqqgn4KuyPT6X/EGeFSRTnd0k8SilKs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ueczttVjcG3qB2uXjRcOPSw+pujDMs/hdRyBq+Q2xmeny4rBWj6L6SPgL/MBygKx8zKNmRWId+UQF7Gr55eiKwwdM1VSytcmcgN6iH99r+WiW7KnTK58xUi98J3wS8va4RRJft0XvTxdbazX5w6dfiPbLefuuS/FIPgG5wOdD/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JBcJp/FI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53I2S6wj012576
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:58:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hfRGkNoGUk9HNvDqbo7+xdRy
	LyO8YJB9kT+PEFuU0jk=; b=JBcJp/FICmSlyfW+EpHC/D3/hScuB2JV7Sf2/gwu
	DCayC7f4pTY918p7lRgiXeJ/U1y4brz9FqHBWL4SK/sCtwQZHGIz86u6eu+fPiWo
	OL+FsredH2SDPKxqHIWY2v7CFkikupjYFBrA19wdxGWwVrmrdxuclgOyxTIOFIMy
	ieLSpDnFqHBQ6xx/AAnZdyGVXYcr1iL4bjzkO0k6VnoBPdD7t/9N0qjoPn02ObJQ
	sxj0hWoytdf94EzYuVUCCmBMDopy2TcIgta/+tCiQGPhKvT+GoT3SPEskQ8AUJVw
	4DcNVA6gp9dwqDVRXTnapMs8M5TNFOPo00RiLruP1dcSBw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf4vsh1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:58:38 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f9057432so29621366d6.1
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 00:58:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744963117; x=1745567917;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hfRGkNoGUk9HNvDqbo7+xdRyLyO8YJB9kT+PEFuU0jk=;
        b=l+gbS6/wcr0tacVhtSNq5YitvoWcIjRKr+1mvTkfXe9uiSRzzK30bxJ+YxedMzmf1b
         HaFNdoez5EwVv+MU6V3tSN9BVXM9J56TL0kJjYGJopW4I5Mg4PzhlFyEbP0i3c0IU3OA
         VWieY6op2FI0QnTjwCgQCrKhQfy1eCUCb83eHcE7X3Kk+3L3o+1D2V/x0hkaMSXdmbuy
         tCt0vmV9eYDKb8fGHMW4KebhOYWj/7/h3rIbiK1vDrs33sMN0P4ExEt5OOOFuHnNVBjw
         rSfEkzKoTBEf34sHhfAK6XQr8YppvTYsuZ1/HhTv30F0VWRfI6dzLJjyesMwaQRq3O2G
         DQwg==
X-Forwarded-Encrypted: i=1; AJvYcCXhqflI/6+wY+guXEsRucV7uOsHnf7vUEvtmcVZkDxjfmrS/4/YrNrBGw/1z/Yow7NkgeJDwjq8aoIu@vger.kernel.org
X-Gm-Message-State: AOJu0YyPgpqBXQ8OkhnoXrF6AVOXlcuaQyAdUDMNxjTNCGbgVvTaYlYE
	Jab2CKALFKT9E8YO6ZqFeRjULd10S4aTBabDCZHjIRiL/fWRTI/ms5FiBBEfpIvQTH9B7BNDFKE
	0Jd+2Kk9cJeooT3TiwVliMNaJ6pLOBICGEg42/oaiTfYJIzbg6TpAQh4swqKp
X-Gm-Gg: ASbGncscf8+eJujA6AeJ0lnbcxZWhU6mvm79Hsp8LZnDFkR+OB4e7qZu0Gq6VWjokIP
	EZ0/y59UIyEsFTc6Pfa9iaSYTasvLDWZ4wmNR6Uz3HxS03HbhY8M2EtdQrwXJJa4/FnxkPTfm1o
	rKwqi7JNiAx+RMBcDzQdzVgjzwoyUDLMPaxp3oh3UAYMd8PIJbTqXPyh1JIOhobqHOi9qBjsSm4
	LNpQXa/zpZmR1vIHP+C1lMdovRwEgFYNUa+OsbTZ3J5zy39AjSYEMfT3wMyUMfLYTqIVEvabUy0
	8ljmDaMKz7WQSaEceLOqWhcizJBPl+iSV6Q+T6oWlvqRLY+1ZJ5pOqrAjyk0se1q9KaOoTbgdCw
	=
X-Received: by 2002:a05:6214:1d23:b0:6f2:bcbf:101d with SMTP id 6a1803df08f44-6f2c46789dcmr32446456d6.38.1744963117563;
        Fri, 18 Apr 2025 00:58:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVYesd5y2m/S4yt3tHCl2VfUTgzR9qu+MHCZFBeg9JiXQF+3hi0WU41kgPYqtPNEIZRIQLGw==
X-Received: by 2002:a05:6214:1d23:b0:6f2:bcbf:101d with SMTP id 6a1803df08f44-6f2c46789dcmr32446326d6.38.1744963117256;
        Fri, 18 Apr 2025 00:58:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-31090827009sm1551941fa.82.2025.04.18.00.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 00:58:36 -0700 (PDT)
Date: Fri, 18 Apr 2025 10:58:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ajit Pandey <quic_ajipan@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm4450: Add RPMh power domains
 support
Message-ID: <osuaixsxxzyeahexfw4dd3dkflh23tduihh3bqgb5yfvmeq3uz@366wnaqg35va>
References: <20250417-sm4450_rpmhpd-v1-0-361846750d3a@quicinc.com>
 <20250417-sm4450_rpmhpd-v1-3-361846750d3a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250417-sm4450_rpmhpd-v1-3-361846750d3a@quicinc.com>
X-Proofpoint-ORIG-GUID: aEQeakinzKeYPy77vOeUjSxWJU9wmR7G
X-Authority-Analysis: v=2.4 cv=IZ6HWXqa c=1 sm=1 tr=0 ts=6802062f cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=xdgr2bMqYQ8o8XjBYhIA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: aEQeakinzKeYPy77vOeUjSxWJU9wmR7G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_02,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 mlxlogscore=685 mlxscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180057

On Thu, Apr 17, 2025 at 10:37:41PM +0530, Ajit Pandey wrote:
> Add device node for RPMh power domains on Qualcomm SM4450 platform.
> 
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm4450.dtsi | 68 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

