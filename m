Return-Path: <devicetree+bounces-225362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F1EBCCD84
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0DAF74E99B5
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A9928B3EB;
	Fri, 10 Oct 2025 12:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FW0zvEkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CBA28935C
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760098431; cv=none; b=PvEz0Dm2Fwk8yTSO92Dp2gv+OG91ryRCB70mKcrSFXaqEG/F8d5sZOlGP/MPEYTGROoWOeJqORX1GSBel//p78/t+0f/EJdc8apLU/JXOw6+gF3KsJ0Crd5dwaxHeocO3dtq7xMr4JjrSrfNO8vqwQuegE0L8BCVxePYhEHKOvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760098431; c=relaxed/simple;
	bh=rxWiAxIXHzbrmd3br4/YLWJ51Z0MVMPkhu9pkUdyqeI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JMlj3mm52gYZnP0gt5NKG9oUWvD+Syc2eaKjQKtYPkv2+Nx4Q+t/ooyiHqeLsqU9eyERc9mIHBJ0BD1r604Tzre2TzOGumQ+bfrpZIqBZHbuJbv+w05Xtw96AWmMBk7L/4xNE0QqzOFdgri0JKkO0+eYqZfVsUWioHWh1jpuU94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FW0zvEkd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6XEEv026051
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:13:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tDGkN8gOyAUIi0W6Qk/6uKP+
	29WhStUz1lGf70zr7LI=; b=FW0zvEkdrGR6fLL1VNaa0Ke4/S58VjpnFy/Kggz3
	m0R2Z5UiIJP0yFfM9tooiIgbaygbn6pclWEF5wKA/cYymCeLkouuV47ZP49EQDn3
	MKgynj9gVAEpmY6F1Wa/WqmOzCBcfPcYTqEuhTkmFZmEtnVXyGXyXCpCaPOWObC2
	prG4dKEa86+id88uWtZWeqzWgp4dOzBpb5KRm2VZLiNZo/kNrNpJt4Bo9e0FqN85
	m6GKOEBcpoerIQkdlOQ4UvE5RUmy0VH/npNn/yfJL2DMvh+j3TRd+NRmxWFBUUMH
	spWeELgtljCjPxb9cCxJlEfu+9l+BHXFcn6GcUvYLUh1PQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ne9xj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:13:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8635d475523so678060585a.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 05:13:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760098428; x=1760703228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDGkN8gOyAUIi0W6Qk/6uKP+29WhStUz1lGf70zr7LI=;
        b=hO2pAC2UvgXvKooC5nHNtmd6YUZHkc2q2Wa5nGsMNW/WKWEMBNH4rEqh/65n8Vqcyn
         BBhCmXiv9QAdf+MzWH7r/KPlYjBVEQnn0XGAUZaH8eTJLUtXqC4PLqOxXc1WO9ZVMy1z
         WeInfbRF/qJpk8VGlneHQsnhpW8G9/hhCN+F3glPwkgcythjZ/wF79Ds03MjxHcUWCOh
         opIT3CcOInI9X3oIAWmzaR8JSSb5adko1wq8/O2rVUJvA841nE80IqbXQCT3WXbtjuC3
         bwXtAzAq84kkCFcui9aVgx2VC651qZwdE2RxnZqR8HLOtYIF4EWW0DRtJyBaIBM4hMqV
         Wiug==
X-Forwarded-Encrypted: i=1; AJvYcCW6Uw6RVSx0cbVoTJxXm027b78qQDRYah/KBDPW5hc023+qZFK1yN1yO7Oa2peNeX54ThZFGSXkEzPM@vger.kernel.org
X-Gm-Message-State: AOJu0YzLhixXLlcOEhqY1+CEQ1Bygb3bVgSRIcqgQYt/pHFmp0pNVhYw
	f3LGALtsfApByyxCXzEDdr83yxcvkEsc53NzlbsSeBjJVcLu8lTYtE9gwYiuPz90IruarTP0w9A
	T3t0LMVki3Z/5tyVIWYcActmwhGE6QaUG2E5sFzZaWzjChWbeguBc1TtEhzIs7eSB
