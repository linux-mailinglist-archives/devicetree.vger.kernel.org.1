Return-Path: <devicetree+bounces-213510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99199B4596B
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 163FA1BC411E
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 13:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D7735337E;
	Fri,  5 Sep 2025 13:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sk8wWwLY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACF635336D
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757079895; cv=none; b=pWsRVYpKERD23910ExAm2Niu5LBdvr59I28Fb9RIIXHxvgZm+b41GHwkVbTLi6O0p9o6ejOTkFEfpCEEpzPXxppohVTFq9C3x6WCHJ9czzmHHogPLqD29+7PWnnbEchAX6rz3+HKRy+qKzzViDSCX2KlvpL5XtXILiRPS4RaWZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757079895; c=relaxed/simple;
	bh=+mpyX9Og8aI2yg1J7ZFrWaBz9IJchiYAHonQj1EnHfI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WDqcCEEZNquJKPQjsufR13DOyxEtCFuSCirxp/T2EJsaMKTRDGvvpklvqchO1P1B1ZpJ9dCjXe5M2I482ogNQG8N3tHigIXAEFa3qfo2DxUajpPUZdYrdrWDUXk5oCNj6XDWkOb5boBH65F29CAe1T+/z1D1wwtmXr/NKQ9diHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sk8wWwLY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58570nmK031940
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 13:44:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c2zKvsgCGnbfbtTBnulsiawiQ/4EzwqzyBuLEYUqo6M=; b=Sk8wWwLYQeKcpOfl
	cRcYHlh7C9bBOynUVS9GO1QdJmwRA4sV9fab0L/DGaknVyzkgVm9td3CMBtWAbRD
	EBIUquW9fFk0OidquP7a/1wvNkCIgXulmsz4J9d6G57Qe/WSooDeU2j/zusegx71
	qwMiOUbQJEXRZOy62TyzQj0WqGC132D/kY9snRfLdUvid230RuwcPGwRVcg6fR5i
	5jMlEdkONjHkKUszbt/8Hd8DXQUVQx5WMMNq6ZO1OrFDGkGh75rk/exCs8OIS71Q
	ySHR070bWvV8xafoND0wBbH/sY/s3hzxKuvyvJ/I4f39MT3PQsuMrDF5UY4dt5Ml
	S6f/bw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw0bc46-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 13:44:52 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-728a71d8fd9so51822826d6.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:44:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757079891; x=1757684691;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c2zKvsgCGnbfbtTBnulsiawiQ/4EzwqzyBuLEYUqo6M=;
        b=GtLtxqwf5d0fG55klrJXh1hzM+zdMt96BZ2+dpsW+NNXuMrJNNKHGAfvDIGUp5uLnY
         rhjk7Z38EZVDNiCDfwVvCnFOjGxiUzBtzOpt83juj5rwQWMPLPFIH2/p96Mh3wtmJwOV
         lWj/T5xKHV15e+UIlb2duwZ4313IOUlBa2d5uemxisF9FddE2PkItP25yvgFkCKTm89X
         Au3aUWXi9J50WzmxQNa+oaoqlOHiWsarwl8h684wYqCUpBP0RWC1JlVzOr5wyTic4Kv/
         M88/NbEHSWAlRN1eHj/gQFWvM0+X6iehO+T1eGx4WNIF3ev4FHWXrS9zwFCBFWA7BbBB
         gSeg==
X-Forwarded-Encrypted: i=1; AJvYcCVqz8/LJTdLDnednkFex3wotyc2jtV6J1F3bDXIaWTdDiiJcZIRtTVwrCDlpiEqcsqud6JdkavwWnXD@vger.kernel.org
X-Gm-Message-State: AOJu0YxqXCZ9pQlamsfOwiVc+nS2Zbszk0mLqC8sI6evfMz0HBuPSdzP
	/mZPF0dkCD9E3cyoqVSNn5X8BnkvsGgw4+3jDYxGm4pukOiqqj4/3lF+fE64olgc/g0tJ3xmvny
	bQNJzaOHgQWyJH1mNN3n4yemrKCD/uCwyhfCq9uBXKwWEIQor40vU/l4BRE0o61lN
X-Gm-Gg: ASbGnctLz9VCixtnE2GbKlIv5TiLuX4v/2ZgT0BU4li6GFuupzSjTGISRaLS6n6fZc1
	UEiEB5jNpVcq6Ml0UNGkted8O/THuCxN0KqMi6MFvrq3M8uMQR+vcgugTJ0eQ2OVJ5jxw2s6onu
	KyKg2bOgGBRWXBgNLeTRRJJPyvIplF4KQoUxVOyKzIb8/XFeiC1RPz9bWBea8HMbXjIgskolGR5
	/VHupn4+qmk6jZcoJjDPGkrLFLo/tHKzjvVsF44qqVM3irefVOYMmb4xbkgviBLvZ44LJJt1pcM
	UMtHftn17zxeUW2olswd/ewM59sLMJh+o/KJiWaQcjGXfsIJpqXQ7wKMh635+1MWmeqbWHFhPZd
	aTJHdPIXgp3u7BmwvJVVum5NQd+1wtygH1NVoBT4cCtABhiAigI1s
