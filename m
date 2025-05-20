Return-Path: <devicetree+bounces-178856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7363AABDA13
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 15:53:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED5677AEF48
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 13:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA8D124418E;
	Tue, 20 May 2025 13:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="itVwlzfv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436C6242922
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 13:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747749203; cv=none; b=Kp1N/vAkMBtBjl3d/kQYEw8dm3+d+RUt1Mn1kolBvWBfYs+lumDgmQwnCq30Lf8ndd1iYVHAf2Fok0M9i3l9SXGIk+ALl7DBpVvORgIiUMbcnl3uQeHAj4XYrSr2IJphsSYb1pEBp1tj00EO8ESulU9MhX8jmCrpetGm65khy7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747749203; c=relaxed/simple;
	bh=NytEchRmD6ri5y6zBzI9MoKSpnGuOx8B4CkQWKB8wzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r2dsVyGjUjwccUxGaJ7Nr9DyWXG+P6tzQ0bSYmL6PPaV95gzk8JdbC5/u149aad3fVJe9PGV3mRIGpSPGW2hPHBZmQ6DCYSNZQRZ8NoVv85fj33aIVFMFW4+zlX+SGqOQDvICCW8q7p1dLtwGgay6ADs3cc7R395KGSHb5JE5tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=itVwlzfv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KDrBcM005431
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 13:53:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QzmmkJLGqmEy95U2mjSsJRItOa5uU8/07pfBFeoUYqo=; b=itVwlzfve9ZopG0U
	VlMKBUHKf6o5qCGd1JpGln30ho1N2kZETxNwEmnaryyzgQGDoizTyQDSc/gGVsan
	XRUPBYM1spQs+TiuEHgmzS2wlBZXFotQBXGv2AVVlOMGIkMuHkxFbmuOEQit/y+J
	/Oh9LoPyl7rjNAPDXBzsWB494eNNXIVU6LaK5Z9zyRQrjQi9mrvrjyKUxu8uQgQ5
	H/vzqs8noW8w1W2sZCOOwkfw1SyvcJId6Vlmfsnur7KYqaridSz8QnUjsybkilhd
	9sKBSZSnQlb5u90l361pRv7FbVn2ZPaL2CQdo4em3ylhVKmuCqywAVG+H+xmHGI+
	JgYPsQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pju7fvpm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 13:53:20 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8dfae341eso31349416d6.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 06:53:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747749200; x=1748354000;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QzmmkJLGqmEy95U2mjSsJRItOa5uU8/07pfBFeoUYqo=;
        b=SHAsulQ5Yys3Vg2KF0tNHgNd3Oc+wdcEL6CIQpu8xNNbz+89ufzzPTpmT3/NTyL9ke
         WDQJoLlIH+dYHkLI9QN5TVquewzhIKFYBNmVO+1dya31KqHCTQRElgcHPGlK28rb3hrZ
         YDez1PK4o1/zvEqKVMfAYW1F0bol6NMgn048p7S93I6r1SeVD8uQr8c/8Gx9WBBvNghu
         b1Gt9P2mQzq2vpl8uQq+hmt1GPzZEeRggfhuhU1egutwR2CybcHzFwDxRJ6CGWmchSU8
         L8BXABhx5egA8NMaVUegDbgflQ3Qm7TcpsK33pqlfWpdva0vurP3S8DVSUkEmi5sZJQ6
         GvYA==
X-Forwarded-Encrypted: i=1; AJvYcCVSRpMOQ2qrqFWX/+6IybTxhtSjlXMvjeGK73ztT348aaH7yUrt7QP7uWUbtxcjAVrUWqRu0C/eBw0Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyCljT/ZsOhZmkd/sLUp9hSBekaYZP0RDiDrYz8a3gQZmO1uSY/
	kDkzKvnc0S4KTeGFB2H7R3mdrHxrOfNJlTwndQbVebOiSBqSOgWH+OHF4Qcn/QOZfWTS3CpSufR
	sMhGl5ERgbbaJKNpI6gKnDBnpjQwa6brl5S/jRRGFa9eavx5ETeFcs3QpR1VvNes0
X-Gm-Gg: ASbGnculA/8vySBeEZGKinhBZSLz2LXALQWNW0Ye2Py12bTL+dkEi4V3n95J2+xqRmA
	h6KJb/T51kGFr6rk7nrqrEa9H3XTbv1xeX50AFYJu55BCSi8xrVW7v/HO1dSadBNTJyS+7jwNmp
	y9/U4R59PHLJ6EwdyT1R6YQn1eHxKGRC0B2oEgq1WTzCVnU7o35vbtne/7vYm3b+uPS5aCHE3Sh
	hOFKFItHn3ybGs3rvKnLN5hMQZd/ErtGWt7jxg36fu9WYVpQXMH5X82cq7ajxHv51kWIqz+GJkH
	au/4DR07INs/av6kSelvzBxMCNFi8/dpvnW2JT5uH6s6APp609Ztd6PHwhVaICN46fUvB+YcHhw
	=
X-Received: by 2002:a05:6214:14aa:b0:6f8:c23c:5264 with SMTP id 6a1803df08f44-6f8c23c84f2mr149748156d6.1.1747749200028;
        Tue, 20 May 2025 06:53:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpbUSkwGfbZZniCfNdqu3+I6X+lzhrHJKQURfdahHBBDAeuuxwT7dh2le41RV5OLb0mIkroQ==
