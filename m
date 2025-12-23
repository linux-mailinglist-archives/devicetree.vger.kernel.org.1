Return-Path: <devicetree+bounces-249273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 524B2CDA5F9
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:32:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EB0D3007256
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 19:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB4B3054EC;
	Tue, 23 Dec 2025 19:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GpmL0u2s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GVqWQM15"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1C9823DD
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766518374; cv=none; b=SS629JxCqLyLsSKTrkaYt39TDcI360OBPh4bIi7gQ0cWhY4xq20/YXzdhD0PitMozDnEEEe0RWbOMou3WQXrDfv1BVY28s9jV3/z1yKTu+ALQEB85a8tlT5cshMLFflCjzXyV/dcXdFk/Z+StrCDscL0+G7lnO6hG5yOGmBLOiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766518374; c=relaxed/simple;
	bh=txybQ7weehVWbPl0FoXHYLBEWbqUlpKEL1gbCygHkP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eb/BdqvM4db7DIB8+8otm7xEKIqQp4ik2phJBwCRTJe8ULw5skREyOrC/xWtANlZC5hSyavT/sTWcY69SbXKUQwemJMCF7FUdjQiJzvQ5LDNFUTyCbk7WklX+wmOL0BPMa3FMg8u+tz7T340oWFa7DYnM1D9nrWHAR82p6atTtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GpmL0u2s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GVqWQM15; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNCQdgi1901934
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:32:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nO+pMeT/jLArT7HxKp8kUXyA
	qUmwO9NbZdYFn5mIfdY=; b=GpmL0u2svASRgmmu3jFHfOouszZW8/gxURQ6lSFW
	GtPR1qW/mws0dbdQMfoxqOkoXzf1tEM4sCiN/hLsOLe7HqOULpOl4CI7rq6J9JDM
	AoifpQ8/L8WNXfgBoCZF5pA+AsZMnp0cIF8W6vnb7wnz70wAFQ9gKGqZP1ulDSqU
	Htg7ic6rtK9Xf/tIqKYVo1hf5c4zJTJiIxYrw294wfPV/7mhNj9TKJiSSLS3tkvH
	+nMaDR7qBs2qvMmZ7xbZvNVJlKAdZEZiRBckzSM1RqeLtsZAKgfGsKpZSvgdc7Rg
	5x4YoGEHXZOF7xG6v78Y1nyXphSMBmdEhLdok1VuCclXLA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b79w8m7n1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:32:51 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed74e6c468so76294941cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766518371; x=1767123171; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nO+pMeT/jLArT7HxKp8kUXyAqUmwO9NbZdYFn5mIfdY=;
        b=GVqWQM15h2GsLQCzMlDVXEVuE/ps5OwRA1cukULH0xFs2Qe7oSqpYLg3M5H85/a0X5
         3eW20PDy2vatKxIBIH6Zw/gQraXZXW+0R4D/9WpOJCCuhTpaskUiq+0xHNaI9eBuoUNQ
         xKqID9hBI4Lrrzy8ToCRilVNAFapJrYWbuXONj2JVp7MUnWf0T20eLcsvYQsQ6x9gcbg
         nIO+m+LPHRnWRg6dHlByF7WzzCh+0SI11btqZbdvyFsFah1dfHaETJQIgVBcwNwlnqJz
         iahP22eF7ob9MkZ8Ik6z9DUvcFDlpQ/Ab1/+DKfTRcc9Y2/k7ZWF7Ds5/oUfD9RSpXIm
         B7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766518371; x=1767123171;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nO+pMeT/jLArT7HxKp8kUXyAqUmwO9NbZdYFn5mIfdY=;
        b=kFF9ZilBZqsPWzl9JXchVzzyQ0v+kBdG2j0kL5ruV9tbJKfl589di4KyOQJDcf+f7i
         ftzF1B1r4tFF1PmcnX8k+1ExaZOWwp9dSmOwhkSZT5PLgVE/Om9Pt7phBCbXWjqmS3nm
         R4vCAVEXYmIiZPEk9L1hyg3LBgg+1a+ZgZrPqsOe5bmprHoWCyuGMmeDQbS+kq23tFcl
         BBwlcWWO8gmqNYbZxdalNPSXZGS1GSBWWp/6xVnSW48rlScynr4xgcb5i9ZJdwB81nrl
         ZfuyZKVYs6fEEspYaf84MPeR8A6Si5+HCLGca4LQqNDVQZAS5f0NYb5jdhzcUMgfrek5
         KnHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjgAL/WF6zeT9ApuSsd5KimsPqejnP2TeoLFKeeySXzAQP7yY/FBgXGhBCNZYjycq568z5ddoGkeK9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz66LVs7ajjZIp6R3fFSuJ6Vtbcangs9dloEpiHXVpZ8miJF63E
	BvqwOM2/1OIWcc2v7EFnHoPKiM7InbsN36QOjBMYpqvv4VOmWRFdhJOZDqXlRHRMGrDXDTcxa+G
	fQKaRb9wbpor0WJVv4K68UWIGvpNXRa9I4RMyUTUDSGc7WDEwzh3D2pfvzw+cLRL4
