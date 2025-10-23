Return-Path: <devicetree+bounces-230281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C529C01173
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7E7E6505166
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 244FF22068B;
	Thu, 23 Oct 2025 12:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FTtuAEou"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD0D313521
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221886; cv=none; b=slatIEdJV89q1b9Sb6oL3tVZBIuHI/llhTEbuap8BZxWo975AkX2CtrnPpqpB95XTvmP+3QZ+4SiHD6zWvQfAMO5Hyp7viCZbiVwbK+oI2m6jhDGWWR9FgdATsMXCoKmr/wIxYRxBRoidDlzdLIn9IT8n4AoB+vkqrfw8/4PWjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221886; c=relaxed/simple;
	bh=LWgkqKBorpr/kjhxEBAgg7GDiTpoir1TYcClkGM2qiQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CM2sGws/UnBXcwhVzGidjxG9dyjFsKQvTqPI98PMRDvoJSTFT1p5nz3YpVceixLkx6ZuIDetbD4AN7/I6qf02nU0xr9OQTDxjQ+HqW+EQaNZ53eqNkm21MMK9cOZnKP3T1iWux/fxfzOOkxxb70NUC/XKwSR7Nw+BpM4C70sT2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FTtuAEou; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6uXGN018617
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:18:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ROFrsQyZm8CifMY+KSTeuljF
	MGnyvNU7m+oJiV21M1s=; b=FTtuAEoupXC5vdrrdyN6IxcUq+6yZemCgio0oCQD
	O9ESPbFCoEwgoO2OgxMOD4PaaBGiBmf+bgtaj2PgIlTDRyDIqGK4mBVXszrWVpUR
	UUNWk3SbmrypTznS/u7oqEM+4wMx0ut7ONpVxXg0S1wqoD20QmgEhwYQAsFiYupQ
	7U7+ivuGwHVztmvC9c1vPYaBbzh/OGrF9se0c4J/FISDE2dUOihmXbGmNDOgROpU
	bDzmlbt3MaYIQpFWQOYba6m25ah6FsUaWCdo7E6R36UNxkqTdMWoFG2lADYTOVKh
	fwwDNkgqpLrUA4yQgPu/k3l1cBeuD+I5TmTZKWRZFYhI6w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08prjuy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:18:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8b33c1d8eso18637551cf.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:17:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221878; x=1761826678;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ROFrsQyZm8CifMY+KSTeuljFMGnyvNU7m+oJiV21M1s=;
        b=YvERMp9+4TK7WG6o3/e2OQIzZMa5ZahybQuoZ4Qlgkv7fwc3BUY/gs6LaU9HPsXuN2
         /FSxCahkL/asiEeMEZQ25gvjp9mxi2AgTLyA8DM8d7ZNGazEdPcHngtLtZqY0CB4WR7Q
         QQtwNFTfl3pww8fiPv7c+blOzDBC3C5Te0mJkkRuMPktX0xjr2Thtuz5LUhlcSKSi3Bq
         1SRCClFqbxbM6K7+ro7WL9KpRKSodG1Uk3Ihr3aGTFSY7kfj8fhXBSX9zsLR+VJSgIqk
         sgYoWMoZpydcNQbWAkQnEQSQ1QF4vT80FF1IXM2lF9QtBbuHD2XfUNwI9mlkQQlOYDFk
         S8Nw==
X-Forwarded-Encrypted: i=1; AJvYcCUzlvnwrha1oTmjBONBu5F5u7ybJJYABgsi32jmPYqHRk7whJmgmJyoh2RT+/QyaOQbcUbUEld9jZ9z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9PZJECw4mTrspVdS8JQNopklfh4icrDAu0rXftPRCknSwbL9x
	Q4Jn4mT8k2opRj4VMZQbnkuVPbbEMsJVmPdghtVHWFv+EgXqZxqNioe/5mSRsMRUo/60YDrR11p
	reRfAh1rCQG4yayEoZH/oaHspxToGCY7qU9hG3tWESasNGSZ53CMuJmmJbfXIr/OK
