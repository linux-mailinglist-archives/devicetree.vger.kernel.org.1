Return-Path: <devicetree+bounces-158744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F40A67EA6
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:32:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B178B882518
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCE51EEA20;
	Tue, 18 Mar 2025 21:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o0dFYN26"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1241C6FF4
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742333527; cv=none; b=gSinJ0f/dysFvppj0Q4akVUt1Qz74nzhCV5nanjyFmfxET0SXPYrOXQ9t2v1yTAwsDDV+50/1KugJKJx26VTgZkDUmhPQwwdLVqzvQNyUC6mklGSfpXWV2oGyPK7RHM8/0a1fEAfIDJr5W5tzXUW3lc/yWQDWyPPEmhKlW670G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742333527; c=relaxed/simple;
	bh=kGuYSW+3XPJhd4vYQ1Lm44snj6bCPoVrhsU9b4LTokE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ts+msV1YcM1jjS51Vvru++UDF3vGtOwceTJdRwXEy5CDLwr/V+0XiYuKY9mvVM9ZSOLvrWD+ant8/XOnlb6K7XA0+Q8FnW6mCoLrlwwKT0ap+z2Mum0MW++ViWjbQplPn1t1IiTVOzF9345+Iup3fe2VW3xsoGpm9vmBtk8AVh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o0dFYN26; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IJZkuD010333
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WyVK8yzJedmPXU0A2TA1oQaf
	q8gfB61z8bpGow7HKmY=; b=o0dFYN26lJHyEA1HimNzT1jqueP7/OPEpM2Ug5wu
	Q/3JFEX6giFl+vVgAt6de6F4bwhwosG9h14roPpHVNDaeYq76s7XknrLewh/0kbJ
	ex9SqYTS5uVYR5KzV7RWG/mZcPyIykOEnWESpyVU15JrWlrXyHKWT4pTilxpP5ud
	oOnOIYqYqavKw2HxwYBSis1jHtP9eI3l3otalSpzYkdl7bfOut+9O3RelhVg5+UW
	lNCVTTXIi/Wl+75cqccfqYlOO5AHZOn+aZXhe9m+60ObBm6+NGqmTL6Lk2m62O7S
	sOw96A6tagplNH+HH96Y/fXaQD5mIvXATbxhMiQ1TBcQ+Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exx3395v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e91a184588so187523176d6.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:32:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742333524; x=1742938324;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WyVK8yzJedmPXU0A2TA1oQafq8gfB61z8bpGow7HKmY=;
        b=camaAMIpm6y0lpL9i/k0eoa4HI9Axfx4c0ht3Q8/Mow/uust8EN3Moh84wtcoV38aT
         3SSJeB2OfihUfnVaqcHvAhcwp2qGoP23nDyPWpsXzX6ZFXwlm1o9+uCz7aOVzQtIpk+f
         4HCOBv1MgJyxXEF8bwJCfbdGT+ZNwKIQAPzrMCbX6KKNRoN8OiYSj/d5WZ+pkiHq9+xF
         OILuPFohTWqgow0XqLhaji9dDYtJC/UZK3u+z5GunNgqo/sW8zBYwg9r/HL4Nr6mTSOG
         dh2qN7Ckko665GCFs4Hy4gdbxjG8AyawPjnzs/p2XSG7vUJrKPS5nkisiu90xsk/4466
         FtKw==
X-Forwarded-Encrypted: i=1; AJvYcCU4pEz5t669JIjNFNuYmrAE05sZbrr5gvQNv8wdKdExMGGrMXACsDRSU5vuEitpDBkXLCKbPNEJVul9@vger.kernel.org
X-Gm-Message-State: AOJu0YxLcKm1X0D3AKNWLbxsWMZ8hdxQIDPKTpPZXZo3RlwwJwXIMY8i
	VVDJSWnERwY0y444n6RmqDyMWogqnIIHnnSJOIBWdD9c+gQDFYTAC266zhuF46U7rX0Yp26LH+N
	KjHYDojghxw87kmNz9jJhXH3hrrWPBmFX3Ux4wJg+7+jLYO0FhDnQrEXiKXvc
