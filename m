Return-Path: <devicetree+bounces-230616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CECF6C0472E
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:10:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 427F74E3887
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 06:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6FDE24BBEC;
	Fri, 24 Oct 2025 06:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hV/iQ0Ve"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B1C141
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761286245; cv=none; b=CnK95jgoALtYTSneBiEvBOmRirWaAAv9NJ/oMYDHXBTR3238baapZPG/1IzKPkb3vwd7fYMmFgycjV+6EAOZPzcntptNIrvmrAvcXfqMJMS5lLbn02jTXoPBLiTXnmpALjUNe0FqxpJKHo+nGwTqwOJXD6ymqJg0751bWwXsB3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761286245; c=relaxed/simple;
	bh=Uflu6VZJJ5Inn7mIJ0KBnxD7bYqrB+u8/dlCHjMtfto=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HI3C09WAzoBSF2pSabA2dpdxLwnYByDXqAp7q/urchxm3BZqpcmbpZAru/WZM8W8r52TKYoLdyydqrbhaG2r895mTK/Oitj++/RaeEHxl3y5xY95sI9N1LZPkYXhY+XnBH9fAWbKwE4vICnJbFth2nE3l0oCXWXr3uhinQRjbSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hV/iQ0Ve; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FQ7J003440
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:10:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iPDyisl44Ds/H4LrsIWE8heq
	Yin0PT0m3dP+JNRSHeI=; b=hV/iQ0VeW4QjxbWm9Z8aa1teHm+fAYtwOBru/D+u
	pN+54kTGbayJ6FViPbZT1uY9Yg33/T5rzquz//sIlwCumVOqXeE/MLjjCBPzwkEE
	eXRezn091PeuNcxYpdQRZaVxzP8wNTo3hWQSJ+U4VHHqJIPxhX0QGQSrf1tRfHCy
	3Pf+9PTcT5v1GPFtQRD7K3gR2uKIxv7crkRiDRzVdVVK3JhbWaRfMVv6WLSuOESV
	D8kZckRAB9VIvxbhuTecApkFcDFv3pkZwZzrfFGoA4qWIpexxWBl6m5f2oYemGJ4
	oWqZcu5Lh/In0a2ifFQfkQIr/r632CmX7xjMJb0Jxc2IhQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27javuf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:10:42 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8adba545aso56262411cf.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 23:10:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761286242; x=1761891042;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iPDyisl44Ds/H4LrsIWE8heqYin0PT0m3dP+JNRSHeI=;
        b=omisuK1DhhYnIuQHcX5WnUE5+4th2njnU+266Z+GpYEkeAUeafy17qebGJf7Ruou/e
         eIvmuCTYA3jWI9LglNr1avidZbAm5zsA80yT8aHp2rq3kXNSbl5uxM1Ln5r3Wmww5adK
         3ecwN09LHwXthOPLCoY/2zdoXAQmaNZZ5p0/nqtCos8JpdJoVToHIRWZwsDB6Bkspmiy
         /Lgm+zZu2APv0Z0mAEebSW3B6/ukRbyvr2wKoNDSXVXw2iKARUiB+dQkS5+iFMnP9mXA
         Dc3fxySUpcM84hrNdI0LkWz4gE2QfuBMn+HSZaOGHXYoxKpfpve36d5xiSKECehPCYhU
         TCxg==
X-Forwarded-Encrypted: i=1; AJvYcCXN49+82OfXKQBxe/2t+5FlRMdWCjeFIknd5DmqnzY4hZyU2dOIiDArq6APzqLSbp5E83tNDnW42IK9@vger.kernel.org
X-Gm-Message-State: AOJu0YwhsL3FjkDQf0Hk+l4dlMA6Nf/J8AUpOTCQ5PzxqzUj1AC4FagI
	vGxhLyS/h/0QG1lSTEg8mQPtZXSkZ8LDnVHZb7PYIRuWwdpygXzhY/nSlQVGdtP1umCPThD2Q7Y
	ZG1177f7z0vbUV2Wb4waFuIli7KXB2UFVAhuikdsWii//KkfnD3btiPoQrhgj3jq0
