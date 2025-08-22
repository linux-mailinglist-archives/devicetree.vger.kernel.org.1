Return-Path: <devicetree+bounces-208362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 827D1B32237
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 20:20:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 371151D219EE
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 18:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7960C2BEC21;
	Fri, 22 Aug 2025 18:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IpuGHeU4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4761FF7D7
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755886809; cv=none; b=ujTsiz5vixADWS+uBgNUkulTJP1TXX+gvvi2wLGRCe1PMzOsi0+Ec9LTdbJVduZAhH3Btfy6/UFx+QwvcAZ6XFmpdZR+c8cTmBtnykQDeIgcBG/xxytH8kg06QWhjtzs8IOqpN40eCoi8+A8mP9s716Nxa7Ocfrl8cCuTHKEB2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755886809; c=relaxed/simple;
	bh=mrp9EhKWJd+GF1xGjXo69QDr3zuHXRhZLJljxro2Nk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cxfGDnRzaeixsg2L70u+XBwxvR3k55jyi8Sr9Z0/JKKYv+6ILECoOjX0rzaldhd1A3YMHY1s8cXtQa2fYiQxxje7fBzgJi46pAPi30Rg8EelvxhRIBC+8n0fqZRPETYmmoif6bnKBdAI+2DU3l2nVzodQXjRdDY0OeL2oHTfk70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IpuGHeU4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57MHUn2u012373
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:20:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NxtKtumnK8P7jbCRmulzU2bs
	GNNl6vGrxyGS2XDmajI=; b=IpuGHeU4jrXI4gbTONzrAZjNBA3CK7V8iBxkC60B
	sj5U69qXm/weLcj1eell4vGtNtYrJ/EY1pqfDac2TlDKpUBlsZSEUFqMThAFz3dI
	PB7nAi+FUyA7uegSWpZ03reG70vEsYs+DmT+jHmDdqIm/vb70nQeG04RjGcbldUp
	KDVoeVy7/lUgc1zAd+udtwxFTvlbJLTsJG5nPGBWN36FOH7ln6o7k0coLlCqgf9q
	IgaPem2IJFvGh8FZADYK6QmqEDp1jAn66IT2uIEw0s8Zv7whlF62C9JKbk90oYCr
	ziV1i+Q3PLdv0hbvAZE2tDiMWSsWQ4/RlFd36Do2GuNbYg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48pw1104yu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:20:06 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70da6de66beso3054616d6.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:20:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755886806; x=1756491606;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NxtKtumnK8P7jbCRmulzU2bsGNNl6vGrxyGS2XDmajI=;
        b=pOhQjjFuSDvTodTN8M3kqw8/kjfF/PzE39vjQoX+3yY7SyK9C1QWUnvGPWFaP6ukc5
         WJeVvutLHLbKK4M7vDr1CTHIQRM+S7zZjAFzKgbSqOqjrpGnDjQGTnX3DNcrbFiHYDUE
         3jM74l+I+1PJ29pN/dYLPFQH8qhRnuYRumAKCm1FixhFEYgQL2LJ+WX7Esrh6fDUr892
         4fr3bAYUiTppxI+FJaypHaGV+h73ClhkwW4oieyYEAKBJib/gsw0H+aUFQojs1D6loaj
         wYbKXrOcOdnKLkhHKfk5ecVfNSPd9LK83fvZtwPckiVBAS02Q9jKXS9dyEeQkBwDjMlN
         6xtg==
X-Forwarded-Encrypted: i=1; AJvYcCW+7wVnhSxU0ELGFPN0i8LY3Nm5JCmVyznVipx7clCA3UKHpoim6HVFhfjLjHvTsXqnA75c/AhvaGlp@vger.kernel.org
X-Gm-Message-State: AOJu0YyeErFeB4x/NKRTXE89Hj6+WRY+uNzygPEfHG6xbVGcxsedku2M
	AQ+fFWuYN+9BpHof6T4k9NqTSzmEMMJO5j2VBFkXugwig0cQlZzqFYHH+FxT/H3DvGpPzsCqfVB
	r4ofE0CzKtpXNMexzqjbFriOA9BB1H/PH2kMAF+QozzvygZXc7EwhvoKT3PnMVtV5
