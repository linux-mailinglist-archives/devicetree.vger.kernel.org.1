Return-Path: <devicetree+bounces-161023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A17E6A71D94
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 18:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2068189B5F7
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF4A23E334;
	Wed, 26 Mar 2025 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="grGTLyC0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60EB215196
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010953; cv=none; b=VfMRJPs4+zvJ41pD1juPqIgpdCI9a6BlBXhRH/2BNA27qApbv16F3ASGohBhyKpEANJEOe3vYi1FiGK7Pq7p7fnElGj9sNZIk2YO4Coo691cnzShUNO75jw/ihTEQtorhYjFKRjnA0mspcuLH4ZxTxWWCD20txzVWmSS6LWmjLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010953; c=relaxed/simple;
	bh=aFjsTMfca5IU3YP6U2fVRo6AndB/ugWP204WHOqB9M8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OTUdSOhXRFvBQQfT301Z2BkhDM2SV08qkQXiyJdCdHIS+9H1dVr03nFGpEJGUG3mcnWw4x3XdfYRx8A4gGMcXyDsmq6SO5/3KLQquGfYtM5Wjj9ENtxHFmf1zLSwvSEPmIdI6AxIzkD4Icp8cplCtvCxtcWLMqH6H2y8zjGjcpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=grGTLyC0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QEoQvZ026003
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=myZwmvZPrAeG+l7acbCfyap8
	0nQy1q8mZtpuFo8Rdks=; b=grGTLyC0AANgKhPacqGib/tSQM652j07bcRqHfTP
	20BjqZoUyiXIXjzbq+HmfN0KunrQP+e3Kj6qasRZPNxnYGuqm3bZ7N0yr0xaQ40K
	5+DXahuU9x6bKXwq0e+vsQIq8nM/50Q070O1itkZ62rHX+4/TMdrArei3vV1QP3t
	hE5dfOtiFt6zlZBwz120IgsRwB5yz4B9lZz/LkZ1OrAzVLmN7JkSU6QQRoLzpFCV
	Rzzwo/TiAG2JqSX30kMdehkxpQ6NVXgJLnL93Co0WPnfzgRE2AC99iWhg8AXuCn1
	Znbl+pW0D8JxpxNWmCt+SXnXKEH6fq/r7plP4zm7Idgxfg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45m0xduer7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:42:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c0a3ff7e81so20990385a.3
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 10:42:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743010950; x=1743615750;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=myZwmvZPrAeG+l7acbCfyap80nQy1q8mZtpuFo8Rdks=;
        b=K9+wSNHZ7OFThEb0S4Hagz53QoeEWMRghm/o8l0lRKQ4a0536MSaR+0SNw8pM86gc8
         DTcd9CwfO5Xc7gGyZtr3th+ze9/2hI0MXUBy1k9GY1l5oQfja312t+s9bCG6MWH9m9JQ
         xJcH1LJf/9Iag5zi7/UcZ81MdACf1SUAIZKUR31J6werd73C9NbVa5+rnGknrMlm1dyV
         v4V7pwknnrOuZC+lM1RZnyNBkL5JTu7U/Nzrelm2NdlDeZ5pojpUgqu25zODFdS9N1dL
         yNU2QLnnkA/WkuOp+bo/wjdxg/msNbhZ5vDZ7rbHC9oOeXOcDxOgVsqSqylydWyeRc5e
         NlVA==
X-Forwarded-Encrypted: i=1; AJvYcCXkQQUtZVe27Ro8JtsevGAz1M02SkNBAlcRzXYwB3jrDo9MGZ2RDQuEdLJFVpAuOw5nLdeQh8zpWIo8@vger.kernel.org
X-Gm-Message-State: AOJu0YzbRX8FLrngd4AMO2vyrczOP9RkdVNuRjblkTByyc1kFR5boTSw
	267/ebb4FrhFm3J/oDPbo+/ClBYSszS6d/WSZ/vxrn/HLF8segTWRP6DU5fhRZcm03ZaBYNg50j
	Z1XIC80JxRJb49yZgB3uV67uVxEXiTJCf1BjNYnowgMjexHUBuk0/96d7VguX
