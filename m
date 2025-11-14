Return-Path: <devicetree+bounces-238633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38128C5CC79
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B293D3A6E10
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBADF3128D2;
	Fri, 14 Nov 2025 11:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IK2Tu9x7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QctsuFzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A08430E0D0
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118725; cv=none; b=faMWHE1QkZTWDQoHbT+BCquDtDmrpsNE9k4V5Cnzvs3/OFZWujxtjodbmZsu4a3WA/khhWnrd3WmYO6T/KlDiP+CXF2/4atBQdctDPC628IkmhbEVGzA2cXtePr6y5X5PMv3Vroyt2/Lpuh8+hv4IN0v7DKgPktWTbSTkYYGYcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118725; c=relaxed/simple;
	bh=jnvGdqwuBrtgqyTHAfNSDcp4syy6gJ4p5IRgKKPsTLk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fwvmWaldHdHuWxly6OmiIA1veyl4RXCvtTznE06PO2ROTFlNEMAi0rW9siftyGX4ffljMoQCPiLYSIQyA0V+M5wVvMJkpFuRexz7nnwTpJDZ00+ELkkG6e96hZnjTBdyOTZsf2qf5m2618OswOSeouPQ6QPBNYikgYICSfoW350=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IK2Tu9x7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QctsuFzr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8Mta61699751
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:12:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=r5CCymoblA+3YsclxlisSuWi
	zrvBV5APVXMnbsm8vTU=; b=IK2Tu9x7UidqMJK1It7P0IzxGU5na7/jbALUWOOi
	Bc3ECT5fQ/DQ2n2RSOtIaPlEu4MsoLdlVbS5USLrDnchA6G4hH5lzpIQO5segWt+
	sQnROnlcCBldVW9ate3wtQMeNMy0RzkemMcaT5J06UQRJbOB2O9XEY9ipMC6Rtt4
	LfTljdcf/tPnil+uKkOMs+K3+MTRNRpi38pSd8vDHkfJ9MBUTQO84zkk4jJTASQN
	+TEoJ9kgiTAcobB/aihODnV/QIZSf9kbyWuG6Pi9nHmrvEIY8jVBhu7xt7Iup7nt
	KGSYVjMzMrlWPVpyVQS/OZzbDqGwgcGhOUcX7fw1kphWeA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9e1y7u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:12:03 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed846ac283so69276561cf.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763118722; x=1763723522; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r5CCymoblA+3YsclxlisSuWizrvBV5APVXMnbsm8vTU=;
        b=QctsuFzrb9/lPA+08el0N4/7qbjb7PAKcuFt7dxSWbTw9W1f/spMRwHaLmmK/fFs8h
         DvCgjqgPz+93bNMzXWMjmaS7DtNSWBRUd+V5fkbGGbZOmxQXSJZX9Th2hgiKsdNLzCre
         7B8vX+OnqzSX9kJnUhpzk5X5XVCCc3KXby1gsaj9cCGJIg3YcyFRkPN7GZifzvB84yYF
         /hMOy5V7+gwOoxt3ELPHzaQCgQmcKbEDQSiRWJv8IEp2z+6Uc0nJwtV2dfmb0UBBKCRH
         mLfAHJNuOcO3jxsLZXkkB/jJTROQ8X9fooXyUzNTJsnKjtbCdjPBpm/ne9fhgQBHpXfN
         xJIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763118722; x=1763723522;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r5CCymoblA+3YsclxlisSuWizrvBV5APVXMnbsm8vTU=;
        b=aKrYuuyTSskVaj2Tkr1G4+xj81vhNqHrk9s7qCt6LB9vgHAfTxCgTjXH2xlX1PUiyG
         WCes+MVQVObx/fXZBRizkJfZwEh3dkKLejHqosXxXyfCDHcIPTKFrCHlhlp/4wQX1Gvx
         3g88kyYaV0v9UeX4WkyjvUKe7yU4XXlndNQk3ZTJJvMnbxZAVeAwXNbM8n48bCYqxl81
         G+pGHwOw3+NCY3Kwapa+ouIt3hTg0zB/B56RG+Wq+gdCPTrdxtGlE314FcT9Kq/2nmgM
         h241UkChmqvKhN6q8Mlaf7CxX3u3Ed71P//5ohmoKlhbVXRCGIUOJjOV1ZlcId5Efkex
         rwDA==
X-Forwarded-Encrypted: i=1; AJvYcCVXNr8m7M9Nw536rJ0CRfMfsSNbPCL/+e8sSh9Yg8KCj0FecO9PsFftViqg5FUijLMgxhqetOH44Va7@vger.kernel.org
X-Gm-Message-State: AOJu0YwtV0ZUZaXnD4gZV+viwxrahb56cIRZ1jsQ1uKXfBBoQaXV/xPy
	3QAH20AcjgjuRLZlwh6cTVb6ySquwWdqxwVwKj0VXNTwUY4uBTGQ8shGCasEQ455NbGbBan7DOt
	y4QQzzfHxQaDQAaygyeiMvWF8Up2c0Crd1vf1jQgOqMwiPKefYHzzBq0EHoCbFn6C