X-Gm-Gg: ASbGncv/bEjej7FUCNh5ygDDYp7ZOyEa+o6owgFRbZAzSL4qkpzBLALoKXs9LjoOVzq
	8GZxS6v7Ho4rsoRB3fmIUqN7+sDP5jbUeGVBBhvC7RQ9JridlguCmniUfgmpFjPrCwv6lw5FJTW
	wKJJwotA7szlePhR6ufYtN4eLg8vqV+KlZdLn4IFJpORK+6Uq6RYvh13aaQsERtU2NFZWURv9QB
	u/8wH+hXEvRnhd/VJ3aBXiVUkss6mE2GZBmhF97RHjq+ofsm1aUSiCUbOOs6X6bJgbHdNPhdY29
	2756rqA5tXIcbq6h5QQvEh7ZUSiUI9hHAxNYWq5gSlb3/q/V0VTGky1/g02Mib86v1KxghWiQ3b
	ueTk=
X-Received: by 2002:a05:6214:c21:b0:6d4:1680:612d with SMTP id 6a1803df08f44-6eb28f47655mr8340016d6.0.1742333523891;
        Tue, 18 Mar 2025 14:32:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMUA1WDQvLma7EkbZSoTSIwuzcR3M76DR5dvfs3yKtMB6Y2b1tguSSi0KaGYpe62U401wbxQ==
X-Received: by 2002:a05:6214:c21:b0:6d4:1680:612d with SMTP id 6a1803df08f44-6eb28f47655mr8339656d6.0.1742333523618;
        Tue, 18 Mar 2025 14:32:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1170dbsm20535821fa.64.2025.03.18.14.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 14:32:02 -0700 (PDT)
Date: Tue, 18 Mar 2025 23:32:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/8] arm64: dts: qcom: sdm845: Add specific APPS RSC
 compatible
Message-ID: <obuvhml3u66gclv3dsyb5vfbl7mjcpp4i72bsk4tpaxclqkxrh@f4dcscea6gwa>
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-3-cb36882ea9cc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-topic-more_dt_bindings_fixes-v1-3-cb36882ea9cc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=b+uy4sGx c=1 sm=1 tr=0 ts=67d9e655 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=LD27zDrQdNAlnWmNbq8A:9 a=CjuIK1q_8ugA:10 a=grGYL8wM4DUmEeUJhF6G:22
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: SIODJJC0fyXOB4HHbBYg5P3iJ8L0X3ly
X-Proofpoint-GUID: SIODJJC0fyXOB4HHbBYg5P3iJ8L0X3ly
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_10,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 bulkscore=0 clxscore=1015 mlxlogscore=910 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180155

On Tue, Mar 18, 2025 at 07:35:16PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> SDM845 comes in a couple firmware flavors, some of which don't support
> PSCI in OSI mode. That prevents the power domain exepcted by the RSC
> node from providing useful information on system power collapse.

I think this quirk should be limited to those platforms only. Generic
SDM845 platforms should be able to provide this kind of info.

> 
> Use the platform-specific compatible to allow not passing one.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 2968a5c541dc0a6c1c28e32160c4c40a8f332497..4466c08a8bb08075d71835e04733ff4dbf6f190b 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -5264,8 +5264,8 @@ apss_shared: mailbox@17990000 {
>  		};
>  
>  		apps_rsc: rsc@179c0000 {
> +			compatible = "qcom,sdm845-rpmh-apps-rsc", "qcom,rpmh-rsc";
>  			label = "apps_rsc";
> -			compatible = "qcom,rpmh-rsc";
>  			reg = <0 0x179c0000 0 0x10000>,
>  			      <0 0x179d0000 0 0x10000>,
>  			      <0 0x179e0000 0 0x10000>;
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

