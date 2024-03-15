Return-Path: <devicetree+bounces-50790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E86987D286
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 18:12:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0F202B23838
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 17:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554E845C1C;
	Fri, 15 Mar 2024 17:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gPEZYIRn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3B13DBBC
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 17:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710522755; cv=none; b=oxDuH8GpswtbLtss/WQp70lOKRTOYsaKL6q3NTFbwm6BBOQpvMNH7H40KdBJ9dQRfKZQ9i0Ozz6pofk5UIglvYZ9PrwW/zlxqfJEUNpuxiNEC9CKA50DSJCAczTIi9jb2bvC+A2sOa/saVyOYjGcu2PcqGVmrUU5eKP3QMEcNpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710522755; c=relaxed/simple;
	bh=kWzlo4AaZeWtEkzCy8TJZmtsYDqVVCm/XwSPAebW3DI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DEqnblwugt/GmqB/szBEZYl6Lh5nzKPFJRA0+fIavpv5dOEwbDXTcDh5Ow+1J3hvrTmolgGzeoBRO71uOmcpHswRhieo5s96KRGkNjVz5hkybCjPtIGhnuDgOzbcnxSn3Ic3/WYTXdaTd+4AM0V8NmHNS4CKGegK8V94eNbE+q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gPEZYIRn; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-42f2d02fbdeso11252211cf.1
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 10:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710522750; x=1711127550; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YBgzsheMyMt2wDXPPT0VYLjrPGEmgjQ97XLNs9yUYLg=;
        b=gPEZYIRn5TOzx0CD9MhYMJE8IegTBXts89PPitzmyLGrdBw75k3GCrAzWUGDbcNl8Q
         B8hQLWkxemwXLOOcU8SfGLnzXI3KlCe5CUUcVMGE8cMvskTEkEJRNCLPMKZSTqOtMgRc
         scBeMdTNyeGA6jWvK7rI/aQCeIEXtzS4emclA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710522750; x=1711127550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YBgzsheMyMt2wDXPPT0VYLjrPGEmgjQ97XLNs9yUYLg=;
        b=HCUtCZ3YH994hC2uJNyfVHlMr4C7dvyBDbKzbPfvqUCcSdzWe4I98II9NRtaTjpbAj
         J7VcXy7bTaBlAQPC8Y47QWhCLeZPQrOPL46GngmSLNIf9vHg73RbJTgg88IsoQS3KI3w
         fGP1auhsdRlkaMCU0bhSR17GkRxG3bVS3MVr+jrx23cJkKmHGJgfa08ZeUWk8O6l6X3G
         EHv3guDDWxpd52AWqtcc+9pRfB8JzaLSq3uPfsYcCHckhZs9xEjFF28miJzMu4csTlY4
         FOrGp0OGh5OVjG/BHQ9j2rCXIiDi+g+NmUat836/M7qzhFCou/eMeqZYHzOg7TnpCDBA
         TtKA==
X-Forwarded-Encrypted: i=1; AJvYcCUeP5hxcJGgTzbqGBlD7DLuPb269MV51H2l+uVwD//WR6IDdSdthg1Sf7VGEI8a7D3DvTUqBr/lEdZn2T8ia4I3nrIE1GYqNtQsVw==
X-Gm-Message-State: AOJu0YyrkTAyGHovrRZQ9XXwiqx2qczbPm2jsu/rmbkkLJzFz0AT+q20
	+ALa8ehSRPq7xrwH+XI1+nCQ+r3+eneia/oHqE50Rn8DOP7/mPvn5OZX/PjpOtNwm9ItuBZXEhM
	=
X-Google-Smtp-Source: AGHT+IE/w8YJq1jzq7pc44vC2pF09CxRi2caPR+L5Z3S1YKMsyxljIcNSTqIP/LizU/dyu/X17ZsKw==
X-Received: by 2002:ac8:5a8c:0:b0:430:a20d:213 with SMTP id c12-20020ac85a8c000000b00430a20d0213mr5544948qtc.62.1710522749726;
        Fri, 15 Mar 2024 10:12:29 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id j1-20020ac84401000000b0042f376886d2sm2144798qtn.36.2024.03.15.10.12.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 10:12:29 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-428405a0205so7741cf.1
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 10:12:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVSicDUNEdTxBRS+Y8amUjWb8t+As+Uw93dGtF14c68Iv36Z3bVaoD7RQ4icOVB+BiQQb0GHHzsdMGXyNfKcRaueh88cwF8N8JlZQ==
X-Received: by 2002:a05:622a:1706:b0:42f:a3c:2d53 with SMTP id
 h6-20020a05622a170600b0042f0a3c2d53mr822108qtk.20.1710522747755; Fri, 15 Mar
 2024 10:12:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230703085555.30285-1-quic_mkshah@quicinc.com>
 <20230703085555.30285-4-quic_mkshah@quicinc.com> <CAD=FV=XWH+Eoa9XjDns--NSDTZHeUwTdrX_r_QZhSPpbZNwz+w@mail.gmail.com>
 <20240315152431.sckqhc6ri63blf2g@bogus>
In-Reply-To: <20240315152431.sckqhc6ri63blf2g@bogus>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 15 Mar 2024 10:12:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UD1nuxryvWH=Mi7E+QzMoa7xCHebY0DtZCAVmEW3ZeAg@mail.gmail.com>
Message-ID: <CAD=FV=UD1nuxryvWH=Mi7E+QzMoa7xCHebY0DtZCAVmEW3ZeAg@mail.gmail.com>
Subject: Re: [RESEND v4 3/3] arm64: dts: qcom: sc7280: Add power-domains for
 cpuidle states
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Maulik Shah <quic_mkshah@quicinc.com>, andersson@kernel.org, ulf.hansson@linaro.org, 
	swboyd@chromium.org, wingers@google.com, daniel.lezcano@linaro.org, 
	rafael@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, jwerner@chromium.org, 
	quic_lsrao@quicinc.com, quic_rjendra@quicinc.com, devicetree@vger.kernel.org, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Clark <robdclark@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 15, 2024 at 8:24=E2=80=AFAM Sudeep Holla <sudeep.holla@arm.com>=
 wrote:
>
> On Thu, Mar 14, 2024 at 04:20:59PM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Jul 3, 2023 at 1:56=E2=80=AFAM Maulik Shah <quic_mkshah@quicinc=
.com> wrote:
> > >
> > > Add power-domains for cpuidle states to use psci os-initiated idle st=
ates.
> > >
> > > Cc: devicetree@vger.kernel.org
> > > Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > Signed-off-by: Maulik Shah <quic_mkshah@quicinc.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 98 +++++++++++++++++++++-----=
--
> > >  1 file changed, 73 insertions(+), 25 deletions(-)
> >
> > FWIW, I dug up an old sc7280-herobrine board to test some other change
> > and found it no longer booted. :( I bisected it and this is the change
> > that breaks it. Specifically, I can make mainline boot with:
> >
> > git revert --no-edit db5d137e81bc # arm64: dts: qcom: sc7280: Update
> > domain-idle-states for cluster sleep
> > git revert --no-edit 7925ca85e956 # arm64: dts: qcom: sc7280: Add
> > power-domains for cpuidle states
> >
>
> IIRC, this could be issue with psci firmware. There were some known
> issues which were discussed few years back but I am not aware of the
> details and if/how it is applicable here.
>
> Not sure if you are getting any logs during the boot, if you do have
> worth look at logs related to PSCI/OSI/Idle/...

Given that the new firmware fixes it I'm going to say it's not worth
looking into any longer.

-Doug

