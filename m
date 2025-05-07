Return-Path: <devicetree+bounces-174411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BF2AAD24A
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 02:28:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F01164C5757
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 00:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99CDB18C31;
	Wed,  7 May 2025 00:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ffgn15Mz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACC93211
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 00:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746577681; cv=none; b=GerJe+BcqHyUN/HnkElPs8B6f/i6BNXn3mtDfpTbP3QipiFw7PW/BNFT3CVkW8XoY0RR3fuPjblq6wzSMYWat78Excj+NCoND1pK2MtiICKHur/lamtKOb2DzGVu9PUe58E4D5obczq0qPK12vZ59jgnRGs8VvxBXdAij3BLNF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746577681; c=relaxed/simple;
	bh=rj865xdjUMX7Oh9l0dClpP2tYP9jObD2CLFFXFRiUKM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NiZDwsXvLmx00BK2m5ToC+Ph3qOBu0BODE1YBJmiMxLHHYYYnrQRGLf3VLRaZnj1+Khb+njrCgSfnRzB6CHm/004EtwcKKCegUZlbFzKOiz2FZvPRDIOGW+8+LGFsF7TWaTYmPE8lStlo3YiwaazLRMog6aejLSN3KhIBEsuTrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ffgn15Mz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 546FC567013836
	for <devicetree@vger.kernel.org>; Wed, 7 May 2025 00:27:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KU+/kQQFaGW5BRBV/U1cUh90
	Qk/YbplfaNVELF2XFnE=; b=ffgn15MzuiIcMahzmndri2EexNsnmtVX80Pplzk7
	363WyTB6btQospff83XAtAkXPmCWslg0h90nzuFfr5DJh/DzWyy0MKP95mxjDsX9
	rRXBRCsMjWyQ4pG3yDv5Ft6AcoUiUEVAJdwhCgUuxxWEKzERRF0yRSXOj/64QlQq
	cnKlwSpOH0d+UURY3urSah55GIxb8v22rmEJKIiO2eJdJlwskRzMvWU+ajLvmMEV
	xo38J9S6bJt7FLlto6OvhflGWXAqXpVeB2JFCY4pCUV8YyHVy+mpfG2M5/WJQKGb
	os8PXHCzpuCo7HGFcWla4BzSh7xJ87C4kI0xS5sO29usug==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46fdwttq2v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 May 2025 00:27:57 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8ffb630ffso95279026d6.1
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 17:27:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746577676; x=1747182476;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KU+/kQQFaGW5BRBV/U1cUh90Qk/YbplfaNVELF2XFnE=;
        b=d6mcHFi9l4W8uMrXeO8Zpwmf40y+oYrZnLnvlFoKxIFazC8F+JsiC7LHaPF/L+4oVQ
         cmlOqmFjotU7SqsWjgPHNPtGihFZCClf+V81bZTiqHchOWkO3D2u5622li1zprpLbxS7
         nN7kArny0fx2JB39iw/ljt2c4QAe+WkuiqhG2UKTGrEQwtTigpwHbg0JPQutb06Fu2PU
         I6mdgJZ39E3JMAyczvNpRItUSxE8fIfKaLPAXTJFUni1xkoz4QmsERGwh0qQ7q0zoQUy
         XNLY1EKJaYNcSHSfcmz8juqou7DagVkurNVv3czBO9/+y771MUJwA+MzglzLGX8AM9qg
         K0zg==
X-Forwarded-Encrypted: i=1; AJvYcCWqW091jld19SIuJEHKFDBzyrJRcCbCQcH2XfPR5PfcrmcgefXu3w8FWuBPdZKRM3bLLwNLQZUCRAjJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrpa5G/M3TEB9k7g7NK6liBaN4KZ9MyV1IVPkmTgHQS6JC1twM
	noLIkfqS8jYlxBg/Gibf9biQN6G7IOHm4zNVz2N19hQFy58xGyXBoCdKKJCW9GQJ4jr/n54vQmV
	UNss3ukCJFNtgWnw1TsI0YFYGBJHcKgKe4D8FI4QyJOolUq48mhIuyUmof6e3
