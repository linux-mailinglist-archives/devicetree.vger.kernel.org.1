Return-Path: <devicetree+bounces-86157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D9F932E7A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 18:38:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F20431C220C8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 16:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8206F19F482;
	Tue, 16 Jul 2024 16:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u0S0B9jr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB7DE19EEA7
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 16:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721147881; cv=none; b=BDuwuD3ADoOCM42VuSGmCvllnOp9bZG6UiBH1iosagi9MKSWCjaglWZjdj4fHKvcsXHHN84BY50ygXTemFfowOATbzU65pC10FSrVSOzl1s3gom6+PXAH80YrnPVmwdxxzhP29CfUJetQL8G4/52O5oFS+zZAf4OJe2Qn7JSU/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721147881; c=relaxed/simple;
	bh=q2lkvHitVcy2x8W1nfxNf4cBm3/h+MECP/thPi24Yjg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B7nlDwa4jVjMml0C5mDggoAc/TIRTTujwXU2voVCMrlw43W1ThbuOdxlPFzwEirIHHgPrffvPcVFeNWEElexh7clFocJxox2jMlqBlbagaJTEzrINrAQr/7HIxk4EI3lTQHC/K1oTs5nNNwl9xUN+9bq4fBj/oRMb/NIpCUTKf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u0S0B9jr; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-66498fd4f91so888117b3.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 09:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721147879; x=1721752679; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Inq9wHo9haYW+I9Tylrr0gohQZyxyP5BU7osayMiXTI=;
        b=u0S0B9jrpAD5E5NdlMZg0Jg109tfH/drWfIk3jSx8UXk1O1Qk2CwHrtnPEnc1dDsmN
         e1jiTPquzkpZjjHvrRh5weuSp9Yyh0PS3WX9TX9eE1nX6P5iLgM2dCSOlPAoObMcFwui
         Z+byRenEMUMbHITxUH3AY61RXg2GoooPqnnzYS4LzvqQGqjxJQlp/NpfkhJME3pq8mHa
         dVLr8+P70hnlGLufm/0fZW0s2T5AgQc+sSBauTbBD37Ea6bIhA8FyjCdM0vIra/DbVvx
         iJB4ewF0nKnIAO2d1qhj2/1OYH+biqtD3Wz/B1DLBTZ0hMd+zY3+3Xo7nYfFZkBP09vy
         IUVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721147879; x=1721752679;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Inq9wHo9haYW+I9Tylrr0gohQZyxyP5BU7osayMiXTI=;
        b=s3oemBbP08qBBxWxkJFnb3ORcSXspa+hrXEPJBcJBHBzWGxHrkjV35+WvWCzO9OZft
         jzoZWuhVo992bL+vgFynfhktDJV0Sb2jRAMpLnF35PdolYRrr7gkRcdM8LkFTtvQRJzQ
         fY9qvjhHNq/yoFLvAQHA5yQvEONXSo82rnCI+OuEMOseXRMl1sGCUUyHIcrk571nFPFq
         +ZZDHAUo8InRI/tTnLPD7OWYZTI7GZNP+U288I+1H1w8qSV5WufMPyTNsw0wfM72HQ6z
         HuqYaSbtVU+qojzJlsscw9G9/8OyEu3WncQxr9pZYVY6baV5uYVS1o6oTcj1KUPb4T+r
         e6aA==
X-Forwarded-Encrypted: i=1; AJvYcCXYFjh/37IPm9axin9v2TrYZHtyGvCRagcNoEStoc9tbwanS1jvAV80ZgpryD//eGn3/IrO7mrHsblsn9MYH2aBrygPRo7Se08R8Q==
X-Gm-Message-State: AOJu0Yyv+189iWBT7d7LW2IP3zHgXc0xMe2u/YBaFPDo51JyTYQm/3Zm
	/zA4pp/+Wq+Xy0eBaGZmgEr9+GO4xn+UVU7LfZFkEwjka7r6PzqJnfiigtV530wtZ1p1yBdJQHs
	Y6l1td0r0Hl5n0B/NlMbMwJoSBOW6gVpvZqsTXQ==
X-Google-Smtp-Source: AGHT+IE+6hxj9x884OAMB4VNRlYKsy/S+Y0o45dUnN/039E9rINPR7H3k9hGW0oD/pMtgKJEzaq/W5A/siUNC58eij4=
X-Received: by 2002:a81:b402:0:b0:61b:1f0e:10 with SMTP id 00721157ae682-66380f1304amr31569737b3.4.1721147878623;
 Tue, 16 Jul 2024 09:37:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr> <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
