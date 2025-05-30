Return-Path: <devicetree+bounces-181926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8884EAC9695
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 22:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B86E73A94E0
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 20:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA4B27815E;
	Fri, 30 May 2025 20:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bQmNwwLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F3720B80E
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748637113; cv=none; b=aZBHMN4dR9PS93URDtS0H/p+1semQ28X5y3ejkqz2G7j1adorhfPInQlJ7PPSu/4rxo0yMPXoVeNvp5sY1hHZNvbdIxliJI1wr6kPC2gXE0L3i8bVGlPp77G0DkJezEALfPYDP9cBRNc+VRmxHFeRKwNk50DEjwH3VHOcx96ZXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748637113; c=relaxed/simple;
	bh=f1fdEMjT+pjjXh4re0AY7O/7xvlUQpzkFh1aeaLDwYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ehbHSAZ7i+0TSj0IUa5XwEexWPJ3p9wksaCdRdx7MJJ+1AINzkj+DmhB6YchTNmclF6q/+YzhTboXN7KZWlXGakjJTvTdHHcQTIwMSpHJAb0Gp1cnEcB6LZ6Z29p7PHBrliVxLCVkhJdex0NQT+VeLiUDvn3pMkFOB+pFVbKXCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bQmNwwLL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UJTQMf008042
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:31:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M1p3EQmdtNCgV/iVOld1te3d
	tjXwAqfiklGbl9y+1ps=; b=bQmNwwLLYaTObDfHdgUdzsXfsZAhy0bclYSEKKgj
	wrbjsT1QZug6ViDpeBq4p/aHnoUdNXFiGnWG9Fk7qCu0/CEVh7TrzUN4T4xuNsUU
	NvAQXQ7V2iE57i/UyLYtjMPc2nYy5qAJf3AZqulPC0E8NmpckefI34IaA/Vqz/ai
	aOTkmE34JEJVCtN6ljdQ8ax8MFc71RspCVnAYCdeSS6WbEXtfnsKVUiNxKuF5uiT
	t3X3404gq4UUk6mPQApw8qE/jFnyrINzfnQ83m1pUi9pzGPSDvcqH66aLi8+lYp0
	VOLtXbCMdbei+q1hja/XVB7wnE6YwizLPHXx6FwwS85BHg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46whufavmb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:31:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5750ca8b2so302386785a.0
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 13:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748637109; x=1749241909;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M1p3EQmdtNCgV/iVOld1te3dtjXwAqfiklGbl9y+1ps=;
        b=pCl8IqBtn5A0jtDZFqlOGrFKwEfmtyNukh4/DNGajNsrK3kOqK+yedvNVF2izEH+Bf
         mafmirjWf/lqhdavgpBo8y4x1m2a7XfkqQ+6gRCzmkS+t40WiyAcBCOtgjOKxRXblkZL
         J6jT9+6x+LT5GXvw/5Cw00VEzg0+BZ4tVXFelXPoCeS8a67h2AtnlknkISBJGckgLmXd
         i9yQEJi74IuUh/rzyl6l6ORojIJn/dF+D/NK/khbGMJmkKIPNyTPoi4JBaW3NHdf4m6c
         Kk9tTov2TNG2SW/8T+TGms1Uo/P9EOeTChzKwRcQ0gHSYOmJ4E7vcQ8qhhQIHjN95m2E
         rcMw==
X-Forwarded-Encrypted: i=1; AJvYcCULGtM2m4ZdOqOTJ+F6dhcG3XPOQ94R4jw4jUFsGkiPUOs7fFjnRKR3QQ9tK4/wwZfkxQYiF5ir58MT@vger.kernel.org
X-Gm-Message-State: AOJu0YwvWwd+OIKR49qZCD8jeIRdCWHeNG93Yfr+423ngYOZPzGIJvQ8
	TrXC6O2ujs5/DweRZikWKg8cwmBX7FJoDrDc+wBGQelgJLAad8IQpNFmNMEiK+YQBI1XEhvMEuV
	v4wlP6WA5wBxDFrOfyfmQbaVzmOlfp4+XLmXoRQw2qhEjcLUKTy46dvq3jNgQ0R4y