X-Gm-Gg: ASbGncvAjuIMGWR0r9aWoXt8K1mTbjOmrvALQdaAdagDG99YSqDuaiL0R3EceH+0VAE
	pWZNlk84NqE/ykarLThgd0GyDn9l7eMDayTMzX4/QGL7TTva/Ea/0unC90ypbH8SnkspB0Ynr80
	QPzssVoz7gWM9ae8PKFkfT3fAV35zlxdFZRPtEW/VZproLeSCS21AsJrr8+V/5EFXZ/EFPtvOHo
	GL+ZUWiq2AcqoVBVWNlcuU1ORegJR9SZpA1hRcv5kMkpWUgjaa8CEjuyOsyCmJw27cx097/EP1m
	B/iohGkqUtpaD4Z8S8UVcQdABxidK4EuXZftYziIAPiwfsFnDaC8T4+91463sAGKeZKg9ns/Tm4
	=
X-Received: by 2002:ad4:5c85:0:b0:6f5:3b8b:9115 with SMTP id 6a1803df08f44-6f542a80ba6mr18417186d6.33.1746577676280;
        Tue, 06 May 2025 17:27:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFRVO19PQwPJMjT3C2BBmJBEkobHD6Z2BgCRcVhb87kuizrxRlLuQ6jxGhdOD5AD8XTBthGg==
X-Received: by 2002:ad4:5c85:0:b0:6f5:3b8b:9115 with SMTP id 6a1803df08f44-6f542a80ba6mr18416866d6.33.1746577675901;
        Tue, 06 May 2025 17:27:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202930cc7fsm20654241fa.61.2025.05.06.17.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 17:27:54 -0700 (PDT)
Date: Wed, 7 May 2025 03:27:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, neil.armstrong@linaro.org,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8650: add iris DT node
Message-ID: <32ktmnjhrfrvpi5glipex7qfrcxa5hyl26em3f6xos5l3n2zl4@b7rmzx6wpsj2>
References: <20250424-topic-sm8x50-upstream-iris-8650-dt-v2-1-dd9108bf587f@linaro.org>
 <3498cfda-a738-449d-9d9f-754bbc8125c2@oss.qualcomm.com>
 <db91a526-e2f8-48f8-a071-f3fcc75235be@linaro.org>
 <CAO9ioeWaPKXHgNGPx5q34+RP59PMLD+EVK5fQsN89KC9A1ca-Q@mail.gmail.com>
 <d79790e5-52c9-4135-8f3c-af797145fa2d@oss.qualcomm.com>
 <4lmt5cgg2tanrughooxw73h2brwyyc6ifqgo3ju6iz4enkvkic@umeijjk4ijxg>
 <651f1421-b471-485a-aea0-1b1ef92f8331@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <651f1421-b471-485a-aea0-1b1ef92f8331@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=VPPdn8PX c=1 sm=1 tr=0 ts=681aa90d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=tN5ki1dz_6qGOFmg9BkA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: QqO997gDKAolk1Z8B2I_CPQltOvadpQU