In-Reply-To: <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jul 2024 19:37:47 +0300
Message-ID: <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jeffrey Hugo <quic_jhugo@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Jul 2024 at 17:34, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 16/07/2024 15:11, Konrad Dybcio wrote:
>
> > On 27.06.2024 5:54 PM, Marc Gonzalez wrote:
> >
> >>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 100 +++++++++++++++++++++++++++++++++-
> >>  1 file changed, 99 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> >> index ba5e873f0f35f..417c12534823f 100644
> >> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> >> @@ -2785,7 +2785,7 @@ mmcc: clock-controller@c8c0000 {
> >>                               <&mdss_dsi0_phy 0>,
> >>                               <&mdss_dsi1_phy 1>,
> >>                               <&mdss_dsi1_phy 0>,
> >> -                             <0>,
> >> +                             <&hdmi_phy 0>,
> >>                               <0>,
> >>                               <0>,
> >>                               <&gcc GCC_MMSS_GPLL0_DIV_CLK>;
> >> @@ -2890,6 +2890,14 @@ dpu_intf2_out: endpoint {
> >>                                                      remote-endpoint = <&mdss_dsi1_in>;
> >>                                              };
> >>                                      };
> >> +
> >> +                                    port@2 {
> >> +                                            reg = <2>;
> >> +
> >> +                                            dpu_intf3_out: endpoint {
> >> +                                                    remote-endpoint = <&hdmi_in>;
> >> +                                            };
> >> +                                    };
> >>                              };
> >>                      };
> >>
> >> @@ -3045,6 +3053,96 @@ mdss_dsi1_phy: phy@c996400 {
> >>
> >>                              status = "disabled";
> >>                      };
> >> +
> >> +                    hdmi: hdmi-tx@c9a0000 {
> >
> > Please prefix the labels (hdmi: and hdmi_phy:) with mdss_
> >
> > Otherwise, this looks good
> >
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >
> >
> > One thing I noticed (testing on the 8998 MTP), enabling MDSS (not necessarily
> > HDMI, mdss and mdp is enough) results in SMMU lockups about 30% of the time..
> >
> > [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.913412] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> > [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> > [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.930647] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
> > [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> > [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.952338] msm_hdmi_phy c9a0600.hdmi-phy: supply vddio not found, using dummy regulator
> > [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> > [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.967917] msm_hdmi_phy c9a0600.hdmi-phy: supply vcca not found, using dummy regulator
> > [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> > [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.984122] Bluetooth: hci0: setting up wcn399x
> > [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>
> Interesting. I don't think I've noticed any lock-ups
> across multiple reboots.
>
> FWIW, I get similar warnings about "Fixed dependency cycle(s)" on my custom DT.
>
> [    0.055349] platform 1da4000.ufshc: Fixed dependency cycle(s) with /soc@0/phy@1da7000
> [    0.055525] platform 1da4000.ufshc: Fixed dependency cycle(s) with /soc@0/phy@1da7000
> [    0.055584] platform 1da7000.phy: Fixed dependency cycle(s) with /soc@0/ufshc@1da4000
> [    0.060279] platform c8c0000.clock-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-phy@c9a0600
> [    0.060494] platform c900000.display-subsystem: Fixed dependency cycle(s) with /soc@0/clock-controller@c8c0000
> [    0.062432] platform hdmi-out: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
> ...
> [   18.534346] adreno 5000000.gpu: Adding to iommu group 2
> [   18.540215] msm-mdss c900000.display-subsystem: Adding to iommu group 3
> [   18.544695] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> [   18.551239] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> [   18.562685] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
> [   18.574122] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
> [   18.617640] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
> [   18.618885] i2c 2-005e: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> [   18.627768] tdp158-bridge 2-005e: supply vcc not found, using dummy regulator
> [   18.636853] tdp158-bridge 2-005e: supply vdd not found, using dummy regulator
>
> It looks like some of these warnings were pre-existing,
> but some might have been added by my patches?
>
> Do they need looking into?
> I'm slightly confused.

No, that's fine. It is the SMMU issue that Konrad has been asking you
to take a look at.


-- 
With best wishes
Dmitry

