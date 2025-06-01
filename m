Return-Path: <devicetree+bounces-182037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C762AC9E11
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 09:45:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 003D11895C7F
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 07:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33FC019E7D1;
	Sun,  1 Jun 2025 07:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dUDcgD1C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3418188596
	for <devicetree@vger.kernel.org>; Sun,  1 Jun 2025 07:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748763944; cv=none; b=CvdgJHFrNCmXFNO1/bILRxvZpJusHvW2R2mqVUXzwFny4F/BV1foBk0QxBTa6bbGNL+gldz+5T+kAeacdgxYmkCsMfAs2zXc4Ior/TsSZJud4RBfIKLIcnEhXda0S8sKKgLQkZCkmZemON2RgvwixGstnXtHhHvQlhMRREF+14Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748763944; c=relaxed/simple;
	bh=7g+oDk4Wks/KTMArt+CpUCkKqkXLJZVJzi2niXajCW8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mdQ6G0xzXg9ta8XC0NMy1k7Gu6GioJCIfQE/hSya/MQmWU+2uTvmQuw+VzbbM5vMtF1q6PfsU9w0MSGRBiu+dTrjgH81XBy8ahQRIlfQjnhzIw2zjwzW122PU8VysCfiiWgwYxpRa/KLsg1/ycj7pqvY7YIzehdBzz/gOc1BiiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dUDcgD1C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5515SNWb030060
	for <devicetree@vger.kernel.org>; Sun, 1 Jun 2025 07:45:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=T86iakunY/F/6fKCE2e1z1vF
	9U7fPaimiMQLKmQqo7Q=; b=dUDcgD1CoU5G2ZfoXEjRO/wI0auU1aPV0uWQ8a5r
	T+YVt30EiN+iuSPH+RH1DmzpKc+UalA2m0xmnIPB9AfGnAdwFF1BZ0R7X1WOVWn/
	5AFXXRIbPgJvP2BBmFjtQQdSMqVfYA3QWsR3/oQ6Y0/JRRHHRRhjc8u8z5dqIspM
	ugRgT9oAohj/zu7iygepJShe5fwBcLDUb6X31yWoXycqEGGp2fOtAhL9h96dlAm+
	IdlFyj4au8c+jJhoFnqdkU1yO4JpYYJokSGvumuS9UeRF8f8K4lwu1eGM3eduVXY
	araxnBREjFhAAAW3C/qnG5qcn39Dgv6x2IKX7v+c/zIYcA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytkpt0tw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 07:45:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c790dc38b4so596513085a.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 00:45:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748763940; x=1749368740;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T86iakunY/F/6fKCE2e1z1vF9U7fPaimiMQLKmQqo7Q=;
        b=OqG04m5RE/ctpbqgly29P/vXksQC4Lm1tL4m+wraL7sUwp7AkqOpwbBVTsZt8SeVPc
         QwO/nCP3p5/XSMr4pucVnm0fXs1nQ9+Zx8GO+Kr28jOcCKOTyjJjgTpgzPEri5WEZe56
         iEez3HXr65RI/u/YL8sc/FnSPN04TGm9Szw+IH9IPPiawc75xf8LTmSGNjBUu5q2sWi3
         ovYX4Tj1MmIRfpV6dE3LheZg6vCD3PREqlw9MKJdwUItAC/aHJOl4zb2fBAKBFqFvuss
         JbYnY0a8kZWy5EMitmzPo9+Hjq+PAmVHlM/IV13Z31U8HWLj11LGcdv811jSqpDHbvhn
         EFuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq6jjAwdIp1o9dC9oyb8Xa5SJY/TnqcZ+s5e3VJru9JDyiSya2BnstqEgpsGj2+VQwpF3AEbjsu22k@vger.kernel.org
X-Gm-Message-State: AOJu0YxyGQv85TKI5Jgy+9huDR81ASfJDdwL/yKyGOsW0j9Y/QC3YhGR
	0m9dn5pCs0Adk6I7OKeWswgq6IzxAe+JvtNBJadTV2bXinz2ZGtBCqd5fUA2CnDusbde8ViA2kF
	4vk/gT8QSinvS4Q+Ta6LjM6m4iaJ2S0njC0noEQBc7/0S49dGnPzAvlLybT0xG4Rm
