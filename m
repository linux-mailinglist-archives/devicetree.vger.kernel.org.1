Return-Path: <devicetree+bounces-178181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C502BABAE89
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 09:54:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F1C7167903
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 07:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5C2C1DF756;
	Sun, 18 May 2025 07:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pmdf0UZn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5D81DE2DC
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 07:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747554838; cv=none; b=hppeyM5xjdXQJfaHtj7ZIH3Y1sLCp1K91voZPrg1qEEjFFILKVEocEVxHC+dIyw7XamqMlvG1q1m12TTRC+Xa0ffbvn+JONibWVfmhnmbdnLVBMhjVFwmFe2a5sFAODb1tQiRFZnZ8GvIw6Y999mFTW/oYqCBswlsKDL5s/+1jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747554838; c=relaxed/simple;
	bh=Gd55qKkP2RAyQotoXpy3bz9qZf9+eboVp2M8Dx2fBqk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kCgYqpLxB3uzr6pEtoMagiA7l5ypM/Ia7XOmJO1ZNXtJ/fHj2AjIHn3uHTN+nVhEDodPs6fi1Ag2x1hZ3VFDeeTA8C5bj96Zc7MwyC60cr3NQcn3kzfZ8uNDZlCVA0y67cB425R+W+dAetllx1KaafEzSTRWQoWu3iZiR5ZB8zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pmdf0UZn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54I4kuC9029016
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 07:53:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NCH+kNpv+MTmqfuSvretGbKV
	gr9iuqAvqLCjN+G0eSM=; b=Pmdf0UZnmApJ+osE1qrPh+6i2oxrv7k/OGaB4DfS
	LBshRMH9KLDA6Mz0owk9OjgLbWxaaabLEl5GSn5paes52lUAXpDGqvcTL6V+rV9S
	cfRlLrrrqYAF6PoH1XywYC0Q08OJHl/PUaimVkPfaWR211WallK7Xp8yI3v4skFg
	4+nwvzsHTmcQq+IpPs+4lSyZZdGkPJmOUU//CaN1jdm8Ke1w1+DIFIdLq5X74LzD
	IwP7UVNN4wUeBgBhk6WQJfOwRktGP+N5bBS3ojrSH8jEFWe28F5/TOHITRmht8Ip
	aAkXm65Dye9RELxL2hvglDEBIkoqj+Tj3szc1gmkgf/eIg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjkyhq07-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 07:53:54 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8cb4b1861so14419546d6.3
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 00:53:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747554833; x=1748159633;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NCH+kNpv+MTmqfuSvretGbKVgr9iuqAvqLCjN+G0eSM=;
        b=L8V7wnglTRsTExwPIhGb7i22eOg/b4TMxMvaofACOdHCg1Nnbj5gyHDGSIy3/PMqxA
         D2TILmm1QxXXfpEizIpkQEc+Zj9+edTPFbtA3d3raFJl8Xo5ufrmnAW8oVMVrOloElD8
         jJN5OiTfGod4qVctqujC22CyxchzqH/oK0ugY+ycEuVTTtXI50uHafEe+c6O5+2CnaBR
         nfhXTBCHT+4dT2tXgWMfDFiaACeb9jEpSpuK7yRNu19ftVrUYuxwGLGe79wFbMQiBvpJ
         ZywPjNWNOlGEvUW2oo0apapgktpsCxQmRlqhYO6y4MAv1zcEXa89stgYKIBFzjVHp6F6
         w4KQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfTiHBZQ/ZbuJLJ09qAr9/ZdlmCWtvUwFCV9HlhG2/v3VEbOwMEB/ppalDj+SiA7NttPwgZWxJT3oB@vger.kernel.org
X-Gm-Message-State: AOJu0YxhLKU1C8hOWkiVmAKGm8FLNWqt6ymgkcWk++eC18jRK/lVq4UA
	wnze8T+F5PI/2LHckIeN0ck1cp5/+887Xxtc+sxNzOFrO2o/eNEPqVVGAGqrwxVUzapUPVXr6M2
	TVjQMzx8sB7xSbz2YcsTeEqBE+BWmwTePWeaeblt57zynWyTWWMjQHEtZxwfx8Vs2
X-Gm-Gg: ASbGncsihfFRxyMeMmAuRoDqkXOWh7/TvaZyWeTvbVM7H1GTuFQHXPHZWhiLISKpQPt
	ndYh7VXyrA4aHvLtc7uR7l1WzTDmRuu60i0/Gr1N94znnvUHDPvnQBDBmztQMDi2pcxcurH+w1r
	cdxB7HORXuXKZ7Oh9ymQgWtYRpRt52HRGClgyx41xRkNe5uak4csGemR07ZdcIC/qvByfQFaap6
	UWNhQ7MJN6vZK8ALLm+OckkOiMbdJ5Eb6a9A7YkQ+jaUCn+oepyshpreQGp7h0PdUJGgO+ylFLX
	IX+OmrdzT8uITkQBVvlCt5JIX3gzYmongA8dF1Rz8r+hmwJgqO6A7Fw2Q6MjjZCAwHj05ktardg
	=
