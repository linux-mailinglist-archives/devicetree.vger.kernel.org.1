Return-Path: <devicetree+bounces-223817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CA8BBDD87
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 13:19:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0A573BD0F5
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 11:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35268233155;
	Mon,  6 Oct 2025 11:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eYySjokl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7281E1A3D
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 11:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759749572; cv=none; b=FR5Ce9gc+3suvi3Jh2LN6ieVp7e6ZXrN48tbeTIvejo/31jzALerxYVK2uGRnA/X9z8dHGN9Em85m5nicVHnUmfjeoPEYgIJPikkxKAcRdQPgKMaUApN38wkAzDS8zFXfZMEI3wGoYupdUkJsJm4EsmO2FuTNiyeNbdbKCWMj88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759749572; c=relaxed/simple;
	bh=klZ6n26tjH2PDEEizawYcwg8JfmMR1KbwdW159Bhgpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OxlHBpABUiyay5FYwnxzgju0fbAz83sxP+Sm7rH09PDV8lBmTfvJ65Spnu5mwoib9zKcsb7QMC5kBqYb5YgGHXUULVigjoVdGt8B3yAnHd1dQ15pXRCzvcQxF3X2Fo8etLrgcaBRG/1+wG9ta5NaQaZaD88BBCMbZBakFarTZhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eYySjokl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595N77Cn012865
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 11:19:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VdDqFKfxdRsbEFQxS413xAtJ
	qLi/JD9yGrBIZt2nS7s=; b=eYySjoklVWJC6duqx1BCPWech6zXZkJGteyG1R0R
	F1SyG0UaSPXs2G4MxtfhWuwQNlRhV8/L4jS6259QnvLqYwJ5RrbQVRE+1J2xs4l9
	fo2uIYEY7w4x5f1G6iw/Jsy1Nf82Dyc6fnNvBaRsMXGuF1fLDlOm9kwNmBTpDKnu
	+ddhfD4Ago+27S4gmjqrkqIzR5ONiaSkmRM8sNpUNw8dyF14Q+ddfa9/mkFsKJDd
	JtR71cUpaEnTqCwb6rLZ9MOPQybt6a6hcGkVCGxAFdQxukCJ18CTzpxbK48DDj9R
	Z50k+TLpBNxJBWSoe363k+fwNvcfWRsku0jTOgWDIOxNRQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu3pyp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 11:19:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d6a82099cfso123417031cf.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 04:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759749568; x=1760354368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VdDqFKfxdRsbEFQxS413xAtJqLi/JD9yGrBIZt2nS7s=;
        b=mWpobxpxv2yhhbrLZW5vMYat9MFrO1sVZhrwTkDTeMN8mp9ThMAEaYTkAVLo6iEnKU
         9SCMkyKnRMXnGjeIwQwFyoiWdE7XbEUVbHXk7eTy99/TXqoucsoIZtva3zV/P46vqCHy
         Y2QS9xuV6k02+4HudQewy5w1fQCyafsXMsm+ppdiDAnlM3aP52/AX5QQba3PSrM33inl
         PfWpZhxAMxdZwnDb1CyfzeJ++6+heMleKAbKuXKp5/SE/SQofe5KwpYGHqOAbBDBw3aH
         Clx9A7HEiCWAgw0RwASa/C4tLcJnFv/M9ngSez6XFklVuJjHAj+VWJGtQ7fy1uVlaaBo
         AYeA==
X-Gm-Message-State: AOJu0Yz5loS3mcv8pWJ74mcpn9yVpqDG/Ezp4rUD2S6RrkKYG0n8VaPv
	+zU9DlaNZ74IIxonyC4ZrU3eZ1h4OpP/ERDH9D6lVaQ/Gva5TgktsqehFSHA8R7EUyQOpmdJDTF
	eQuJ4ihgAwmYEfjwonbz9RGyEmJ232yaaCfktIs2t2KaIIzb9Y6nODA44xTnwtAT/
