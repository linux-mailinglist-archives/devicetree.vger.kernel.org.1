Return-Path: <devicetree+bounces-214974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F890B4FE4B
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 15:56:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC3254E48EB
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 13:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6358342C93;
	Tue,  9 Sep 2025 13:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AmkohRjE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4B5343D80
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 13:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757425830; cv=none; b=mTanYLmIe8+jxMr7/L0yWww/2grFlTj3xabI6XQpbfNhPU/Eb4O+Dq2+9R1kdc1mzaEuylZTUfzCB/2kHNW0VaIWyBTnP6Ay06dKTfb+PU3o3WqslDPhrxVaybkj3xVY1ppdfke8nHvSqes2J/z7SMDrnpXpurF61SbUPVFAC2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757425830; c=relaxed/simple;
	bh=hsZggDEeH8ea/RYTI72euQq5F/ES4plUX2WIsYwseKU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jrl3ngdlqQB9s+NrhAJ+9Z5tUTgul+K9EScUx/U4muayxEUjbZf7tS5yS6zXmUsT7bmB1pMYGxLH8CukW7UoT9wQdxkOOEi+uJ83zVP2l1B0I/4wi4VueXFx5TcyUMF5BkVd8WJTvjROKOKqEyuzTbgFeo04qNVibrttYrpVU3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AmkohRjE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LTRn003647
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 13:50:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BoF4YU4Z1GVybjwUeS7Z/uv8
	axVlwSxe5xZqCYbacGo=; b=AmkohRjE5AerN3V7+IS0IkKqt3vukuuR39Wh1yLP
	9p8ZlK0JVwMz6b8Kes5HVfP5itfI++KuiVekBLInWumZ1kETe3w/NVYfW9v/LXht
	ObwR9dYfrr+OjrgPQItL1kVHnbnG+tWDsViFUycjPII4ARtpYbmhMq3f9gWzSO4R
	MIWQAIj9UgU+NeE5DgYrUFo3rtalUU4lWBxVHFlmrfcrFF12DrXzpyLtcL79z1yR
	VpSi99e4E/wMKBjjeM4nADw7dudoIitZIu2C9L1xUyjxQQZ1sewlRrY62TlzpA0m
	/8N+FL1Ak4j/5TPX/P4r+d2dEvlSJL6ykkISAorhIfUKdA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapgpua-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 13:50:27 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-720408622e2so119257586d6.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 06:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757425827; x=1758030627;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BoF4YU4Z1GVybjwUeS7Z/uv8axVlwSxe5xZqCYbacGo=;
        b=HVmkxZk/5yG6yqQ+wQCvKGAUCEsFKJ9V/La01vz5gRZiDSaWCI78cg3WgUrqXduaq8
         Q9YWHSIs+jIxzzHT9wh9OJOH6gZAsHJHmdnKJu5bydxpXPOlxfMb0kmAcAeDH/lkJ3FF
         EPf8UXpKLivjCRii9lQVqjjyk7GjXbXCJUCvDp38/QH3utrv1LnjPdFT9KmnGWXPqxEd
         Rs64liUcSp4U30gDJhYA/8kVbi5UWjcUbhipjw8m63G/syN357hQbqLhZg+SpZ965xJ9
         0F62UXEuwmxCy0+FDxCw2E4/qxZu/cibZjEJg1uQUtP8woBAanIKtn1EipvLaoK42xTi
         4KJw==
X-Forwarded-Encrypted: i=1; AJvYcCVuP2uV+Vz1sCG4RcxgoNs3j0wtUYJJRouFxQxaehihFzud4o7xmlMoZMSSV9jVi6VFL8vl8RlywVQ3@vger.kernel.org
X-Gm-Message-State: AOJu0YzE8H/Ejxb2y6hpk+C7ZOFjOtbec9rGx43+HGva0nWrZF9oPuKb
	Ju6NudBwoZiO/SHmLlVNOFduw95tycfxEF4LS/ak2cr/x+pwPu3l1BTCiWyEjoL3peDQ2CZFpE6
	IgMkrl7DFET0AWztAGSofDmpTfBSWd15zDhKAijq6TOCgtmuW97rZdIm2GoZzG9AQ
