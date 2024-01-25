Return-Path: <devicetree+bounces-34847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6496883B5DF
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 01:08:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CF6E284403
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 00:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FAE47E1;
	Thu, 25 Jan 2024 00:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oOBj3rWK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76ADF7F
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 00:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706141294; cv=none; b=c/JVgSSm4UNfQE7i8o5JJSnjDFvKvuhqRQv2ArKKoU5+EGYrgr8zkRwE49hdpQYAOga1w8hBA2B/4CWvPmLwjv1f6uROq2k+pXMRdVmOfqmmOuV2Sz3b12qOAdmMYsEBMUflYpHS8NAfIl1GvBFXuZrfaWxV8GhrniVzPpB0a88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706141294; c=relaxed/simple;
	bh=sFb88MTt5iOoIb1ympSk+g+GZOjP6Q895N8Kxxce+Js=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qzYLreYoTuzoh7N8VnTIMIrGgBRBhM2pRCHXap4C8Oh+con/OubFxjbGy0QLTbhf9RqtT4un1o56feKJwnZjj1IEGpAv3tPMx8NGc9pvKbLvmwKeiIXaf6H2dJnafp+fAqiz1Vck3J75VFUcoMek7YgA2GJ/KSMd9K0L7q9PZqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oOBj3rWK; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5ffdf06e009so38164807b3.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 16:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706141290; x=1706746090; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a9zJESR6jJ2yZin+7bBkOo/7z2GEvxg+haubJzAIAaU=;
        b=oOBj3rWKXZw9LxauWR94xMecJ14XSzh31RfCLqWD5xmlQzJwnK3JNQEF9wH2bZBa0d
         cKtN/0L9D6jy1LKVThdIDcm5YjX8peJry3Ozap+gog4B9nV3ApzXilKX/qS9zD2MYbP7
         zTPX6jHjVZIfT879EyqHRefj5YycJir8KvzfyDbV/kQB2fQ/lcqG2UEmyT6NCqSF4ocy
         6n0exuCrifxZEwLgCvwOieWRQ/Sps43gQSYNbxXhOMVynA4mO3bWIiv8VCQIJt3oYqKM
         fFNI2ZE3lD5D9KAKqslaOdvyw6Z4Dv0B0f9ul5B1V1kw0tJbtMmCAz8iOyalunepbybh
         vUBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706141290; x=1706746090;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a9zJESR6jJ2yZin+7bBkOo/7z2GEvxg+haubJzAIAaU=;
        b=IMukF81q9RGji+29nwGVE5ZqXOz1zysC+A8NK3SU0m8snOeyS5Zrqf9LdPat2NsJzK
         UcuM6+ncPIW9JoxFID+noGCYrdz7NK/OyDBaWYG8K7oTLqEflr6JXVxU8lapa8FCN+wR
         x9IchlBfrExFAfRzsvKHGUcz59i1Hdmc1T90oWzpLn75O/JKux4R6cA/HFclYN8e35Xz
         Rh6oeIYZWrWm3b9JUaK8AujXXg7fmyg4INpIc8HzIl5Kl88PZpdReD0xxSdRVN0QjjOj
         tG7WF8fNV9VLoSz8WHTqBjmWNTlDEgtfcCM5PLdbRif9n0Imb6v1WgUIypQ7G0EFX53C
         5fpQ==
X-Gm-Message-State: AOJu0YzvVoVyB+4sMA6OdUgi70GqHHh7Za8xmSDKFOZtypoAsw0kiva5
	/lpW3PNM5edXEPuQJKz4oJuBDwjywv6hETTO7tx3UkmFUALNW2edR3HIAiQ9h2EOq4MmIb3deDI
	myU0m0OuDSenaU3+hfKsT0OYq3f4nI2NGjy50RZFAL6ac3e1V
X-Google-Smtp-Source: AGHT+IHyZkzZsMBMHXjFP5m3KVk6oKNR1/dMvHgS5VJzm0aLrkrbyapIDbkoVi7IoS1m2aLUZozj3hOStzfoHFNh/+8=
X-Received: by 2002:a81:840a:0:b0:5ff:4d76:e2e3 with SMTP id
 u10-20020a81840a000000b005ff4d76e2e3mr1259447ywf.63.1706141290473; Wed, 24
 Jan 2024 16:08:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org> <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
 <CAA8EJpqPqV_nHxxbo2Vzwcp__hvREjF3bhduGhM=7UpuOgBxTQ@mail.gmail.com> <ZaaRZ/xi8vyIKD5d@kuha.fi.intel.com>
In-Reply-To: <ZaaRZ/xi8vyIKD5d@kuha.fi.intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 25 Jan 2024 02:07:59 +0200
Message-ID: <CAA8EJpq3LAzrdTXtnCskc0Md1e39Yo1+AQLHmOBVfgax4HEjKw@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Jan 2024 at 16:23, Heikki Krogerus
<heikki.krogerus@linux.intel.com> wrote:
>
> On Tue, Jan 16, 2024 at 02:56:11PM +0200, Dmitry Baryshkov wrote:
> > On Tue, 16 Jan 2024 at 14:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > > On 1/13/24 21:55, Dmitry Baryshkov wrote:
> > > > The PMI632 PMIC support Type-C port handling, but lacks USB
> > > > PowerDelivery support. The TCPM requires all callbacks to be provided
> > > > by the implementation. Implement a special, 'stub' Qcom PD PHY
> > > > implementation to enable the PMI632 support.
> > > >
> > > > Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > ---
> > >
> > > Still not a fan of stubby stubs :/
> >
> > Me too. If there are better suggestions, I'll be pleased to implement
> > them. Greg, Heikki?
>
> Guenter, do you have time to look at this?

Heikki, Guenter, just a gracious ping for your opinion.
Probably another option is to read pd_supported (or all caps) before
checking the callbacks and then instrument all calls to PD with
pd_supported checks.

-- 
With best wishes
Dmitry

