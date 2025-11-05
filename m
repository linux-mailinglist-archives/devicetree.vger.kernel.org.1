Return-Path: <devicetree+bounces-235226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D00C35C30
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 14:07:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F4CF1A21B8C
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 13:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59D843168F1;
	Wed,  5 Nov 2025 13:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a7FUgNbP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Up+Vr16P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B224F18A921
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 13:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762348061; cv=none; b=N5CqzrtjwGbBxDcYH6nx9SX9o4kOBSjW8ADXC0gAKE84JdOQcdC+rBQooMx+7Uk9YvH2+LbudXYCpsTB/1PmFGxDGgIkmjO0cbF0+OPy5sc460BW3NipJbjtBjL8zrhhGu4cpO1mln0ulAO3WF/rdiyv0zdpF4yn9mWbaP047I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762348061; c=relaxed/simple;
	bh=klRtdEIvbZyJbNGYRtKdKDSRIVBFJV55P0Mt9NI5eL4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mg6Um2IBGxuO3ds7oKqJTmgbUar3j7Jl9i48d9mn45M2Frv1MtfO+h2Y+e/sEhTljKUCSTK1Qdg810KoepwHMqvFWQe+ow6p013N/vB4+WbNaElaj+LkbCt4LhRlLOkfC6B7KWn4q1RJ2c145My/CTlV51c8WUmOGoCiWBtqAAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a7FUgNbP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Up+Vr16P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5B31tb655017
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 13:07:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lJyMqcmOenueo7aEWDedVgPx
	9iT9e9a7v7fXA+XT7mQ=; b=a7FUgNbPvgP57arFwM221RcL0UYGY43A5q4vxHph
	4o7lN7XsdXHRpmD/ciLIZpclP/kabdfIhuQbVqqaGbaIgfc0nZ5xNU2xiKC+CRWq
	T1tNBLHlMNE5QKLCiUDvuPY1Q3eNJ4yfMGarbKu/HWZnGTREU/xfY0CcEbMQsZKW
	LVvkR+Vb7kKbjXhKAoD5WQLI2F/nBr6oBwsO8Su43Axf+Aw4kq0Zbo7vH0AwJfy3
	wOxB55yXN7pKB4rgbxXn7Sz8OyRIjq+Qfvzv2hOR0pKVOw3OblOdV4584D5mQQDm
	oLFXPNfwTPfz5iPspjbjvhEtcYGDGC+8NJiL90uj7jFJkQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a85c8g9hs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 13:07:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2954d676f9dso36161615ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 05:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762348057; x=1762952857; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lJyMqcmOenueo7aEWDedVgPx9iT9e9a7v7fXA+XT7mQ=;
        b=Up+Vr16PE5ZtTV6ElQ6JZBrZP9tHrLUxmKaGIlPlnU/YIhCnZ3Tq7EJUO0wYDcZ8H5
         CESRxIA2K2G6u00RP1uTJUu19FsSbxbenB4lfTIGsxMEor6XXNiNJbOOuX3J0OEyWWbh
         oa4WiHzDtiu94CwUrbPZPYx75UdW85vc/Hw/hAgLHBK/GbAPRdeKz78Bpz9UfhaV2YIf
         Ix/aVR8jKX+h9N71wl5JJuu2XF2HZQGKhnY1IZe4mx29mm79hA9ZLv/jKnm5+TcteNnX
         u0WVRNQKWYiUhJaOfic6I7HHwDJ8WxDx2BB9y+IykyD6bY9xAjZ0qvM2l9EP9Xn5YiTw
         cWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762348057; x=1762952857;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJyMqcmOenueo7aEWDedVgPx9iT9e9a7v7fXA+XT7mQ=;
        b=GkYJTTQoYqVqhtEjH3UwHDBHOvUV1+GnZs1Hq3DTCcSuAYeet+CwOc9gsK6OECpkbV
         ZEku1C+K9mFi0AgoND1CqXJHV74LLc+pnI6HV3BwTdk8u48JpUeqYztGE7mUiQryZaYF
         z4PUlYZyt/g5dcGbqV3202qodJqcbXdDAB7JMRM781P3wcNJ8XCFHCZ2QPz8xgCPuj+5
         qK8b1q6p/1GhG/+uK1+KoogN3L1HQHEKBkFDTeBo5WpWFXflnaslG9qbjI6khzy2nV2f
         ydWWoG0aJZoAeUqwMlG0JpnYWHRbfRFVlbp1a/EDVn7Pz9gsIU2wAPhmdT83WZ+U8pMT
         6Bwg==