X-Received: by 2002:a05:6214:3a03:b0:728:854:6c5d with SMTP id 6a1803df08f44-7280854734cmr82649076d6.40.1757079891330;
        Fri, 05 Sep 2025 06:44:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEysaH2r+sDH1VYSbBfUlmUfjVqBsoj0EWYtUbiy6ntQYp2Fs9xV0PFRVXB9rLnJ9AW0Z0rlg==
X-Received: by 2002:a05:6214:3a03:b0:728:854:6c5d with SMTP id 6a1803df08f44-7280854734cmr82648586d6.40.1757079890632;
        Fri, 05 Sep 2025 06:44:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad11f25sm1749779e87.115.2025.09.05.06.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 06:44:49 -0700 (PDT)
Date: Fri, 5 Sep 2025 16:44:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
Subject: Re: [PATCH 2/5] arm64: dts: qcom: lemans: Add SDHC controller and
 SDC pin configuration
Message-ID: <zw6o6nxczrzz3dkreq2nuxalbrlv7jmra2hs3pljew7xnbuepo@b6rs47vnnctx>
References: <20250826-lemans-evk-bu-v1-2-08016e0d3ce5@oss.qualcomm.com>
 <rxd4js6hb5ccejge2i2fp2syqlzdghqs75hb5ufqrhvpwubjyz@zwumzc7wphjx>
 <c82d44af-d107-4e84-b5ae-eeb624bc03af@oss.qualcomm.com>
 <aLhssUQa7tvUfu2j@hu-wasimn-hyd.qualcomm.com>
 <tqm4sxoya3hue7mof3uqo4nu2b77ionmxi65ewfxtjouvn5xlt@d6ala2j2msbn>
 <3b691f3a-633c-4a7f-bc38-a9c464d83fe1@oss.qualcomm.com>
 <zofmya5h3yrz7wfcl4gozsmfjdeaixoir3zrk5kqpymbz5mkha@qxhj26jow5eh>
 <57ae28ea-85fd-4f8b-8e74-1efba33f0cd2@oss.qualcomm.com>
 <xausmwmh6ze5374eukv6pcmwe3lv4qun73pcszd3aqgjwm75u6@h3exsqf4dsfv>
 <53aac104-76fb-42b8-9e0d-0e8a3f59b2da@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <53aac104-76fb-42b8-9e0d-0e8a3f59b2da@oss.qualcomm.com>
X-Proofpoint-GUID: EP7ReGAr-K72V_KetjkMXphmo9H7kJfi
X-Proofpoint-ORIG-GUID: EP7ReGAr-K72V_KetjkMXphmo9H7kJfi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfXxBfS8gW9jWkU
 HViLUVVoUQGnmtIzlfvHrVAgSc3qgWQHKLI3q/Vg8oKb5az+TRe5nYWyLeBYOXj4mazmRCzT3/X
 f4M1PvopnL4U2CJftcD0JVgTPD4M+Tgu4790/ane7PJ6j9UQDQmy8fl3jVFdYckYOmB0SBN79pR
 Rpgvos+iDeVCm6vSBEhTPnORyffnaoX9PMn/lmgxQeI3tIP9bSGljazJqUpA7Mb2RqKqbQv6h0X
 I+lu3QjcJSePBA+EMWxr165u2AKjYxCIFIn4Hbk6ctMLj349J3MTgXyKwPGs/0ELvzGWTURwFjD
 98HAfpGY8voxAagbtlQFcCQ039x/bA0Rjcpew9GHR4duDljsKZBad0lr4ZCP5Kx/uINIwJTo6jm
 QT443z8j
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68bae954 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=mUbd499wupVbqrUIRmUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

