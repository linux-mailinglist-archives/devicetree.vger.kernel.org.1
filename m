Return-Path: <devicetree+bounces-260676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKJzJOStemnv9AEAu9opvQ
	(envelope-from <devicetree+bounces-260676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:46:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 013B7AA58D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F7B73023515
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 949D31D88AC;
	Thu, 29 Jan 2026 00:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ql6AhVE4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XAEF+nlA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81742B9B7
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769647552; cv=none; b=uJeKb53SbW6V7XZyHgof7KM4KBjajzcsDRa57n8LJ2b3gn52T8L52DpK52L+KjkQU7zSQsahdQ/qsYa1p7HgluPiVhVvzPlc29HAAlDJwSkOrLU3shhfZVxutadejSXif6h3b/CQRsz6jwJDjudIGQ1bbS19/6so6eB0EHucDY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769647552; c=relaxed/simple;
	bh=K4QgRPJk0h8oqtCyFvZ6as2ilX76lvhIKS7a+TCZjPQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iTB4yBPuXQQ0JgsVcBdKv5b6/05cSSZLouwiK6S0DOmmyc4XslJibkfkLJAImpEfNna0TZ/ykCcfrhPAwHAHZ/0v1rN8y3qzscZd4BSso2zE14ylUxgi5JvVLpZFsCz9yv6aYGcCHcFlh9/YSjx5DbvpCKu9FOnJB9SccgWBbOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ql6AhVE4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XAEF+nlA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SFWZPn3247450
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:45:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cc5YsZfT12sfLJ+3hppWL05z
	5eVSAvvWZySuJ6ZjB/U=; b=Ql6AhVE4FQ0AsJfkRlHPCPXV4qCiUFDTnyLbAFr7
	9ZYWJ5guQN5KUAqpy+Co1y8ByuYlxKuxF6c6g7ZUAIvzprEYoru2YyQi6Skd/Oyb
	/89oPSt9IgqxBNOe/h+/bDbuqDnbMopiOKqaohtYqmYf3SwZLsDkoxGG69u9mV8g
	GAO7SfzEnFgDnjHycFizkh0B6JDir/MswiJ9T2/YEVFJEwWzfig5hjPlX8BMusAl
	4c7LU66HKoR4PicptF9bzrqw0/vOq42IHCc3YqJ0rVgYux03vDbBxYaEMzsgeLga
	fBirO24aMzKHpSrn8BWoNrBYMDQdsGx5aGlHUvE4walUhg==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bydfk3gvg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:45:49 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5662d03362dso380090e0c.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769647549; x=1770252349; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cc5YsZfT12sfLJ+3hppWL05z5eVSAvvWZySuJ6ZjB/U=;
        b=XAEF+nlAYmGz+QIpps9Ugf1pXdA5j6xhgKIVIRY1VXKr6XKgCF/Jb8RduNCWEw+Y3F
         CI9PQVzeLWbdw/RjH0z7EB+o9OxW5IAFsb7hW0f5qPJ9AHJ2ALxa1KTbw4+HktloD13M
         n2BBUwFo5qhcYSlQIjyZeTDp+RXiq2gAXGpsjrezco1L7tkhRi4z+JsKG2qHcliZWlfb
         UO838lZlctUZJuzn0U6vLryEj15F0cM30BiYUcCW8mA422Mv+C9URBE7PYb0zlXS9XdO
         y86Nt+4vi+WLSHA2cj/tbnNPQ67+I7SA7WY8qlBYT3fxPN3KLfqDzcRKaVKTFgzWmekV
         xnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769647549; x=1770252349;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cc5YsZfT12sfLJ+3hppWL05z5eVSAvvWZySuJ6ZjB/U=;
        b=ArBn+ZAAZ019kymul7qvZG61I2LHWu3FSHRpGXIA5G0/z33qy3IgvinSX56sGKcoRo
         gCgzxjT9czhpOvumYQjNmSjAVh4xCCHaYYwXb/CP2DokLYO5Q37eokLybbxqHoTOe7Ki
         71pG1EA6sVVBUIxxUxlfGSeHZGN4wyD0kkInAua1AR+UoBaAXjyP7YW7jsbSfQKxp+v4
         FG5/HttwOxiZyYh4Slc40VMm66h0tucIGuiW94Y2AFGiz1YgyM04yyJdxAG4hWiPUG7V
         BCewhLiM04iffbAMCH7Ce9JvS3SfQ3dU4M5qUdqnKN7AkY3OOV8mN1lHamW1R5+NsR1A
         MMOA==
X-Forwarded-Encrypted: i=1; AJvYcCXdBxpkzDjfSdgsY25e5Gd4Y9AUT3EYsrEwnIZ71Y//w9R1ceV3GFdq3/kicd0+TNl02VgvB2faIMF9@vger.kernel.org
X-Gm-Message-State: AOJu0YypYYXnK7h/whP5sSpp/wY68d1AiqnhK3XW91bzy5hGkVMrqunm
	d04dOYzH/eo1PvceTbRbCZS/df8qoyw34V8O+7/VPl8aJEdNXU69qX5v6T1UmW0Xp5xpWGxY5JJ
	SxF2+dh6Gtl7IdoeRj0LWtZqUD1PSmpvVmgKhKqDOWwOYHSj9GE6vngNu++INSYTU
X-Gm-Gg: AZuq6aLhbFOTCalNG+k/zayK5dyjCgfbS8Vu3S9qU36cfQ+8RswnvTyus7Qa2bzH+I5
	UhzYtq+eMDlxg5XI/fuNmCCDYXyN1JGoHZnXobGsZj2TUH/CzpEfZ7nRVXKDRJBP7FwUbxhfRUE
	6E++IfXjzicXfvvMTZZZ3/G6yPd5MQoPft8NqXVxx7X5Sk+bgpvnlNM87vfX0L3gauwSbVJF4+z
	mX6xR5m0wQsvSM6BceoCxzRqyXtdsAFWYXC7wFPw2ZHFOQUu4qTK1t2dCmBVBinPparHxyaf3eR
	SKsMsX5nM5R4VeqrxJe07F3Dbqh+knuzX9vfv71PumbVn04jHoNVYDwoEJq4zu/M3x2/tlGbwYH
	0lLIa9nXD3hryClWJgfbzvXHRRSlKOusGu36fPm0KRDhX8OWunPo9HUaRuhc8hhcK94OZZW8LtV
	HkjRBrPAFURhpHqApy79jSduk=
X-Received: by 2002:a05:6102:32c1:b0:5ef:b816:d272 with SMTP id ada2fe7eead31-5f723603a33mr2299685137.4.1769647549057;
        Wed, 28 Jan 2026 16:45:49 -0800 (PST)
X-Received: by 2002:a05:6102:32c1:b0:5ef:b816:d272 with SMTP id ada2fe7eead31-5f723603a33mr2299678137.4.1769647548548;
        Wed, 28 Jan 2026 16:45:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074bdca0sm830530e87.94.2026.01.28.16.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:45:47 -0800 (PST)
Date: Thu, 29 Jan 2026 02:45:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        manaf.pallikunhi@oss.qualcomm.com
Subject: Re: [PATCH v2 2/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
Message-ID: <k3q5hsdsxhtf2yxibyqzzldhgrbv366n3rd6wdcoju7gcksiu3@uplmllaihm7h>
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
 <20260127155722.2797783-3-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127155722.2797783-3-gaurav.kohli@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAwMyBTYWx0ZWRfX6tRqUBEOjj7Y
 0Sp4pNuLsXkj+Wv1kf4S+NYKDyplOjv+CvA2nLo5BX0Et/syktGQ+QuGYNdu5sVDIG/8y2mnw7y
 SlbQBNzdEuZw9TP3BrVtqIUNBkG/CLNoN6r8I1PDeuWghzpXCZi+LY8z8H+hDqRkgw2YXF3KgjR
 SvGqb98G4BYUFmjSAx4fhDkuOVQAr/yGtDQcz/nUmV9BnFiFXJUMkeOZaqXmS9301l+qiLpuAIj
 bU8PdQ1iPf2qKAk9LmjZSr5uw4adpKtwORHFmLDo+pfRpym0jtqVTLCNVp2o135yCUwYFLmFKsX
 2ygR9fjLELtOalAILPOpN6bP2CDHkIDlxVUrTn7ohv6dGPIDq2VJh0L3DFINRjzuvs3ZVb9lgoQ
 AyE9b5ucDaZMDkaDg11mxTQ44SVZ3Lyies7IHIf5nZy1+VKhD29imvshVbD/PKbWZgc+F40pybH
 z6eLMm2RaEOnuh7gyaw==
X-Authority-Analysis: v=2.4 cv=XfWEDY55 c=1 sm=1 tr=0 ts=697aadbd cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=AsSYdiTBDO68DdK-y5sA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: 1kfKWL_Xst_D3GkQNOLegoPNbYxFG8fL
X-Proofpoint-ORIG-GUID: 1kfKWL_Xst_D3GkQNOLegoPNbYxFG8fL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290003
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260676-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 013B7AA58D
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 09:27:16PM +0530, Gaurav Kohli wrote:
> The cooling subnode of a remoteproc represents a client of the Thermal
> Mitigation Device QMI service running on it. Each subnode of the cooling
> node represents a single control exposed by the service.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> ---
>  .../bindings/remoteproc/qcom,pas-common.yaml  |  6 ++
>  .../bindings/thermal/qcom,qmi-cooling.yaml    | 72 +++++++++++++++++++
>  2 files changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> index 68c17bf18987..6a736161d5ae 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> @@ -80,6 +80,12 @@ properties:
>        and devices related to the ADSP.
>      unevaluatedProperties: false
>  
> +  cooling:
> +    $ref: /schemas/thermal/qcom,qmi-cooling.yaml#
> +    description:
> +      Cooling subnode which represents the cooling devices exposed by the Modem.
> +    unevaluatedProperties: false
> +
>  required:
>    - clocks
>    - clock-names
> diff --git a/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
> new file mode 100644
> index 000000000000..0dd3bd84c176
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/qcom,qmi-cooling.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QMI based thermal mitigation (TMD) cooling devices
> +
> +maintainers:
> +  - Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> +
> +description:
> +  Qualcomm QMI-based TMD cooling devices are used to mitigate thermal conditions
> +  across multiple remote subsystems. These devices operate based on junction
> +  temperature sensors (TSENS) associated with thermal zones for each subsystem.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,qmi-cooling-cdsp
> +      - qcom,qmi-cooling-cdsp1

If I read your schema as you've it written, then ADSP, SLPI and modem
also can have _CDSP_ cooling device. Seems like an overkill.

Please take care to describe cooling devices for all DSPs at once and
describe them properly.


-- 
With best wishes
Dmitry

