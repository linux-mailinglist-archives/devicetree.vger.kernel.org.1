Return-Path: <devicetree+bounces-69764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7833E8D16D6
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 11:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8DDD1C22A55
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 09:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F5FC13D2A2;
	Tue, 28 May 2024 09:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KMNAqXR6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EB34F1F2
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 09:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716887104; cv=none; b=GTWBMY11IWgXdY+PK1xrBRaOszPTC3OmecNJCL6sGkvVn8sSoLVHAbIxw5uzNwycKeevO7HylQ3f0oVXgOfcLZWTPLQ/baqmwqYuYB74jXbTgD0AkKQst/j4zA/clScgcWg7ypnSxxvvC5h0QfgaTe6d0U18gQTTiMytERvySWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716887104; c=relaxed/simple;
	bh=ou2nPJXswciglO/60bjGMxpgyoL9GXfxVJshaAaHVbs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Oes7P3OUV/VnLzHB3o2PkJLu6G/JYA9DZbSKoFUVg2VGBBcleRlty2CmBauzE+teAPw4s4sEBYrH8g7n6YkakMYfPE7pRq/occFJCcm3ORKtL+UqzUNf+cm/U+z22DQvih5W3boKmqjcJY4V/zLcCpMudMS2k00FfGNHkDV27S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KMNAqXR6; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-df7713445d3so608739276.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 02:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716887102; x=1717491902; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qco2VkcgOsBroVWxxvK7SBMAfuOUTvOxLPV6N/M2lx4=;
        b=KMNAqXR6zlVTmFJoyBc2DiD7ZWr95zJ8meUxC6z6g0c5X9lYW7uojWtt4T/Z+Z9VT4
         oLKGNWtuBYNEzjkrxkts8emrWphYMwrDrsPCgTcau3kTyGTHShG5HDehDakBLYflV8CF
         YIRjuCyCLWpeBym4IY7AHP6DjgdIJg7myhRdvjOBadtg0Hx5fonRRAxxrIdLztSIh1mG
         uqtpnN3r4QCQmjMkJgZvAeVrhF8zk015ZjM3M94ipotGfAXymB5Nkcn7mr8cBykDmDqb
         gJjkH4tl/B21r/sdKjBx02vNwuiBJiSqw6W1eVlQZBMx6TYVtVfBPlJ2igOy4TSNne5n
         aQRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716887102; x=1717491902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qco2VkcgOsBroVWxxvK7SBMAfuOUTvOxLPV6N/M2lx4=;
        b=Q3kTzdmdYq6lT6/PLaBJNdl+klJ5xf0jJ+wgJoUjjh5UBORWEkFj3o6ai2ToU8OPuM
         sYafil7XKcw3ZNFBUhDbH3ZWC4kgNMeOUC9o+oBUilb2HwiHp/8uq5iFJQJeXaN0D7nl
         V2sLCuBLutVZwJHn/nem1IDXwl/DPwN7+gwMs2qqola9lS9NuxOH1AYYuX7KPH606eJU
         5d+lrRuKymt3bfJmmRVLCUpKaWIKWk2918ZQ4Ib3sUcJteRUtruRIHKoEN1iy8Sf816q
         qeZilJi/qAOYzlVf5IPWtmMvSTMXtUxPXkGsbbTH0e8F45dPRDNc/KgAn4Cxf8tJ+94X
         kllw==
X-Forwarded-Encrypted: i=1; AJvYcCXBm6sDVWT9HdUZJo/DYORl4NnP7cUZ3uoA3tc2repg0/QqJZQEXt7gxTnfmuenHecdp2Ikg/VZ4lpQVn17+4bzMMMvsyqt5SRbqg==
X-Gm-Message-State: AOJu0YzH8g7m06G9Xt8wwuSgox5Nl8629R580oXo9/bs/DacSQ84kJsi
	HYIFqudkvEPb7ygavSCzgP0yWhVgHtopUtijzhm0F1Lp7JjZsd2Wzl036KcRuMsD3bSpRZSpvn8
	+ZqKVFuqv2BiuUXrbsdx2YYl0eeHV+V+IX7fPtg==
X-Google-Smtp-Source: AGHT+IGNRUmYq16dA3M+ILETjfBKif7DHc9kvKF75lKaPWdpO1n294Imuj/CoPWaZS6n4gDEYE+TkgvaatUZy6PTcwQ=
X-Received: by 2002:a25:908:0:b0:df7:8fdd:1ca9 with SMTP id
 3f1490d57ef6-df78fdd289amr7264958276.1.1716887101840; Tue, 28 May 2024
 02:05:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527-yoga-ec-driver-v3-0-327a9851dad5@linaro.org>
 <20240527-yoga-ec-driver-v3-4-327a9851dad5@linaro.org> <ceb1f7b3-2787-4166-846f-2427b44b3e62@suse.com>
 <vc5nd5dl4czkuxzikazn7ndy6wghlchqsrcgxf7n5w53w3o3m2@spyfgp5pwy4y> <9a0073a0-d598-4c1a-bb32-328d0a279152@suse.com>
In-Reply-To: <9a0073a0-d598-4c1a-bb32-328d0a279152@suse.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 28 May 2024 12:04:50 +0300
Message-ID: <CAA8EJpoYq-MKyMkWfWFSjJq6=3ZRC02k=4oQaqtcp73hQTZZEw@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] power: supply: lenovo_yoga_c630_battery: add
 Lenovo C630 driver
To: Oliver Neukum <oneukum@suse.com>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Hans de Goede <hdegoede@redhat.com>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Nikita Travkin <nikita@trvn.ru>
Content-Type: text/plain; charset="UTF-8"

On Tue, 28 May 2024 at 11:43, Oliver Neukum <oneukum@suse.com> wrote:
>
> On 28.05.24 01:15, Dmitry Baryshkov wrote:
> > On Mon, May 27, 2024 at 02:26:36PM +0200, Oliver Neukum wrote:
> >> On 27.05.24 12:03, Dmitry Baryshkov wrote:
>
> Hi,
>
> >>> +struct yoga_c630_psy {
> >>> +   struct yoga_c630_ec *ec;
> >>> +   struct device *dev;
> >>> +   struct device_node *of_node;
> >>> +   struct notifier_block nb;
> >>> +   struct mutex lock;
> >>> +
> >>> +   struct power_supply *adp_psy;
> >>> +   struct power_supply *bat_psy;
> >>> +
> >>> +   unsigned long last_status_update;
> >>> +
> >>> +   bool adapter_online;
> >>> +
> >>> +   bool unit_mA;
> >>> +
> >>> +   unsigned int scale;
> >>
> >> why do you store unit_mA and scale? This looks redundant and like a source
> >> of confusion to me.
> >
> > Here we just followed the AML code in ACPI tables. The unit_mA is a
> > returned from the_BIX method, the 'scale' is used internally in the DSDT.
> > If you think that it's better, I can change all '* scale * 1000' to
> > 'if unit_mA then foo = bar * 10000 else foo = bar * 1000'.
>
> I think that would indeed be better. Implementation details of the DSDT
> should not dictate data structures in a kernel driver.

Ack.

>
>         Regards
>                 Oliver
>


-- 
With best wishes
Dmitry

