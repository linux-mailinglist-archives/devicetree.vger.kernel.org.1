Return-Path: <devicetree+bounces-171516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D79A9EE4B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 12:48:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D04CA17D39F
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 10:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B2C525EFBD;
	Mon, 28 Apr 2025 10:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W5TDMBOq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07F3201035
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745837298; cv=none; b=U9mvBsyUOzHK7fCz5Q6goMCgGDl1vFEr9XucdqMvml/z5U9RDYWL7H60zsjBbqjHTUujokAJctiH+Gj5pVoIHxOBh4Ir8DJNPjN16fmHI7FE+PYpEwO5JUZDiVoAB8TYEkbHn8IlsT2gU+MrWti27qvbxRMoyTNRqrRXmJBBYRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745837298; c=relaxed/simple;
	bh=6YaMRruSKDhDVQKJzK/GHN7Jqje7g4DJLjL3B27hCKE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Oo9OYdu17ohW/TY0cMY3pXTUsgb8/XR41LIJe6qaYO1eZrpRrCtb+tMQvHeFoUvrqiSiXbgmR0hgDD/Mj647XGMOGWdRluTv7JguVhmrEYfUM2sEWoqfHETZe9b/Mnjbzsc9aDqAyZCM+xRX5BxoZpr17g1vsNNxQD6FIKtoiNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W5TDMBOq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SACoJV024275
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 10:48:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=F0m7HB2gG3d25Nu5nZtS4On6
	8RruYWwoqBowuaqRdr8=; b=W5TDMBOqYoXDyP5lHzeOn9yiu4gTNjj15jNoyxSs
	aomryXUgcHM1mshkNRSm80p3tw7N0Vb1WSVbdPbXpYx2ax+uS9cXPtEkG3PxXikm
	uiqtO+xSdjnECA8dtfMpJH3mvwNYVzH9Kkoqy5ZcUI1oo0maWG3fgzjpmzOYR2s5
	UHk4jLZeOpAzdl+BsyeNwaPkApe5N5PvlPyxtmPhOgGvXoMGzfqtBvrCaqfNIIY9
	ufxPc8/m2WGyK5lF7wMu2aV7cMWHCjf8y2EuMV95fKPxdl708thrCZwNuZBMjMXn
	RPwqpr0Wwzp/cyzhfRRve5XIfEyl1RG/OFF0RTT1gyDZdw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468ptmgvbf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 10:48:15 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-30872785c3cso7168467a91.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 03:48:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745837294; x=1746442094;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F0m7HB2gG3d25Nu5nZtS4On68RruYWwoqBowuaqRdr8=;
        b=Z5/N+bT9yPURrAswx/obPr1GNqneOWWAN60I0YmlajYGv9Vje2xDQ0F9IP9KwalbQm
         OCwWAj6SHQ8GeX0ZXcHz9fzo3Ycv9Cq55Mqgt7qzZsevbDf9fyfG4WI4+IQlLdnI69fr
         dDL8qtU3X5jy33O4jVti/e+L2bpgaO6GjqjTg7QkHDWbq9J6M1lX8KweHRv2MwW4POjr
         e/KrnaaWcG+7iF4rU/BnjJ4oM6Xd39KUbF3JrMynCMftUrcotrl87ZTtZuHWIhzfADsv
         JvhqdMPzUq7VpQTCekq9FvLvK7FX3L5EomQzXbmxgmRDzOqYO14OXUiU/oLO9yX3YznK
         lqkg==
X-Forwarded-Encrypted: i=1; AJvYcCVF8+auhgIdZBpLLVkOfo0aHfPpblcH6rT6NbkOBX1eGPVKCuicAKmGBJnmf+hNVgxJ3yKh0xpCDdXf@vger.kernel.org
X-Gm-Message-State: AOJu0YzueiWOodMMgCz32UoIc5AR8YGTvOZ82Dy4+aCU3Scet0V2csLa
	0NiBZtXSsfmwvYaXrMkIIJis2iveagtpdKZyj2qfc6x0D7KJ9yNON9FxFPIgll4aiIACL/K5Afh
	cetVPhg9ri/ICzDQ2PW+xckgVN6pS4b9rBGpyf/jVlHkdNV6PSBygluRnysEQw1Wa1HV4+CrMg4
	uoTss4tv6CeYmQ+NJzy6b3ffOWJhLNgB+UxTg=
