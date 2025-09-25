Return-Path: <devicetree+bounces-221113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C046B9D462
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 05:06:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35C60168909
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD8892E6CC3;
	Thu, 25 Sep 2025 03:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DTaSMah9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE3FE55A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758769600; cv=none; b=dnRWhB8GOkXaBB5KZeLL9z1aW0Fk6I63I5mxSFKzTlISkkswNU8M6kP7V/rd1jCdme+d8ZsKMjHc1q3K8AJZwQ0VyjR2tNRjvp6OVWvfXFtNVLfVs+ZNvFXWps3C/yUXjDohr+iwshqfyNX0UqNDvyC0xfDj0kZf3i5EWJ+vWic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758769600; c=relaxed/simple;
	bh=PvvhvhvSbeaWKcLRJCdixjy26kcBDYA8K/gdPUYx1H8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KpleP5qmpFcaFMO4XtGhwT0NsZVFgsaCeWLqU5XZ1ZEDpYOCvishu2nTnyz2+apOqoDRXZErYipB9xg0YRdgq7/5z6TZRgJz4EQdMTsE+/ooPnTdLTsUW9ESF+kQT9QLJnRPQ2/G5mtdJbGpk8aMsuQVej9/vTtCexI03PZehSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DTaSMah9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0sCIL025108
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:06:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=srknV+/3eA8uc39SZ1Dz86Wn
	uWrZQxNklN/4FeIcpq0=; b=DTaSMah9Tj77+HxnsCwsNcbsUU1TGMmSygLzIWsp
	Nj0E9DCahKhgZt/1WqKsVF7quFxKD2SYzQg3p0QDamUNDq+JKBPUoZdhoKpM+0cU
	C7SLyptdpGxefqDoQ5sE9jzsBoxfij4w+4riEF/L/0TJwmT53/bHFlRjJZHxQ4i5
	S1Qd9PhxE3XgUkJ/9z9ObqcQ3JBWbTkuau9AoSxGWv2bIXtNIpoTEd4Xr7bSstlm
	GnHqC8N7jJ0THkj0ZgARfPxw8ergQssslFMgK0LcRyD0E2dn5EMiRt6LkEMpty00
	7Rsxvg3e8XWAALRfRF2Z3rvtksft0pqml9vh92cQRPRaxA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv16jfk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:06:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d905ce4749so9761391cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 20:06:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758769596; x=1759374396;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=srknV+/3eA8uc39SZ1Dz86WnuWrZQxNklN/4FeIcpq0=;
        b=HItRk7p013bQDYb2DMkTX5r4yS6acFNlwfnqvI4WTWcZTlFowz1gXkErKuOUMKOABf
         PO9SgN8lSnFsdZ5aIGcwacH9lncPAKYmZaAZQng8MOKuNSAQk4pEoewZBBznaLUP1gCA
         oVuzGQH7JGCgkvfFWincNSJbhODmMupbYHa54e9NErwazYQcaBqUhOj+2sLpcgm/26pE
         g8QJGsdkFSmi/htgVn694exCHnBjymiPUauMiEbw6BpaoIi/McwghUx5KK/KZc5u52sb
         xP8pp1oFmOZz2b7ZPMZrZU9pkmRGKJ42SlgA5Y7Xc9t5D6p1Th+JI8uYX63+GVDLPQGs
         2Gfg==
X-Forwarded-Encrypted: i=1; AJvYcCWWYaTfVDOb+ZXbfb7bEeYM63uRDchbNpN7Wq7TumRaRU++qTRhSvxnrs2mOQ7zQe4IE9v+0T02Ufcm@vger.kernel.org
X-Gm-Message-State: AOJu0YyPJsRhUrvUCMCHh2p4tQa77RdWOrc/uBhtz0eFit73bKcF/XcT
	FvT8IV9q9EJxir2TBto7lr7Gh/WvMiLgDjXcxoVPidB8rxx19kut0brymocIBTZvnrUxY9b+EPU
	csMnAMt0Ri3Zu23r8IDRZt+hJVpoETAvGZT+Jqrf++b7b/vdms6laIsubqZa9aDQY
