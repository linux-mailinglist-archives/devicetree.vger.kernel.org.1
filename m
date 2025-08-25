Return-Path: <devicetree+bounces-208918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D0FB33AAB
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 11:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 994FC482D97
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 09:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F408A29C347;
	Mon, 25 Aug 2025 09:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ktg4b7N5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56ECD2356B9
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756113730; cv=none; b=AwjdB9zEY5mOdbAmWgRyjJrWdSYZWlYRUolvO+lE/cbz4MJEKCSejNaOnjAi31lnFw/B5CS8OHQdeBXCW714rGGSIOClwuO1uJC6U2Nppw9CgPuOC9XWiOBGVaRaDfQFpIteA5SIie08ckMDkXAjUjAyft7mNDjG89DjKL79Fco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756113730; c=relaxed/simple;
	bh=9bZNwRqzl8AWUYabscTcxNnDfMPP4awyOttaTxXW8yY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cLHeSaW0OYBbDxQ8rcwPsMUKjGw8yi+UPipCEYdMLMVDoVSHQPdoubrTFa6/vMIjtkLokqGlCyVokKeSbJQroBjdpByiriZ5eI99pcD0fdIhWVcKZMH2DUFmiQRvZR1ibRf2nt7AvG29chcXqucrn9Z5vK/HjVzL+dCA6fVgXSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ktg4b7N5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P7XrK5024681
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:22:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uZhYIuZX4ATTadEC4VVuga/g
	/sTYW1yNnMJwGqSFpK8=; b=Ktg4b7N5GiovvSel0DzO72aB5pzfkvic3nIrgaPJ
	7d+zCHi/+NJ/DBhw4j+sawTKexH/VL/gLLN0XTo6m/OfdUtQtAzOzxFDjH7sMGES
	OYee2Ct0Tvxq3sMUxVdUHpr5CKlB3oca9wf0rrU45ulfemQnA68h+Ryb5vYz2tVY
	9sUKyZlF0jtDagdHlm6vvbKJogDm2ng2YeFkmFbddfDLADOJfKD0h2n7lfIkJb/1
	yGcKiN0qTBSZazOBWMz6ZALRaYtx8BpM1J+P10eA9c7zVmFwwiq0ay+/YXKulY49
	stjDXMNqTh6Krh46qHhsWYAmcDSwUBdwTq5KnPPG7xOonw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5uc4fnr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:22:08 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70d9a65c170so60564856d6.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 02:22:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756113727; x=1756718527;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uZhYIuZX4ATTadEC4VVuga/g/sTYW1yNnMJwGqSFpK8=;
        b=aNEktZg7LSgaJ1ogbpEkrk1FPuKoNxOgcyCFaD+VfezmcK2AcS5aGKge+cNvsPzWSY
         SIqZJfPn4lQa7PaMAJZKumcLn9UKCnxMW5Y2l2cMyJcrwz4t6EynD4gLto88eecoXkoK
         TKzhEV62/EYifSwZmaHNjiQ6ZDz1vnOKKNL+Wy4MQOngTAasj0kB0wXYOEKhBbcZ91Jq
         h3lf4stShyj7wH9CNBZA2y+NiS4qIak7LAl8epwvXIplAzw10AGV7Vh2l1WohfwK2lBP
         IhXxm/quDJ6ijhsFBcLaOM6I14rn9Bf5nU9Izu9saZurrEU2dFxFRMJ6YD5pFEZsvuee
         qkqA==
X-Forwarded-Encrypted: i=1; AJvYcCWjzkdoe2SUC4zAU6bMIys7HCm5bYTE8Yy/SJfY+Tcr2UHl6DmS+JLgEQaECQ7dyll5epGulD/wPVwm@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrh3Zv8t4X3Ypei09vYgJkT3vKBEPxUsHvUD8KzyU8wo6/74HE
	HZtDjcfXegUPVZIEJ+to9z/1ndmdmxGTt6fRsV9F+pCMFBKKWcsYWCS1BvTBrOX9FptxNsMLSbE
	a3OVuQVcgCO6p8KEKgMuKdLuFn/hl84WeNEM0ypezBTVXCZqZ5skli+3saHySnaeW
