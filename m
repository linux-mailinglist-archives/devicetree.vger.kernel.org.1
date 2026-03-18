Return-Path: <devicetree+bounces-277157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wK1EKvuJumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:18:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F522BAAE4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 551F5300E29A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE7C3A63EB;
	Wed, 18 Mar 2026 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L5Gfzwb6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iT9YOnAD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E99373BE4
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773832696; cv=none; b=q/cfxy3RPOHMx6YSYXzJtOib5QdepFpj88gphnx7cch7+0odi7DBBIDCwTbJa6U2dG85bmgs3j91zdYiXFix9jMLuRS6W8YzhFC3YzX568Mps1QRZsbTvyzZlXHMJMLLamCb6PA7F2draLu2DEFaOaJLULgxP2k6z4VB2Xa1vX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773832696; c=relaxed/simple;
	bh=cDfxNHsbKMfcqtlKn4SXglN15qxSbPcn6NXFToWwxZU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rR9F0WphXye3TOXpEriZCFt9JNXRAs9qSJINci3KdOp13Rrjy7XQFunsdyf4E4KZtvM8CA4V9/EB2GsHveF5gVvr4/G5LQFjrgBp6F65CESmESToHJgL0p2fKROV7QYfa96gbOTM9I3iB1W5FnSy0Oj2gsymP1qvYlSlw6vKSy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L5Gfzwb6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iT9YOnAD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZHlJ2878115
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:18:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MMAqfRUK8/qrilq1EPFO0v6BKRLCe9ctaNNeJl9j3zM=; b=L5Gfzwb603FRNrRU
	ckK1LtpTH31dtm6KzVl2re9qCxUts9eChQ3QI+gojUxHe3fMbHSbWvrvqAJ0z953
	RcKlnrE5S/i6W1WvFox1u68Vsr8MVtEWJW1yP2o6FbSTXTaecKTgUsmE8CJu98Zh
	/T8c/DWfo0DyKKyEcwciaWa5hy+7iaNLrflvn5JkemOh2uzYj+YZcVRKFqlot2xl
	PrBNXQgl156miqtMWqJTnzzS16yF4MKeg4MaCi7/bhyMSgYsudhKeLu6wfcIBLdc
	/56o1OrF1aXhHgjKcXW7XRIhLRiIYkPZxsCGG/mH4sCleYMLOgk8C82TNsBqOuFG
	j9fbTA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr17ab-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:18:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509118781dcso79335481cf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773832694; x=1774437494; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MMAqfRUK8/qrilq1EPFO0v6BKRLCe9ctaNNeJl9j3zM=;
        b=iT9YOnAD/Cg7cPME81mPs73XGo0dg34PFZ7ihlA/oZ0czch7vrGhMlTWZTxeisbGfR
         xMYFHqXktKFXDG477GporY+Dcz5qBJELcvPDFyyTVT7ZWE06OkSyc94qAD5CUvFpID0x
         G6+ghzulbgn1aoHxUn/taf6TPP0DpiDGLQhDnVmKn4ijJ+KFTqcrgg6gU/T8w9rV7cGa
         /i4pk+vtS3Ufug1jbctOB8jW3MH7C5HqmMnjbvFrTBenxxH07h99jv7K42L/mgC1mseg
         W6+u7A6fEF53GbcCWNMH71nwcWz390q+5Kmy9DTK9LHhii3lSkhzEyFf0bPodcbye8Ef
         IIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773832694; x=1774437494;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MMAqfRUK8/qrilq1EPFO0v6BKRLCe9ctaNNeJl9j3zM=;
        b=MUNjfZOZGfR4jQpRJ80FiheDOoiF2sse/eCZytV/zogkRWkHFdJPvld0UppFfco+GL
         7qaODpe0t14RmelA2Cb/g9Gmh9enuH8j5v3SMi4nVagbp/Zc35dKP+abeV7AvqKoEd8V
         MZO4piQlkFlbZLrjrer9dTGJHusFYPtPyMmhWYiQ8BERCX2iWdQ4qcRBRQW4zvGHdH1x
         TyY9XveqNk4sezmc87551TowtAu66bSLJiAmpbPd6y41Gu0cAzYvVmrGlNa198MKmBPc
         Gxe5OE0+0M115XJqyVsHc6bDAgkytYi2Xew7bQ3poR48R3vE9qGmxFsYFq7GYJeEBoai
         luNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJvu+n9+cKblY9JdKF4yf79Yp4YHz0z2qkNHgSnn8+Obu0IvQC/2M0nzw4udIAE99hpkBvhbVgJlIt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx9aJYqdDAvSASS0OnLuOTy9DvjjwjRsGNWL3NnrYTwGUTI7gS
	Kb36QeKfc22YHCc9soZkCvy4s6XiWgAsCIeoPRu4t2Iu5xadB+nyALFuHXLvOVRuaXxSIfnc8z8
	vEqMuQiUBcc3iiSaAn113B3+LbgEZpsSNsEJ38UV/IEbdNBQvoYsApzarmtQy7M/O
