Return-Path: <devicetree+bounces-224620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1041BC64D1
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 20:32:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 764ED406567
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 18:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092DC2C11FC;
	Wed,  8 Oct 2025 18:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eDuVItXB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A762C11C3
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 18:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759948328; cv=none; b=Uo/+XZzhb3DktMIxkb05iahnM6py1nh/2k1/KA5l/LvjRGi3InxPDM61Y7PWjtCbSZsA7dpsDeWu39EYflz3w/+5HKaIj1OvKLLncslyXxMLni275oTc5t3JT7kE8vrNEXFGk0h6ums32Pxavbsc7XWZzYPMpvGmQAFEVwH60OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759948328; c=relaxed/simple;
	bh=25FN7DjXP5x3tJCg+gQhzwRMzdMByaBgob5iKkpDksI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QgPp8uyFydcU1rkaVxurywEUylnJP2AW1r0yGIiRYr4hThOxCrAxxRTCuCe8qQuqavSAiejBKUHDO3Re9cas5cw0ArjekxO7vEdWJnOZr6tCQllkIDSi/aYTr+Tgv9BR+E6fPWttpgLfeHDESvR3jWWW1HBDUYkTDGab5uxk4MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eDuVItXB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5HOm020541
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 18:32:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Uqwx5jDVnMd++8p09CsvgmiE
	n2SAfFQqSRGWKLGynvk=; b=eDuVItXBQkSAJMKmpD7Ml8AFWA63pV2T7OLovBMb
	yYlzNYq18nj9jRKbRrYZHPxXf4ptpan0PFLbgo3PGJu7vmMAsNUrJnwtDucYB63t
	Cl9sW1SOtkd80EZ2Dt6AZBHNYtz3vM3DCdX5Rhg0SzRxH1eEfaJ5KYZNZ5Tr7tbs
	xFKjORaGzWiJkBtIZuTgnNmfpGA903z8xxrviVBD86tTpzXHrCuvSeUCHqiEX8ov
	4TYvXxWyq23t3Kw8953QlMWb4oNPASQqiqyvzV9CdVHj3jVbpZJ3LKdePuf1rfT2
	dsP+aWagsR8xNLa2RIgz07Hv+eRwSyZRp5pvEZ4Rj3ZizQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kg7wn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:32:05 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-54aa2e69a5aso199174e0c.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:32:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759948324; x=1760553124;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uqwx5jDVnMd++8p09CsvgmiEn2SAfFQqSRGWKLGynvk=;
        b=KZGE7KSYqBFAb5IVmFdRaD9GWY/k+OFbIT6v5JkigKR0xRBjB+HMN0RpVDtGg5UcLl
         z983o2gONUD025YsBiZXuFFGW2GAlwVw4wawxBLPPrNM4h/dC4sHe8veUpbYxaoRMmU3
         qZGMhL7p/s8kfSq0YHkuCpnZxSQmz6qdJM88poW/5uN4AL364IpRZwA9yDKtKbj4dNVq
         RoQBa3lEuqKwxULljHNnFVg4Ksa0uqzo9rolNFUTESxrNJV3T5e7RVk6ST7r/zy+DAOu
         bqxsWZz/h2Af1JiGCL5couxb/kWQ0wwke99IFt5A+DaXyA0F8hN1rIlSkiucOi2+XBe9
         0ERA==
X-Forwarded-Encrypted: i=1; AJvYcCUTVrd+Xh9SJ87x5akxZ2Kg4zFk8nl8piVastg8bFz+t4IyRV+X1HyMx4B2D/GwPIYTfD7LzT7avDzy@vger.kernel.org
X-Gm-Message-State: AOJu0YxTe4joksz6kHng+XqW8LiBGBgDRYymFTgl5aUJWPZVbF3TH/iY
	26RYcHBSFYBOwMxdusl71Uzlw9a3gWc0JmLAG9CuIW9dRDI8Wf6JeGqUvGCwZBpFfrAZTDzYneo
	BMZzQsjo4MjtTHszXcsJKpO4sX/fQ090CoEEhlGkBZ9+vdJwZBgpEE4DGzogSvV/M
