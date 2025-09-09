Return-Path: <devicetree+bounces-214979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EDCB4FE82
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 16:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAC4B4E3455
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39495223337;
	Tue,  9 Sep 2025 14:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ozu9A2xC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E33256B81
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 14:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757426416; cv=none; b=X91buV1GwJg/0bl9ofYeLVfUPqrC61qKkbnFfpCJNoqADegqZMYBIksJePgE5T8BGWqpiBgVJXO+O+/Uez3b6Y4fu6e1qJEeBQ+05ZS3YeWib/8pyeq1YYwfA8hMbm1EUekNrpN8M0QEzQ/fDhhEOe3L2vtJ+fEMtJF4HPSOCeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757426416; c=relaxed/simple;
	bh=LYg9kkS3/eGoksJYpWuzYpEAsLarJctZuZ4l+/3X2/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=onSRJbkdirdzcKYbOFTvxpn4GwvtSim7McB2fg7Q3StNNVUd8KC43d8uRk+3FFwdlVRSkA9cxccUPc57glLOXx0oB5VFPeAEwOH4n1yWVH9g0HvwV3ANzb9us+OuewQa5/WzV7sAVo3KYVcArQ/tYmmAz+2OXO8N8eBLzDMhx8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ozu9A2xC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LQRX009097
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 14:00:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RaiuPSwScN1So+PWSJmzhuha
	k5hJv4sAaqtK90ZKdho=; b=Ozu9A2xCN38svH8qQO4SH/IbWO1Epuis5xzMXswO
	7+b4Wp9gy/wGuogKEFs87voIPlwJVd0wXF8+bnwLOW/I3Ks9Prh22YEbJIVUIAHL
	N8QTVvITH4REGAKtK35pU2W2ZoxekQj9I+jaJgMePRWmduvBnOMU+wocHN/C8Yj1
	MLgwrGIVV6d6dL055W0O5xQl8yeF9fMRf6hiDIy7825PHCt/6w/QCbBVvLPLeB9b
	+jnlsT14oC3tLtqMo2i2rQYASzN/Sdo+VuU+EzyFwvzZt8x612zYU79rIot1vNV7
	L+RyeDK7Yflrvkz9S90eUKUZ/EmjxngYyeVDN3XfRnwNYg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdw7qw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 14:00:13 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70de52d2870so38712246d6.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 07:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757426405; x=1758031205;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RaiuPSwScN1So+PWSJmzhuhak5hJv4sAaqtK90ZKdho=;
        b=W2exfgU+KO66eMFc6bRNdodvYv+QIOcgRQBN+ZmsVH5DRlxBdQap/+iM1bvmeti6uC
         9B+T5ArZeJJMBXPFzDUfCkevkdj4VWapxfCxl1zbHYXwY8eR9s0nl+AWx+Nu9DhwCgaJ
         5cnG9GHf/jzH5ni6xkO2HN5eW8gX7PAcp/tHNe79rSkjN5oaGzRb1rIQtAm3CV6dmCLc
         839fOjJdEml7tqoEoJJ6NH5kqCLOvDPMeQBF0hKVFAhSD3TDH+IU6FuRREIS/Z18d2dn
         MrOJNClNZKnlhGABcpE7d9ua665y4O8YXkSp5Sk2lguqbD7Na9859WgIWvoBtKpvYhTh
         jiKA==
X-Forwarded-Encrypted: i=1; AJvYcCUcosQz6eweMAfzwgJ9EjbgBEzisMAstolcwdNoDAncscBUy4kB+KqKqKCpBa1PDsZLQYuzYvuNIrXU@vger.kernel.org
X-Gm-Message-State: AOJu0YzPu7zlLjeVZCEAf5/5y6RCqgRmnXuFmPja7SiuV4VV0sIF8DU0
	ONzOOjlejus8fvwBLYi+rhH5A4NNR6q+HD5T11jQEyiM3InUgMJh3YCG6zAf0klQYCKps3CT9sn
	FqmtLOAMgTZGnLZMNHMVdkSXpRXj74fGPIn9LTRHHA/UmjIZ8rF7t+O/dmkAAaSho
