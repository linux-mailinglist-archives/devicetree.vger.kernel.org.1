Return-Path: <devicetree+bounces-174151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9239EAAC367
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 14:08:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C2E35042FD
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 12:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A6627F16E;
	Tue,  6 May 2025 12:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E3J1lOd7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5294B27B4E6
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 12:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746533304; cv=none; b=gjDyo105Lt0IQKhObykfuM4vUn9TROWEbRSngYSbDLZbjuSjeDwjjFUaCyWQD6JCDUx7idBzY7ezPKrI77Yb26UZwe052fAASAnuEoB7XNGwxArTS9z2TPDgdDdjyxMbExPCbQ3aBGRcl1Jy3OETm42HMZwGOIqxfRmg9WCQbI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746533304; c=relaxed/simple;
	bh=DdbmmhonCetUBZsFTlekD4aubGPPFIJ9ItkmtXG5bpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XB73swWnw75SwoMXl9KLt5fRFp0b1DBBwj4wrPz91vJ2DZtxfEjZIVpmBu0Kgq8AuLQrxglQr0gU6+gcVSsAhlFtsBNxk4XSEE7iABSS14Vp6esKYSPlUsB64PQuUWwooB55ANHrzjJilPmNq1+5UwS/mqElH+0vnLDhTxqgB1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E3J1lOd7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5468e2PA014186
	for <devicetree@vger.kernel.org>; Tue, 6 May 2025 12:08:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GD4lMZs5a3pKzd5cggQ3wq6Y
	VdqPYIs1t4O/gynZcKE=; b=E3J1lOd7/umRoIoyHPXx+HWv+BhAjFG2wgSGRs3h
	4REjvf6kVGrZ4z/9aFucBCebJg+hkZWhWeKtJ/pvf+eXKNYW8Mz+Hn3TVzzCPHVr
	GpAiYsTReVbH0TfZbMWJ79HPUWDamy+npijq06Fp5wgSIAVsSq6mriISUQUf0wxh
	FAbhD38u1N9kQRyH1+3iWKXX8pau6ucut1uB5RlTSn4ARqo4fSLlpfn7HFPpdpzz
	LGTFLLo+ghwWRLGOLbyHoktz6neYZZJ4G3o/ZGxEy5OYD8PShvIehuJJkEBe/smm
	Qeg54HJborZn1OskGXcRmpjNSxsuhHjqpLVx+sXsCKbWiA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5u42748-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 May 2025 12:08:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7caee990721so286496485a.1
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 05:08:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746533300; x=1747138100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GD4lMZs5a3pKzd5cggQ3wq6YVdqPYIs1t4O/gynZcKE=;
        b=nDAHyoz6z1GVFheLvjt6a3qOnHYXcj4j7ndXddq0WYD4/vtDFJWC4EOwZWIW/iskWG
         MCLAxM+JRDJmYjDaVFwN9rMz+X2Miivzd8ADlVBKIo7dReAeeeMbAYz+T6NzobrRuzX1
         WkUBTpW0/Og+thN9V7bSt8xYHzq46P4CGKNUKjaOQ6JErQSSdCZDnjC7l3050WF5QAcp
         Onj4P+8CKY0swDdRl01eKF6PDKocru2o/ifNdmW3A6AwVZydDHFjAKFkGb1nnhDg4M0f
         2bdaV5VOz6qbMH+MVIi6XPl+p/jJucsSSCLT4TMU7udBmtyxXU9aneHOs8IoCNPTLN7v
         qdaw==
X-Forwarded-Encrypted: i=1; AJvYcCUZjPGX5ueFWuxu2YWuSOLewQnwYfOy0j/lJvuEMqVrGkqRrCGIXFZG9U5s2HIEtADcrdNow6BAWNvn@vger.kernel.org
X-Gm-Message-State: AOJu0YzExyBNoCusXqVYNVjEKEz9oo1Xa2G4jN2J7JlQPWDPoZ1NJCbv
	HKd1ggxAEZPYCRsnlrBXIaC/ZmrTnM59e2FYU5hP3iRxJmLaEYU1pFf2Hq1AYErCyKq8zjKYudF
	Mjq2HXU+wc8ftgtSdGy0Roi/SUhCpVvRtNRvT2X7ihe85kTlNPRiowIKOC5d5
