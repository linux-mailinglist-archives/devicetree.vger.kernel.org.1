Return-Path: <devicetree+bounces-171959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2D5AA0B6E
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 622ED5A5F2D
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B44FF2C2579;
	Tue, 29 Apr 2025 12:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CMMxtx4B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD722C179B
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745929329; cv=none; b=gxQG7p9aUxFXnO8V1CkaelGGeU32dgRRPJmgQBTNjK/SZi0MNtR/ND/4qz3jei8sjn/dRYHgaFrMW4lwZtcihBpubcxkKnb0yZYOiGwxT6TsxC0o7bVfJ4yQT4NXL9CIp96961KAM+UEqBf7pXnUMvv/E8JQL6p77EJCwqpMJA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745929329; c=relaxed/simple;
	bh=rlkoMh2C9VM0QAvGszpiyITfN4gKhaKKUVRLWB0+wug=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y5PExu9dVkx5Pi2kJaYR0xIhx8eBuQ3eaq8Ubo11mKEUeAHQrGNU8gmP65X2Kp0A7c1MNXtUETI2M4idU+9vsxQOyNLO3U2/y4tRPXXdl5o/gYtrsH4B/5NJejNzKKTUmz5rw1XYBYItdDYdGBMvHlS1N7bX087Gj39plelnEGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CMMxtx4B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TAST6Z012765
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QcqwnwlHX4Z7g+pEyqpwef5F
	AfNnWZYqyTef36MWiSk=; b=CMMxtx4B9jPSZe3py7ltz0n8emdwll2FMbvhzOnz
	jHT4XpT2jTmunVANIjpC85V5irCvH3ErFhEJajZnn/CJ+djeUjhPdezhW/9sEbiS
	WgTC3GYcAH8WtFwPvApbQyxFYpPuh3ZWAbMyY5MMDuk+ndRLXcbtQnU0Kg5MmcUV
	YDDJm1I3jI1g0ta4keG8qBhC7hNLvSHPanVwj+7N4tNaGnXS+Q644L4CrakAJt4L
	hJpaa8OArb2e2WeNClFcCElKIjgtvcmMTwpLkipgsrfPXl35lJHCn9/UCXw3P1JB
	emozPa15yAwCecRxo9NeF+bVQhFyquD1nUyb3fQ7/QQmVw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468rnn3byv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:22:06 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5c82c6d72so964749385a.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 05:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745929325; x=1746534125;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QcqwnwlHX4Z7g+pEyqpwef5FAfNnWZYqyTef36MWiSk=;
        b=GdIwWrMN0wcyIKV4uyEjl8nCXS9LQv1u2fxFotr3OddGdr0p8lzqYMm4jarcdgYLzp
         lHV9rqkQNLxOPPBNyLVtI9z8iID4nrOHTGnxM7fKjlfHugsg/BOrGeQD3Dy0LQBFyIBy
         wqKXgqP9nc9ZKSa4AYwBfxhpJsjw4gmzGehblFbCluwnowvZGQQFI6o9EYTz36kYxZu5
         q0Fr78V+0/bX8dbn9P2Q0aH2AEsWhSwOQw466eyg9rcAkLvjyNen2wjCgbORcTWxtzV2
         Ji5AFrJSULy9trSxJnRxNuO1Fb05J29OpId46o1q8GJCYiyOTkkri8qX0vRZDHfWPHy+
         kLKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdrAWeYO06JWGZ7bZbnCJwHhMKj0E1ZshnEqit9DiyuA5y6ysfa/fdYYIMku6MPPiU2lSg8it+4+DH@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1O6K72jRejqtNOBwg2CyM9BuWcRCLtHSV36J8JYYGwscPaOZX
	RuNB/05XqKLDAghUNQiEpwmWymLqq5qmiKAwNbyC80StAFskgEF8rTR/U2mO3NVeGKVJw9wZCyi
	wDkJGiISu48ytCQ2GmcBD2sEyCMiUFZOiBN7fRPUWwLhzpWrBMFQV8EhHMXvv