X-Received: by 2002:ad4:5f8e:0:b0:6ef:3de:5ff7 with SMTP id 6a1803df08f44-6f8b0866722mr157539836d6.15.1747554833468;
        Sun, 18 May 2025 00:53:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5UQa6GtkbtnH1jyMstQjulp/q5Zi30s8N50lryqhsEDLJ9mabwv/z0hxlSz4ENs+TLfPPyQ==
X-Received: by 2002:ad4:5f8e:0:b0:6ef:3de:5ff7 with SMTP id 6a1803df08f44-6f8b0866722mr157539606d6.15.1747554833090;
        Sun, 18 May 2025 00:53:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f161ecsm1331272e87.43.2025.05.18.00.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 00:53:52 -0700 (PDT)
Date: Sun, 18 May 2025 10:53:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <quic_wenmliu@quicinc.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: media: Add qcom,qcs615-camss binding
Message-ID: <rgomihkry7flm3kjbd766itt6lvi7shr7w65q5iujkin7ermkh@dcfd5v76fmv3>
References: <20250518-qcs615_camss-v1-0-12723e26ea3e@quicinc.com>
 <20250518-qcs615_camss-v1-1-12723e26ea3e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250518-qcs615_camss-v1-1-12723e26ea3e@quicinc.com>
X-Proofpoint-GUID: xPuZQG59okSUY7I_QKKdw9Yv6nJdpKPy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE4MDA3MyBTYWx0ZWRfX/5rfeQqVpHai
 j5v+fzWwVk85595Vf9drKJ1OrglSWDfRFjQSFUOfs3Yrtv0BqB6RvEoJRlZGee8ajTnr27cs1+S
 Cl+CKd2iJaQFUUNXz4AlR6Ip5aiIjTICIvIazLb3D/G+o1ojA/F6nRXgrhYQ8e76mhshLqshUXm
 ePicEuSbNEcqjJax4o01Me9AaarUzRg5zZfRUUAcFy5Xtqy6QJCzxOZWnPKV/k4W+OxwzN/LjSC
 QyB6wDBc5Odl/mQV/v2vA/yomRcG4L/OTYF12BkNwA7RuvNN46vnQ6GwvWt/z6uRxYrdsAGETk7
 5A5YurUZa4glRts5CMokkQYwl61Lk7c2DzCzhTcWa/ERIZhQ71gdPsysa45aDRJiRb1qaVuRpt0
 PSF9Oq5jEW2PzX6ZhR16rLrj2PmO2Y7eVkaMJGluYI/gBzvrMeYv8cnsuf+IxG7SvgadN985
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=68299212 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=PrroZY9GjRLnrjcbjksA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: xPuZQG59okSUY7I_QKKdw9Yv6nJdpKPy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 mlxlogscore=963 adultscore=0
 phishscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505180073

On Sun, May 18, 2025 at 02:33:07PM +0800, Wenmeng Liu wrote:
> Add bindings for qcom,qcs615-camss in order to support the camera
> subsystem for qcs615.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>  .../bindings/media/qcom,qcs615-camss.yaml          | 356 +++++++++++++++++++++
>  1 file changed, 356 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,qcs615-camss.yaml b/Documentation/devicetree/bindings/media/qcom,qcs615-camss.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..9a87243f88d4b739cc29033509878ae706d3017f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,qcs615-camss.yaml
> @@ -0,0 +1,356 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,qcs615-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QCS615 Camera Subsystem (CAMSS)
> +

[...]

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/clock/qcom,qcs615-camcc.h>
> +    #include <dt-bindings/clock/qcom,qcs615-gcc.h>

Could you please update internal guidelines: when adding support for new
hardware, don't use bindings for clock controllers, use ephemeral clocks
instead. See below.

> +    #include <dt-bindings/interconnect/qcom,icc.h>
> +    #include <dt-bindings/interconnect/qcom,qcs615-rpmh.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/qcom-rpmpd.h>
> +
> +
> +            clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +                     <&camcc CAM_CC_CPAS_AHB_CLK>,


So this can become <&camcc_camnoc_axi_clk>, <&camnoc_cpas_ahb_clk>, etc.

> +                     <&camcc CAM_CC_CPHY_RX_CLK_SRC>,

-- 
With best wishes
Dmitry