X-Gm-Gg: ASbGnct3phYcqRkQ1IxMA1pTIzH7IVr8Aatd30R+ljtj1M7hOtym/rLIWJ67j9doCFO
	UxKzuQ02NEZol1OzBWS0ha0rV6SlP+uenmmEuEnO8wviOA53XPm9rDw1GJeIgFRcYx6adeTosay
	VXrH7t0HKq66YkIuM3TLOhRw9elzWLW6a859I7AJSfMTR2ebt3HsZvdSIL6jzZA+o1V112x7rYd
	1aZPlA+IJoAPsCnrzI3UDTqaVCPgdQE78jljeyeEr+6IeGZ52oP/GLYykzExEpEt8/BgF0YWDfc
	B1lIYZC1m+NNB+she2OYWBizUqUOspZncQYmHRbyB4OEIOL1ADXy/1kmjK1CLDvT2ISB+M/7DtV
	oIKkicfyiii+SaPeedlvAcmQS8voJYwdbFV0Z7irLflbeCbTd8OFKX7lJW6C3UACiGowUEstLOI
	Ipa63fJC0sloVG
X-Received: by 2002:a05:622a:1b8d:b0:4e8:aa15:d927 with SMTP id d75a77b69052e-4e8aa15d9bfmr268551391cf.47.1761221877849;
        Thu, 23 Oct 2025 05:17:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEM6vcDVrWNof3DbeXJ3ZyXrq6655uWMwZz0bKDp8nNSSm+wXht2S5o3XqgeX/K+hhx91DY1g==
X-Received: by 2002:a05:622a:1b8d:b0:4e8:aa15:d927 with SMTP id d75a77b69052e-4e8aa15d9bfmr268550861cf.47.1761221877374;
        Thu, 23 Oct 2025 05:17:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4aded25sm697972e87.16.2025.10.23.05.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 05:17:55 -0700 (PDT)
Date: Thu, 23 Oct 2025 15:17:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
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
Message-ID: <3jjgcha25ieekpulyc64gafyg56n66emr2ibmtdyugfsm6tjvh@rkhrs474vgdc>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023081736.1251-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023081736.1251-1-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfX1wb88NkI1ITv
 8i9Mr4G1Dojaz4Zcvhdv+1d/sBXzki9muBpiay+FyEkwLNCD32KpadfIc2FCZ/pjF4TMxafo0mJ
 aOKV1W6WihnWuN3YrR1E5ayDAnlIyl8+I6C+XKndCXQTKM3GFpgkHNsKLCQeAQAsehB/LL82kD0
 7ngkrirG8TelIa4HcAEjZPfJLiYpar97EXAP1QUl5XEfGBykCelLxIFSuUHTF6PIbNcpdHqy3Bb
 evQaTYp4pdxxs0DuBtgRWPcgZt/mPVX8eZWT47SmAwYEgCW4PzkY/89f2JHA8Hg4LV5wcAgUAtN
 2BBSE6kwj3m14x4iDfV2txA9sT2Gs2m+OQWckTuiNUvhcunMHS6SfFHhrZk9i2YGY/lGELhAy32
 qBmQh4RPzBEBiQIeEJZBlmZCK7UAug==
X-Proofpoint-GUID: UIYRSxYJ0MT8zIodIHGUHCyC_4KoGaaF
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68fa1cf8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=UAfhHCFBB_nVBZkyMDUA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: UIYRSxYJ0MT8zIodIHGUHCyC_4KoGaaF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

On Thu, Oct 23, 2025 at 04:17:36PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add MDSS/MDP display subsystem for Qualcomm Kaanapali.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  .../display/msm/qcom,kaanapali-mdss.yaml      | 298 ++++++++++++++++++
>  1 file changed, 298 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
> 
> +
> +  "^phy@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +    properties:
> +      compatible:
> +        const: qcom,kaanapali-dsi-phy-3nm
> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +
> +
> +            mdss_dsi0_phy: phy@ae95000 {
> +                compatible = "qcom,kaanapali-dsi-phy-3nm", "qcom,sm8750-dsi-phy-3nm";

This doesn't match what you've written above. Was it validated?

> +                reg = <0x09ac1000 0x200>,
> +                      <0x09ac1200 0x280>,
> +                      <0x09ac1500 0x400>;
> +                reg-names = "dsi_phy",
> +                            "dsi_phy_lane",
> +                            "dsi_pll";
> +
> +                clocks = <&disp_cc_mdss_ahb_clk>,
> +                         <&rpmhcc RPMH_CXO_CLK>;
> +                clock-names = "iface",
> +                              "ref";
> +
> +                vdds-supply = <&vreg_l3i_0p88>;
> +
> +                #clock-cells = <1>;
> +                #phy-cells = <0>;
> +            };
> +        };
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

