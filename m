Return-Path: <devicetree+bounces-226027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1678BD3046
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB6A33A5286
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35D9225BEE5;
	Mon, 13 Oct 2025 12:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Palj9H/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CFE26E154
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760359074; cv=none; b=siY4Pui6wn0W2eya2s+woyc+MN3J96ptj9cK6A2Mz6G5Zva+3wRLXKz/X6CbEi7ZZS3oa2zjXuvgwM3OQU0xrqYfVpWvv9cTs7zPBG6IDGwhg3uBwrWC+MXrcGlu7VmZA8SiS+hKJeqnLSKYuyh+A9QDE/Sj3Y0sxY/fqKEUn14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760359074; c=relaxed/simple;
	bh=aZGRCaEQAskD8nIjNVaot/fSIqSTel0rYFtYU6crRRc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nLMozoZBIzivxyhZQw05cP7vny9KldxKEkZGPWF7J1H1VIZqiAz5HvqHeAO7Kwdv6VUd6gdAqMJcxtNcjejnPxSJ5RTG1gURNPJl/A5NeuiI+w38lt8156UdK9TQhoMMIF2ljw6NPDocqpx7MNEEbn6McoAbuSUa4rOV3k86NyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Palj9H/Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DApr4K028779
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UTXiDHZxjE5lYanBLZzc3WtP
	FhwD6zEyaiJPl3VCc+c=; b=Palj9H/ZHdSeQ9v8BmEGpcpToPtdkFkW8L9foVqF
	ma0Q1ih6Vl4BSwmHNHJip8SFxWjaPUnPkijbB4VH1suCrIPjty4Yc84bssgGeMkz
	YlcM7rGi7pTcoviN/WtNMDuncdFFQxwPk2wXEBMC2ddryPuWkzM/LoaqKh1gZds+
	Txq97tHGJjSZ4ihmFmyr+fYQUucuLypOmod2sd4WiKuelVCEp5Iyje9EZmhFaDsJ
	kREEkvjwGMCOFsY0eqoBnH0uZ3NvHxfrtABxbZozsX7wIGrFq8zrtlZet1NUdQWF
	3WoD985IMAHdfy6W+Br7NDrmgdCYGfBoBF8QKOC2Gwighg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0mh1r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:37:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-871614ad3efso2175445085a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:37:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760359070; x=1760963870;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTXiDHZxjE5lYanBLZzc3WtPFhwD6zEyaiJPl3VCc+c=;
        b=Yp4yaZkZhap61JEKkGUXgLOmYN5ReDCTeu/kv7j+ogmqW23LSPu6GIDt85Z85gt8tC
         dGzLbJUNLyWuhbx3F8uJ0ebmbtEkwtyjHJr+9RnvT+GVzTGKGeo5G6XKXEabuAGvg0iU
         fTxKjt202DP0I67vck5HdVqSOMm1yc5mWDjLcRI8+uPxDcw1D59zBCQMQddtdcu8dl6T
         yXnCSjfvfHaLxH/tNf9OyKXojfY+E30ZeWu4cYMJeCuvWfpNTmXKiFvacM6m8nw9xN2H
         3G4nrMHgste8E15u3jbvJOhPGCdIAhsM4VpMVD0RI+0U4tJATQG3yMpyTUTdKq6D5oKS
         QnhA==
X-Forwarded-Encrypted: i=1; AJvYcCVSeC06MAhFWPZrPaI2DV42NIQ2xIRF7WK/WuIhY2IwmCmT8wxJ5NhTFJzo6w6HocKXTDDZyxqTYiFT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+cLgVYm1ZL2QXmFwz8M87sB4F+fSL/s1dcOKZNJhM1jAGrIcV
	8edYFWn3nKeIya0VJBQY5va30CENZoFKpD4rCwnk4Axc8M4GNJpTfd+59sd5cIrdy/nMCgfdzOe
	9nH2RYnlpF1nFXBrM9VV0ZemGcz1zPKGPrKZjlyN+lhAXrCAdDhijMOXevEafjfMs