X-Gm-Gg: ASbGnctF1K06zNcaatd8leS7L7kemMCrFdm70soJVScfD59ApaFhxmyVwEOxZtArnCu
	yRlLbuMnipQbFGrbfzUwrMX6bGZ7PhTFfAVPPZHFPlMpLBhllrKZ6t/my3avI8m7M4kVYJuKfuF
	6yYSjNP/ZSIN07y+CPLOXOUfDVyytQ0FvRtTGjMQlIcqIYAF5e7ZvRuCFiX9MPoPO3WfUrlLMsY
	MMQTIjhaBUf4Jq47K5Ina4Y3JQdXpVXGLOfUiTmF9Cdr80/FoOWV1mRLXDo7D1CMRiMPtwx/R9Y
	tG+1e/Y+GEaUon0igItNlzAFV1JiSZw2g7rPlybUjBlb0cA7OiZFaEltQMoZbm30O6TAxU8gO9w
	0pv2ibT4WYUuPPP0axRDscFrAwkCRgUHh0Jrco6jGQ+axwDSK7nnv
X-Received: by 2002:ad4:5cc9:0:b0:707:4f43:eed6 with SMTP id 6a1803df08f44-70d97251887mr132407966d6.19.1756113727120;
        Mon, 25 Aug 2025 02:22:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3V/rbRFQBwL/w5qM/vQJMILCKP6viO2gUQG9twx32eTEgRqBXSWLUWk0D0/yPB9lV7rSK9w==
X-Received: by 2002:ad4:5cc9:0:b0:707:4f43:eed6 with SMTP id 6a1803df08f44-70d97251887mr132407726d6.19.1756113726479;
        Mon, 25 Aug 2025 02:22:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f39de534bsm1393060e87.127.2025.08.25.02.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 02:22:04 -0700 (PDT)
Date: Mon, 25 Aug 2025 12:22:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, cros-qcom-dts-watchers@chromium.org
Subject: Re: [RFC PATCH] arm64: dts: qcom: sc7280: Drop aggre{1,2}_noc QOS
 clocks on Herobrine
Message-ID: <3i7pdzata6gxsc3svb3eygubfdfmnetlekxdd25bb4ljkdrlh7@bvufiwmdusqz>
References: <20250823123718.RFC.1.Idebf1d8bd8ff507462fef9dc1ff47e84c01e9b60@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250823123718.RFC.1.Idebf1d8bd8ff507462fef9dc1ff47e84c01e9b60@changeid>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMiBTYWx0ZWRfX8BRMblhX6PYp
 hKQI5e94VshXRZfKogpt6Eomzwl40d9Md6hCeVT+NL6e1+xoZKrNpbrRL4/cUbUwRuL1rT2/NUX
 COBxYyyVj9mVvH0SAidWP2yvSykignpF5tTRwRz7ksD0bhZOZkAw7Lx4cE4E+FvN/SJFLDST2vb
 /7mpAzHQw4q9tZbXcB0yPCzBrAfZcxDTP55grfHcpr7933FQQm7hx0pKGLynyENDrHQyEepPEq+
 pcoJ47cw/2XkvWv77Fm4Z09LpwHd64Lnb6tHcXdNIWScCGdS4QJNcXknlKMoBBccOt9K4cwfzOh
 caqCP8aIKJl2MsuVoajfCTJMHFq5fr2PrvaRIxGEw0iA24ATEOkRCqogEtK7ZcksbfkhEQ8WLNK
 xsrBSszK
X-Proofpoint-ORIG-GUID: r6KH7BlgjA7uzOfzKi-6FGB1nyI9fJAL
X-Authority-Analysis: v=2.4 cv=I85lRMgg c=1 sm=1 tr=0 ts=68ac2b40 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=cm27Pg_UAAAA:8 a=XzfyJc1qPjP2x_x8poUA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: r6KH7BlgjA7uzOfzKi-6FGB1nyI9fJAL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230032

