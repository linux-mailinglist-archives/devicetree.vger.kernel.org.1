Return-Path: <devicetree+bounces-222859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E16BAE673
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 21:10:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84EB93B07DF
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C17F2853FD;
	Tue, 30 Sep 2025 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LJ3EwsB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908B428033C
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759259432; cv=none; b=WbYX/Lx6dGS3K13sBdBnua0jtPuReFNN+v9czTNP5VH4jfDpm7OiU8quO8MoUj6fmHYvVLUDmm30n338ezCNWQoEJj5Kux+qQgDt25RGGlRn57akQGdli1LkEc38pXqaAv9NoJHDIHDC+/dGTJ07t5nYGeisancIK4TOFzpGDhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759259432; c=relaxed/simple;
	bh=pa6R9xQgA+IOf+9S+rBtBTuRG8cHJTaaKLNtl4UpGL4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NqoByiWsJ9piO5FN0PJgE7APQDShb45L4HV2ynWObd8uS0LrcFqz2t5GhFZW/sP/N388dArd/cDqHQili2zV4Z/zc7AbM2Tx89x54gJdvYqZhIA7iWgCLCDQsHV6fnwG+VFiLNOXl026RRxunLuWOI9+T3nJST5pZEo5Nvhv1Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LJ3EwsB1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBwTdG014865
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KaP73elixzl4ZUoebFDxy0mN
	/aCsbQY22jycZNAiNhA=; b=LJ3EwsB1TbVDW6WIi6kQpRsBewLotwSs5Y+pi60L
	fgQ/3S86ppNcIFGKzGAFuzwtw+yjTI3e6Uwvg9/DpB47+wU+GN6UFpUsgxH970Ni
	eo4Z9UgCbm1KPj81wTGeSOpQNgTzzTDX+j5OOmIgdgc5NsD/LatDIYuoPuHh+mOv
	xU1EsJywoPKlNgDSlz/5/RD9xNgT7/dR6ZSwUpJS2p/IXnHrh7f+qvPSwz8ZAy7u
	1AvsFqG1404eSe09VUcFtuEVf2D9oE1PXyyAbA9Ja/7kTvR6vepsswmh2E9m946Y
	Y/bXWc8dcFn9yWdY/OTS4FJs07XJtT8PYB4w1ZgRjYszTg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr2681-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:10:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d91b91b6f8so99518871cf.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:10:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759259429; x=1759864229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaP73elixzl4ZUoebFDxy0mN/aCsbQY22jycZNAiNhA=;
        b=brM2gdb/0J/2wF/Pl7jBzp023Nj08XIIwKh5H+x3Nvk/KaU0fCrc8e4duW447MYV14
         /gKwc1sS+/jMLav1XNROKz9FIw4cyJn/41n+yaJbH7IPdo4VKlQxnLZ0NeJsgf6WZ4E7
         90MTmt7f2v3kN7rhe66ZYNtX3BKeij6bCWVoj5hrupwL6iTkcvTVLu2Prt0sTwlJ/Ihu
         TX530Q6jNb7lUfn3/mH8rtv3xfX8a/rrhDKHKQwhF9MtMALr871Ws94TMwEMFbp42RJY
         iI3c1qeUVeOSNJaUSUeRnHZcb0U3tbpPbqKEoL5k7w7pTWK+SYiUkgA/eOL6FhrErYfv
         XFJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUD1JknjGfKLroPy6QTW4zMd6Dw/eGAT1RW704GgoL913nDIzZc25qpCeQWJ/TUDT8UgS0QypBMMSg3@vger.kernel.org
X-Gm-Message-State: AOJu0YyrsbafsvBszneom9O7zTRRpXttPAPldJoIKk2rfxcCG2vM9zIV
	gLGrUOAIYIWMT/Pm6D1iqKSOFE3DWpp69fAsvR99ummpx8RHLuEzNoSYyo9CEFkkVm0uSVghVWO
	vMyXYHv7OYlGLJ6RbygXz8AixPH19piSQn/+ZKqcNNwd3QHcwlkpF1Az4ZR1Lvqep