X-Gm-Gg: ASbGnctm2YQLExf6vkGYB45MuszXa5oYZbLpGQmB2xXJmd0cIApbNbiKWfL4E/kMil/
	7U/lHBTz6Su4iArgXQ/ohJZO9DIYBK+drTMuHHfqvWb8HGNHiqla5itbBBC+r3RjF6gYkpbzRRT
	eTTY5F3k9qpgDsFbItgNJB3sOq
X-Received: by 2002:a17:90b:544b:b0:2ff:6f8a:3a13 with SMTP id 98e67ed59e1d1-309f7e702a1mr15271324a91.25.1745837294038;
        Mon, 28 Apr 2025 03:48:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZ59/NEfTDF0sONov5/AlmGKX/lTawDzVwJVYT7OQJ+dbZoKTjdF2IlugQryRmC8LINKDjP08T1i4NIbEwqaQ=
X-Received: by 2002:a17:90b:544b:b0:2ff:6f8a:3a13 with SMTP id
 98e67ed59e1d1-309f7e702a1mr15271296a91.25.1745837293691; Mon, 28 Apr 2025
 03:48:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424-topic-sm8x50-upstream-iris-8650-dt-v2-1-dd9108bf587f@linaro.org>
 <3498cfda-a738-449d-9d9f-754bbc8125c2@oss.qualcomm.com> <db91a526-e2f8-48f8-a071-f3fcc75235be@linaro.org>
In-Reply-To: <db91a526-e2f8-48f8-a071-f3fcc75235be@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 13:48:02 +0300
X-Gm-Features: ATxdqUFAaKexOX2IHkjlmnbJ-GEkMa25-C3pZEEy-BC23E_yx5Vsy9avMqPA5p8
Message-ID: <CAO9ioeWaPKXHgNGPx5q34+RP59PMLD+EVK5fQsN89KC9A1ca-Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8650: add iris DT node
To: neil.armstrong@linaro.org
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: P_7JdoVnLLpNyi9zRRei8Dd2kDwhfcFL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDA4OCBTYWx0ZWRfX841NdGBEno6e mLROpmRkyDUsQ4cRh5CBUtI50WuK/OcuyUL2YwtOWvIPryi1m2XUN1bv7k1rMr56y79NjFOquaZ bJfCGO+RnV0SafrBZJ2Mh9xjTvDPV0UqI1CcIPMeQiVXK1AH/B8U3elMgbg7BS3UjtvQWax2CHQ
 f2l/K1bE7xAxSwsmP/oqRkvrGnTjRJvCVCgcSqEVw7ScBODSnQCRArctlvBer7c3S4K2UgRQ4Cn Isg3rMwrQuGsQ05vXKG6+58pZYtYyfGkGwT50UePLhwQdCEVzv1EFzCuRP5mfCY1KhxxpvwxeUb jBh5t+I+vx8ovVIz49FhQPAp8k2n5+zzdpCIbOgwZPwdHrqHV+aqPInLr+nuDYphz2o4SX9AKbm
 EPAd0rhNu0+6vjaf2DXYOqVQVB5UFlxFqTPkvpunt+cpR9pVV1SEkpt2jE3PcF+zHclNzKWw
X-Proofpoint-GUID: P_7JdoVnLLpNyi9zRRei8Dd2kDwhfcFL
X-Authority-Analysis: v=2.4 cv=DKWP4zNb c=1 sm=1 tr=0 ts=680f5cef cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=M_VgH1IvVxprlxKqiToA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 impostorscore=0 mlxscore=0 bulkscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280088