X-Gm-Gg: ASbGncvRnrp0dK6zPOslCe3Bz5fXSBvy2sj75Dsw2QcV5LOCl/ENvB4nlVheQw5+vPm
	BVUwU7D7E1Gbyy0uTvQVHWDRyGZUUaZLVfTny0Man/Vz15j7qXiyp/Z0dKc9QUA1bGPYeiheKEV
	tx1Lm41EYe0seLZPnVPX71g+uMmGCtWAWgbYqZJHmZCCYci+ykerXgixM4k05pyu76ubA5CjUJa
	ftD1U/tTfuNm46LCZ7Isx8vqsjfQxPlZf6z7nki1SdcoFjvvpmcYZaDD+ug8ADnnPUDyYLzZb/E
	3Z1Qxbc/AzX1aIqyIINizIMgnA6+wWU5u70MvLldBUvmjQFxMECXgh1Ho96r7z0TQOWz+Us1M1g
	=
X-Received: by 2002:a05:620a:2496:b0:7ca:ef12:966d with SMTP id af79cd13be357-7d0a2044852mr807322485a.56.1748637109535;
        Fri, 30 May 2025 13:31:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5gxu0bW4BBklACGl0xDtBjzkJyvR+Rkmz3xZNctayUpx8OSvdPIjzBiRcKt4/SIxwXscdrg==
X-Received: by 2002:a05:620a:2496:b0:7ca:ef12:966d with SMTP id af79cd13be357-7d0a2044852mr807317685a.56.1748637109125;
        Fri, 30 May 2025 13:31:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85b56359sm7062961fa.52.2025.05.30.13.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 13:31:48 -0700 (PDT)
Date: Fri, 30 May 2025 23:31:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Renjiang Han <quic_renjiang@quicinc.com>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v8 3/3] arm64: dts: qcom: qcs615-ride: enable venus node
 to initialize video codec
Message-ID: <qeuxv2mpnnsieygdwvsb63k4n53tnc6yekiv2wels4jjwwpxf3@wutnfkefi7yj>
References: <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
 <20250530-add-venus-for-qcs615-v8-3-c0092ac616d0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530-add-venus-for-qcs615-v8-3-c0092ac616d0@quicinc.com>
X-Authority-Analysis: v=2.4 cv=OslPyz/t c=1 sm=1 tr=0 ts=683a15b6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=QX4gbG5DAAAA:8 a=COk6AnOGAAAA:8 a=8HjAm6W-cWlp_Wl9Tc8A:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=AbAUZ8qAyYyZVLSsDulk:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: F6IXrSUvAHPUzGZUKhpBZWE-C4B-kwbu
X-Proofpoint-GUID: F6IXrSUvAHPUzGZUKhpBZWE-C4B-kwbu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE4MyBTYWx0ZWRfX+GoBA6uOhE8a
 XfKsTuk3dZqvjJXoQBvemXK+M0dlX+x6DekYHaEFwiggdQ3LkeeXd06gb/meBubNayhH2F/rYXe
 HksaMbKHRjPbRxr04SiTAs+GKN0Ktf8maKQW+i8Ky9JgTPS4h1t2Xcuw+RKle22KF/3xVG1rqc1
 icTYRt+g7zwMtBJUaZoaGJeVvC6tPtQGOtrscmZbguIoihgTZupDlrPSdFTynweAk2ZrasXKvHA
 kZCvJEzCLtZo8uZBKy6G/a3rCKHyfIepoZ9deKd2/KqrLj1atcAB9YGKuBOTbjqN2qC2V3lWsRB
 BOGFGA5lJtt3bFffBjCRF7KIT6DPF+VZ6OUua5ohZgejJUnmJHLmGwQl1kuOWSRT+SPwL/8HoCm
 ZApNThkdqEbCfqLQkwvfj4BfOFGVobam/CxuQ5oDlrkbaVlXdp8tDzYYwgKKK9OJCKSzuye9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_09,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300183

On Fri, May 30, 2025 at 09:32:15AM +0530, Renjiang Han wrote:
> Enable the venus node to allow the video codec to start working properly
> by setting its status to "okay".
> 
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index 2b5aa3c66867676bda59ff82b902b6e4974126f8..0686f5c10bdaf7ba3f522e16acd2107d25742dd9 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -338,6 +338,10 @@ &ufs_mem_phy {
>  	status = "okay";
>  };
>  
> +&venus {
> +	status = "okay";

Does QCS615 work with existing qcom/venus-5.4/venus.mbn or does it need
another VPU firmware?

> +};
> +
>  &watchdog {
>  	clocks = <&sleep_clk>;
>  };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

