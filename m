Return-Path: <devicetree+bounces-75394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D3828906D02
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 13:57:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E037B251B6
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 11:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5708C145B06;
	Thu, 13 Jun 2024 11:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nG3ZGyzs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07AF144D10
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 11:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718279506; cv=none; b=Flf+YTDtl8PAKV5Lf8MdNi+l7rCfIoMD6GnuYOpxliTQ3ncp85quWYrcmHJNEXyu6+5WXRA6GTPxWDMde6X72JJ6KSJdvO9zklzZ7pzIOEyPVMMBgQhF9Ysimlu5FSKv6LyfpB+v030/3sh6DMpIGnw4Q3Fb2e1nFnQuMzik1Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718279506; c=relaxed/simple;
	bh=sZEKZfHubIqep01PYDDOG2DiKYyzvbmcvlOdh30m7Us=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mC7jw8f/z4LuCqUsq/WDdbIJFo//cLVpjxG7WaG6/YKT60ndy0594D7BSTdzAdcV8Rv2W8zBUzuZmWwoGMtXhAFlxUje54j8nngdjhbeTQIrBotxtevL/o0KpWVMyG+4rl6Z8W3BLy9w8x8BAgVde2/GaFcqWV5MPdCnOSRKro4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nG3ZGyzs; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-62a2424ed00so11755607b3.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 04:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718279504; x=1718884304; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YRvIRe1C8JF7J2k72Eq1IoWCS+jAa2AM8+ph/DDThXs=;
        b=nG3ZGyzs0+FGeRWMyFqTafgjocV1ZCf4AZaydmP1Gn5Aw47SfjbW9cs6LMFL9Uz4nT
         8HdsLKEc4nONPnRJ7XrCGPpNLpX5iSySpz9aFPXdO5oNWbfrHTQHaZKoBz1zCYscjoVu
         s/URdGDMaVoGA0E8+QIE2IG0MAIvVGbTC5dVdJ7mFpycHwdIn54UtMeO4SNHA8ODWoVN
         qyoKIgQl+4wXQxkwunl64Ep8/WoGjzv+12IUaZVK3JUfBskRaEtUUW9a8OPARY8mh0XF
         4fV3FsknDPTcjrifA5j3C2nQehltVk4hTM21XtcPxXc4yl6VFEHqTSKgqEHdnEgE7TOi
         5Klg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718279504; x=1718884304;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YRvIRe1C8JF7J2k72Eq1IoWCS+jAa2AM8+ph/DDThXs=;
        b=Yneor1/5xkA1AvI0r7YxulwzLsr6B6/WpxJJizq/T9WXo3p3qCyKDKRB6Hhz8/rTsg
         E0Sk/8ksdRRG9VVpnat5x+3OU5i20nP+CWvjkNkshe24jRGtH8EJu3X3zp7HRmZaFrqL
         u1K6D/DRKYF0uvCaXEx61RlZxRsikskHkiJ6ga5hmTxVK4a7Q877xba4LIvWIPCjam6k
         2vAxjf38CdS/6aW/nLyW4qntbigZIfytfUU96iEHl5jfKqXuMlwBuAPa4aHg+RM7VmLd
         WuaI5RrASnScmZWnmER7AB6H/tlsH2e40tNgjVRkYB2SdkEjIO1z/Sje8Dvt5NTeAP+q
         pqmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBYS/6BI/ArZhr9LUk1ixN09g++e7Kt94BR2sZY5lzu5iYH4luazXpJd9H3kVdWApuqRmSR4D1pIoBlXIKUPRO7kpyqdVnaXq8pQ==
X-Gm-Message-State: AOJu0YzDjiQZr33WyrL0shAuPYJ21Px+8WlSFL+ewZLOrVMl+BsMU+Gh
	JFr+UCGFSrHlgZuER1sRixkPVGmpDyqA2HM4BbiOr9YHYUAf3AIoDsRVkE74xOAa5SO6n1JV5G6
	5182I/nuUSpqqPx9QgNQfazUonJXNzZ5Y9B+2D7HP7fBa+5TbxSo=
X-Google-Smtp-Source: AGHT+IHsbTNLvjN8WuDB84rv+zysR6fpgX/dxzhUTfN9xcKd94L2FQdMlBq8iWThBr9t45yXD5czpiz8aOD25S8hU38=
X-Received: by 2002:a0d:dc84:0:b0:62a:259f:74d1 with SMTP id
 00721157ae682-62fb847d3a1mr45680067b3.5.1718279503794; Thu, 13 Jun 2024
 04:51:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240524082236.24112-1-quic_kbajaj@quicinc.com>
 <CAA8EJpp9U-ucMAiNmVvWDuupd=OR_fLK9fQ+n21SVmktWMxhmA@mail.gmail.com> <ae289c19-2701-d00f-3f6f-5e87ec37e475@quicinc.com>
In-Reply-To: <ae289c19-2701-d00f-3f6f-5e87ec37e475@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 13 Jun 2024 14:51:32 +0300
Message-ID: <CAA8EJpo4v1sfjo2nUEj0-kZ_0rrMh07s67LzhBs8POjkN2Nybg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: qdu/qru1000-idp: Fix the voltage setting
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Melody Olvera <quic_molvera@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 13 Jun 2024 at 14:43, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
>
>
> On 5/24/2024 2:59 PM, Dmitry Baryshkov wrote:
> > On Fri, 24 May 2024 at 11:23, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
> >>
> >> While adding the USB support, it was found that the configuration
> >> for regulator smps5 was incorrectly set. Upon cross verifying for
> >> all the regulators, found that smps4, smps6 and smps8 are also
> >> incorrectly configured. This patch fixes the same.
> >
> > Nit: see Documentation/process/submitting-patches.rst, "This patch..."
>
> Will update the commit message.
>
> >
> >> In particular -
> >> - smps4 is 1.574V min and 2.04V max
> >> - smps5 is 1.2V min and 1.4V max
> >> - smps6 is 0.382V min and 1.12V max
> >
> > Just for my understanding, will anything further constraint these values?
>
> As far as i know, this is going to be final.

Ack

> currently, usb device is not working without this min/max change.

-- 
With best wishes
Dmitry

