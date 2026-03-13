Return-Path: <devicetree+bounces-274824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOC/NLJqs2mPWAAAu9opvQ
	(envelope-from <devicetree+bounces-274824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:38:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 723BD27C479
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 347AE301CCC8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA9A5312807;
	Fri, 13 Mar 2026 01:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gxGaIXB2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YiKRdOUV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A45292BDC3F
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773365924; cv=none; b=iR8GjvX5UFjY6nkyb33ckESjBxa0YnhZF6zVFiGl/QNFX4rtaBoFTsRug2aWHZYxKkXkQEfKpnbkCviqooSV9fwPAWmJu9eJez9MlPuvVpy758HDPjZG30qHxNwAgsK4i5PtVvEeWvv6cd7kDhORoWeASU9vPKiNksqOqkr8+dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773365924; c=relaxed/simple;
	bh=GLob0u5xKuuLs0DGQuGN6+IFFGI/IP9n+ODAc1i9IQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sh8zPjJzmv2c3jeGJGuRl+i3XzdvvVI9CBqj9CHWFi5BwjE5zHgZ0LDjRonJlKJ8vNS/dnbuglWAsUv8Yg1eeSX9C9QW8SJJFMYdncmdOp1naFV4VPUfv/2ovqQW7Jgno3wIsIGFaqWAU/n9grlc137ANCSoILT3RS/rC2C4sRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gxGaIXB2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YiKRdOUV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CMJlaf3178462
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:38:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rhgqpEm6QAvqoZ8IZ34kN0BV
	yk8S2ZnXkaehv1CjtBg=; b=gxGaIXB2Hm1Mhq52wg8eVm/kgVQZlWLd6/e9SxZJ
	JB2cUtjYX0bpN/46g+2GFSE8peRm/OY1q2kzrInVbHXH1byixb1clKWr5ZaEGllq
	tSMvWd6+M57FbVMI6fmVbWx8RDk3UHu3/9KeYTecIcSeT+Lg5vsawOJSi+4TJkvO
	v4xXj9QFaA6VkoxKttjx03HBLaL9BlY5yvqqhLweVREmJkOnb0lbSSJotjb6W4dp
	Xi5Kf8brKqT6mg+Af3ZRA3UBJ3yv/X28OpMkJH3ARG/84nRKM3RkGgy86F7ppf/D
	LUFRkuk9EkZxv+ms9x6gXFQbo7UO+Lfeq/CslvP4k8UKzQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh50v0ny-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:38:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cdb995a1bfso126952985a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773365921; x=1773970721; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rhgqpEm6QAvqoZ8IZ34kN0BVyk8S2ZnXkaehv1CjtBg=;
        b=YiKRdOUVmrGUbA+MxC+bmTWY1iWN5jdS+QfxPNTa/U0w0eDHkFbe3w2nlTGsh3lJ6X
         pTAT2dw49hAnI3oGjruy7kUJDB8QgvReMSfrDLVNcKgep7tff2cXpsZwOxt1vdj7dGSO
         3NP/Xyncn+/mwtcFdKR+L7C2uZhUyEKqX/6sUtotoiHb8h9OoQ+dY+d2QWeMhtLjQjSg
         w7DCl+FGSwnyYhSGcXplO6lt1/BbCR3F0IGcbPIaSNiqlOhXjPsbVgwCtDEfJ2QpgIbc
         UDPJlZS5cIH5/lkugpBPr0zeP+GmErapS/FRoD0BAknqJEHcelujptKuMpWJ8UMGHs0k
         BGaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773365921; x=1773970721;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rhgqpEm6QAvqoZ8IZ34kN0BVyk8S2ZnXkaehv1CjtBg=;
        b=fUo1I5KYlYNQvvmeAQxAcwAKnCD+rZO1ZTzBzgY28qsTLSHgNTrrSfwnz6mBeutfdo
         kVVgLxsU6btL8TvnpVr+DGzQ7zGra4oE61ry6S4L5MpTpHqh4Ovsz4pEG9aoLfNMvRSM
         yj9vckugMJMRpkVv6OzzSN/d6J0KFPgWu1f83NnVEjx3v8NpZVnMMUQ548wVXG78wXY3
         1DKcM97q30Ygp6tnYNz4OZa0t/HWRvEM3YQVpRhBeM2KPw5d1Mn1AToR3Zj8WztLYOap
         AAKxUDSCFUgECqxkpGN97zs/nUNzyoGduVOapppEeRRXRzQ0/iRA9JVGcchhy1KHTPFx
         YDAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcr9HqXDoJSZCLCU5nFE2Kp0erF9EnrfQJDdlHo+gYiza++KHAto3Q6prX3H/phOzEYAdGBVcw+nGU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx98JDZQrTcOIZWN25Le8tWwX4l+GZuV2c1He88hZsk9EK0LjzM
	tWEjHPNyepSdnMan+KkYoRG4V6mZWxs1rJjO3O1mkGYUxZ0iUy2OzJXC3FNusi7K03dC1r+gkkD
	ctYk3ToqnwR8Au8vMzxbO3FLss9Dl+c2UuZGKWGnb0yhQ899oIMzEzwEpG0Xah0ZU
X-Gm-Gg: ATEYQzxB55QioMPLXmUmL4TS+3eVdy7I/Zmm0WvLeJnGv56cVcNUzuodeX+dixtKqWe
	BGStob+VaN+PusbFWmOlVRCveWUIc53ywmKklbmUWGJjTU6QPRg7W/IwuI98bNZ3w7pAZKyNztY
	1q3woIw6yJYboVaewbJ5SWEuCH9XAecCqttxcqkP8yRuMGJr+mOuk7xXEvbW2nKLFbrAnh+Um+L
	ySPCvf5yyib33c0x0NUt8MW8QUwNwR/kUR7/M4ltHZVAa8kpERbOGnk6AwYEs91Rx+AXLf3Vc8X
	pb5esU1ZWvju92sF3XCcVGbpHYg5smxLCMvuszji5nK99DtDFk+nnP+q9j0ouw24kIY/OJryz4s
	ypx5iLfX9QPjIWYyUNmvGqJjSktrcYUtEnFEgr7kIPmySNqOc10d/aGT7/AqsE5HY5Luc3v+TvF
	NMISVYcGrFddB9h/IgwFtbu0daBbebO+HG8DY=
X-Received: by 2002:a05:620a:40d3:b0:8cd:97a7:a343 with SMTP id af79cd13be357-8cdb5aa4d3bmr258276485a.36.1773365920953;
        Thu, 12 Mar 2026 18:38:40 -0700 (PDT)
X-Received: by 2002:a05:620a:40d3:b0:8cd:97a7:a343 with SMTP id af79cd13be357-8cdb5aa4d3bmr258275285a.36.1773365920508;
        Thu, 12 Mar 2026 18:38:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156034364sm1241907e87.40.2026.03.12.18.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 18:38:39 -0700 (PDT)
Date: Fri, 13 Mar 2026 03:38:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: remoteproc: qcom: move interrupts
 and interrupt-names list out of pas-common
Message-ID: <i57ns2ythkhvizdceqks3zaojo73rrdbscjdat2fgeajwkuvyd@rqmvt5b4enyl>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-2-0a91575e0e7e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310-knp-soccp-v4-2-0a91575e0e7e@oss.qualcomm.com>
X-Proofpoint-GUID: gztDb9LhJVc5SKmdpJqkfkAR6mgXJMVC
X-Authority-Analysis: v=2.4 cv=LvKfC3dc c=1 sm=1 tr=0 ts=69b36aa2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=OrQAJtSTds5IMfG0T-4A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: gztDb9LhJVc5SKmdpJqkfkAR6mgXJMVC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDAxMiBTYWx0ZWRfX4Nbrt4f7Pto5
 QwhvQNabC2Y9wYVEegNzI82e3/C+96PVr0Hk17xkmHmkbjMnHAt+fdLYwvM8Pevf1T3dRnA2VfZ
 jyaa1tcQU+nATI7rwhgmMB3HmPOGbGyBkUNsrfj10c9YRaqdZeLpX3zvOUtXnFuhcg3lZsffmx3
 E+L1mlWA0636mjnKokCWm/QQ8luzoYdI1Us3FZ2HFEEq9ULfZBtejn5rnCophPGva08niW6YI3I
 Lx9LD7ZbgFiRXu23FRfAF5aVKkCDd/qylICOdeYGkWYXzr06EtTkyZrLKGhw2nnbDaJa6LBRedl
 0QicxaJ2ApFNpMrHge6i+s9hPOun7quxuUfQ/IAagWbuwOLViABDa1gIFCytocD1p0fH9eUsHUc
 sluivIXJzxd2jOx4j5OpjFXM9lZ71+EiWxDZuGKzH7KRETMnVAhN9/HlFjjBQ+GKlLZay1x19Jl
 Ogqx6kau4hSKKsSgOZQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603130012
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274824-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 723BD27C479
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 03:03:18AM -0700, Jingyi Wang wrote:
> Move interrupts and interrupt-names list out of pas-common since they
> will be redefined differently for Kaanapali SoCCP.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/remoteproc/qcom,adsp.yaml    | 14 ++++++++++++--
>  .../bindings/remoteproc/qcom,milos-pas.yaml          | 18 ++++++++++++++----
>  .../bindings/remoteproc/qcom,pas-common.yaml         | 16 ++--------------
>  .../bindings/remoteproc/qcom,qcs404-pas.yaml         | 14 ++++++++++++--
>  .../bindings/remoteproc/qcom,sa8775p-pas.yaml        | 14 ++++++++++++--
>  .../bindings/remoteproc/qcom,sc7180-pas.yaml         | 20 ++++++++++++++++++++
>  .../bindings/remoteproc/qcom,sc8280xp-pas.yaml       | 20 ++++++++++++++++++++
>  .../bindings/remoteproc/qcom,sdx55-pas.yaml          | 16 ++++++++++++++--
>  .../bindings/remoteproc/qcom,sm6115-pas.yaml         | 20 ++++++++++++++++++++
>  .../bindings/remoteproc/qcom,sm6350-pas.yaml         | 20 ++++++++++++++++++++
>  .../bindings/remoteproc/qcom,sm6375-pas.yaml         | 20 ++++++++++++++++++++
>  .../bindings/remoteproc/qcom,sm8150-pas.yaml         | 20 ++++++++++++++++++++
>  .../bindings/remoteproc/qcom,sm8350-pas.yaml         | 20 ++++++++++++++++++++
>  .../bindings/remoteproc/qcom,sm8550-pas.yaml         | 20 ++++++++++++++++++++
>  14 files changed, 226 insertions(+), 26 deletions(-)
> 


> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
> index 66b455d0a8e3..cb0a61fc301d 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
> @@ -48,6 +48,26 @@ properties:
>      maxItems: 1
>      description: Firmware name for the Hexagon core
>  
> +  interrupts:
> +    minItems: 5

Initially I stumled upon this (and dropped a note in the other email
that I noticed a problem with the series). This minItems looked like the
underspecified property, buf after checking it seems that this schema is
written in a way that covers DSPs having both 5 and 6 interrupts.

So... most likely the schemas for DSPs might be reworked / optimized to
cover modems separately from the other DSPs, but it's a separate topic.
Let's settle on the SoCCP topic first.

> +    items:
> +      - description: Watchdog interrupt
> +      - description: Fatal interrupt
> +      - description: Ready interrupt
> +      - description: Handover interrupt
> +      - description: Stop acknowledge interrupt
> +      - description: Shutdown acknowledge interrupt
> +
> +  interrupt-names:
> +    minItems: 5
> +    items:
> +      - const: wdog
> +      - const: fatal
> +      - const: ready
> +      - const: handover
> +      - const: stop-ack
> +      - const: shutdown-ack
> +
>  required:
>    - compatible
>    - reg

-- 
With best wishes
Dmitry