X-Gm-Gg: ASbGncvR/40kBjtv4VBRZyPQUzuP6A507KDqG6Aitd4inWf1H/XExii0yqEVrQrn2D1
	ouGdgV3vp5r7ARklQqYDbOlTaxjS3O56nN8UnLCdiDq2pNMJK8NZtHKjEUTqSAs7HI0Y0Y76JOp
	KWgUSBC9CZAbBVc6Lc6k59InT9FosNcuAYDqGMb2FEGin55pybHT+peHIe3YUT2vmkQ8aFYvB5C
	PaCRRctC+gX01sk+DUjQSxQXAYhpvcqYF9xCNR6YOqNDtEveDB4WaILbbu/4QFuSmtpLTE9ruwn
	4r4j1a5+U9SvkmRhZlE0qYwOh5wXVUUhs8s4+oGzTp/z9syfG61vj7FGT20lPfD6/N6LcPP6MRP
	g61whSixfsHKzeYR0uQJZiCV8ctAlsThxArDObMtLG04jZ2Oi8wYj
X-Received: by 2002:a05:622a:189f:b0:4e7:28c4:3367 with SMTP id d75a77b69052e-4e728c43476mr38351851cf.82.1760359070277;
        Mon, 13 Oct 2025 05:37:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWOjldqO3QYpUkgEWR+chHtoaSrhdJCEvdufVafxS4s9vy3NHcZihffXxkbgVUGrgtKFOT7Q==
X-Received: by 2002:a05:622a:189f:b0:4e7:28c4:3367 with SMTP id d75a77b69052e-4e728c43476mr38351181cf.82.1760359069747;
        Mon, 13 Oct 2025 05:37:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908857792dsm4079248e87.105.2025.10.13.05.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:37:48 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:37:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add edp ref clk for
 sa8775p
Message-ID: <xofvrsdi2s37qefp2fr6av67c5nokvlw3jm6w3nznphm3x223f@yyatwo5cur6u>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-2-quic_riteshk@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-2-quic_riteshk@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX6fPpOxMmNpo1
 ameRSkaHm3vIkM0mlz8u6LKczq6B1+bHWzqdyK8J5xuHoeV41ST4fuAu+p0OQJTCy/Rgy5bMG1X
 0Vo8FZWbW+ONbU1HsyVPBHhDeUq7GlcIWSUNTvxnLusGRtjiUVJnIFc5QhZvkjXC4bL0/OkQpAc
 0Rb8E0+t3CQTYS6qKZHKg8urcRB/8atKxu5F5fNNM5y6lR+lAGkjeij/iltS3hgjraIN3d+0MGV
 JLIrD9UUuLBY0Jxto8DYRvVmMlK6Rk05pToyjBWniRzSESxvvsqKZ9wP1Z0YjyHXXs/cOs29Pu3
 Q4l5BWu6xN0XKD5D6Qdq/wfp0xLaoTYoDLT6CS5Qaz0tKM7L/2FyDkwKSlBQgkfza1s0PS40HBF
 faW/rJ9pnsQXVeIn1x13v2+MNV3dYA==
X-Proofpoint-GUID: n1RPskIPpCR3kLckA9jJamGVFWzRX0Ad
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ecf29f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=1RwfRIOwSLSNpsoXFEwA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: n1RPskIPpCR3kLckA9jJamGVFWzRX0Ad
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Mon, Oct 13, 2025 at 04:18:04PM +0530, Ritesh Kumar wrote:
> Add edp reference clock for sa8775p edp phy.

eDP, PHY.

I'd probably ask to squash both DT binding patches together, but this
might cause cross-subsystem merge issues. I'll leave this to DT
maintainers discretion, whether to require a non-warning-adding patch or
two patches with warnings in the middle of the series.

> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index bfc4d75f50ff..b0e4015596de 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -73,6 +73,7 @@ allOf:
>          compatible:
>            enum:
>              - qcom,x1e80100-dp-phy
> +            - qcom,sa8775p-edp-phy
>      then:
>        properties:
>          clocks:
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