X-Received: by 2002:a05:6214:14aa:b0:6f8:c23c:5264 with SMTP id 6a1803df08f44-6f8c23c84f2mr149747806d6.1.1747749199646;
        Tue, 20 May 2025 06:53:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f302c2sm2360020e87.61.2025.05.20.06.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 06:53:18 -0700 (PDT)
Date: Tue, 20 May 2025 16:53:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ekansh.gupta@oss.qualcomm.com
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sc7280: Add memory region for
 audiopd
Message-ID: <2mu3bncxoq57rxi22dyd6ys2wa5n3wmtadfvixozshxgenutai@dlkbqgplzrrd>
References: <20250516110029.1637270-1-quic_lxu5@quicinc.com>
 <20250516110029.1637270-2-quic_lxu5@quicinc.com>
 <uzyxagnmxz5tsjy32mfro2alwdpcq5kybwzcbsysul7u6adgdf@x7katw7eme6u>
 <b90ee18a-5e88-4c36-a623-ae9447c53a46@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b90ee18a-5e88-4c36-a623-ae9447c53a46@quicinc.com>
X-Authority-Analysis: v=2.4 cv=XKEwSRhE c=1 sm=1 tr=0 ts=682c8950 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=BA8RXWgV6jDCk_iHtoAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: XgFS8TETMZrfzMOvnRDuqDrlswyq8k9-
X-Proofpoint-GUID: XgFS8TETMZrfzMOvnRDuqDrlswyq8k9-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDExMSBTYWx0ZWRfX6UVs1PK9fO5e
 ZIpd8JS3MIAesxBJ2y23VOlfVP9RDLeW4QaUGx0gZ8BwNkpBYFGCttKy2X3QLf0mIX9Q0RkVaMB
 ImVYy1TwjKnG6fQinkinCtaU3wBD+HwJsN9DFbSJnrRMywuj+5nST/ptQ8h5HE0uL/ignmm1oPx
 sOrSVsI6T9l1Ot9bmIXn8t8+9QQLZYTFBDBB1JROSLX23wYW0OiOiuSSt+tglB2dQbKIwIDEE3f
 bJwDlsXXi9XMmnFDVrlpgK4Yk/yU63nyCMcTIcfkbCdhXLHn4LUrhHKQ6AJDHh/zhJOPRiCdUf2
 4ZGOi49zdJ8HJxa7dVKVOQYShHfbym/BJljG+20TCXJQ4dgJduEcMKeElN/NrfegBjIhcKTWuil
 hDMJLPtaUrN2EwTE3u1vrIaPsjmT4DpDJSXzTI+toMouHiaJn0uzDmHOyQOGR/Tfo1PmGRWE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0
 mlxlogscore=907 phishscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505200111

On Tue, May 20, 2025 at 02:41:22PM +0800, Ling Xu wrote:
> 在 5/17/2025 5:47 AM, Dmitry Baryshkov 写道:
> > On Fri, May 16, 2025 at 04:30:27PM +0530, Ling Xu wrote:
> >> Add reserved memory region and VMIDs for audio PD dynamic loading and
> >> remote heap memory requirements.
> > 
> > Why? Was it not working without this heap?
> 
> yes, it will not working without this heap.
> Memory region is required for audio PD for dynamic loading and remote heap memory
> requirements. For more info, please refer below patches, it has provided a more
> detailed explanation.
> https://lore.kernel.org/all/bb68da04-ef52-4172-8b6e-f4027bcc2786@oss.qualcomm.com/
> https://lore.kernel.org/all/effea02f-6ffb-42e9-87df-081caafab728@oss.qualcomm.com/

This triggers a bunch of questions:

- What is audio PD?

- Is it a required component?

- For which platforms ?

- What happens if there is a memory region, but it is not used by the
  driver (SM8650, SM8550).

> 
> >>
> >> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 11 +++++++++++
> >>  1 file changed, 11 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> index 8e86d75cc6b4..d9af79ff8c4e 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> @@ -188,6 +188,14 @@ rmtfs_mem: rmtfs@9c900000 {
> >>  			qcom,client-id = <1>;
> >>  			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>;
> >>  		};
> >> +
> >> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
> >> +			compatible = "shared-dma-pool";
> >> +			size = <0x0 0x800000>;
> >> +			alignment = <0x0 0x100000>;
> >> +			alloc-ranges = <0x0 0x80000000 0x0 0x40000000>;
> >> +			no-map;
> >> +		};
> >>  	};
> >>  
> >>  	cpus {
> >> @@ -3863,6 +3871,9 @@ fastrpc {
> >>  					qcom,glink-channels = "fastrpcglink-apps-dsp";
> >>  					label = "adsp";
> >>  					qcom,non-secure-domain;
> >> +					memory-region = <&adsp_rpc_remote_heap_mem>;
> >> +					qcom,vmids = <QCOM_SCM_VMID_LPASS>,
> >> +							  <QCOM_SCM_VMID_ADSP_HEAP>;
> 
> Thanks. Will modify this.
> 
> > Please align '<' vertically.
> > 
> >>  					#address-cells = <1>;
> >>  					#size-cells = <0>;
> >>  
> >> -- 
> >> 2.34.1
> >>
> > 
> 
> -- 
> Thx and BRs,
> Ling Xu
> 

-- 
With best wishes
Dmitry