X-Gm-Gg: ASbGncvZGqQFPPVIiV6GXV34dOiHb6LGPTFutNFhAglx/VmCUHEsJwJBLyqlmSyrtle
	xtbfP0CF4kvmm2I8Q9GTdxU3gYzvkuwY6okaTKD+blM+B/Obqsr458zzjo3OeNdp2LFXMSCtjmg
	hsHS1nvMdrHKhTgX6ZO0vSsvjkMw9hMlcWFIkjvtfVC/yB1nUqJSoZu9gtWge9dbQhLy6ZbUOq7
	rjyVvBcbMtkrcDtDw5Nbk5ZFUqBIYCm7odfMSkYZYLKEjgi1N7O0eY00qB1HZAdOwsaozriG5z9
	AzbEvjknJKE81po5+WTx7R0NCBgZPlVkgMRkfLPi/QFWFQVjEzQ2dzIYmzrDlQ8q8c7LIEksM4M
	rkW0bFDbsXWEOyPiHUbmkfgGqa/PjdDLL60t4SZXMddj8wRUb+EPp
X-Received: by 2002:ac8:7d8e:0:b0:4d2:95ab:ecb0 with SMTP id d75a77b69052e-4da4c39b947mr28861571cf.64.1758769596268;
        Wed, 24 Sep 2025 20:06:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGH07r/EJ1x26vpXloTQTs8A/lvvTTnn1FbU0c5mIP7PSMlx5EftzRF2L/lImmKsem8Sk8Tcw==
X-Received: by 2002:ac8:7d8e:0:b0:4d2:95ab:ecb0 with SMTP id d75a77b69052e-4da4c39b947mr28861351cf.64.1758769595701;
        Wed, 24 Sep 2025 20:06:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f98dasm272723e87.32.2025.09.24.20.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 20:06:34 -0700 (PDT)