X-Gm-Gg: ASbGncuwy0TfTTNoXvU2ypq6tcRR6LGBvdfdYd7JWdBxkArbN2CEmA1UszWqynWMxnh
	niFV9uxHnp+7rSGPpMDkhh+FVq78GLtrNJj9bu8F/9DQMVlgioVr200y0pS+qHwnsLW1LCkvnwG
	DVzlfOgmzHZPtpVBw/u5KxE5OEf/tuehmGnz7v9oZ1qRWa1V9r6yW6ogWsKUVhPzWn7UjBGQKtJ
	ZXbRc7Y1rIELDaYEh4WFVef9FBeaIJe2UejOYRp7r7nP7ZUTenJobGysib7P6OvrlGAMoTFTisR
	qRPfFJ6kNfI+7SIsb5BU6mBrCB5anjDonuKOcNjMpgP1PiKZMvAPd9y0zEwGOZmBNWcAe0IxelA
	=
X-Received: by 2002:a05:620a:40d3:b0:7c5:61b2:b95 with SMTP id af79cd13be357-7cabdd8f731mr514280285a.30.1745929324894;
        Tue, 29 Apr 2025 05:22:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXUL9I45JsNu/1ShN5rznOiRCqQpVxxM0mjrjN1AEZ7KRlQcxcgY7B6F6Mg/kGlZUGDVSXyA==
X-Received: by 2002:a05:620a:40d3:b0:7c5:61b2:b95 with SMTP id af79cd13be357-7cabdd8f731mr514274985a.30.1745929324388;
        Tue, 29 Apr 2025 05:22:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb2635dsm1882207e87.38.2025.04.29.05.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 05:22:03 -0700 (PDT)
Date: Tue, 29 Apr 2025 15:22:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8650: add iris DT node
Message-ID: <4qvz7jcslwfd72ulrjrbp5fya6fbqkfrph7j4byf6vkw6dcz23@ialiag6o4wiv>
References: <20250424-topic-sm8x50-upstream-iris-8650-dt-v2-1-dd9108bf587f@linaro.org>
 <3498cfda-a738-449d-9d9f-754bbc8125c2@oss.qualcomm.com>
 <db91a526-e2f8-48f8-a071-f3fcc75235be@linaro.org>
 <CAO9ioeWaPKXHgNGPx5q34+RP59PMLD+EVK5fQsN89KC9A1ca-Q@mail.gmail.com>
 <d79790e5-52c9-4135-8f3c-af797145fa2d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d79790e5-52c9-4135-8f3c-af797145fa2d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: xLPW6uzTR20WLop_aCDlp-cxPiBpgW_t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA5MiBTYWx0ZWRfXyYxuh5sUwqD2 u+g3osw14LlPE8oNaTUfePET3bBRfK7jD5EPqebi4vOSex6vecPNEYMzWE9zBGNLl0t7bxgoZzX se5mAoW07Bb2yfv5M7+2iuuhCOxeoMH42gDqCc1QGDaFk7eHQdWDjsg6uBrPatbZgcCwPnbENIj
 M1Jxs58vvLThnAcAtfFgpp15fdyB5TWEcz29GStoj2rqKGR1E6XXt2oVRxGKMfTYvQr650HgASs dQgMBvYDZHWdsd8WUsiC8Tf7S7jKibmuhcC6ot0CcP2oPVRHH8TIdkG+iOlpOX7sOYr3wir7wiv UCFfL0JExKQt3SJq4uHS/R93+3lpZDSn9x4cUldANZN8bae5VYsBeHXiXNkVDwqq6qiiMFCDC01
 lM3x2xnBZ+qpr7UQVq+6wtSQwns8shwH9TZsUH1QenODudGRCngL98nf4n9UCKtbQVHmPZm/
X-Proofpoint-GUID: xLPW6uzTR20WLop_aCDlp-cxPiBpgW_t
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=6810c46e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=cUhgIWFcHcWmCc0EzucA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 mlxscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290092

