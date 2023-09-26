Return-Path: <devicetree+bounces-3551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4C17AF423
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EA375281399
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591023D3B4;
	Tue, 26 Sep 2023 19:29:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05E8F51A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:29:24 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C5B6DE;
	Tue, 26 Sep 2023 12:29:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695756559; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=pBtXdsTBi4BB4ZZIAsiwsl8geiL/EHWri7LG+42VMJxRAFdL1Mv8407qp56jkKrkC5
    3zerT1uFA6Sp8LNEj6Lc69mVpZ3kDmcdU1xpEAVcJYH8ohCaBOOeucqsBZyMAd01cMcn
    xotQ2Pb1zM/n6X+x8JVj1PnZ70TdYVwocSui/Qh8hCS+2qzi86DxLwNIy/G7n4uO2QkU
    JpL9H31vvbOafTH48uGEB+UxtF0J2T/4trGiy3Hkf8cv7SDUVj0qHMurzJ7dlu/XrJX2
    e72ZVrKeB1kQ4+nsIAB6KcV26QbSx+B0gdBt2mrmiXj+70Vvx6xYJBjFwRwnR+FvUEAJ
    GjFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695756559;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=+ha073wnHBmefyf38pQm6waJvTbEZvmyvSKrKKLGllY=;
    b=Uvpg5d973WjUN/hvVfyabcIy6IK/fZ2kLdxopTyuFKrnNZHwCAR+YX+U8NOOY10R6N
    nKMR49xQsD4qp3eZ968qZAdMiRyf6d+2jBbx5z87+JEebp8auS61p8oQ+mjpOm8TsnOB
    RQhFHbcjN2r15xZxNmHu0Qs5ANFo2TjKt7bQILkEVFkmu8PGP+0pGSB1xrgINXg9DLUI
    JajmwCRFdykaDBWZbHkGvMbvk/1/ijWCCjuCJ8XyuMfunkbm9R5CEDni2Hh+KJF7+jxK
    4C4TzG82UuU6O5eweD+RQ7oVvOGHF18WmW/glyJCfKZB1ciV4IHfgN/QCM4MGGvgxiUJ
    fvPQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695756559;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=+ha073wnHBmefyf38pQm6waJvTbEZvmyvSKrKKLGllY=;
    b=XTIrBrXmUaeOEWkVueKQ5MYLaZcZLHaFQ/5wY3HN+3RO8GYXm4SoWI6LPrI0C9JPYU
    UR1SPh992kwS40F9FdoAPsep71V5+WP6+pOk8xJaTDE30V8bAFvmT1+iIwpIPpFBChDP
    /ugvAHaZgZMN1Qjgi+J97eC09fXKxiDkYhMpGAbFCiNazZRsJwo5y04en6D4HwG7I6pt
    D6c1nvGNxh+YKj6SY/9e2OgdRxmeCZwADcCaHNbNGEpnE8Grn7Mi2Y98aJfL8MJ3B8ij
    mRDPPWw+uf7xxmVCydvMr9ILzWTDvNmpPlneOrVorjQjuPMi5pk6yqcBRdgHKtrHaJk+
    CtnA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695756559;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=+ha073wnHBmefyf38pQm6waJvTbEZvmyvSKrKKLGllY=;
    b=up4SogWsy5tkiKisO/BTG0Kxn1TrF/+xWIwLJsCpBGpeW1gb2bt5dBYHNkWlocTJ3n
    yJsg7s6Y9CYWPGvMePBg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4paA8piJ1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.8.2 SBL|AUTH)
    with ESMTPSA id R04c57z8QJTJgML
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 26 Sep 2023 21:29:19 +0200 (CEST)
Date: Tue, 26 Sep 2023 21:29:18 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH 05/13] arm64: dts: qcom: msm8916-samsung-serranove: Add
 sound and modem
Message-ID: <ZRMxDjVKu-kGIs5f@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-5-398eec74bac9@gerhold.net>
 <64f030ca-27e5-47c8-b0d4-5fd0d4fce9d9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64f030ca-27e5-47c8-b0d4-5fd0d4fce9d9@linaro.org>
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 08:55:14PM +0200, Konrad Dybcio wrote:
> On 26.09.2023 18:51, Stephan Gerhold wrote:
> > Enable sound and modem for the Samsung S4 Mini Value Edition. The setup
> > is similar to most MSM8916 devices, i.e.:
> > 
> >  - QDSP6 audio
> >  - Speaker/earpiece/headphones/microphones via digital/analog codec in
> >    MSM8916/PM8916
> >  - WWAN Internet via BAM-DMUX
> > 
> > except:
> > 
> >  - Samsung-specific audio jack detection (not supported yet)
> > 
> > Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts b/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
> > index 68da2a2d3077..5f33aa0ad7b5 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
> > +++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts
> > @@ -6,6 +6,8 @@
> >  /dts-v1/;
> >  
> >  #include "msm8916-pm8916.dtsi"
> > +#include "msm8916-modem-qdsp6.dtsi"
> > +
> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/input/input.h>
> >  #include <dt-bindings/interrupt-controller/irq.h>
> > @@ -319,6 +321,10 @@ &blsp_uart2 {
> >  	status = "okay";
> >  };
> >  
> > +&mpss_mem {
> > +	reg = <0x0 0x86800000 0x0 0x5a00000>;
> > +};
> > +
> >  &pm8916_resin {
> >  	status = "okay";
> >  	linux,code = <KEY_VOLUMEDOWN>;
> > @@ -350,6 +356,14 @@ &sdhc_2 {
> >  	no-1-8-v;
> >  };
> >  
> > +&sound {
> > +	status = "okay";
> > +	audio-routing =
> > +		"AMIC1", "MIC BIAS External1",
> > +		"AMIC2", "MIC BIAS Internal2",
> > +		"AMIC3", "MIC BIAS External1";
> > +};
> I *think* we should be able to harmlessly enable &audio globally?
> 

What about boards that do not have/use audio at all? (see
msm8916-ufi.dtsi). We don't even want to load the kernel modules on
those.

IMO the SoC dtsi should always be minimal by default. This also
guarantees that you don't run into trouble because of half- or
incorrectly configured components during early bring-up, especially if
you don't have serial and are hoping to get the device booting far
enough to debug it.

Thanks,
Stephan

