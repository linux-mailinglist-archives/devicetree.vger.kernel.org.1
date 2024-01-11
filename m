Return-Path: <devicetree+bounces-31364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2BA82AEE5
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 13:44:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9885284B73
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 12:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECE7215ADB;
	Thu, 11 Jan 2024 12:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bOBVrCdl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D50915AC2
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 12:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1d4414ec9c7so26898015ad.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 04:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704977085; x=1705581885; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eHXpAer/Gbig3Qxr3W1gRcOiFSXPy6mJpjllrKqt6cY=;
        b=bOBVrCdlgt155OEeuM1XWe3aCK4Mdm9DJQSn3MYhokrCQGAo0/OmTWZVfLh5GFf7JC
         5bWyAnjA9cEfph8yBmO/xB8AwBS63I7MH4+WAlJJMH1GsjcaHQ779fWl01/EwGerV0dE
         FzAsZBjlR9n6MdfBwhkZ6yXoPhGPi8u9ZVtysQqefrWNn+4+PwTCeElAJBhG/GGXV/v8
         +lFX7mIWZx162tp3f/JsSDGA/PL4oghgWQemoD4jpDIa89QgzmgyyOQbK1Z+YmtzrOSO
         Yxl+pk7Mfl7jPVuiWizFCabZPoDGkWMT9ocKbKn5xFZS8eH8Qb+OXMIESMM3KJ8C9waG
         Zl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704977085; x=1705581885;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eHXpAer/Gbig3Qxr3W1gRcOiFSXPy6mJpjllrKqt6cY=;
        b=CVNJTGvTqS4X4Dr/SugD+8HV/T2GekxIjL0Bo050Kms5xZbeidpxcfOU8uz4WfCQ6L
         JrUKP8ibQRcMgNX4Q8esUEPTzT97QpsfqU47T4deaLlxOtOE0HDyoBfWV3R4KOzLvSsV
         ILinUEgbZVbQOQ/NA/msm4ylJhAyVkKHQLJapD4RMQLodsHH03JhvaMSgb5J89WFb7xu
         hjiUE52f3EHFiuJ9se7VsSE8EqQADlIj0XnF2UIm7RMtRtjh6REWa9R5qbh0eR2hhRnq
         K+1JeTWIHwr7kb1+riRsSQGlQS9BNuDffWxokDUEB2/m8Le+lg9Bss9xmwelsr4hezCQ
         UcFA==
X-Gm-Message-State: AOJu0YzLnCBF4gy1TxQXBpoe30x4iDt4GCEEjL10kcolsSg0rckfnCdh
	22GfdWMEIFkX/PKpN5DMNEJbNQg8jRaehWFIwc55BtT7dg==
X-Google-Smtp-Source: AGHT+IExsnY3r4rVK9uZ6AR+v3mI5VvQPQzDhaELlQG9P7CD6D+Fth/VaxdWKjyVXot9sI6vo5cVmQ==
X-Received: by 2002:a17:902:e844:b0:1d4:7685:90df with SMTP id t4-20020a170902e84400b001d4768590dfmr1191091plg.31.1704977084814;
        Thu, 11 Jan 2024 04:44:44 -0800 (PST)
Received: from thinkpad ([202.131.159.18])
        by smtp.gmail.com with ESMTPSA id j11-20020a170902690b00b001d3c27e00f2sm1072950plk.284.2024.01.11.04.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 04:44:43 -0800 (PST)
Date: Thu, 11 Jan 2024 18:14:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qrb2210-rb1: disable cluster power
 domains
Message-ID: <20240111124439.GB3003@thinkpad>
References: <20240111-qrb2210-rb1-no-cluster-idle-v1-1-cec14ec15b02@linaro.org>
 <20240111044508.GA3761@thinkpad>
 <CAA8EJpp+i58Z_QN4L1NRXoEcoRJNNu3S3JqeYgFP7LY-GBDP0w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAA8EJpp+i58Z_QN4L1NRXoEcoRJNNu3S3JqeYgFP7LY-GBDP0w@mail.gmail.com>

On Thu, Jan 11, 2024 at 08:02:32AM +0200, Dmitry Baryshkov wrote:
> On Thu, 11 Jan 2024 at 06:45, Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > On Thu, Jan 11, 2024 at 04:01:14AM +0200, Dmitry Baryshkov wrote:
> > > If cluster domain idle state is enabled on the RB1, the board becomes
> > > significantly less responsive. Under certain circumstances (if some of
> > > the devices are disabled in kernel config) the board can even lock up.
> > >
> > > It seems this is caused by the MPM not being pinged during CPU idle (in
> > > the same way the RPMh is pinged when cluster idle is entered).
> > >
> >
> > What does "ping" mean here? Please be more specific.
> 
> See rpmh_rsc_pd_callback(), rpmh_flush() and rpmh_rsc_write_next_wakeup().
> 
> RPMh driver (among other things) on entering the idle writes the next
> wake up time to the RPMh. The MPM driver in the vendor kernel does the
> same, see msm_mpm_timer_write() in msm-4.19
> 

Okay, thanks for the explanation. It'd be good if you have mentioned this in the
commit message as it is not obvious for one to understand what "ping" means.

- Mani

> >
> > - Mani
> >
> > > Disable cluster domain idle for the RB1 board until MPM driver is fixed
> > > to cooperate with the CPU idle states.
> > >
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 18 ++++++++++++++++++
> > >  1 file changed, 18 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> > > index aa53b6af6d9c..9a0308ef8b0f 100644
> > > --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> > > @@ -177,6 +177,24 @@ vph_pwr: regulator-vph-pwr {
> > >       };
> > >  };
> > >
> > > +&CPU_PD0 {
> > > +     /delete-property/ power-domains;
> > > +};
> > > +
> > > +&CPU_PD1 {
> > > +     /delete-property/ power-domains;
> > > +};
> > > +
> > > +&CPU_PD2 {
> > > +     /delete-property/ power-domains;
> > > +};
> > > +
> > > +&CPU_PD3 {
> > > +     /delete-property/ power-domains;
> > > +};
> > > +
> > > +/delete-node/ &CLUSTER_PD;
> > > +
> > >  &gpi_dma0 {
> > >       status = "okay";
> > >  };
> > >
> > > ---
> > > base-commit: 39676dfe52331dba909c617f213fdb21015c8d10
> > > change-id: 20240111-qrb2210-rb1-no-cluster-idle-7bf43b3a0452
> > >
> > > Best regards,
> > > --
> > > Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > >
> > >
> >
> > --
> > மணிவண்ணன் சதாசிவம்
> 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
மணிவண்ணன் சதாசிவம்

