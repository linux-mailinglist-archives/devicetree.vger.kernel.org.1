Return-Path: <devicetree+bounces-14234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DACA37E2F5C
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68867B20A3D
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259442EAF1;
	Mon,  6 Nov 2023 21:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GQ8+PTF3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96A95247
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:59:45 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AABC11F
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:59:44 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c514cbbe7eso70688801fa.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307982; x=1699912782; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNAdiaf7CFJFGR+XgzzaLNcE9ebdwuse14Opfb1nM5c=;
        b=GQ8+PTF3jZ6IrT/iDnXs/1g3C2S6IROQbepYQFffrl5SVcq3Z8nQTBmHMqVOCWcfPC
         eswnGP1T29DbBfSOr1K9PVUQLWkm8JuqR4Y84kTVUQH4BvZMAMQBNufOTX8cnWmiVela
         eJCIVlaxK4tHWCmuDWII3a/1gQBd6kWXYbLck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307982; x=1699912782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wNAdiaf7CFJFGR+XgzzaLNcE9ebdwuse14Opfb1nM5c=;
        b=c0vkW0eb6sPJ1ce0pFvUjQj7JFpxXMoelF6bccG0qc+mjAFOV15HAQD+L7LTVsV4dg
         Xsh0JZVMxtaiY5xYV0NRPl9PiuelCnTz54lI3aR+q7rv85+5QqeRg0ez5KPkkt14GfJl
         BWU6cyev9h9C6s2PAg47VPgywF/w9w9fpSez0HmwOSa+3/vyYEQlrIyZtedRY8vGXR7a
         qCPSZwqQUS5PmtW+b4SFr+rKTb+bfiozv5SXTEN8DZ3oT+V4fAcFZ6BA0ZY2Vgs8FWbT
         hugl3jYNwcH3Ci+rkuEMCtL48FIRs7k9UYyVYNmpMxbSObJasHggDfmoIFOxceRIZ8OA
         duxw==
X-Gm-Message-State: AOJu0YwQLCvdmGtGFm28+PjH7WqQtVnU8sr+N/+P4XMfAPumkfw9ZLRY
	Zkynl8x2OhyopqklXZ9cPZj0yMlHHB8JG3vR5fuoOOP0
X-Google-Smtp-Source: AGHT+IGAFC2A60sTl5/Fs3GmJJMgaqKHwJUFfFYPpSj5Xs1X3kR27X0F3z5qWc2k7sJnrnH4GlaMAA==
X-Received: by 2002:ac2:5449:0:b0:505:7371:ec83 with SMTP id d9-20020ac25449000000b005057371ec83mr21104045lfn.48.1699307982390;
        Mon, 06 Nov 2023 13:59:42 -0800 (PST)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id dw6-20020a0565122c8600b00507a3b0eb34sm105447lfb.264.2023.11.06.13.59.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 13:59:42 -0800 (PST)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50931d0bb04so1182e87.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:59:42 -0800 (PST)
X-Received: by 2002:a05:600c:a005:b0:408:3727:92c5 with SMTP id
 jg5-20020a05600ca00500b00408372792c5mr40609wmb.2.1699307595154; Mon, 06 Nov
 2023 13:53:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <CAE-0n50vtad5hkkAuV-hvsnm+tTevd_4OSr3iGofBa5L8A0RQw@mail.gmail.com>
In-Reply-To: <CAE-0n50vtad5hkkAuV-hvsnm+tTevd_4OSr3iGofBa5L8A0RQw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 Nov 2023 13:52:58 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UJE6VKrjFJ2g=4qRHLdnqymossWSAFeKyUykxm1sTCtQ@mail.gmail.com>
Message-ID: <CAD=FV=UJE6VKrjFJ2g=4qRHLdnqymossWSAFeKyUykxm1sTCtQ@mail.gmail.com>
Subject: Re: [PATCH 1/9] arm64: dts: qcom: sc7180: Make watchdog bark
 interrupt edge triggered
To: Stephen Boyd <swboyd@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Guenter Roeck <linux@roeck-us.net>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-watchdog@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Andy Gross <agross@kernel.org>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, Kees Cook <keescook@chromium.org>, 
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>, Tony Luck <tony.luck@intel.com>, 
	cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 6, 2023 at 1:49=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> w=
rote:
>
> Quoting Douglas Anderson (2023-11-03 16:34:27)
> > On sc7180 when the watchdog timer fires your logs get filled with:
> >   watchdog0: pretimeout event
> >   watchdog0: pretimeout event
> >   watchdog0: pretimeout event
> >   ...
> >   watchdog0: pretimeout event
> >
> > If you're using console-ramoops to debug crashes the above gets quite
> > annoying since it blows away any other log messages that might have
> > been there.
> >
> > The issue is that the "bark" interrupt (AKA the "pretimeout"
> > interrupt) remains high until the watchdog is pet. Since we've got
> > things configured as "level" triggered we'll keep getting interrupted
> > over and over.
> >
> > Let's switch to edge triggered. Now we'll get one interrupt when the
> > "bark" interrupt goes off we'll get one interrupt and won't get
>
> "We'll get one" twice?

I like to make like to make typos. If you hadn't hadn't noticed.

I'll wait another few days and send a version with the typo fixed
unless Bjorn tells me not to (because he didn't care and applied it
anyway or because he fixed it himself while applying).


> > another one until the "bark" interrupt is cleared and asserts again.
> >
> > This matches how many older Qualcomm SoCs have things configured.
> >
> > Fixes: 28cc13e4060c ("arm64: dts: qcom: sc7180: Add watchdog bark inter=
rupt")
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Thanks!

-Doug