X-Gm-Gg: ASbGncsYICbtRu7iEQiSsyu+BFvB749MbLPdooA9JgjRbHmSPpRwy89hX+ZYKwJZhZB
	AMZz99kIKGQwXASh77H/cej/AsPgbV1Ek80asukjr+Ky8tOFhOQDrNkIw8badk0dQgVcCC5jQm3
	56cCNgl+zp06482xWTX7JDdrfh0hV/hbIyuUCzFGbdeiOME7AzcxLhfQD0BCoyex8k2I3EIs1ey
	Cib/nHOaAJMWUQb2Mp0bwEp8TJhLFh6Eq+RqdBF5LfBXYFABPYWk9tf1mVCRAyu9jLpFKUvpn3l
	jLAvR4VdDSvRoxMaXUig4IWJtK7d8cODh2FlosEuSy0nmPCdpDghOEBMeKEOFH+1Q6qa9evTU2n
	SlBU=
X-Received: by 2002:a05:620a:c41:b0:7c3:d2e9:b6cd with SMTP id af79cd13be357-7c5ed9f8dc5mr79794785a.17.1743010949708;
        Wed, 26 Mar 2025 10:42:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvii7HWXKe1P+y9LGHMhEiVCa6FiUA/xJWI8tk3P1ye9ifZ11F0d7MLCzDK91pvv19DJfuxw==
X-Received: by 2002:a05:620a:c41:b0:7c3:d2e9:b6cd with SMTP id af79cd13be357-7c5ed9f8dc5mr79788685a.17.1743010949160;
        Wed, 26 Mar 2025 10:42:29 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647c52bsm1909937e87.74.2025.03.26.10.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 10:42:27 -0700 (PDT)
Date: Wed, 26 Mar 2025 19:42:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shivnandan Kumar <quic_kshivnan@quicinc.com>
Subject: Re: [PATCH V10 7/7] arm64: dts: qcom: sa8775p: Add CPU OPP tables to
 scale DDR/L3
Message-ID: <xyqax25jrm3hsairpv7ovqe6zkzaab757zq44o4dgcnsdco3go@ktsgnry6h6za>
References: <20250324183203.30127-1-quic_rlaggysh@quicinc.com>
 <20250324183203.30127-8-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324183203.30127-8-quic_rlaggysh@quicinc.com>
X-Proofpoint-ORIG-GUID: 2hzDi_9rTowJlBjz_R1Ym0ZK4LU_u-T6
X-Proofpoint-GUID: 2hzDi_9rTowJlBjz_R1Ym0ZK4LU_u-T6
X-Authority-Analysis: v=2.4 cv=Q43S452a c=1 sm=1 tr=0 ts=67e43c86 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=EoR1dSiHd60cPyH60U0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxlogscore=886 malwarescore=0 mlxscore=0 priorityscore=1501 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260109

On Mon, Mar 24, 2025 at 06:32:03PM +0000, Raviteja Laggyshetty wrote:
> From: Jagadeesh Kona <quic_jkona@quicinc.com>
> 
> Add OPP tables required to scale DDR and L3 per freq-domain
> on SA8775P platform.
> 
> If a single OPP table is used for both CPU domains, then
> _allocate_opp_table() won't be invoked for CPU4 but instead
> CPU4 will be added as device under the CPU0 OPP table. Due
> to this, dev_pm_opp_of_find_icc_paths() won't be invoked for
> CPU4 device and hence CPU4 won't be able to independently scale
> it's interconnects. Both CPU0 and CPU4 devices will scale the
> same ICC path which can lead to one device overwriting the BW
> vote placed by other device. Hence CPU0 and CPU4 require separate
> OPP tables to allow independent scaling of DDR and L3 frequencies
> for each CPU domain, with the final DDR and L3 frequencies being
> an aggregate of both.
> 
> Co-developed-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> Signed-off-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 210 ++++++++++++++++++++++++++
>  1 file changed, 210 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