On Fri, Sep 05, 2025 at 02:04:47PM +0200, Konrad Dybcio wrote:
> On 9/5/25 1:45 PM, Dmitry Baryshkov wrote:
> > On Fri, Sep 05, 2025 at 01:14:29PM +0200, Konrad Dybcio wrote:
> >> On 9/4/25 7:32 PM, Dmitry Baryshkov wrote:
> >>> On Thu, Sep 04, 2025 at 04:34:05PM +0200, Konrad Dybcio wrote:
> >>>> On 9/4/25 3:35 PM, Dmitry Baryshkov wrote:
> >>>>> On Wed, Sep 03, 2025 at 09:58:33PM +0530, Wasim Nazir wrote:
> >>>>>> On Wed, Sep 03, 2025 at 06:12:59PM +0200, Konrad Dybcio wrote:
> >>>>>>> On 8/27/25 3:20 AM, Dmitry Baryshkov wrote:
> >>>>>>>> On Tue, Aug 26, 2025 at 11:51:01PM +0530, Wasim Nazir wrote:
> >>>>>>>>> From: Monish Chunara <quic_mchunara@quicinc.com>
> >>>>>>>>>
> >>>>>>>>> Introduce the SDHC v5 controller node for the Lemans platform.
> >>>>>>>>> This controller supports either eMMC or SD-card, but only one
> >>>>>>>>> can be active at a time. SD-card is the preferred configuration
> >>>>>>>>> on Lemans targets, so describe this controller.
> >>>>>>>>>
> >>>>>>>>> Define the SDC interface pins including clk, cmd, and data lines
> >>>>>>>>> to enable proper communication with the SDHC controller.
> >>>>>>>>>
> >>>>>>>>> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> >>>>>>>>> Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >>>>>>>>> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> >>>>>>>>> ---
> >>>>>>>>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 70 ++++++++++++++++++++++++++++++++++++
> >>>>>>>>>  1 file changed, 70 insertions(+)
> >>>>>>>>>
> >>>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>>>>>> index 99a566b42ef2..a5a3cdba47f3 100644
> >>>>>>>>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>>>>>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>>>>>> @@ -3834,6 +3834,36 @@ apss_tpdm2_out: endpoint {
> >>>>>>>>>  			};
> >>>>>>>>>  		};
> >>>>>>>>>  
> >>>>>>>>> +		sdhc: mmc@87c4000 {
> >>>>>>>>> +			compatible = "qcom,sa8775p-sdhci", "qcom,sdhci-msm-v5";
> >>>>>>>>> +			reg = <0x0 0x087c4000 0x0 0x1000>;
> >>>>>>>>> +
> >>>>>>>>> +			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
> >>>>>>>>> +				     <GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
> >>>>>>>>> +			interrupt-names = "hc_irq", "pwr_irq";
> >>>>>>>>> +
> >>>>>>>>> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> >>>>>>>>> +				 <&gcc GCC_SDCC1_APPS_CLK>;
> >>>>>>>>> +			clock-names = "iface", "core";
> >>>>>>>>> +
> >>>>>>>>> +			interconnects = <&aggre1_noc MASTER_SDC 0 &mc_virt SLAVE_EBI1 0>,
> >>>>>>>>> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDC1 0>;
> >>>>>>>>> +			interconnect-names = "sdhc-ddr", "cpu-sdhc";
> >>>>>>>>> +
> >>>>>>>>> +			iommus = <&apps_smmu 0x0 0x0>;
> >>>>>>>>> +			dma-coherent;
> >>>>>>>>> +
> >>>>>>>>> +			resets = <&gcc GCC_SDCC1_BCR>;
> >>>>>>>>> +
> >>>>>>>>> +			no-sdio;
> >>>>>>>>> +			no-mmc;
> >>>>>>>>> +			bus-width = <4>;
> >>>>>>>>
> >>>>>>>> This is the board configuration, it should be defined in the EVK DTS.
> >>>>>>>
> >>>>>>> Unless the controller is actually incapable of doing non-SDCards
> >>>>>>>
> >>>>>>> But from the limited information I can find, this one should be able
> >>>>>>> to do both
> >>>>>>>
> >>>>>>
> >>>>>> It’s doable, but the bus width differs when this controller is used for
> >>>>>> eMMC, which is supported on the Mezz board. So, it’s cleaner to define
> >>>>>> only what’s needed for each specific usecase on the board.
> >>>>>
> >>>>> `git grep no-sdio arch/arm64/boot/dts/qcom/` shows that we have those
> >>>>> properties inside the board DT. I don't see a reason to deviate.
> >>>>
> >>>> Just to make sure we're clear
> >>>>
> >>>> I want the author to keep bus-width in SoC dt and move the other
> >>>> properties to the board dt
> >>>
> >>> I think bus-width is also a property of the board. In the end, it's a
> >>> question of schematics whether we route 1 wire or all 4 wires. git-log
> >>> shows that bus-width is being sent in both files (and probalby we should
> >>> sort that out).
> >>
> >> Actually this is the controller capability, so if it can do 8, it should
> >> be 8 and the MMC core will do whatever it pleases (the not-super-sure
> >> docs that I have say 8 for this platform)
> > 
> > Isn't it a physical width of the bus between the controller and the slot
> > or eMMC chip?
> 
> No, that's matched against reported (sd/mmc) card capabilities IIUC

What if both host and the card support 4 bits bus (normal SD card), but
board has only one data wire?

-- 
With best wishes
Dmitry