X-Gm-Gg: ASbGncsGMR+hMAMxN7fALqCpdaoFVySKCdyHKJaZFHps+WiEG9hNoFoCLJFu2V7b7Z/
	l4d5QqqzL+3ixjVpfdC/a8ScJH063nmFw8YjPBpLW4Mibxtdn27G2zm06sJv6wUYoFM4zYEs3ff
	TrYzqj+BOdQ/kyeZ19tQl6b1NLmYyV9bnDsMMZDRvxFrCDLJ2Gb0XeEsMs/LKFlgttu4MIHqDk2
	uDJLhO1E/MNzrz/BOSrO6fDd4edWyOLSGmzuwECH+dWuXsifSViLCoY8uX4LNsQfheu47t+0Ft4
	3Gq9LRhizopa+fNRtnc198+sZXg5xGfAHz2cYJ5hy5Jl1jSwXJsnMKo0aW1Qb5fL1/9dJGPO0Yy
	GcB0MgiGqYmRjN9JEk7UkdEsqOtWj2gpr+5fWocLqgyGyFMk+ID1l
X-Received: by 2002:a05:6214:e85:b0:758:2117:887a with SMTP id 6a1803df08f44-75821179a69mr16533316d6.58.1757426405038;
        Tue, 09 Sep 2025 07:00:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFj1Ux9j67rzf37hWL5A8Jozn7wOidkUvzvPy9tqT1pZirgwULyxpmO/uSUwFeT3zwLe1DRvg==
X-Received: by 2002:a05:6214:e85:b0:758:2117:887a with SMTP id 6a1803df08f44-75821179a69mr16532636d6.58.1757426404347;
        Tue, 09 Sep 2025 07:00:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5680c4246b7sm546172e87.13.2025.09.09.07.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:00:03 -0700 (PDT)
Date: Tue, 9 Sep 2025 17:00:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikram Sharma <quic_vikramsa@quicinc.com>
Cc: bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_svankada@quicinc.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] dt-bindings: media: camss: Add qcs8300 supplies
 binding
Message-ID: <ez5d76piv6srwceueajokplx73xj6xtgvyqgtbpjkdtoo7ijgt@7xn3uxzdcgvy>
References: <20250909114241.840842-1-quic_vikramsa@quicinc.com>
 <20250909114241.840842-5-quic_vikramsa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909114241.840842-5-quic_vikramsa@quicinc.com>
X-Proofpoint-GUID: PCRPyhAF0F1X9EkH4isv3TmTodt7tMe0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX2wD9A+YEkpjB
 2Y2nd4qeshVXvztmgxmq6hhTjnLOHQ+Fidu7oTsXs/o5Ka+Y48cablOcay98HoeZXlJpfSXrRY4
 7fRZCh+dCGU3DA2cKP2UJ3j8Og2xewWihqmyRkXcBipQGLvQm/GlfcTH2gWB81ZIT8w1y+mnBtw
 zW5FuaZPOf7ywi791MHSrWO8llIgHKWgIDp/sVyP817vTDVGXGcja9uxZr5BSKTuDWiyiimcrWM
 WbtQ+t5cjmWepLt+dqqEh/MGYTnQH56+mjnUx7RWt7TULdBte9dIqke40DYaCDOvqrjHECxM2v7
 FVqyFOB1Q47QhaiFeQNnI0npozG5UpqEagutctWKTiif+yqlWHYNk/0hmWeYH8x/gJiA1Bktg44
 ct/Go8Gi
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68c032ed cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=vE47tFul03BpYyIIO6YA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: PCRPyhAF0F1X9EkH4isv3TmTodt7tMe0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

On Tue, Sep 09, 2025 at 05:12:41PM +0530, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Add vdda-phy-supply and vdda-pll-supply to the qcom,qcs8300-camss binding.

Don't describe patch contents.

> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>  .../bindings/media/qcom,qcs8300-camss.yaml          | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,qcs8300-camss.yaml b/Documentation/devicetree/bindings/media/qcom,qcs8300-camss.yaml
> index 80a4540a22dc..559db6d67f06 100644
> --- a/Documentation/devicetree/bindings/media/qcom,qcs8300-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,qcs8300-camss.yaml
> @@ -120,6 +120,14 @@ properties:
>      items:
>        - const: top
>  
> +  vdda-phy-supply:
> +    description:
> +      Phandle to a regulator supply to PHY core block.
> +
> +  vdda-pll-supply:
> +    description:
> +      Phandle to 1.8V regulator supply to PHY refclk pll block.
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>  
> @@ -158,6 +166,8 @@ required:
>    - interconnect-names
>    - iommus
>    - power-domains
> +  - vdda-phy-supply
> +  - vdda-pll-supply
>    - power-domain-names
>    - ports
>  
> @@ -328,6 +338,9 @@ examples:
>              power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>              power-domain-names = "top";
>  
> +            vdda-phy-supply = <&vreg_l4a_0p88>;
> +            vdda-pll-supply = <&vreg_l1c_1p2>;
> +
>              ports {
>                  #address-cells = <1>;
>                  #size-cells = <0>;
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