X-Gm-Gg: ASbGncuIUtDqTPq20uoMNsy+6TeqRSX43cZ18U6ghycGVjzvCuYcmo4eIVJNsjMz1T7
	3XQtbNmzXW79gOW6dQ4IgENhUWpoKo6afiQcGU+GBRy2pcKJN7OdWb7VT7v7eluOG2OHczcmZF0
	uY5pyaJolxsjehnunbukrRPlFVB4jxw1MvkjB+jGTixi0MLCQIPPUNtYBZmuX/4Y66GPbTJDrEL
	QqsTn89f3to8cPRzzWTQ75rkmcGe/dTsypYkZBBQBzA/KU0fFtkGYfD/avB/1u/BHyfZwQtaMGW
	1Cmoa9zE9NQGHJJQHlE0Rgf9WEmFu61HHDnPOtjgOySupDBf31tzlzwuAeDmEQDhW/cYsgXg/RK
	Gn+BS4j5dyD0j5RyMvfBcMJYTcS7lSOlxbQ8PEYx4bUnwh+9RKaufgh/fRQ==
X-Received: by 2002:a05:622a:4085:b0:4d9:3bc1:1404 with SMTP id d75a77b69052e-4e576a297damr192482721cf.2.1759749567365;
        Mon, 06 Oct 2025 04:19:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6z3fr6lPNiM8lZwEQJjps6GoE5mipREKT0DxSIXFLLzmU3vusYTO80+hqG4PsU2cGm+LQqw==
X-Received: by 2002:a05:622a:4085:b0:4d9:3bc1:1404 with SMTP id d75a77b69052e-4e576a297damr192482121cf.2.1759749566744;
        Mon, 06 Oct 2025 04:19:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0119ee99sm4958551e87.106.2025.10.06.04.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 04:19:25 -0700 (PDT)
Date: Mon, 6 Oct 2025 14:19:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>,
        Algea Cao <algea.cao@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Cenk Uluisik <cenk.uluisik@googlemail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
        Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rk3588-dw-hdmi-qp: Add
 tmds-enable-gpios property
Message-ID: <c5kwmvu3j72evbgdmjn6qn5nqx7ywbiwpzhnpeh6hjjhbz5vwo@jpe3onblwhmy>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-2-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251005235542.1017-2-laurent.pinchart@ideasonboard.com>
X-Proofpoint-ORIG-GUID: aMLmC2oG8zryhIjguiFmcYYacMN3SIBG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX2pKy78zpqPCV
 K+SW0/RLcLHJF/8fV3MIodoil1TeU65xgY91eUGLw9oEO/pKB5Ei0WBrwKxGGqDvl5fW7DWUQNk
 qeH2PZIc/XhV3mBlbuqQT7FfXxDGYAQaoEUfGxPaU54AVV/zt3VxynAWcWCNRdynRnLtCz4YH8N
 cVDEti4EwYY02gbD5nBrPhkzHAdb7ubsjOFFkXUkJn0GBm9p1SytvK7q1x6OIwCRB76UHsRzN9C
 wke70lMtO9QszY5MT2HV8QoLBXW+yYqb4DXA4IoK+r1bl7CpGLLH0SHjsWBGbNULBHjxZHlxNBE
 OCczRKqpVxVdIVTzu4KwTe5seBb6T6TdyrKeXpUqw1r0pT2PASmC7vB/w9YTVMf7lXAKf8+Wj53
 eZWuNHjajHwRp3W2nwvM/1Xm1S+u+Q==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e3a5c1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=QX4gbG5DAAAA:8 a=P1BnusSwAAAA:8 a=V0X8aylG3EXbbglEqaoA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=AbAUZ8qAyYyZVLSsDulk:22
 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-GUID: aMLmC2oG8zryhIjguiFmcYYacMN3SIBG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On Mon, Oct 06, 2025 at 02:55:37AM +0300, Laurent Pinchart wrote:
> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> Add an optional property to RK3588 HDMI TX Controller binding describing
> a GPIO line to be asserted when operating in HDMI 1.4/2.0 TMDS mode and
> deasserted for HDMI 2.1 FRL.
> 
> This is used to control an external level shifter for HDMI data lines.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> index 96b4b088eebe..eec0d40c91ea 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> @@ -113,6 +113,13 @@ properties:
>      description:
>        Additional HDMI QP related data is accessed through VO GRF regs.
>  
> +  tmds-enable-gpios:
> +    description:
> +      Optional GPIO line to be asserted when operating in HDMI 1.4/2.0
> +      TMDS mode and deasserted for HDMI 2.1 FRL. It can be used to control
> +      an external level shifter for HDMI data lines.
> +    maxItems: 1

Just my 2c: since TMDS is assumed to be a default mode, shouldn't this
be a frl-enable-gpios instead?

> +
>  required:
>    - compatible
>    - reg

-- 
With best wishes
Dmitry