X-Proofpoint-ORIG-GUID: QqO997gDKAolk1Z8B2I_CPQltOvadpQU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAwMyBTYWx0ZWRfX2kn28kAUReaV
 a2cY0AKrtPWFp+tkKf2FgGtV/H6W6s6RUrBK1XyN3UOnkzQvV2to1STv+2dNqavN/4SB1M2BVFS
 wfZ0s8AC77gHaX/hiCO99WJsSVZyU11TSpPjgW7tx58Xv44+/IDJ7xz3DKMZUzJZwsb4/I6Tw7g
 dFADTOTavixrTRymms24MHPurMEbAgLpBSo0q9zOvHwkDRRqkXAX7Qt5cWHby7xxaD69q8ScC5Q
 ioJkXaE6nKDda4ygnGupSAwmySKmcdwRXpT7o92PFxcPBNGnRwitC9h1J+uAuumsOffb9Wnd0Pj
 r3PAiMODqwPRD1tvaOa1Ulln075H46xyst3b0nWoGFfH87042+qoWhuqtZzVjeqBVpPD30baDDQ
 TP8KrzFTkhvLf9aNhaU5zsx1qKgsk7ktn0hWhkoTZtcsVPqRGB9gp93b9Edz9xKu0lGlM7Lj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_09,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070003

