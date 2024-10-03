Return-Path: <devicetree+bounces-107530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E0D98EE4E
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 13:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFF88283196
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 11:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25862155757;
	Thu,  3 Oct 2024 11:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="m1K/TLI9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704551552ED
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 11:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727955530; cv=none; b=ckk4jTo7+Fd4CD4gWdFEbHZ3cWwN9NZLG4vkU6ASvcdPumzfPqZtcfS56pI1I5w5N0KdVJp2GSTHCFzmP8TFQd9hT2g/Ha5MBHffIw2Y7a4wCXM/Ee5TxniwhX9Mam5+ipAriw1NOHixNdul1xSNiJC39K6NX9sgQSa2f59pLw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727955530; c=relaxed/simple;
	bh=g6EvByoZPG/MdDyUnJMG5QMQON5GyIySoBJxBHHh9uA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HWV/CE3pn2m7huUcOUhz0YtQgK9ASa4hHUJffWsuGGlhV+rCa5lbXFJRlZVTw7QMP0X5loKr0ej1gAWLQY8510RLGhysASUdL70/nGXI+SFL7xlcdLDQBl+NIHyoT6rbeNm+cr0WlBN28zf5OV2V+mm7I56wckPWuOKOUYHRzds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=m1K/TLI9; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-537a399e06dso956489e87.1
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 04:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1727955526; x=1728560326; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ial+kNUxVlagTAh5OXNTJXCmDuirvWQeTBwxkbQ8bdw=;
        b=m1K/TLI9L+JdlMuAGbyh89sUHSfVMOyOtwjRoB8aBJflvh6RdqrZC5XL6uxd/Uja06
         CmVFDaJNKBVp1tDnyhdcwQiBu455Ld5oVTKRp9NAnPslp2XoquKnvvmHVfXlnHWqslFD
         BqiVMUde2qy5rONXv5FtX4WwCn2L/g83xeP8/F9N1cVbuHqvlSg9RmnDEsYl8ldvlftA
         2PFceWgPWpX74oYs5q+RBFIAm9696r75IjVMwrnD1zT5eb4hD35eM2JqtALL7RS74v33
         I9jLVz3dAdRMxdptIrqe5bdF97V24Xz4GL7OXUXypQjlUlXSpebK6OyLg/blHJp65alS
         AODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727955526; x=1728560326;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ial+kNUxVlagTAh5OXNTJXCmDuirvWQeTBwxkbQ8bdw=;
        b=l7Y+zTfSoM5Wo392D4ftMedliGkvPZyFdHJ/rNP0d3NU3qWGKpEU+tpd4rm1t2RA0b
         FLGwmT17ajckCiK4ZDafIQPOQm/H6Rm9XbQRy5zSe/hDQmFe4A3x+twt4X4Rj3T4fojW
         xS8q6zEzeymLE8IaNBIl7XmiCqqF/TFpoVykaeCbBXek2mHQRU8eBlb5UTtLSRucDg9u
         XYA6KdfVscV4y1i2bY2F9YZgRQougsAEgYmh8LvnLToG8iOGBRGrPEvf1jXtL3dHCK4y
         AOoCUV4Oh+vlgH1bbg/xoG7TL/EpcMnU4xolten7sVfGQZqeIQkK2H4CXrWcz5momRVH
         7+cA==
X-Forwarded-Encrypted: i=1; AJvYcCUyM1gE2NX9m6lJlKrh2J+j7hqOYWTCoDFHjnZCSuuSosYDulQlfxCzYDHtkaZhm9oZb0Iuoc7DDuae@vger.kernel.org
X-Gm-Message-State: AOJu0YydPt9vODAZY+58wRg07K6uxOhm7qWANrZ9Sg41l+iWews/Yz99
	z0Jfpid5pvY4zM5C4ldkoIeoyTtHX9peZIplByTJzxgTmM1ZMCKRXcag2c62K7kjFtHyq2WJTwu
	/ttPlNr8e0d2gIr7XMqu3NNrRWpy8qbKf8sD3TA==
X-Google-Smtp-Source: AGHT+IG2QJvSQ9kJ0Om0FLnVDouU3+iqMLBkxIekUgOC4DtsH1W6E4j1MFhH/9hsel0xtvam5zeR+i8StX9Pud2sywI=
X-Received: by 2002:a05:6512:2312:b0:533:cf5a:eb32 with SMTP id
 2adb3069b0e04-539a066595dmr4032156e87.19.1727955525941; Thu, 03 Oct 2024
 04:38:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240930103041.49229-1-brgl@bgdev.pl> <20240930103041.49229-4-brgl@bgdev.pl>
 <Zv565olMDDGHyYVt@hovoldconsulting.com>
In-Reply-To: <Zv565olMDDGHyYVt@hovoldconsulting.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 3 Oct 2024 13:38:35 +0200
Message-ID: <CAMRc=Mc9jMe=hSXmcRLLX61abUjetCRZVeOK3G31vdx5JQNNMQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sc8280xp-x13s: model the PMU of
 the on-board wcn6855
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kalle Valo <kvalo@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 3, 2024 at 1:07=E2=80=AFPM Johan Hovold <johan@kernel.org> wrot=
e:
>
> On Mon, Sep 30, 2024 at 12:30:39PM +0200, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add a node for the PMU of the WCN6855 and rework the inputs of the wifi
> > and bluetooth nodes to consume the PMU's outputs.
> >
> > With this we can drop the regulator-always-on properties from vreg_s11b
> > and vreg_s12b as they will now be enabled by the power sequencing
> > driver.
> >
> > Tested-by: Steev Klimaszewski <steev@kali.org> # Thinkpad X13s
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Without this patch I'm seeing an indefinite probe deferral with
> 6.12-rc1:
>
>         platform 1c00000.pcie:pcie@0:wifi@0: deferred probe pending: pci-=
pwrctl-pwrseq: Failed to get the power sequencer
>
> Can you please look into that and make sure that the existing DT
> continues to work without such warnings.
>

Ah, dammit, I missed the fact that X13s already has this node defined
so PCI pwrctl will consume it and try to get the power sequencer
handle. I'm wondering how to tackle it though... It will most likely
require some kind of a driver quirk where we check if we have the PMU
node and if not, then don't try to set up power sequencing. Any other
ideas?

> > -
> > -             enable-gpios =3D <&tlmm 133 GPIO_ACTIVE_HIGH>;
> > -             swctrl-gpios =3D <&tlmm 132 GPIO_ACTIVE_HIGH>;
>
> What about swctrl? You're just removing this pin from DT now without any
> comment on why you think that is the right thing to do.
>
> Should this one also be an input to the PMU block?
>

I recently added it to the bindings as an optional property. It's
technically an output of the PMU to the host indicating the state of
the clock supply to the BT module. We're not really using it but I can
keep it here if you prefer.

Bart