X-Gm-Gg: ASbGncvdH+4PmWBc/5FDuOgbOTRZq4RqUZtfJni40kcPDlLMSFCJ6eidlErI7sO4e41
	Ts/KUPFTSw4SmlP2lW931lmS5APxpfagWRXKDxVQw7lJUgE9C2CjMXDF8B6EZTVpY1zgUcd6I5y
	o+OuBvE7uzM2Pc55WzCGdflFgC25WiDFSrhI0tgNNC5UntEYCAGeMMBxzviknYQMls5OY5vz4OC
	v3F4vfT4n2BVXVAUMtxyGqswDzwNNp3PM+CBVKlEItAhTWQ7itOcpnOZNoxbdaCZoXQnPnEtpNa
	m4NesqmACcN06pqtuuWaLH5++OHDsuiyYqNHZUCEEX4ScP72h6y3x8V5BBkcWzrEYQjesn1JekI
	=
X-Received: by 2002:a05:620a:2402:b0:7cf:431:29c3 with SMTP id af79cd13be357-7d0987e83f7mr1847367985a.26.1748763940624;
        Sun, 01 Jun 2025 00:45:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOfErjfbHAj1jIbvFArhyUzXQUHwq2N3C6oiKrjh0slYknIaa361KZI/FocX4MDDscvYYd6A==
X-Received: by 2002:a05:620a:2402:b0:7cf:431:29c3 with SMTP id af79cd13be357-7d0987e83f7mr1847365085a.26.1748763940253;
        Sun, 01 Jun 2025 00:45:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55337937969sm1210468e87.250.2025.06.01.00.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 00:45:39 -0700 (PDT)
Date: Sun, 1 Jun 2025 10:45:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: msm8998: Add Venus OPP table
Message-ID: <jtog7ly6v7ahxdc6rybgnn7mhxv66c4swx7j4oqg2tsndeqvmu@oi22kb7quw5l>
References: <20250531-topic-venus_opp_arm64-v1-0-54c6c417839f@oss.qualcomm.com>
 <20250531-topic-venus_opp_arm64-v1-3-54c6c417839f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250531-topic-venus_opp_arm64-v1-3-54c6c417839f@oss.qualcomm.com>
X-Proofpoint-GUID: 4z7ly_MuQBulv3JQyFpFjleWAXzhkGSL
X-Authority-Analysis: v=2.4 cv=SPNCVPvH c=1 sm=1 tr=0 ts=683c0525 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=bnwqEipTlhqVJVXZ2T8A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 4z7ly_MuQBulv3JQyFpFjleWAXzhkGSL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAxMDA2MiBTYWx0ZWRfX/HP6nt6xGhCb
 UJVw3UN6/AxOoVZCitymqPSHgxU0nj/AbIgyvH+9t00l2aXrhDoADUy3WHZNSiYYZ6AxGwcf3SV
 ++mfYLKvn5HzMUlGzqWVnMoouvhiBY5x6SsbpD8AJFpbSegMd69jbS2cZI+QqJTV4t0tMYYIZmk
 /RE45FJh7xCS3IPhHGtalW8pqe1apW4E7EbyH8FRbDZa/RvUMAADRSb/h0nBg8CWEkYKc97PtQu
 485sP5BL2KiZp75UqVINuGsT2bpNvSy90T2/ekcfsIPiqorwTWO/dLPyGDxTe1TPI8M74N2Pe62
 E7ljOwYA6TaHje4yjHg4DCH+gwwuoAyZ6qgoza4kLMs9XoH8OlSVWMF+evlwwDYxfoBw7eDPkSh
 D4+4cmNZ6BNa5wlzutgl7RH6lHMPA5jqPU9Tci5vfQYtZHUEZYH7WHatLIWMOa2YL1j/Ss0W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-01_03,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=784 priorityscore=1501 bulkscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2506010062

On Sat, May 31, 2025 at 02:27:21PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Describe the DVFS levels explicitly.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

