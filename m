Return-Path: <devicetree+bounces-54075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD4988F873
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 08:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15932294447
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 07:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 501BF50A80;
	Thu, 28 Mar 2024 07:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VYVaxlFb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978662C856
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 07:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711610279; cv=none; b=h7Ac4wIJKDX+2l2K1IICm6Sf0qZDdNmXURh6hukgWgWi/2Ck5E3oVXOvDT/W9FAxiu4fZnsDzFBFPEq1OcXJwzkGbTrUvm80fyysxzpU6wbNLyJyv5+egPNXoxrlkoB34Bc8hwxuA91DLAe0L5gTlVnYjEruuFg3loE4p/OXXzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711610279; c=relaxed/simple;
	bh=e3TsQW5CY+DiFJrBUgx3tqgW0jRYzt0+Fwa8TDWMo50=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ss88EFy73ZS+3vQs0NfhNrYYIuUB0nPHJh3FSurpH3Bc+hB06XYY+YXbvENSfS1ZK0EtEyK/JY0eir/yb7MLYGz4b+DUkT3P2fnzVov/YhnktgV5wbkwrB2ArDprXd/pqkP5qgS+ingXrEcnfbDgF9/Rm3bD9UI+UDMyt3V4MDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VYVaxlFb; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso597156276.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 00:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711610276; x=1712215076; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6ihW+00hHUH2XZI6tZKebUjXbUcr4a+DW8yDOiac6M4=;
        b=VYVaxlFblLvWF1hleSptMIwbPIwY7o/rc4bHGu8RB/E713yfdlV4dEP2WMlxvvswj2
         B/GjqKAyBahBqu9KJT+P9MxSLNuVn3Y4wpyaaVfvNSRVVtT7WGygk74Cy+oMYKTWtiTv
         qD2OqZmF/WvmWY5cx/OnmO1dJVVCPK2OqdeN9sE6NWV1QXLTS2u8Sfh++IsS4UkQm89p
         Qlqm4x3zoHgExB6AYG8+rin6r6MqTX2YPhWTZnFd69p670rqQENKZh4cYRPN0c4SVS6o
         LB00KViCYDSY2a/dLXPnix2DDqDdLoobxtG+znPD/eUMEUEbUPim61xWi57MVTCs4ix3
         2ojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711610276; x=1712215076;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ihW+00hHUH2XZI6tZKebUjXbUcr4a+DW8yDOiac6M4=;
        b=Zk6646c/bcQU6qFsQfLyz1cSeXCaygQf97wPLKpbMLVJiI8he/gMTaEBfoXcjp5/pd
         Y6jRrpne+HLQpGwJQRiYACI46O9qTdlXxL3mH8tMWxpyimoWRXDczeU6uqEO4v5xdwNl
         u+0pGaHI8ozPrZ1bP9dhyQIPbMNrRPqkGkuS+Cjc26YO1pnku3GyiLrtMEbIEk0Ayifa
         q3ZNcXkT5q2oOdZ+kyz+pL1Yg4MMmXt3d6VH4Y0ojoUv6VucM7f2GXo3p8/w5TwArMur
         GUPTqaM4D/Hop29kmn3wo4njz9a3zVHpVx27mw3ltjzXqPrBXkE4m8jZ2TNjZyqQSRcQ
         qVIw==
X-Forwarded-Encrypted: i=1; AJvYcCWRgZMSMplQObo2JXeg8Ve3biZBpw4GS9Ajxb9vPvxi0K+S8mtO46fpQGs4gpvYopkS+1VpIx7azdnWvOf20KzNI5IVyhBa4/D/Hg==
X-Gm-Message-State: AOJu0YzEmSFj2lZukhG+8vn4T3wbh1Rr79aVhuy81Bfw7lt1Zq463orK
	bq5B9xsZGtFnyD8oOPQul0gZJXA5RdkEeLopZKDxkS9iwC6N1DXW4tDtuRv2reuWDLNdWGh9Nvb
	ensZJEJ5Zp2MTE737jeMWbLdPOEsVQoHXLzzXTg==
X-Google-Smtp-Source: AGHT+IEh7ltdvjmqokZX1mqaVmTxtOfiE1W0lZY/2IXhSyRr8yXSFfBb7Z2USzLFbbSRnmfNcqF7FjfSn9MSZjkmb5M=
X-Received: by 2002:a25:3109:0:b0:dc6:d093:8622 with SMTP id
 x9-20020a253109000000b00dc6d0938622mr1819201ybx.15.1711610276654; Thu, 28 Mar
 2024 00:17:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326-rb3gen2-dp-connector-v2-0-a9f1bc32ecaf@quicinc.com>
 <20240326-rb3gen2-dp-connector-v2-2-a9f1bc32ecaf@quicinc.com>
 <CAA8EJpoe7A94608V1GdQ-oU9UXagHPm0mVBUe4Yxi=HF2pMd7w@mail.gmail.com> <zsjzysb7h3wi3cfpaozl46l4jnsd7e3lxttzm5vptozjx24cqo@vqmyhl65q7ay>
In-Reply-To: <zsjzysb7h3wi3cfpaozl46l4jnsd7e3lxttzm5vptozjx24cqo@vqmyhl65q7ay>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 28 Mar 2024 09:17:45 +0200
Message-ID: <CAA8EJppCuoOnaB03GsjXGYSs5Q9iQ2uXHWQqfkPA5jKzdHc8NQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: qcs6490-rb3gen2: Add DP output
To: Bjorn Andersson <andersson@kernel.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Mar 2024 at 05:07, Bjorn Andersson <andersson@kernel.org> wrote:
>
> On Thu, Mar 28, 2024 at 03:51:54AM +0200, Dmitry Baryshkov wrote:
> > On Wed, 27 Mar 2024 at 04:04, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> > >
> > > The RB3Gen2 board comes with a mini DP connector, describe this, enable
> > > MDSS, DP controller and the PHY that drives this.
> > >
> > > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 40 ++++++++++++++++++++++++++++
> > >  1 file changed, 40 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > index 63ebe0774f1d..f90bf3518e98 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > @@ -39,6 +39,20 @@ chosen {
> > >                 stdout-path = "serial0:115200n8";
> > >         };
> > >
> > > +       dp-connector {
> > > +               compatible = "dp-connector";
> > > +               label = "DP";
> > > +               type = "mini";
> > > +
> > > +               hpd-gpios = <&tlmm 60 GPIO_ACTIVE_HIGH>;
> >
> > Is it the standard hpd gpio? If so, is there any reason for using it
> > through dp-connector rather than as a native HPD signal?
> >
>
> I added it because you asked for it. That said, I do like having it
> clearly defined in the devicetree.

I asked for the dp-connector device, not for the HPD function change.


-- 
With best wishes
Dmitry