X-Gm-Gg: ASbGncsMu7AKToeitazjjKuD9SeSANB//FWcNrom3XOY2CFXE470IbKluruzE0RsI9M
	Ksf0gCutO5CUhagpSh3AANcIMLSO67cHrzdbiTMrNlOr4X2ibQ1OrqRZJQfmoqfqkr7idRsOYZ1
	89BrMhGeTA8DtyN2wh6zMUexS6Ng4SXaPs2weVRn6XgMShx/q9t9DWG6mSnLhIV5dXasOKWLUX5
	qRAlgMZuL6fSttTUHVhnf1QSOzuJDowDeRD8c04/7dq0OT75EEJybFKLeS6np+gtRBgNv8leZ8m
	z2k2AL2JLHt7PEOqTp+znw1qKmAgXP/7iDtdhOZmc/llrtxKzOUq9fijbXcnl3qQbsS5yE3yN7F
	0OVcDPk4T0yDSm3Ctw2vlio3/GUtCTVoHV9kOB3TZt9wML4A8KdryWRyTjA==
X-Received: by 2002:ac8:590b:0:b0:4e3:2347:e09d with SMTP id d75a77b69052e-4e41de72003mr9045951cf.48.1759259428792;
        Tue, 30 Sep 2025 12:10:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzV2iLngdinAfpYz6LMemQN0HNVnTxKUNLX9DKPaa9tp4J7rq08PEz47QNaOv/YjDZWGvTXQ==
X-Received: by 2002:ac8:590b:0:b0:4e3:2347:e09d with SMTP id d75a77b69052e-4e41de72003mr9045591cf.48.1759259428340;
        Tue, 30 Sep 2025 12:10:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58749849177sm2220124e87.103.2025.09.30.12.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:10:27 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:10:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
Message-ID: <nwtt76n4t7tlf26ex47wrot7g7nldtmavbzgwmluls3egamjsi@mkomopb6fjh6>
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
 <20250905175533.GA1000951-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250905175533.GA1000951-robh@kernel.org>
X-Proofpoint-GUID: Du1BGAqfCuJl7MHugWBFUDM3Yid4cHBW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX///nxdBz8Mvh
 ctERcVwHiARbT80v6yq7CabR1eU4mcn9h5L9pzBPG0CGu6KX4M1tjB6abK74E/Ji/m5DCGk+IEW
 vElHEIo9xEzi2/wvul+i1bklpQhGE5oX4CUTCKan/+TjuL6ZRqHjYM4V2WqR21u0yDh7+a8qMny
 zAqoAEp3O1Of1bK8lnoTGYtYXuV9p1aIMSblUpxqMJHugahjWLSdynYuQZzOsWpajzbM5hJg+Un
 IN1PcGY6ZKJT7EPXlBq6Z4/VLd1sbze8JHrIhpr/KmPenOa/J+wKLfzpQNwd6xhn1C9vanC1rRJ
 zaShGacE2RheTu1Z0moV855DNEB/PQGgwbtqihZ9+APETnQ3PdIriExs5l/e219eCh2cahwnpr3
 08uJHq/KC9xhtXsnln34CXj8tQX9CQ==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68dc2b26 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=SzPxuEgdeXQIFyuOAFQA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Du1BGAqfCuJl7MHugWBFUDM3Yid4cHBW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On Fri, Sep 05, 2025 at 12:55:33PM -0500, Rob Herring wrote:
> On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
> > Both bindings describe a different layout of the ports properties,
> > leading to errors when validating DT using this PHY bindings as
> > reported by Rob Herring.
> > 
> > Reported-by: Rob Herring <robh@kernel.org>
> > Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
> > Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > @@ -73,8 +73,11 @@ properties:
> >      description:
> >        See include/dt-bindings/phy/phy-qcom-qmp.h
> >  
> > -  mode-switch: true
> > -  orientation-switch: true
> > +  mode-switch:
> > +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
> > +
> > +  orientation-switch:
> > +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch
> 
> This is a pattern we try to avoid with references at a property level. I 
> prefer you make port and ports not required in usb-switch.yaml.

But this solution is also not perfect. E.g.
Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml should
only allow the orienttion-switch property, while using
allOf:$ref:usb-switch.yaml allows all three (orientation-switch,
mode-switch, retimer-switch).

-- 
With best wishes
Dmitry