On Wed, May 07, 2025 at 12:53:27AM +0200, Konrad Dybcio wrote:
> On 5/6/25 10:23 PM, Bjorn Andersson wrote:
> > On Mon, Apr 28, 2025 at 11:14:18PM +0200, Konrad Dybcio wrote:
> >> On 4/28/25 12:48 PM, Dmitry Baryshkov wrote:
> >>> On Mon, 28 Apr 2025 at 11:18, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> On 25/04/2025 23:49, Konrad Dybcio wrote:
> >>>>> On 4/24/25 6:32 PM, Neil Armstrong wrote:
> >>>>>> Add DT entries for the sm8650 iris decoder.
> >>>>>>
> >>>>>> Since the firmware is required to be signed, only enable
> >>>>>> on Qualcomm development boards where the firmware is
> >>>>>> available.
> >>>>>>
> >>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >>>>>> ---
> >>>>>> Changes in v2:
> >>>>>> - removed useless firmware-name
> >>>>>> - Link to v1: https://lore.kernel.org/r/20250418-topic-sm8x50-upstream-iris-8650-dt-v1-1-80a6ae50bf10@linaro.org
> >>>>>> ---
> >>>>>
> >>>>> [...]
> >>>>>
> >>>>>> +            iris: video-codec@aa00000 {
> >>>>>> +                    compatible = "qcom,sm8650-iris";
> >>>>>> +                    reg = <0 0x0aa00000 0 0xf0000>;
> >>>>>> +
> >>>>>> +                    interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH 0>;
> >>>>>> +
> >>>>>> +                    power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
> >>>>>> +                                    <&videocc VIDEO_CC_MVS0_GDSC>,
> >>>>>> +                                    <&rpmhpd RPMHPD_MXC>,
> >>>>>> +                                    <&rpmhpd RPMHPD_MMCX>;
> >>>>>> +                    power-domain-names = "venus",
> >>>>>> +                                         "vcodec0",
> >>>>>> +                                         "mxc",
> >>>>>> +                                         "mmcx";
> >>>>>> +
> >>>>>> +                    operating-points-v2 = <&iris_opp_table>;
> >>>>>> +
> >>>>>> +                    clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> >>>>>> +                             <&videocc VIDEO_CC_MVS0C_CLK>,
> >>>>>> +                             <&videocc VIDEO_CC_MVS0_CLK>;
> >>>>>> +                    clock-names = "iface",
> >>>>>> +                                  "core",
> >>>>>> +                                  "vcodec0_core";
> >>>>>> +
> >>>>>> +                    interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> >>>>>> +                                     &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> >>>>>> +                                    <&mmss_noc MASTER_VIDEO QCOM_ICC_TAG_ALWAYS
> >>>>>> +                                     &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> >>>>>> +                    interconnect-names = "cpu-cfg",
> >>>>>> +                                         "video-mem";
> >>>>>> +
> >>>>>> +                    /* FW load region */
> >>>>>
> >>>>> I don't think this comment brings value
> >>>>
> >>>> Right
> >>>>
> >>>>>
> >>>>>> +                    memory-region = <&video_mem>;
> >>>>>> +
> >>>>>> +                    resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
> >>>>>> +                             <&videocc VIDEO_CC_XO_CLK_ARES>,
> >>>>>> +                             <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
> >>>>>> +                    reset-names = "bus",
> >>>>>> +                                  "xo",
> >>>>>> +                                  "core";
> >>>>>> +
> >>>>>> +                    iommus = <&apps_smmu 0x1940 0>,
> >>>>>> +                             <&apps_smmu 0x1947 0>;
> >>>>>
> >>>>> I think you may also need 0x1942 0x0 (please also make the second value / SMR
> >>>>> mask hex)> +
> >>>>
> >>>> I don't see 0x1942 in the downstream DT, and which mask should I set ? 0x1 ?
> >>
> >> I saw it in docs only, maybe Vikash or Dikshita can chime in whether it's
> >> necessary. It would have mask 0x0 if so.
> >>
> >>>>
> >>>>>> +                    dma-coherent;
> >>>>>> +
> >>>>>> +                    /*
> >>>>>> +                     * IRIS firmware is signed by vendors, only
> >>>>>> +                     * enable in boards where the proper signed firmware
> >>>>>> +                     * is available.
> >>>>>> +                     */
> >>>>>
> >>>>> Here's to another angry media article :(
> >>>>>
> >>>>> Please keep Iris enabled.. Vikash reassured me this is not an
> >>>>> issue until the user attempts to use the decoder [1], and reading
> >>>>> the code myself I come to the same conclusion (though I haven't given
> >>>>> it a smoke test - please do that yourself, as you seem to have a better
> >>>>> set up with these platforms).
> >>>>>
> >>>>> If the userland is sane, it should throw an error and defer to CPU
> >>>>> decoding.
> >>>>>
> >>>>> This is >>unlike venus<< which if lacking firmware at probe (i.e. boot)
> >>>>> would prevent .sync_state
> >>>>
> >>>> Well sync with Bjorn who asked me to only enable on board with available firmware ;-)
> >>>
> >>> I'd second him here: if there is no firmware, don't enable the device.
> >>> It's better than the users having cryptic messages in the dmesg,
> >>> trying to understand why the driver errors out.
> >>
> >> I don't agree.. the firmware may appear later at boot (e.g. user installs a
> >> small rootfs and manually pulls in linux-firmware). Plus without the firmware,
> >> we can still power on and off the IP block, particularly achieve sync_state
> >> regardless of it
> >>
> > 
> > Not "available during boot", but rather "available for a particular
> > board".
> 
> I'd argue that if a device is in the hands of users, there already exists
> some acceptable set of fw binaries.. but most developers aren't in the
> position to upload them into l-f.. And quite frankly I'm not the biggest
> fan of having a gigabyte of 99%-the-same files with a dozen lines changed
> and a different signature prepended to them either..
> 
> > We generally avoid enabling device_nodes that depend on vendor-signed
> > firmware until someone has tested the device on such board and specified
> > the proper path to the vendor-specific firmware.
> > 
> > Are you suggesting that we should leave this enabled on all boards for
> > some reason (perhaps to ensure that resources are adequately managed)?
> 
> Yes, for that reason indeed.
> 
> We don't generally need to load firmware to turn something *off*. And
> most IP blocks don't **actually** need to be presented with firmware at
> probe time (I can only think of external ICs like no-storage touch
> controllers that need the fw uploaded on each powerup). 
> 
> Telling the user "hey, this is supported but the firmware file can't
> be loaded on your device" may also be better sounding than "won't work
> on your machine" (with the quiet part being: "because someone hasn't
> copied 5 lines of DTS")

Then we need to make sure _not_ to make a default path useable, so that
the users know that there is no proper firmware rather than facing the
cryptic error of "firmware something -error".

But... I'd rather prefer to keep firmware-backed nodes disabled exactly
for the reason of "making someone copy 5 lines of DTS", which usually
means that somebody has thought about how to get and where to put the
binary.

-- 
With best wishes
Dmitry