X-Gm-Gg: ASbGncvPbLTY31P0F5WShkkqsYP1S/VQrbNyiO0KK3Tog7NZ5n8vijqTl0k9XwrnFQn
	YmXrK+J/U1yVKVUIFPV27JBtgjzC1mX64bQ2QbtrM4agQgwSd1ID8Bv3Rq53+fyiZmjk0gZpPlo
	s8Inhvwnm0sJjTVbK/cJFUkX7HErfjN7lKsZySQFFuXXsPdvwkDYJSWWR+W91Fa5jmbvDHoJtqL
	e2i7riU0ZBzCaW0s94NIG0gmhlf3pqTuupbnrFV6/LVQDWmPO04XJrOLrv4AvzvLoQFnMB/qgPn
	YaPOnQpfe93LNNWnwuI1YUY06qbdZN6Is5pCdRuvnQhWc8cTLzrLUBGB2PLp8w5i5Q47rqTBFii
	XKEJMczjJ/nR4ORXnaMh2vfqgodulXDPoavubkLTfdNiDzEgNjhfGfXnZOkkm
X-Received: by 2002:ac8:590a:0:b0:4b0:677d:d8e1 with SMTP id d75a77b69052e-4eb947d0b75mr10195101cf.17.1761286242099;
        Thu, 23 Oct 2025 23:10:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEtR9U1iGlrQGZPr6uA0Clma7yT4910fb9qum1J+IWWzJ2J/Ji+vn8lfUnOE0P2SRWMpyyYA==
X-Received: by 2002:ac8:590a:0:b0:4b0:677d:d8e1 with SMTP id d75a77b69052e-4eb947d0b75mr10194911cf.17.1761286241626;
        Thu, 23 Oct 2025 23:10:41 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89c120567b1sm320507385a.51.2025.10.23.23.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 23:10:41 -0700 (PDT)
Date: Fri, 24 Oct 2025 14:10:29 +0800
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
Subject: Re: [PATCH 10/12] dt-bindings: display/msm: dsi-phy-7nm: Add
 Kaanapali DSi PHY
Message-ID: <aPsYVUjyPru5FwPe@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-5-yuanjie.yang@oss.qualcomm.com>
 <em666johhzrluo5z4t2nu5jo4yuowegaemlrursvczx2zze5o5@uakt5j22ygwm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <em666johhzrluo5z4t2nu5jo4yuowegaemlrursvczx2zze5o5@uakt5j22ygwm>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX20eorVxyLtza
 7U65IWNi0oA2dyUamuTV7LGdEV0JR9U+AjDlTVPnsnwf6xGsICBVd5C5wOWQHcgA0f8S4/ZUuam
 6EYt7WgQKCL0rEax8HITwvSe/TvK5vBcGnHvkyo8UGUmSFxo0q0Ndr9dN8roNeME026YpXycIdz
 RDK93O+QcG6KOt52KwBoXiDSe2hg68c3EcLTHsMtfvqe82CkdWtzWfotIiZaKH9JlfCxknI/Ctm
 FeEtSxpvQ7yO0wVV1LKcMJpVmd4UAL8Jly7ROgFxjwuKR+Wdu0Qw6r4M01GGj3z/1wtfhpu4G3e
 ZBJ/IUTGQA0l2HjkGWool08l2wDZjwvUg0XZIjVfcaEEytEJM5iZQxlhANjzkSW/ujXtiYmQj5V
 PCbNjyX0TQ40LKAXCYA1x7FxUJ1CtA==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68fb1863 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WIVAG7BfrJY6p4e7JxwA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: EZcyU5nGzHZ250H__XOvPW8KANZptaSa
X-Proofpoint-ORIG-GUID: EZcyU5nGzHZ250H__XOvPW8KANZptaSa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

On Thu, Oct 23, 2025 at 03:16:31PM +0300, Dmitry Baryshkov wrote:
> On Thu, Oct 23, 2025 at 04:06:07PM +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> In the subject: DSI, not DSi
OK will note.

 
> > 
> > Add DSI PHY for Kaanapali.
> 
> Why?

DSI phy for Kaanapali have no significant diiference with previous version(SM8750).
But some register change make it imcompatible with previous version(SM8750).

I will give this reason in my next patch.

Thanks
Yuanjie.

> 
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> >  Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> > index 1ca820a500b7..a6e044eed3df 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> > @@ -17,6 +17,7 @@ properties:
> >      enum:
> >        - qcom,dsi-phy-7nm
> >        - qcom,dsi-phy-7nm-8150
> > +      - qcom,kaanapali-dsi-phy-3nm
> >        - qcom,sa8775p-dsi-phy-5nm
> >        - qcom,sar2130p-dsi-phy-5nm
> >        - qcom,sc7280-dsi-phy-7nm
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