X-Gm-Gg: ASbGncvpv9kTt5b5iwzdu6H3vbaQoONoHZYZ/xC7tzirQAnShZk1De43ZuvqGdwFaq7
	EELagx0ux29ioZCvc6nnjfr8tQk6ALuIS6ZnxR9pOK7ky4EESqBs4moSEGx1yZ/pnNtrN6f1dYU
	qONj24SRiO8QDYwzt/5aBauCqdia1/KqTSGjWIruHtcfdZaJAhq1imKTujNlRHYa5kTBvs4498y
	2+R/4Q+peVGbPod2Frt1RvLKrmmsAwz7d5VeK4hPLgaeREMtl8Nq/ZH7twqI14L0+r6MiFOOSLE
	FvT78QibHt34bSyAfMGGX84/wJQEgnsXfZr1UrKF4IvRum3sg3iFuiES7AMOaBZ/lolWC7opmwv
	2uOxEly+kSyRpDn9cfAcm9cg/lSDRgCwXrjoWDWiZ44yRp1PrZNkzYnQCrw==
X-Received: by 2002:a05:6122:c85:b0:54a:9316:f429 with SMTP id 71dfb90a1353d-554b8a7f865mr2116603e0c.3.1759948324122;
        Wed, 08 Oct 2025 11:32:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeridrpdJSwKBLLKxqzplda/MdVxnX9sdNhyATyFOKBILM1gJTPYRMJOlDLg9eqNSXDqCRYA==
X-Received: by 2002:a05:6122:c85:b0:54a:9316:f429 with SMTP id 71dfb90a1353d-554b8a7f865mr2116589e0c.3.1759948323654;
        Wed, 08 Oct 2025 11:32:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f39fcafbsm22678541fa.26.2025.10.08.11.32.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:32:01 -0700 (PDT)
Date: Wed, 8 Oct 2025 21:31:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for
 VBUS based on ID state
Message-ID: <odikli6rfdyid5oqavurtqytgnwgh5hpmka2jt5tprpdw7cd72@icpnjnkfowt7>
References: <20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com>
 <20251008175750.1770454-2-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251008175750.1770454-2-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e6ae25 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=smUmI0uzo1bZzf9w9C4A:9 a=CjuIK1q_8ugA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: J-hHT4ISLe5jt7r1xsFPXThX3L-7tFar
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX28TgypMkpEwe
 VZpI2LPsAUcNYKL3U7WCtsVv7RvEj5uEDcXWS3FFlZY9UmtPFwqY3zxj9DN2CtV40c6CWovtEK0
 Fg6tAVOno2fBIR3bR2cl8cmyvbM9c7L7p581hnOlJ0Zs07bWbBisS0+NuHg3JRyrz3SdQfOW/T/
 pkQD2bpkXfLuK+DmRJ0PDhd6jxaIubyfbARZujOgBOZC4DS5n2VlQvbKTQhSFmqbXzmBMqYT+/E
 qRISU1VJ4pRsbxshRCJmOUN+1gdZBwWZfOJgVs2GcaRK2emBmt/n5ut+NWko3oWON34rwf+LKKB
 AsC2jklU8bbgNmVw7l+LTrCJQX2OUs0NogzGsZc285GM/0QBLym3eYZkaTxKO7voSZ0DTCr0s6T
 +/MwsG8839U9maeELiHIs2K890G3jg==
X-Proofpoint-ORIG-GUID: J-hHT4ISLe5jt7r1xsFPXThX3L-7tFar
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Wed, Oct 08, 2025 at 11:27:49PM +0530, Krishna Kurapati wrote:
> Update the bindings to support reading ID state and VBUS, as per the
> HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at VSafe0V and
> asserted low once VBUS is at VSafe0V, enforcing the Type-C requirement that
> VBUS must be at VSafe0V before re-enabling VBUS.
> 
> Add id-gpios property to describe the input gpio for USB ID pin and vbus-
> supply property to describe the regulator for USB VBUS.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/usb/ti,hd3ss3220.yaml       | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
> index bec1c8047bc0..c869eece39a7 100644
> --- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
> +++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
> @@ -25,6 +25,19 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  id-gpios:
> +    description:
> +      An input gpio for USB ID pin. Upon detecting a UFP device, HD3SS3220
> +      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS is at VSafe0V,
> +      the HD3SS3220 will assert ID pin low. This is done to enforce Type-C
> +      requirement that VBUS must be at VSafe0V before re-enabling VBUS.
> +

Stray empty line?

> +    maxItems: 1
> +
> +  vbus-supply:
> +    description: A phandle to the regulator for USB VBUS if needed when host
> +      mode or dual role mode is supported.

Why are we adding the property here while we can use the vbus-supply of
the usb-c-connector?

> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      description: OF graph bindings (specified in bindings/graph.txt) that model
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