X-Forwarded-Encrypted: i=1; AJvYcCUDdOO5nKSCTxeO3psGSjcEC7kfSnLmsyhdd6mJrEy3lLKP1ld8ZWHf7WGtvowVE9gKVUrnlPGQhlyU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy78VwzIkxomAPRoaSasCcKYleRbGGnZsUiVCauQymlBfn/3dZP
	k6uOegNSI+AfY+ApgBAOp/Qk+E3hsVPHe0FoQkzMqdD9ay4lAk33wEWVA9er7W1Oqq1Tk0qLWYm
	2cuv3PAIBNms24m8Db6wbiuGPjT4JLfo3WZ2Fk6qgKjwdA+rqGECHs+VtHDrqHr2t
X-Gm-Gg: ASbGncsEM4RPfG3xb3mbK+B2VEBBD1oYSB1S6W34bLM+nPBKMcKDUZiuIluA8//olxn
	n0QcuEhNn1LwkGFfH6GKEYkIME3KaQnn2KLxdvTj7+ELmDslktOCasKtXel3IJlojDR+j2BDrV4
	nKAkYTdlj2stB7oyo7C28QzrS2QjbcxVbIbSFCGlu+qXlHHK7WXhvpFq5OvrcqcyFkxZT3V2hNP
	dzzEkyZKB281B8JrT/h0iVyaPfIT63eh4ig8CJB2wPx5CvrLJyhZ+7PQKRdP7cnHIYKUaJYpH+7
	g90qPh8Mqgv0FccL6bJwDv6Ief7BWQCg9aHwGvt1KP/D/feIcUNf+e1FYSJPqRs7PW/ahmDFmAi
	K51LcnEvjJj4h2K6lTzH2UhKNbY3T4iuTmJBE6ZF4dlQPJguCrRWFT0Fr457O
X-Received: by 2002:a17:903:3d0f:b0:295:bba:9734 with SMTP id d9443c01a7336-2962addacc0mr44990965ad.24.1762348057091;
        Wed, 05 Nov 2025 05:07:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGi1VhR989ZZ4vIFZKd8TvIl4G60NTKKZtU1PCrjwDE+njM+qU3IIPJ08T9iXL1mcYzd4JdAQ==
X-Received: by 2002:a17:903:3d0f:b0:295:bba:9734 with SMTP id d9443c01a7336-2962addacc0mr44990395ad.24.1762348056531;
        Wed, 05 Nov 2025 05:07:36 -0800 (PST)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601a5d174sm61765875ad.77.2025.11.05.05.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 05:07:35 -0800 (PST)
Date: Wed, 5 Nov 2025 18:37:30 +0530
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: soc: qcom: qcom,pmic-glink: Add
 Kaanapali and Glymur compatibles
Message-ID: <20251105130730.pr5j63wfseaa6ubr@hu-kamalw-hyd.qualcomm.com>
References: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
 <20251027212250.3847537-2-anjelique.melendez@oss.qualcomm.com>
 <20251028-private-chirpy-earthworm-6fccfe@kuoka>
 <4cb41e69-fb32-4331-a989-529b5af0081c@kernel.org>
 <xg6x7vulzjtiqnzu2g3k4phhi3og537cwu2quwqgdlpcxoggwt@pqmfsvsumt2g>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xg6x7vulzjtiqnzu2g3k4phhi3og537cwu2quwqgdlpcxoggwt@pqmfsvsumt2g>
X-Proofpoint-ORIG-GUID: AFTkRmas_R2sOOygh7N6jCAFEEXiTc1Z
X-Proofpoint-GUID: AFTkRmas_R2sOOygh7N6jCAFEEXiTc1Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA5OSBTYWx0ZWRfX+Gu1mAMEZWfl
 14gZEQJ/B3yyeTRoJNWY0Inyk3CpYknZ8+CufGCwVBlA6JFmZcL5rvM1/yHV2hOpzVsQdCXMhTY
 D4F6R+bJCzpb1rmNuBJFu4FmB9kmTc/oYcj2078BYDuMvwUYHEOHVOz5Tt+/U6fLPSgSBX9Bw5D
 Uxs9lwbWfSTEPkE6rtOjaDrTRAzPTVm9+bSwKwK8Z63fDYdHWZdjgEyUz28K9iuJgyG4sfL5sBn
 e0o0qHXUEbNa6HMlRnkRGAXKXk+SgenJ1oxvb301CWdaEXfIOmVhreMIru47baTxLSTUWWZpbdp
 3VKXHGERWB3Ns8Spc4xypiQZT1I/xWwAtgosx9K8ye3GBmulqdi6XY/ij5CQ6SGpRNwaxWGSy32
 N13lXFV3PpF5XrdBKqkojAzjmRXhFA==