X-Gm-Gg: ASbGncvn9qh/PSEc+ww5cGF0YDNi0hv82yZBiFj38ckz1swsspzJyT/m0Gih8yIzztK
	fT+Mhl126kGq/I6VDoE++wy8RVlHeKoyxzEYTLHZhSlIeJMXL64b1BftdP8vlufP8A99QD7m7TC
	jQCGA77Hu3r8VyP4BxV3P6bSzDGvrGPrJmvmhNNnxObbU8ZipiMpBuJQFJgEQm963BexVo/y5by
	HT1D28iNOsUQrtz2rDP0TypIc/WNWEty5U4JkbqGBXsU9733o/MJfSSsRUlCYPbjjOU8+s3dG6+
	rFyU7xfo35gyc65F0m4thVkIm5ExJzRCVdBkTH5ZshLkRodQ6IXRZUcbU03MkTr8tSU1IWbNPW1
	+3cqEZ2iRiL3uVpy4obVaImHvchSdMyFwFb7enfpihiptppFZNfxi
X-Received: by 2002:a05:6214:2349:b0:70d:fa79:badd with SMTP id 6a1803df08f44-73921a43c65mr116264586d6.1.1757425826828;
        Tue, 09 Sep 2025 06:50:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/4AThO6Ll+SaMNV72t1DSQpSQ2NXEUj0ahvpr2YyKNkF66qrI5AK9cWuDnKGSXBYMcoEMbQ==
X-Received: by 2002:a05:6214:2349:b0:70d:fa79:badd with SMTP id 6a1803df08f44-73921a43c65mr116264156d6.1.1757425826207;
        Tue, 09 Sep 2025 06:50:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c503d7sm39294991fa.11.2025.09.09.06.50.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:50:25 -0700 (PDT)
Date: Tue, 9 Sep 2025 16:50:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: konradybcio@kernel.org, andersson@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingweiz@qti.qualcomm.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: add bindings for QCS615
 talos evk board
Message-ID: <33ldjudketkyledzp473bwal4jmrigozjjwqtqlrmrkjmh5sze@ak4cusfossus>
References: <20250909125255.1124824-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909125255.1124824-1-tessolveupstream@gmail.com>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c030a4 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=CwtUJbH0faq6zwYj85AA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: 4mEhDZM5TMpBAdMERB_P-Ph8xUE26FDm
X-Proofpoint-ORIG-GUID: 4mEhDZM5TMpBAdMERB_P-Ph8xUE26FDm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX/qbVVhJf5jly
 yeBo2K8smBsbDaGQhIG9mgabv+Fz6RHsqW4eaeyMw2LdyjJJMLPEYAwHzZApjtemk6PKuB1GYwx
 kZvtJTMUMzzOzcyaJSNWc4Y4NcCgmviIsfU2v6ThaTBL6le2RQyqiBMYP+C7wtt7sLLYX6OjRzU
 QUoNsyz+tISkWFdiGOn9ZKpHkarXReAedyn2jAVf8WXzYK4+maV8bQ9mllgiVcePw2rbyez5A2v
 E/q5xZ6IJISvaRTjfd9+naKf6/31oDvPCILLxPmzawrNI7euyVF9PkQLPO6Y+Vxq3HQ8leQGEUY
 YKt6JF22h7QSdr7sYnbvGkgrhXNbI4eaxlaXFb9YOFdQNItUf0D/tqD4imUHOzFNLD3wISMhY4n
 rHmeJH2z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On Tue, Sep 09, 2025 at 06:22:54PM +0530, Sudarshan Shetty wrote:
> This adds binding support for the QCS615-based talos evk SMARC platform.
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 03a7d3c92ecd..a5dbe6af68ac 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -952,6 +952,12 @@ properties:
>            - const: qcom,qcs615
>            - const: qcom,sm6150
>  
> +      - items:
> +          - enum:
> +              - qcom,qcs615-iq-615-evk

Should it follow the recent example and be named "qcom,talos-evk" ?

> +          - const: qcom,qcs615
> +          - const: qcom,sm6150
> +
>        - items:
>            - enum:
>                - qcom,sa8155p-adp
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