On Sat, Aug 23, 2025 at 12:37:18PM -0700, Brian Norris wrote:
> Ever since these two commits
> 
>   fbd908bb8bc0 ("interconnect: qcom: sc7280: enable QoS configuration")
>   2b5004956aff ("arm64: dts: qcom: sc7280: Add clocks for QOS configuration")
> 
> Herobrine systems fail to boot due to crashes like the following:

Nice to see somebody using these boards!

> 
> [    0.243171] Kernel panic - not syncing: Asynchronous SError Interrupt
> [    0.243173] CPU: 7 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.11.0 #1 c5464041cff584ced692726af2c4400fa2bde1db
> [    0.243178] Hardware name: Qualcomm Technologies, Inc. sc7280 CRD platform (rev5+) (DT)
> [    0.243180] Call trace:
> [    0.243182]  dump_backtrace+0x104/0x128
> [    0.243194]  show_stack+0x24/0x38
> [    0.243202]  __dump_stack+0x28/0x38
> [    0.243208]  dump_stack_lvl+0x28/0xb8
> [    0.243211]  dump_stack+0x18/0x30
> [    0.243215]  panic+0x134/0x340
> [    0.243219]  nmi_panic+0x48/0x98
> [    0.243227]  arm64_serror_panic+0x6c/0x80
> [    0.243245]  arm64_is_fatal_ras_serror+0xd8/0xe0
> [    0.243261]  do_serror+0x5c/0xa8
> [    0.243265]  el1h_64_error_handler+0x34/0x48
> [    0.243272]  el1h_64_error+0x7c/0x80
> [    0.243285]  regmap_mmio_read+0x5c/0xc0
> [    0.243289]  _regmap_bus_reg_read+0x78/0xf8
> [    0.243296]  regmap_update_bits_base+0xec/0x3a8
> [    0.243300]  qcom_icc_rpmh_probe+0x2d4/0x490
> [    0.243308]  platform_probe+0xb4/0xe0
> [...]
> 
> Specifically, they fail in qcom_icc_set_qos() when trying to write the
> QoS settings for qhm_qup1. Several of the previous nodes (qhm_qspi,
> qhm_qup0, ...) seem to configure without crashing.
> 
> I don't really know what's unique about Herobrine systems vs other
> sc7280 systems that presumably work fine. I'd guess there's some
> conflict with something configured by the boot firmware.

I think it well might be that Herobrine's TZ doesn't export QoS regions
to Linux.

> 
> I'm submitting as an RFC just to get thoughts from people who hopefully
> know better than me what might be going wrong here.
> 
> Fixes: fbd908bb8bc0 ("interconnect: qcom: sc7280: enable QoS configuration")
> Fixes: 2b5004956aff ("arm64: dts: qcom: sc7280: Add clocks for QOS configuration")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> index 2ba4ea60cb14..59203ce58c61 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> @@ -394,6 +394,16 @@ &vreg_l2c_1p8 {
>  
>  /* ADDITIONS TO NODES DEFINED IN PARENT DEVICE TREE FILES */
>  
> +/* QoS seems to have conflicts with boot firmware on these devices. */
> +&aggre1_noc {
> +	/delete-property/ clocks;

While it might be enough for Linux to make it skip the QoS, I think a
more correct fix would be to remove the 'reg' instead / in addition.

On the other hand, having those boards used by only a few people it
might be easier to just pick up the simple fix rather than implementing
a 'proper' one.

Nevertheless, this would require changing the schema too, see
Documentation/devicetree/bindings/interconnect/qcom,sc7280-rpmh.yaml

> +};
> +
> +/* QoS seems to have conflicts with boot firmware on these devices. */
> +&aggre2_noc {
> +	/delete-property/ clocks;
> +};
> +
>  &edp_panel {
>  	/* Our board provides power to the qcard for the eDP panel. */
>  	power-supply = <&vreg_edp_3p3>;
> -- 
> 2.51.0.rc2.233.g662b1ed5c5-goog
> 

-- 
With best wishes
Dmitry

