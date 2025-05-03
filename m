Return-Path: <devicetree+bounces-173241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D978FAA7E79
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 06:42:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 606DE5A524C
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 04:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A1E6192D70;
	Sat,  3 May 2025 04:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I7qD6pBc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E6E190067
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 04:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746247325; cv=none; b=RhjpiDYwAjKLGbfpoWA0atPqIXwMmL3XePpjyJvzjkj9iT0Nwt2Ct8YUoST3F73Y7ZFeMv50DNl+V200B65VPPXhUiue75je5YSWPWssRjwqyEcljVXgK19QZpYm2B7dEQHOimrcE68oPf7AXMULCWy+89JFTsQbmfTYkTu4O4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746247325; c=relaxed/simple;
	bh=hTnfyiZ2cUPzYM3nK1hIvjQ7hVwgJqsGscfrKpVDqGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aQGhF39++2tS+LFsqDqpyCuqtJIYx1UWAoFZfkDvN3fUs+3J04+nPmCNtBbdOsOsJT7OTx2rWnvzsjXjfrXC2rQU6cQ9Fu5Lb6+2CYBcEgI6Mfo9U2MQPJZvABDJVWGlXvO0zpS66NVq9/mSydW/53fg3zjAV3GLzRV8rwIcvQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I7qD6pBc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5433cZO0008490
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 04:42:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FQMLPON870FXgx0xo2DcGcx2
	oTDkSI85oPnoNhn08Ag=; b=I7qD6pBceWUXkppQQ7aYBdquC21FyzdWf+dtBQT/
	kw6+OPiJGHZnPLuP7wHfXC37gboS70UNuQTYQWQj1KJO2fbxxJDPFpYcNhLzl78U
	4fcUof4mhzL4Z/3uKlUOzT2jqCe2q+kGoNx/BL+MMG+jRF2pYgDR1anchzT8Mk6D
	64jYKRvA4aBEWOzGwHzzXCcsutG7KXw0wKacsAIXlcSWk7JgvOLHesG05kzjPC77
	6zLnxozOhIGGLgzGLkB/rTshcXjtwgIX3B9xvg0zSqw47Joa2KNRcpdjl5T8Kac4
	aJ1biqQIT13E4o4Pd33Jju1PKur/3BWBU0pp4ciqAR6xDA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46da3rr5cy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 May 2025 04:42:02 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4769a8d15afso44105501cf.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 21:42:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746247321; x=1746852121;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQMLPON870FXgx0xo2DcGcx2oTDkSI85oPnoNhn08Ag=;
        b=MJrvKL5cje1vRj+guMuAiQB+QiEezAG1lGgz2PEd/VRNRBHOJtWQX+sv1QFj8pAil8
         2V2vdW9exiEhlvyko+yX+FAA1jkJC+ND8a6RIR/xnTob7BgrEzQS8rcN4s009PRusNxQ
         5mMYZ3EssLBnPwWC80nF5MypfiU1E8wFntyrin3vF3Tc+4RnMhZPySA4VjtH1j+N3Vmj
         isQQYv06kUVG8znfnUb7l5Ppwb9mK3i76Eh7EAvR4eOsYl0OkPYZ2QIAiPA/wiVE30fi
         HsKXk1/sKOaXSRuN+ZatyUHxTewnLDocrgUnVn468qzJarnvd/r4K7JXMjQe//sK7Ykg
         UXAg==
X-Forwarded-Encrypted: i=1; AJvYcCXHol7ra0O3epgP1vv4qwLX6HOOla0pMzD5gDFuOWFLYY5EThn2jW8NnYMw3f/H2mFceRKZFDvh9Ek9@vger.kernel.org
X-Gm-Message-State: AOJu0YwoYSrO/j3Efg1hzjttJRS1DbnsCZqyEUEAT5yZowcHJFYoL/9Y
	NcIYR37nuSdephFaDv5L9Yb2ohSLrcx01igHZ2WyTivtjx92IJUwGA/eCBO32lahx0m4OXf7pcU
	IFCozEr8ekFHKtOuiQtNOBpu7fEUkk8kqAdWMx4KYRklief6UcIL2B4fU8CKDdxhPorfSVwM=
X-Gm-Gg: ASbGncvBHgXzw6jl/t7gJbTPlE0bIGFOUe1V9fMvRB8mfcZnc1mwr0SxkveO27k0nRW
	nyKiN9mECuDL98bD7GvxSlfg6a8OJMVSgK4wVDs9KHrVfeAwq+iPIiBdYOlg22kB8sKSy4skSSJ
	8dpJdvDnOo5QvBcPKDWgTdpAryqOzwR/AiFb2rnIFjV0Pb6eMWCVWvFus/U2/NMLej+MV2CufPR
	GUK22kzRBs+iKLhmKUsDvsx7RsBiJ4g+gQ61sBNzq6Ak04ZaMg6MPaZ6VW4fbxb9NLIZQE16fLs
	MP4AFzsJnOqBIqxR32GXTShlpU3GmLenP4UCDXoFeO7QUl3IqBW9qcN7DlU4ZpBqBQb2v/VqZLI
	=
