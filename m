Return-Path: <devicetree+bounces-230619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A5AC04776
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:16:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D45471AA3909
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 06:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA2B6266565;
	Fri, 24 Oct 2025 06:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e8zB9oQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7186C1E51FA
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761286612; cv=none; b=eFT5MSVvax50pTVUkKr3IcoNSq6h+pBtJmp7aSuLlRiMoN7VFbGq00zHX5xvl4LUtfdSOYlRcXodSUn36zkmpOdlT1d3DxvgYF0359jHBim+yuNgNBYR2PYBiCfNrxYHt21hDk9K7KorajOWxyKmn0MYU796XpY2Nj9DFbFTiM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761286612; c=relaxed/simple;
	bh=MZYW2OkyBWkFaPlt9Nh/zys7IQWAuIETPcdJPRLu7OE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJLWZgC6TgyMvjFHFR+oCRT+z/Troi4aBth/m3JLum4+PRZ3sj3SZKMs54cIxzy6GDqukfmqYRFO1j3R4lv5MtpCP2qHBUmlPfAkWLB0UCo2QhnUwyVOFlzpc+oIZlZVc3gdzqKN5B10QkUp39ufbHBI/Fto6/Nkm5DL4GuhBOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e8zB9oQl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FqVf004412
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:16:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Oc3gjqlqckVAbSd31V8Qk20G
	E0yeIECg+nhtUabuCV8=; b=e8zB9oQlRCKyR8irosjyBtwH1pKlRx0uP3KnLmMC
	SL5l2poYCFHIxJgbbwCGIeUuJtHp+M4ET41hcFW8IQiPMhe4V/pB3okow2//sLMR
	mbe6dCxYG2noMwa10KYtmUmJBW6y1Z4cM7Ta/Md3RIHeBrtUC8qXlwUtQerLKnm6
	Smp0yIyDueiOy2SzdM9SbposLrIKJmhd29l6m3AqzfnMP0LebAWNqcmg8dYViTC/
	r1Qv2IT3t9KFoXuOx+oCnWXnaPC1pLo0Sno8sXwGve7uU3klvZKLuW4peORoLh8O
	HA14+RQsJn0dqprACEeAizX+Y7s0Dujsf7jkfeniYp8yCA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2geb036-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:16:50 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-81d800259e3so15056976d6.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 23:16:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761286609; x=1761891409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oc3gjqlqckVAbSd31V8Qk20GE0yeIECg+nhtUabuCV8=;
        b=eSMunT/rBjrivMovJR0Zc8gvOQVeJXH+VugutPLXdGTtMdWdQAh2RtkB9S6+3S/Cr1
         TIXl/vK2IvNTCu3FleH4ERtzKbdgXtwuxPiw+iV5dmbob4uabCzzJgLNCESJ+y/VbmRU
         NB2ZiCQDSIxijCSlCCCLnRJWSoouGthz2dNCqnklGrTAY3yJOj0l5YdbIvEOrJSmRH3A
         0/zBph9LmR+6bUWiuOIEjASzsOCjxRgWVPPyTjJJAAE6EhNmY2D3jhUtIPyV2eRnSLBj
         9ZHrNZbFsE0XDo/p3uO/UrlYooHt/nuxdTWO74iq6Lj6TqeFIFGkN6bK+dbX1w0DSNsi
         5BKA==
X-Forwarded-Encrypted: i=1; AJvYcCWmtpvx+hRSfsA05UFMpvIwA+fC4/HngupQErv15sLCvJPcQePKmISMVgwUfTHnXUIUXLtfuYt/DSrx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7pBWItLhPxQVmKCbN8DMLGy/5kiTeya3C7P36uYUpBFLOBJIK
	daTsW+15No3JBmRCCafVkSxi20Kt8DCOvoolu0XStU+HVMSW2P/li2/ud3qikoH5NenN0/bBCkz
	ZyWcq1ZoBQYD/Sk1Pv22J1xaNlMgCKr0iERha0F/78PpPBc6dL8lYf4Ezhu9dW8cU
X-Gm-Gg: ASbGncsti1AsTglQeTcfWTtEOOW84pxRDYpDVchjlpBY1oCdMdGeDLyEFkY22L0E3VN
	jdtzq+UTY2k6Yo7BMFT4opVvJHt7tdj7hwbZKY6ytUI0K5iWg16JSYD5licH+T5A2fxpQ6z9qYr
	p3dU7c9n85avBtUI6wCqBYSK9avQUArSkt/CZM4i/b+0vtjtIEgbpI/L8Jny0cuY8jwgCB7OWej
	KAdV8d3Vv+RXAdr/9fBXy1oKkYs6fGgK5DI5OGAroTbvBuf6btlJaSX5IXke+Dw8ujTrdGiV+cO
	5NNxHivM45RSr3N9P+usxr5rIn+3dOfdQGZCV5lAyl+5z3MsBmK14+c7115Z7Cdp4j0WnwBhK/+
	CmAHGNnPt8jcPXVqu1MWFFrH9NqNCK11aFCGINKCelPW0L/lHFjQxLKQBufDB