X-Gm-Gg: ASbGnctGkL2RQh5MA8R/mO2XQdTKefVv0rhZi+rI5qtU1+uClsCS+Z7XyAo5CjQT49h
	9hEtdDwlVqNCo2V5ac8tCQkd/rYu8O0GBb1SQhdRIcGdsy27A4+NYkyNllXe5Fyp7ETyNVsw6M5
	/9YBxPeP+PhW6yTtcPv5V0ozvm6mCzfVbNQoYYrpkx3gg6jrkki9H0Qj2BwOWf3EJmdQFGj8k3K
	ayvRWTINFFuhddH1sr9IfgBuLg1WUgijRIaWn1rAnT/l8G6GwRTiKSfsHbz35OHry+l5RhYeCJH
	hSeSqHbhE8ySoTUX16E/dtVJCiMDsrLIEI+Ba9DCuZJXSIDMrCuG1PU5H4khCzyS7C94sEME1rZ
	246Z1mZPxG2QtrQvaJFD5NB07ejIl7HIpG8y+Tp1PxOPmfYV3xMGyYVdwROTyn/cVop+18Vs4f5
	mZbASur0XMf4CJ
X-Received: by 2002:ac8:5a50:0:b0:4ed:5f73:f82c with SMTP id d75a77b69052e-4ede6fc95demr89379321cf.11.1763118722428;
        Fri, 14 Nov 2025 03:12:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwoAFhBTNAYz3zsfK7mcs2aDBJ2FOHVUz5CPbAQXuI8ZSje8vzdqqLxQruO9R+VOgk9aqUEg==
X-Received: by 2002:ac8:5a50:0:b0:4ed:5f73:f82c with SMTP id d75a77b69052e-4ede6fc95demr89378871cf.11.1763118721892;
        Fri, 14 Nov 2025 03:12:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803aca8fsm1014691e87.9.2025.11.14.03.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:12:01 -0800 (PST)
Date: Fri, 14 Nov 2025 13:11:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jianping Li <jianping.li@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, ekansh.gupta@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: kodiak: Add memory region for audiopd
Message-ID: <56wrs6h3mdscpfogcsl4rlmuhj56cixetfkl73bswfm2wlc2k7@ixgeujbtulmq>
References: <20251114055639.1050-1-jianping.li@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114055639.1050-1-jianping.li@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: YYsvv8QgJLtmY6L9A48hooc-4nsMj0fA
X-Authority-Analysis: v=2.4 cv=SvidKfO0 c=1 sm=1 tr=0 ts=69170e83 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=i_qK8UXPN19jCK_xs14A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: YYsvv8QgJLtmY6L9A48hooc-4nsMj0fA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4OSBTYWx0ZWRfX+8eRTmKx1Kxc
 O3fayCu530ieLt8R6Es4yRviovje13RYqmjL8o1/0VNyiWdmgWG/pvogPyGPI0lk6upwD1YteuM
 BAlzfCNy/Xgu9npQkrQRNYNzZlgzlVdMNLs7EAVyr8EmcsD2khsGvCECaLB0TpOIsQet8je4m9I
 CU8LaTL4k63ERh4ugBQf2H3MFeSRJ/h3SXGMBttGNvlmsSE6JOdwcjN4a6ezZGbPmLldmgXIDVi
 rDCnqp7WXFaleO73J3yB1Fi/E1vvMhSt7nYA3Z80mjfcw1S5DofP4V8gqCVvA3VlrKKRPszs1Hf
 jw3M2th98rYuwAivTFxsEHreOrl2iVr5VdOTVkt9a921XI8wCKBeWXlF/KbweXU3gGpfon6K7PY
 hxgqcCJASWQsRC+5DBlgrJYXEYlexA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140089

On Fri, Nov 14, 2025 at 01:56:39PM +0800, Jianping Li wrote:
> Add reserved memory region for audio PD dynamic loading and remote
> heap requirement. Also add LPASS and ADSP_HEAP VMIDs.
> 
> Signed-off-by: Jianping Li <jianping.li@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kodiak.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> index 3ef61af2ed8a..0cda9af98dd2 100644
> --- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> @@ -190,6 +190,11 @@ rmtfs_mem: rmtfs@9c900000 {
>  			qcom,client-id = <1>;
>  			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>;
>  		};
> +
> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap@9cb80000 {
> +			reg = <0x0 0x9cb80000 0x0 0x800000>;
> +			no-map;
> +		};
>  	};
>  
>  	cpus {
> @@ -4139,6 +4144,9 @@ fastrpc {
>  					qcom,glink-channels = "fastrpcglink-apps-dsp";
>  					label = "adsp";
>  					qcom,non-secure-domain;
> +					memory-region = <&adsp_rpc_remote_heap_mem>;
> +					qcom,vmids = <QCOM_SCM_VMID_LPASS
> +							  QCOM_SCM_VMID_ADSP_HEAP>;

Wrong indentation. Please align vertically (or fix Tab size to be 8 in
your editor).

>  					#address-cells = <1>;
>  					#size-cells = <0>;
>  
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