X-Gm-Gg: ASbGncuPmDB5DpzLK2X9+1/HmkS7vxaMsGplDKJsE5MTPTbRG1WZP4paF2WarGAW0gH
	aRz7t5vs+tCPRbv7P9s428c1XqQ0+hb7HPLmdRkvs+vdRGnVcgTQaRB3Grlk+iFzy+PRHOzDDON
	7cFmehyxu60soWXU6Swsev8wMEe3oaoS86C7H0CAxA+nbsWqqDagHVDYzVcrngsMiN67IHL6Fh1
	PqH8ZAWwJ2tZD5iT8oUSZB72BQBUsA0Y+/hua3GwNbve/2ocEIkQ1TeXG9g0vuCcpx0mhTERbNo
	SogAd9FUPlA7SUuuuj64HyF2VYqgQldiROIGrV1JrmBtOkU2i0MQkukIsYk1awmHRiOWWOy8YEE
	=
X-Received: by 2002:a05:620a:4629:b0:7ca:df98:2f6 with SMTP id af79cd13be357-7caf09bf07emr524577985a.43.1746533300214;
        Tue, 06 May 2025 05:08:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGz6fgxkf8GCZyugOKLOyYO6nxMMiDaVer/gkboErci2Inurno93UgLLdfrFIxkKoZ4FWDdkg==
X-Received: by 2002:a05:620a:4629:b0:7ca:df98:2f6 with SMTP id af79cd13be357-7caf09bf07emr524572085a.43.1746533299797;
        Tue, 06 May 2025 05:08:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32028b38e2csm19391601fa.13.2025.05.06.05.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 05:08:18 -0700 (PDT)
Date: Tue, 6 May 2025 15:08:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 4/6] arm64: dts: qcom: Add support for QCS9075 RB8
Message-ID: <vr3q2c47ht5iebf7nvy3qywoxlquwma3p2tffswrefpmxqy24h@wrfecu6mcqcn>
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-5-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241229152332.3068172-5-quic_wasimn@quicinc.com>
X-Authority-Analysis: v=2.4 cv=KcfSsRYD c=1 sm=1 tr=0 ts=6819fbb5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=q-whWVftEaYGax-JpAIA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: CoFwo3qaU0jehkHiZ5MRNGvltQWmHtKo
X-Proofpoint-ORIG-GUID: CoFwo3qaU0jehkHiZ5MRNGvltQWmHtKo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDExNyBTYWx0ZWRfX/oavw8ce0ZFv
 D1a1EAVPaNazmdccY/mZi7ozvlG84gKrZVmFYxJqjB9NoeUcGReTrMPsLdUCWzXMKub3wRxw1HH
 OStCFG7PeyFYtsWuZqxXY3m2Ra7FrSjnYRezatIKhmQjqjfoLSMqZdoAdW9zfsq3gS3tvaVZeyN
 HTJuMxjptCmsxgylqTefHfhmGyHqW03SjsweSyh+j67ZcJznacPKWW6N0p3xpkM458PaY5OAIeS
 8Iq2AHF2n+Dybb/oW+fs6fu8WoLs67R9IMjbAjuj6Ebci0TIsomfNGs26zVEbF5mQchyhAl+Xug
 AodnIZpxT0ETjmBSn3TF5sIEz75qzFrBlEUyMkGB6gqzigLYidGSPXImFmpp7TbKdQuDWn76Swg
 RmZSjFlrAOjFhIzr6L2mbhFLlti9vDEpUkkQPa1Iqc9q7GvjkwABm9IDM1mG2oZxQW9Dldbo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0 mlxlogscore=775
 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060117

On Sun, Dec 29, 2024 at 08:53:30PM +0530, Wasim Nazir wrote:
> Add initial device tree support for the RB8 board
> based on Qualcomm's QCS9075 SoC.
> 
> Basic changes are supported for boot to shell.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |   1 +
>  arch/arm64/boot/dts/qcom/qcs9075-rb8.dts | 281 +++++++++++++++++++++++
>  2 files changed, 282 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-rb8.dts
> 

For the next submission please include at least the UFS support. The
board is pretty useless without the actual storage support.

-- 
With best wishes
Dmitry