X-Gm-Gg: ASbGncsbbVURP0qf3NpQu+OHZvVSaFX9RUIudHHHyTBkSkA2V0xufdCew3z5F97hXKB
	OpDONIE+x47kz/viogWb/xVqTxtpLNmrEwD6rhF6L0THI7B5pWQXOq9Y3MNHwImJf3RYHTbTErC
	ak9erpPhHNu+HwlfLD26IOOo/pU/8Hw7EXg0gNpg4ACLeMbLK6DqkDLel2m3pK1Yq1aIk2+MGbH
	G3gPH4STHauPeFiIek+W5JMl9h86qLKQVRP6wvQa95urigPKfD7d5C4voX2m9OQbjGWDxeqH8on
	d62dlDK3a7UVtVsZft52z0a8DLdeZVoMNDKnWtnClZNN9el4GfHCbsO5WmAyVcA4nPw+SljCEZl
	6dnbpnkbvzfnshj679gJTc0luu4LOeO2M21BwZ5rX8awOR+GUCGrz
X-Received: by 2002:a05:620a:6914:b0:860:e823:887d with SMTP id af79cd13be357-88352babc71mr1604020585a.71.1760098427477;
        Fri, 10 Oct 2025 05:13:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIYquGU+XwuvL90RE/f9ot7wHpbrXD7C12uhmjFXxkL3ZITSKCYzHrvKgGNCTsDraRmvROag==
X-Received: by 2002:a05:620a:6914:b0:860:e823:887d with SMTP id af79cd13be357-88352babc71mr1604014285a.71.1760098426894;
        Fri, 10 Oct 2025 05:13:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea11ed5sm5786541fa.35.2025.10.10.05.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 05:13:46 -0700 (PDT)
Date: Fri, 10 Oct 2025 15:13:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom: Add QCS615 Talos EVK
 SMARC platform
Message-ID: <rrlpi7lr7u3tqskw75hp236rgzkdsspczk6ezhxnslvub3d454@jkczfe5ytegk>
References: <qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr>
 <20251010114745.1897293-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251010114745.1897293-1-tessolveupstream@gmail.com>
X-Authority-Analysis: v=2.4 cv=ZJzaWH7b c=1 sm=1 tr=0 ts=68e8f87d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=cO8QargF1s2uRlvNBuYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 31ZXuxH2sekhmJnzOFE_UzTewFr9ZpDM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX1vPQ7gcCRa3A
 4JP+CrZtHalE4DqGayEoTgeApwIBq7VckRYjtM1RAQbm3NLJxbXCyoK+md039/9pJn9p8XtBKE3
 RSys/xgJ5YswKNr0rcG2leM+xehwLHW1pZqqMJq7F8nRNNHzWkFwhEZOx5zG3fe6jboApzlwL1x
 E0uxPFBK1cqW4cGeon/Dsk2LbNe/g5cJwJrFCZOHN8mcntmztaenBPBAvJybTVwpz8H+oBQuNmg
 +0DPSqy0XeTZmw67lxC3w0J2jShHhUj6b3X7nwngLn4NVtU7pNfye0z1tNgRocNNLcadTOJ7E4i
 KgJZ4Hrd0GpanrBBMG44Dv0m+9oWQ6ztBM4Le91jq2WlDil7xglH9TIzhDAK/Sa/nBNiYBqVAZO
 YC5gUQymXrfdqFuEhtgLjUPUY6VxmQ==
X-Proofpoint-GUID: 31ZXuxH2sekhmJnzOFE_UzTewFr9ZpDM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Fri, Oct 10, 2025 at 05:17:44PM +0530, Sudarshan Shetty wrote:
> Add binding support for the QCS615-based Talos EVK SMARC platform.
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)

Please don't send new versions of your series as a response to a
previous iteration. Always start a new thread for each iteration,
otherwise some of the tools (and developers) might get confused.

> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 0a3222d6f368..a323be3d2ba2 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -862,6 +862,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,qcs615-ride
> +              - qcom,talos-evk
>            - const: qcom,qcs615
>            - const: qcom,sm6150
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