On Mon, Apr 28, 2025 at 11:14:18PM +0200, Konrad Dybcio wrote:
> On 4/28/25 12:48 PM, Dmitry Baryshkov wrote:
> > On Mon, 28 Apr 2025 at 11:18, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>
> >> Hi,
> >>
> >> On 25/04/2025 23:49, Konrad Dybcio wrote:
> >>> On 4/24/25 6:32 PM, Neil Armstrong wrote:
> >>>> Add DT entries for the sm8650 iris decoder.
> >>>>
> >>>> Since the firmware is required to be signed, only enable
> >>>> on Qualcomm development boards where the firmware is
> >>>> available.
> >>>>
> >>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >>>> ---
> >>>> Changes in v2:
> >>>> - removed useless firmware-name
> >>>> - Link to v1: https://lore.kernel.org/r/20250418-topic-sm8x50-upstream-iris-8650-dt-v1-1-80a6ae50bf10@linaro.org
> >>>> ---
> >>>
> >>> [...]
> >>>
> >>>> +            iris: video-codec@aa00000 {
> >>>> +                    compatible = "qcom,sm8650-iris";
> >>>> +                    reg = <0 0x0aa00000 0 0xf0000>;
> >>>> +
> >>>> +                    interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH 0>;
> >>>> +
> >>>> +                    power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
> >>>> +                                    <&videocc VIDEO_CC_MVS0_GDSC>,
> >>>> +                                    <&rpmhpd RPMHPD_MXC>,
> >>>> +                                    <&rpmhpd RPMHPD_MMCX>;
> >>>> +                    power-domain-names = "venus",
> >>>> +                                         "vcodec0",
> >>>> +                                         "mxc",
> >>>> +                                         "mmcx";
> >>>> +
> >>>> +                    operating-points-v2 = <&iris_opp_table>;
> >>>> +
> >>>> +                    clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> >>>> +                             <&videocc VIDEO_CC_MVS0C_CLK>,
> >>>> +                             <&videocc VIDEO_CC_MVS0_CLK>;
> >>>> +                    clock-names = "iface",
> >>>> +                                  "core",
> >>>> +                                  "vcodec0_core";
> >>>> +
> >>>> +                    interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> >>>> +                                     &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> >>>> +                                    <&mmss_noc MASTER_VIDEO QCOM_ICC_TAG_ALWAYS
> >>>> +                                     &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> >>>> +                    interconnect-names = "cpu-cfg",
> >>>> +                                         "video-mem";
> >>>> +
> >>>> +                    /* FW load region */
> >>>
> >>> I don't think this comment brings value
> >>
> >> Right
> >>
> >>>
> >>>> +                    memory-region = <&video_mem>;
> >>>> +
> >>>> +                    resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
> >>>> +                             <&videocc VIDEO_CC_XO_CLK_ARES>,
> >>>> +                             <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
> >>>> +                    reset-names = "bus",
> >>>> +                                  "xo",
> >>>> +                                  "core";
> >>>> +
> >>>> +                    iommus = <&apps_smmu 0x1940 0>,
> >>>> +                             <&apps_smmu 0x1947 0>;
> >>>
> >>> I think you may also need 0x1942 0x0 (please also make the second value / SMR
> >>> mask hex)> +
> >>
> >> I don't see 0x1942 in the downstream DT, and which mask should I set ? 0x1 ?
> 
> I saw it in docs only, maybe Vikash or Dikshita can chime in whether it's
> necessary. It would have mask 0x0 if so.
> 
> >>
> >>>> +                    dma-coherent;
> >>>> +
> >>>> +                    /*
> >>>> +                     * IRIS firmware is signed by vendors, only
> >>>> +                     * enable in boards where the proper signed firmware
> >>>> +                     * is available.
> >>>> +                     */
> >>>
> >>> Here's to another angry media article :(
> >>>
> >>> Please keep Iris enabled.. Vikash reassured me this is not an
> >>> issue until the user attempts to use the decoder [1], and reading
> >>> the code myself I come to the same conclusion (though I haven't given
> >>> it a smoke test - please do that yourself, as you seem to have a better
> >>> set up with these platforms).
> >>>
> >>> If the userland is sane, it should throw an error and defer to CPU
> >>> decoding.
> >>>
> >>> This is >>unlike venus<< which if lacking firmware at probe (i.e. boot)
> >>> would prevent .sync_state
> >>
> >> Well sync with Bjorn who asked me to only enable on board with available firmware ;-)
> > 
> > I'd second him here: if there is no firmware, don't enable the device.
> > It's better than the users having cryptic messages in the dmesg,
> > trying to understand why the driver errors out.
> 
> I don't agree.. the firmware may appear later at boot (e.g. user installs a
> small rootfs and manually pulls in linux-firmware). Plus without the firmware,
> we can still power on and off the IP block, particularly achieve sync_state
> regardless of it

Yes. But the firmware should appear at a well-known location (rather
than a default one), so we are back to the question of having the
firmware at all (even potentially). I really would rather not having
users / developers trying to put qvss.mbn firmware into the default
location at qcom/vpu. Likewise I don't think we should have users face
cryptic errors if the firmware from linux-firmware is not suitable for
the device. With all that in mind, let's follow our standard approach
and not enable firmware-backed devices by default.

Also, if we define the device as disabled, we can reach the sync_state
too, can we not?

-- 
With best wishes
Dmitry