X-Authority-Analysis: v=2.4 cv=apS/yCZV c=1 sm=1 tr=0 ts=690b4c1a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=xrU_pXCrs3kvcMV52VkA:9
 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_05,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050099

On Tue, Oct 28, 2025 at 09:14:10AM -0500, Bjorn Andersson wrote:
> On Tue, Oct 28, 2025 at 09:36:09AM +0100, Krzysztof Kozlowski wrote:
> > On 28/10/2025 09:29, Krzysztof Kozlowski wrote:
> > > On Mon, Oct 27, 2025 at 02:22:49PM -0700, Anjelique Melendez wrote:
> > >> Document the Kaanapali and Glymur compatibles used to describe the PMIC
> > >> glink on each platform.
> > >> Kaanapali will have the same battery supply properties as sm8550 platforms
> > >> so define qcom,sm8550-pmic-glink as fallback for Kaanapali.
> > >> Glymur will have the same battery supply properties as x1e80100 platforms
> > >> so define qcom,x1e80100-pmic-glink as fallback for Glymur.
> > > 
> > > What does it mean "battery supply properties"? Binding does not define
> > > them, so both paragraphs do not help me understanding the logic behind
> > > such choice at all.
> > > 
> > > What are you describing in this binding? Battery properties? No, battery
> > > properties go to the monitored-battery, right? So maybe you describe SW
> > > interface...
> > 
> > Or maybe you describe the device that it is different? >
> > >>
> > >> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> > >> ---
> > >>  .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml      | 7 +++++++
> > >>  1 file changed, 7 insertions(+)
> > >>
> > >> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> > >> index 7085bf88afab..c57022109419 100644
> > >> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> > >> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> > >> @@ -37,12 +37,19 @@ properties:
> > >>            - const: qcom,pmic-glink
> > >>        - items:
> > >>            - enum:
> > >> +              - qcom,kaanapali-pmic-glink
> > >>                - qcom,milos-pmic-glink
> > >>                - qcom,sm8650-pmic-glink
> > >>                - qcom,sm8750-pmic-glink
> > > 
> > > Why qcom,kaanapali-pmic-glink is not compatible with
> > > qcom,sm8750-pmic-glink? If Glymur is compatible with previous
> > > generation, I would expect that here too.
> > 
> > And again to re-iterate:
> > 
> > If X1E is compatible with SM8550 AND:
> > SM8750 is compatible with SM8550 THEN
> > WHY Glymur is compatible with previous generation but Kaanapali is not
> > compatible with previous generation?
> > 
> 
> There are effectively two different implementations of the pmic glink
> firmware (in particular the interface); one designed for Windows
> products and one designed for Android products.
> 
> Then for each implementation there's incremental additions over the
> years.
> 
> 
> By not accounting for this in the fallback compatibles, we're relying on
> a growing list of "specific compatibles" in qcom_battmgr_of_variants[].
> 
> In addition to this, we have the addition of USB4/TBT support in Hamoa.
> 
> Enter Glymur and Kaanapali, the implementation has moved to SoCCP, so we
> should no longer do the PDR stuff.
> 
> 
> IMHO this binding should have fallbacks for the major "versions",
> mobile, and compute. But perhaps even for compute/usb4, mobile/soccp and
> compute/usb4/soccp?

Thanks! this makes sense. Then should we do this way..
- We do not touch the existing "ADSP based mobile/compute" items
- Add 2 new items for SoCCP based targets for - MOBILE-SoCCP & COMPUTE-SoCCP
like below?

      - items:
          - enum:
              - qcom,milos-pmic-glink
              - qcom,sm8650-pmic-glink
              - qcom,sm8750-pmic-glink
              - qcom,x1e80100-pmic-glink
          - const: qcom,sm8550-pmic-glink
          - const: qcom,pmic-glink
+     - items:
+         - enum:
+             - qcom,kaanapali-pmic-glink       /* MOBILE - SoCCP for pmicglink No PDR */
+         - const: qcom,sm8550-pmic-glink       /* battmgr - mobile    */
+         - const: qcom,pmic-glink
+     - items:
+         - enum:
+            - qcom,glymur-pmic-glink          /* COMPUTE - SoCCP */
+         - const: qcom,kaanapali-pmic-glink    /* pmic-glink (SoCCP/ No PDR) */
+         - const: qcom,x1e80100-pmic-glink     /* battmgr - Compute    */
+         - const: qcom,sm8550-pmic-glink       /* ucsi */
+         - const: qcom,pmic-glink

Regards,
Kamal