X-Gm-Gg: ASbGncvDDYmjHMBwX1pSqeTUyXLpkqbpj95l73rSte/KE05qxX7r0mdxvfURrJVPPFQ
	YeybpsVvAEnm0qblfgR5xCLmk0Lm4dqSdxwAyy3+4twRWVW7RvvwKMlMEWJ6ZFhBJ2MkmhBcgm/
	b7ncr5rCUHcTE631NB//Rql6Y5n++liA3qRfiHfhptnASs4tYEINVyb/8QHvSVXt3ZvKI6biYrF
	68BgQ+OIWGDIBxjyJHbaBROcvu4S8fSKhmcQYIkK9pyXBFy4bYJzVgaQiorRO0NVYY9d65hlaEW
	wiEDPluFEmi2/Tb6no4YuuAobER7KXLtaRfovCejMqmdtkAJXOIo5FWYpcQ2GjBunTlOXCa2qOH
	Ae3MlnHPKYK8wldq+Zxa/ARGp3AN+c5Nv/Ws83D/MY/YdaDqghZzy
X-Received: by 2002:a05:622a:1189:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4b2aaa6e774mr45148191cf.28.1755886806029;
        Fri, 22 Aug 2025 11:20:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoFNCLWAF2tAYF5UUONq++OfHCr9UeqtIPtGxLe6haKB6Cwu0mLgt3aWR5hszae30Z3Zz6DQ==
X-Received: by 2002:a05:622a:1189:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4b2aaa6e774mr45147641cf.28.1755886805361;
        Fri, 22 Aug 2025 11:20:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e2373acsm665231fa.18.2025.08.22.11.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 11:20:03 -0700 (PDT)
Date: Fri, 22 Aug 2025 21:20:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Message-ID: <vbzqtpsjkxd5qhth4k2exo2dsnfmfn5km5i5z74wun7jc5j7nb@n7dqdw3t235v>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
 <20250822142230.GA3591699-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822142230.GA3591699-robh@kernel.org>
X-Proofpoint-GUID: 0-d0abccgayY8WuJlESONhtQVYmSqrki
X-Authority-Analysis: v=2.4 cv=I6dlRMgg c=1 sm=1 tr=0 ts=68a8b4d6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=FkOoeBMDyMZldznMw-cA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIyMDE2MCBTYWx0ZWRfX0JaF7+tjajmP
 Bij2YQD0Uq1mdQM32c4BxwRXKgS6l2uJFm+NVtWGeFrOYZ8mMJtDJBYuLSdAGO3TIggt9GQAOBT
 k3r0YPZWP1eWZC+7EZpeVHCUZ4dWuLuuB1JIAgqFXvhGwxoLkzSbJ/rOh8nColJ4A7kpnZm2/io
 /WkoyeFfxxiJhw5HbuupvtPGk21c2FO3s0FB+rly6VKrrH8b1KIaTGr81zYK2UBwol9/JpWITDY
 /rZq6BJXIgMlYua+OKkBU5L75uycmg5UExzjozwMoPbz0FoGKGaJJNp1wukdQFp+Cblxt494VCT
 +nqeDwJVzyUwUauo0CxuoS3rN169WJycGjFawNSqIg+gLazIhXc+zzR6wOI1a0IIclGJl9XrRt6
 kLMjyzuz
X-Proofpoint-ORIG-GUID: 0-d0abccgayY8WuJlESONhtQVYmSqrki
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508220160

On Fri, Aug 22, 2025 at 09:22:30AM -0500, Rob Herring wrote:
> On Wed, Aug 20, 2025 at 05:34:44PM +0800, Xiangxu Yin wrote:
> > Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
> > on QCS615 Platform. This PHY supports both USB3 and DP functionality
> > over USB-C, with PHY mode switching capability. It does not support
> > combo mode.
> > 
> > Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> > ---
> >  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 108 +++++++++++++++++++++
> >  1 file changed, 108 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..c2b1fbab2930f0653f4ddb95f7b54d8fe994f92d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml

> > +
> > +  resets:
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    items:
> > +      - const: phy_phy
> 
> phy_phy?

Yes, see other Qualcomm USB PHYs. And unfortunately we can not use just
'phy' here. Once this lands I plan to push corresponding changes for
several other USBC PHYs (described in qcom,msm8998-qmp-usb3-phy.yaml)
and those will have both "phy" and "phy_phy" resets.

> 
> > +      - const: dp_phy
> > +

-- 
With best wishes
Dmitry