X-Received: by 2002:a05:622a:6110:b0:476:7e6b:d297 with SMTP id d75a77b69052e-48d5d6e92e2mr27117011cf.41.1746247321099;
        Fri, 02 May 2025 21:42:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8EhiCjDNNO/uwSIfsGfYL22hzcntZSkFEpC4Jvq708YzrvTHfCEi0esTQo4dgUDZpM7GpBA==
X-Received: by 2002:a05:622a:6110:b0:476:7e6b:d297 with SMTP id d75a77b69052e-48d5d6e92e2mr27116851cf.41.1746247320782;
        Fri, 02 May 2025 21:42:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202b18e625sm5826381fa.114.2025.05.02.21.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 21:41:59 -0700 (PDT)
Date: Sat, 3 May 2025 07:41:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp: Add SLPI
Message-ID: <sz2qriqarxlfjr2pa6fpjfmeugagbztk42siuvtlgp45vjrokh@e3jdwa6ocxp5>
References: <20250503-topic-8280_slpi-v1-0-9400a35574f7@oss.qualcomm.com>
 <20250503-topic-8280_slpi-v1-3-9400a35574f7@oss.qualcomm.com>
 <rjhuxssogtsxitmocxnlt3im44imyvui5ssc6ptshepxvgo2hv@npmexcs7nqpy>
 <1fea245e-b49a-434a-bdb2-26c64aa6a3d2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1fea245e-b49a-434a-bdb2-26c64aa6a3d2@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: -IK3ieTjKTqlupa7QU9YZO2mpck8X21r
X-Authority-Analysis: v=2.4 cv=cpWbk04i c=1 sm=1 tr=0 ts=68159e9a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=yefebYspku7_6as8HWsA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: -IK3ieTjKTqlupa7QU9YZO2mpck8X21r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDAzNiBTYWx0ZWRfX3qFWEpMvKmoA
 nBxUlOeJm4QYaM8n9sVMlhqSdAEPYjGKHK0aUCJtYlmPgPCD3fWHwpHdNKR4pl9cigeboxI6KwW
 mXj/aTlG5xOjrhb61Z5D4ls+G9Wd20enW0q/WR0alvKB5vvUDqvMMg1/yOx0C94CrpMB5MHbqMi
 e0R9aaGiuFibkF0uu5HSApwtWO6C9tow4BfXMPtEwjZLnpqMd9iBSQvfKGhcqRiKysK2eNQ6Mje
 w2a8++u5bELg2ayjE58H5ou9Zuyr+99gKZOvOVAi86qwGY0ADo9F0GNOaEaKaZlY3wY+bn0ZWCQ
 Jr4hDkdlBzjWY2OQnK3Zx/p0HSEjOS0qVS5v4jwrryhzyiEQYCOvkE84d6jUhWrG/Gt4CQKIOD1
 bItzUcJerRKN02/yKyN9CA7Pge3+vEdu2/qez/SFijCnqx4mo5RpOGYZsroUvjd4PR+SUcOj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_02,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=693
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505030036

On Sat, May 03, 2025 at 12:57:26AM +0200, Konrad Dybcio wrote:
> On 5/3/25 12:55 AM, Dmitry Baryshkov wrote:
> > On Sat, May 03, 2025 at 12:38:01AM +0200, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> SC8280XP features a SLPI (Sensor Low Power Island) core. Describe it.
> >>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > 
> > Have your tried enabling it for X13s? Windows drivers provide
> > qcslpi8280.mbn in the qcsubsys_ext_scss8280.cab cabinet.
> 
> Forgot to mention, it powers up and exposes the expected qrtr
> service on the CRD
> 
> [...]
> 
> >> +			glink-edge {
> >> +				interrupts-extended = <&ipcc IPCC_CLIENT_SLPI
> >> +							IPCC_MPROC_SIGNAL_GLINK_QMP
> >> +							IRQ_TYPE_EDGE_RISING>;
> >> +				mboxes = <&ipcc IPCC_CLIENT_SLPI
> >> +						IPCC_MPROC_SIGNAL_GLINK_QMP>;
> >> +
> >> +				label = "slpi";
> >> +				qcom,remote-pid = <3>;
> > 
> > No fastrpc contexts?
> 
> I frankly don't know how to validate them

Well... The easiest way would be to upload fastrpc_shell_2 and attempt
to start sdsprpcd or hexagonrpcd.

-- 
With best wishes
Dmitry