X-Gm-Gg: AY/fxX6jA8aeV7UsRXv7xAoGDZV4nQo11Pk9kVPZ23O4hVMZPsSPDCMDvoxpCMLJMDh
	E9wg9FGNAFxKppu2Zkbb5xwYrd5/bp9J0qptF/t/PnH+S2S3KTI82Z7VHceG582LMtSD1k6F6RO
	CAo6OxjhUE99kAgL66e7jmQJLGt8VT21O8ZWsQNMx1cyv450bQnSJJF5H+Q+Qo5d2Y0Zz3I43mU
	lyMwE9LL83cB9ommqOrj5WwxwAk1da6BOWmbOXOIIWKVVhp0oUoOvuLBhDn+kbX7vsa2qXwgYlB
	noxiTmacbXoo14jTNDNvSVg0JP+TQCtv+zK1Q/FN8xQqpa8QIFVr4h8eaqx891FJoWNn4Na38E1
	s5Kik5/F0zMdozlXwYMaPhrs3r/QSx5gSc1WExCt3brRFSu40LiV+KTDV2oDFTCkLZdZy8LPDIr
	Hmgh9PPk7bEvTy3A1eIKzSHNs=
X-Received: by 2002:a05:622a:1c11:b0:4e8:83b8:9e7f with SMTP id d75a77b69052e-4f4abca8385mr232796771cf.14.1766518370750;
        Tue, 23 Dec 2025 11:32:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE1yf+DpzB1G7l75A3XEZ5rMlwIkdTZOMS7bF9LhL2tmqhpkY1WNpmB5BLfcHBvSA4tJHA0bw==
X-Received: by 2002:a05:622a:1c11:b0:4e8:83b8:9e7f with SMTP id d75a77b69052e-4f4abca8385mr232796311cf.14.1766518370173;
        Tue, 23 Dec 2025 11:32:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1862836esm4370503e87.98.2025.12.23.11.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 11:32:48 -0800 (PST)
Date: Tue, 23 Dec 2025 21:32:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH v1 5/8] arm64: dts: qcom: Enable cdsp qmi tmd devices for
 lemans
Message-ID: <24kf4zyigxhlfzmjynu6pg5cbdeoe4mlyrqdfsxegctifk3fih@2ayxxckbeuvu>
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-6-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223123227.1317244-6-gaurav.kohli@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2MyBTYWx0ZWRfXyG1dthg22qJb
 CfvV/kpf3ERkDV4VaX2b35koUBnkuFtWedyLMLxaQgI2arWECxziw0Zg9XFtUgGE2n1RkGBF63Q
 NflpnpU3WU9uBvXl8vIeFPf0FszTGCMlgPk9drpVEXrYshl2l5a3WFhqJLUfzGMjbdwA7Gt9C1m
 eAZy/nwLxNYLTECm7Ftg8M5C091C6TGIew5JNs+zWAoAl7s4ozDPypeIyCMMaQbFc9TcY/HdLVu
 kK1/u+WmmIQBx44joo8f4zyX7OPtCRnXgucnPP019YxFY7fNUDV8/Su2JnFy+gJP9Xlv5t46PQp
 ratt1ssHLMiNnJx+ehGfg9zOpJ5/52pbfn0RBD9lQvoGw+xaROhekxHRRbC3Ma/H8uzsKK2HDp4
 cE3aeYLsJRwGZTbJyWK1YTGk9adrOSuFuhsEgrOvJh07+CCj4Tk+gIbzBDWQT9QsaSi/0IUyxqy
 6Ls0kqis2XwYy3/xhiA==
X-Proofpoint-GUID: XapVRvRCG8m8ICBa0SguqvFvE4bkcH4k
X-Proofpoint-ORIG-GUID: XapVRvRCG8m8ICBa0SguqvFvE4bkcH4k
X-Authority-Analysis: v=2.4 cv=T/eBjvKQ c=1 sm=1 tr=0 ts=694aee63 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=BUufrYYXWdKzIi0LhzoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230163

On Tue, Dec 23, 2025 at 06:02:24PM +0530, Gaurav Kohli wrote:
> Enable cdsp cooling devices and thermal zone cooling map bindings for
> both cdsp and cdsp1.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 138 ++++++++++++++++++++++++---
>  1 file changed, 126 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 0b154d57ba24..68cc4badaed5 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -21,6 +21,7 @@
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,gpr.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/thermal/thermal.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -7018,6 +7019,14 @@ compute-cb@11 {
>  					};
>  				};
>  			};
> +
> +			cooling {
> +				compatible = "qcom,qmi-cooling-cdsp";
> +					cdsp_sw0: cdsp_sw {

Please fix DT formatting here.

> +						label = "cdsp_sw";
> +						#cooling-cells = <2>;
> +					};
> +			};
>  		};
>  
>  		remoteproc_cdsp1: remoteproc@2a300000 {

-- 
With best wishes
Dmitry