Date: Thu, 25 Sep 2025 06:06:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Reddy <quic_bvisredd@quicinc.com>
Subject: Re: [PATCH 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Message-ID: <vqzon3svfqvk3poz76jm5x5gf4rd6vkygegonafcprmkejt4aq@5kwlwytg3ulk>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-1-e323c0b3c0cd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-knp_video-v1-1-e323c0b3c0cd@oss.qualcomm.com>
X-Proofpoint-GUID: 1UdXpKZ_RHrqiSGl69Lg-Ug6qIeD0lY-
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d4b1bd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gEfo2CItAAAA:8
 a=MQh3FNgSc-5bAs1hYbYA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX0C1oanSXiAzU
 bFbhDVKMgL6SyVlXN4nO6knMsFMFdl5euFXh6g2LNQT4rv6JRWKho+eJ5grNRefTrJklpY0+rR7
 f8ntAz/Z0XRjg9T8jHdLuQ5mejwDABs2WHFEN7QEA+ifnimeIMmvb13Uc3vjSq0tPH5+5J1b0sO
 WA5cMQ6/7oLopmR2McOHQ1YR6KH0Iq9Hk/ggM+paWz8Y9E2B8T8/aoIuGVMim4qK3xm9T16z4kU
 BsEaK5zQRpKQCRNAs0OUYsd3hcMhNQE7z8tMWAOzLKvmgxQZPLHU+gV8//aUmBb8nxe6SLDA3lq
 QOqxeLfUehuhj2dvqtw0e5dDsEW+5i2Uw0Qd0m8hBRNaOECaXpiNEZ8gg6J3o5yfn4bceOb4yE4
 KtgG5oXS
X-Proofpoint-ORIG-GUID: 1UdXpKZ_RHrqiSGl69Lg-Ug6qIeD0lY-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On Thu, Sep 25, 2025 at 04:44:39AM +0530, Vikash Garodia wrote:
> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
> compared to previous generation, iris3x, it has,
> - separate power domains for stream and pixel processing hardware blocks
>   (bse and vpp).
> - additional power domain for apv codec.
> - power domains for individual pipes (VPPx).
> - different clocks and reset lines.
> 
> There are variants of this hardware, where only a single VPP pipe would
> be functional (VPP0), and APV may not be present. In such case, the
> hardware can be enabled without those 2 related power doamins, and
> corresponding clocks. This explains the min entries for power domains
> and clocks.
> Iommus include all the different stream-ids which can be possibly
> generated by vpu4 video hardware in both secure and non secure
> execution mode.
> 
> This patch depends on following patches
> https://lore.kernel.org/all/20250924-knp-interconnect-v1-1-4c822a72141c@oss.qualcomm.com/
> https://lore.kernel.org/all/20250924-knp-clk-v1-3-29b02b818782@oss.qualcomm.com/

This doesn't belong to the commit message. But you also can drop this
dependency alltogether. Could you please do it?

> 
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  .../bindings/media/qcom,kaanapali-iris.yaml        | 236 +++++++++++++++++++++
>  1 file changed, 236 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,kaanapali-iris.yaml b/Documentation/devicetree/bindings/media/qcom,kaanapali-iris.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..f3528d514fe29771227bee5f156962fedb1ea9cd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,kaanapali-iris.yaml
> @@ -0,0 +1,236 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,kaanapali-iris.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm kaanapali iris video encode and decode accelerators
> +
> +maintainers:
> +  - Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> +  - Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
> +
> +description:
> +  The iris video processing unit is a video encode and decode accelerator
> +  present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,kaanapali-iris
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    minItems: 5
> +    maxItems: 7
> +
> +  power-domain-names:
> +    items:
> +      - const: venus
> +      - const: vcodec0
> +      - const: vpp0
> +      - const: vpp1
> +      - const: apv
> +      - const: mxc
> +      - const: mmcx
> +
> +  clocks:
> +    minItems: 8
> +    maxItems: 10
> +
> +  clock-names:
> +    items:
> +      - const: iface
> +      - const: core
> +      - const: vcodec0_core
> +      - const: iface1
> +      - const: core_freerun
> +      - const: vcodec0_core_freerun
> +      - const: vcodec_bse
> +      - const: vcodec_vpp0
> +      - const: vcodec_vpp1
> +      - const: vcodec_apv
> +
> +  interconnects:
> +    maxItems: 2
> +
> +  interconnect-names:
> +    items:
> +      - const: cpu-cfg
> +      - const: video-mem
> +
> +  resets:
> +    maxItems: 4
> +
> +  reset-names:
> +    items:
> +      - const: bus0
> +      - const: bus1
> +      - const: core_freerun_reset
> +      - const: vcodec0_core_freerun_reset
> +
> +  iommus:
> +    minItems: 3
> +    maxItems: 8
> +
> +  memory-region:
> +    maxItems: 1
> +
> +  dma-coherent: true
> +
> +  operating-points-v2: true
> +
> +  opp-table:
> +    type: object
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - power-domains
> +  - power-domain-names
> +  - clocks
> +  - clock-names
> +  - interconnects
> +  - interconnect-names
> +  - resets
> +  - reset-names
> +  - iommus
> +  - dma-coherent
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,kaanapali-gcc.h>
> +    #include <dt-bindings/interconnect/qcom,icc.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    video-codec@2000000 {
> +      compatible = "qcom,kaanapali-iris";
> +
> +      reg = <0x02000000 0xf0000>;
> +
> +      interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +      power-domains = <&video_cc_mvs0c_gdsc>,
> +                      <&video_cc_mvs0_gdsc>,
> +                      <&video_cc_mvs0_vpp0_gdsc>,
> +                      <&video_cc_mvs0_vpp1_gdsc>,
> +                      <&video_cc_mvs0a_gdsc>,
> +                      <&rpmhpd RPMHPD_MXC>,
> +                      <&rpmhpd RPMHPD_MMCX>;
> +      power-domain-names = "venus",
> +                           "vcodec0",
> +                           "vpp0",
> +                           "vpp1",
> +                           "apv",
> +                           "mxc",
> +                           "mmcx";
> +
> +      operating-points-v2 = <&iris_opp_table>;
> +
> +      clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> +               <&video_cc_mvs0c_clk>,
> +               <&video_cc_mvs0_clk>,
> +               <&gcc GCC_VIDEO_AXI1_CLK>,
> +               <&video_cc_mvs0c_freerun_clk>,
> +               <&video_cc_mvs0_freerun_clk>,
> +               <&video_cc_mvs0b_clk>,
> +               <&video_cc_mvs0_vpp0_clk>,
> +               <&video_cc_mvs0_vpp1_clk>,
> +               <&video_cc_mvs0a_clk>;
> +      clock-names = "iface",
> +                    "core",
> +                    "vcodec0_core",
> +                    "iface1",
> +                    "core_freerun",
> +                    "vcodec0_core_freerun",
> +                    "vcodec_bse",
> +                    "vcodec_vpp0",
> +                    "vcodec_vpp1",
> +                    "vcodec_apv";
> +
> +      interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +                       &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +                      <&mmss_noc MASTER_VIDEO_MVP QCOM_ICC_TAG_ALWAYS
> +                       &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +      interconnect-names = "cpu-cfg",
> +                           "video-mem";
> +
> +      memory-region = <&video_mem>;
> +
> +      resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
> +               <&gcc GCC_VIDEO_AXI1_CLK_ARES>,
> +               <&video_cc_mvs0c_freerun_clk_ares>,
> +               <&video_cc_mvs0_freerun_clk_ares>;
> +      reset-names = "bus0",
> +                    "bus1",
> +                    "core_freerun_reset",
> +                    "vcodec0_core_freerun_reset";
> +
> +      iommus = <&apps_smmu 0x1940 0x0>,
> +               <&apps_smmu 0x1943 0x0>,
> +               <&apps_smmu 0x1944 0x0>,
> +               <&apps_smmu 0x1a20 0x0>;
> +
> +      dma-coherent;
> +
> +      iris_opp_table: opp-table {
> +        compatible = "operating-points-v2";
> +
> +        opp-240000000 {
> +          opp-hz = /bits/ 64 <240000000 240000000 240000000 360000000>;
> +          required-opps = <&rpmhpd_opp_low_svs>,
> +                          <&rpmhpd_opp_low_svs>;
> +        };
> +
> +        opp-338000000 {
> +          opp-hz = /bits/ 64 <338000000 338000000 338000000 507000000>;
> +          required-opps = <&rpmhpd_opp_low_svs>,
> +                          <&rpmhpd_opp_low_svs>;
> +        };
> +
> +        opp-420000000 {
> +          opp-hz = /bits/ 64 <420000000 420000000 420000000 630000000>;
> +          required-opps = <&rpmhpd_opp_svs>,
> +                          <&rpmhpd_opp_svs>;
> +        };
> +
> +        opp-444000000 {
> +          opp-hz = /bits/ 64 <444000000 444000000 444000000 666000000>;
> +          required-opps = <&rpmhpd_opp_svs_l1>,
> +                          <&rpmhpd_opp_svs_l1>;
> +        };
> +
> +        opp-533000000 {
> +          opp-hz = /bits/ 64 <533000000 533000000 533000000 800000000>;
> +          required-opps = <&rpmhpd_opp_nom>,
> +                          <&rpmhpd_opp_nom>;
> +        };
> +
> +        opp-630000000 {
> +          opp-hz = /bits/ 64 <630000000 630000000 630000000 1104000000>;
> +          required-opps = <&rpmhpd_opp_turbo>,
> +                          <&rpmhpd_opp_turbo>;
> +        };
> +
> +        opp-800000000 {
> +          opp-hz = /bits/ 64 <800000000 630000000 630000000 1260000000>;
> +          required-opps = <&rpmhpd_opp_turbo_l0>,
> +                          <&rpmhpd_opp_turbo_l0>;
> +        };
> +
> +        opp-1000000000 {
> +          opp-hz = /bits/ 64 <1000000000 630000000 850000000 1260000000>;
> +          required-opps = <&rpmhpd_opp_turbo_l1>,
> +                          <&rpmhpd_opp_turbo_l1>;
> +        };
> +      };
> +    };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