X-Gm-Gg: ATEYQzydI61YLOEEWXgf4KYkkq+062NfyRuggCum5Zs33rAnh2M6ndLnKtiVdRExdXv
	At/9NA3hT2uAwQtUfEDi4qWZoqc9mB6ZQP7n/xxnG0PvBHV6Ut4mCDsx5aZM/EJ8AvIJKDUyGdh
	OzeStbxM8BCP6ePv3JqR1H1Yz6zTaMEuOUyIuckTT6lgK5RmnfqPtiTWdctuL5CBpxT5dTeRJtK
	VfFbWCqgrVBCdjpQNTSPLYynmlqWi4b1MSlsu/GjxKqnr9QDA6Vpzg8ETbBWbytUlzj97MYLRoY
	bixzwYt78LXDLON/cvmtjQ4g/nVYw/fVEWvB4AHRFpfc0JmagEo90cS0m4+s1tBkWZpW9+HvXZu
	wT3MCxB8yUchS6urCdtkIscgDCdAvVn+UIYoeyepmqVKklCEZtedrlZR0Zu9YOu1ouaXtDxgYwO
	MMX9U=
X-Received: by 2002:a05:622a:1aa5:b0:509:1057:4a67 with SMTP id d75a77b69052e-50b14751006mr27541131cf.2.1773832693587;
        Wed, 18 Mar 2026 04:18:13 -0700 (PDT)
X-Received: by 2002:a05:622a:1aa5:b0:509:1057:4a67 with SMTP id d75a77b69052e-50b14751006mr27540561cf.2.1773832692775;
        Wed, 18 Mar 2026 04:18:12 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f17410aesm185250466b.62.2026.03.18.04.18.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:18:12 -0700 (PDT)
Message-ID: <fc42719d-3474-4883-859d-b12a1c4a5cee@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:18:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: Introduce Eliza Soc base dtsi
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
 <20260318-eliza-base-dt-v3-2-8a50bd2201ed@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260318-eliza-base-dt-v3-2-8a50bd2201ed@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba89f6 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=2ZscZiC02MhLG_3MCHcA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: mLUTZS46rYAxKa97698XDIHi8SgUXTLJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5NSBTYWx0ZWRfXybn4NKexKlTc
 GS0Evvh7mnfW527LUZgDkWxl9FzTgx4nNvWo9zaWw+qpu/APf60PHfFiTcH2Z61pCZRsNfIEfyg
 pFX7rUSYj4sEONTzsUQ6ZdBJFa4X5ChMjhHUUCIympfgYRdyk4BPlJu/dE6fyqxPw6PE2u/07B3
 4mcVECy7dWGqSrGn3vqZncHdGrdF7Ypw7fRk4Zdt9BSr4ToYGyx/pPDcc54L+5KPeoibTQ2BL1G
 KGhZ47Vb7Qjqdj+Xab1jd4f5FqLAKJhO+jvxUSpQ1Sx6l0PDhC4eEBT+edWoAHoi2Cfp1kywiWO
 9A3gEt/QiAFCufavlG4n9+zGWdUBIX5oa5BI4c7YnDDa4JG5T0fmq7uWnNx9BQu3vu+mNIPZNyK
 e6HfpO7fywNUeUCJdjW5FvNk37AyS0tHihasgjBQdxj1gd1a3r35y9W4fGFP5Yg4q9/Tpw7pTTA
 0QEycGmy2C6tJ7fazow==
X-Proofpoint-GUID: mLUTZS46rYAxKa97698XDIHi8SgUXTLJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180095
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,1d88000:email,c400000:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.1.134.160:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277157-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 25F522BAAE4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 11:19 AM, Abel Vesa wrote:
> Introduce the initial support for the Qualcomm Eliza SoC. It comes in
> different flavors. There is SM7750 for mobiles and then QC7790S/M for IoT.
> Describe the common parts under a common dtsi.
> 
> The initial submission enables support for:
> - CPU nodes with cpufreq and cpuidle support
> - Global Clock Controller (GCC)
> - Resource State Coordinator (RSC) with clock controller & genpd provider
> - Interrupt controller
> - Power Domain Controller (PDC)
> - Vendor specific SMMU
> - SPMI bus arbiter
> - Top Control and Status Register (TCSR)
> - Top Level Mode Multiplexer (TLMM)
> - Debug UART
> - Reserved memory nodes
> - Interconnect providers
> - System timer
> - UFS
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

[...]

> +		gcc: clock-controller@100000 {
> +			compatible = "qcom,eliza-gcc";
> +			reg = <0x0 0x00100000 0x0 0x1f4200>;
> +
> +			clocks = <&bi_tcxo_div2>,
> +				 <&sleep_clk>,
> +				 <0>,
> +				 <0>,
> +				 <&ufs_mem_phy 0>,
> +				 <&ufs_mem_phy 1>,
> +				 <&ufs_mem_phy 2>,
> +				 <0>;

power-domains = <&rpmhpd RPMHPD_CX>;

[...]

> +			clocks = <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
> +				<&gcc GCC_CFG_NOC_PCIE_ANOC_AHB_CLK>;

please align the '<'s

[...]

> +		ice: crypto@1d88000 {
> +			compatible = "qcom,eliza-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0x0 0x01d88000 0x0 0x18000>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;

I believe you will be affected by the change (?)

https://lore.kernel.org/all/20260318-precious-qualified-oryx-ef619f@quoll/

[...]

> +		spmi: arbiter@c400000 {
> +			compatible = "qcom,eliza-spmi-pmic-arb",
> +				     "qcom,x1e80100-spmi-pmic-arb";
> +			reg = <0 0x0c400000 0 0x3000>,
> +			      <0 0x0c500000 0 0x400000>,
> +			      <0 0x0c440000 0 0x80000>;
> +			reg-names = "core", "chnls", "obsrvr";

0x0, one a line please (also below)

Konrad