On Mon, 28 Apr 2025 at 11:18, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Hi,
>
> On 25/04/2025 23:49, Konrad Dybcio wrote:
> > On 4/24/25 6:32 PM, Neil Armstrong wrote:
> >> Add DT entries for the sm8650 iris decoder.
> >>
> >> Since the firmware is required to be signed, only enable
> >> on Qualcomm development boards where the firmware is
> >> available.
> >>
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >> ---
> >> Changes in v2:
> >> - removed useless firmware-name
> >> - Link to v1: https://lore.kernel.org/r/20250418-topic-sm8x50-upstream-iris-8650-dt-v1-1-80a6ae50bf10@linaro.org
> >> ---
> >
> > [...]
> >
> >> +            iris: video-codec@aa00000 {
> >> +                    compatible = "qcom,sm8650-iris";
> >> +                    reg = <0 0x0aa00000 0 0xf0000>;
> >> +
> >> +                    interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH 0>;
> >> +
> >> +                    power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
> >> +                                    <&videocc VIDEO_CC_MVS0_GDSC>,
> >> +                                    <&rpmhpd RPMHPD_MXC>,
> >> +                                    <&rpmhpd RPMHPD_MMCX>;
> >> +                    power-domain-names = "venus",
> >> +                                         "vcodec0",
> >> +                                         "mxc",
> >> +                                         "mmcx";
> >> +
> >> +                    operating-points-v2 = <&iris_opp_table>;
> >> +
> >> +                    clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> >> +                             <&videocc VIDEO_CC_MVS0C_CLK>,
> >> +                             <&videocc VIDEO_CC_MVS0_CLK>;
> >> +                    clock-names = "iface",
> >> +                                  "core",
> >> +                                  "vcodec0_core";
> >> +
> >> +                    interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> >> +                                     &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> >> +                                    <&mmss_noc MASTER_VIDEO QCOM_ICC_TAG_ALWAYS
> >> +                                     &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> >> +                    interconnect-names = "cpu-cfg",
> >> +                                         "video-mem";
> >> +
> >> +                    /* FW load region */
> >
> > I don't think this comment brings value
>
> Right
>
> >
> >> +                    memory-region = <&video_mem>;
> >> +
> >> +                    resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
> >> +                             <&videocc VIDEO_CC_XO_CLK_ARES>,
> >> +                             <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
> >> +                    reset-names = "bus",
> >> +                                  "xo",
> >> +                                  "core";
> >> +
> >> +                    iommus = <&apps_smmu 0x1940 0>,
> >> +                             <&apps_smmu 0x1947 0>;
> >
> > I think you may also need 0x1942 0x0 (please also make the second value / SMR
> > mask hex)> +
>
> I don't see 0x1942 in the downstream DT, and which mask should I set ? 0x1 ?
>
> >> +                    dma-coherent;
> >> +
> >> +                    /*
> >> +                     * IRIS firmware is signed by vendors, only
> >> +                     * enable in boards where the proper signed firmware
> >> +                     * is available.
> >> +                     */
> >
> > Here's to another angry media article :(
> >
> > Please keep Iris enabled.. Vikash reassured me this is not an
> > issue until the user attempts to use the decoder [1], and reading
> > the code myself I come to the same conclusion (though I haven't given
> > it a smoke test - please do that yourself, as you seem to have a better
> > set up with these platforms).
> >
> > If the userland is sane, it should throw an error and defer to CPU
> > decoding.
> >
> > This is >>unlike venus<< which if lacking firmware at probe (i.e. boot)
> > would prevent .sync_state
>
> Well sync with Bjorn who asked me to only enable on board with available firmware ;-)

I'd second him here: if there is no firmware, don't enable the device.
It's better than the users having cryptic messages in the dmesg,
trying to understand why the driver errors out.

>
> >
> > [1] https://lore.kernel.org/linux-arm-msm/98a35a51-6351-5ebb-4207-0004e89682eb@quicinc.com/
> >
> > [...]
> >
> >> +
> >> +                            opp-480000000 {
> >> +                                    opp-hz = /bits/ 64 <480000000>;
> >> +                                    required-opps = <&rpmhpd_opp_turbo>,
> >> +                                                    <&rpmhpd_opp_turbo>;
> >
> > nom (nom nom nom nom nom)
> >
> >> +                            };
> >> +
> >> +                            opp-533333334 {
> >> +                                    opp-hz = /bits/ 64 <533333334>;
> >> +                                    required-opps = <&rpmhpd_opp_turbo_l1>,
> >> +                                                    <&rpmhpd_opp_turbo_l1>;
> >
> > turbo
>
> Ack
>
> >
> > Konrad
>
> Thanks,
> Neil



-- 
With best wishes
Dmitry