X-Received: by 2002:a05:6214:1948:b0:87d:a372:fd3e with SMTP id 6a1803df08f44-87da3918502mr252316166d6.56.1761286608995;
        Thu, 23 Oct 2025 23:16:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRWxznceiaYwoYfRYDi83MmSgEYL00/tTzbMQnKGU4A+s5YJqD5hVgMNUNelwZcLrgA2PNdA==
X-Received: by 2002:a05:6214:1948:b0:87d:a372:fd3e with SMTP id 6a1803df08f44-87da3918502mr252315746d6.56.1761286608426;
        Thu, 23 Oct 2025 23:16:48 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87f9de7df36sm29520256d6.21.2025.10.23.23.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 23:16:47 -0700 (PDT)
Date: Fri, 24 Oct 2025 14:16:36 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 12/12] dt-bindings: display/msm: qcom,kaanapali-mdss: Add
 Kaanapali
Message-ID: <aPsZxLLkmLXCZlO1@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023081736.1251-1-yuanjie.yang@oss.qualcomm.com>
 <3jjgcha25ieekpulyc64gafyg56n66emr2ibmtdyugfsm6tjvh@rkhrs474vgdc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3jjgcha25ieekpulyc64gafyg56n66emr2ibmtdyugfsm6tjvh@rkhrs474vgdc>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX6Mk3lf4J3kdt
 FyZFzjD2a+25gxYJjrwEE4iI5qrKMxFAURISXzx/GuZj7DAj5yQEWKHF/OkZWKfoEhsOzTzo0h4
 tsUDWhOSZWVqXqwtTpxF4g0FSiC8mDowcEMoGhe/dtiYwtyjGRTlMYuXQcaQifJ3q3GhtGF4HFm
 dc9epx8rNl/iZFvwTPnSqdm+GeHOyFOj5hvvvKBSkR0VoCvEAUYrcpYF/Vzhmbr5U9ldVxjbwgk
 Oc04g3L2c5Ix1cRQ+s8UiYbylNgfDTErlxywaN9VkeHhTeEx1Ri6WOQs6IPYg7YBx+eCEmKfEkU
 0rtJNN06oJIbSSEUKhRzIGhOgBTnH7s8fHUYOnF2lWuUKUGsgVt8UuMB4rpeMByGm4EUxvUt/Rx
 GfDmpjrS/5m/kMaL2dvHeTnB27Dz2w==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68fb19d2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JSoK1XWtJ22zO0-9PVAA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: dBKLSS4D5RnzOi3KB9KGv3ZMf_qCaTaq
X-Proofpoint-ORIG-GUID: dBKLSS4D5RnzOi3KB9KGv3ZMf_qCaTaq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On Thu, Oct 23, 2025 at 03:17:53PM +0300, Dmitry Baryshkov wrote:
> On Thu, Oct 23, 2025 at 04:17:36PM +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > Add MDSS/MDP display subsystem for Qualcomm Kaanapali.
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> >  .../display/msm/qcom,kaanapali-mdss.yaml      | 298 ++++++++++++++++++
> >  1 file changed, 298 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
> > 
> > +
> > +  "^phy@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +    properties:
> > +      compatible:
> > +        const: qcom,kaanapali-dsi-phy-3nm
> > +
> > +required:
> > +  - compatible
> > +
> > +unevaluatedProperties: false
> > +
> > +
> > +            mdss_dsi0_phy: phy@ae95000 {
> > +                compatible = "qcom,kaanapali-dsi-phy-3nm", "qcom,sm8750-dsi-phy-3nm";
> 
> This doesn't match what you've written above. Was it validated?
Thanks for your reminder, this is a mistake forget to fix.

correct here:
compatible = "qcom,kaanapali-dsi-phy-3nm";

qcom,kaanapali-dsi-phy-3nm and qcom,sm8750-dsi-phy-3nm have different cfg.

Will be more careful to push a better patch.
Thanks for your careful review.

 
Thanks,
Yuanjie
 
> > +                reg = <0x09ac1000 0x200>,
> > +                      <0x09ac1200 0x280>,
> > +                      <0x09ac1500 0x400>;
> > +                reg-names = "dsi_phy",
> > +                            "dsi_phy_lane",
> > +                            "dsi_pll";
> > +
> > +                clocks = <&disp_cc_mdss_ahb_clk>,
> > +                         <&rpmhcc RPMH_CXO_CLK>;
> > +                clock-names = "iface",
> > +                              "ref";
> > +
> > +                vdds-supply = <&vreg_l3i_0p88>;
> > +
> > +                #clock-cells = <1>;
> > +                #phy-cells = <0>;
> > +            };
> > +        };
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

