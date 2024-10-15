Return-Path: <devicetree+bounces-111557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AD299F493
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 19:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4AA01F23F67
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751F11FAF0C;
	Tue, 15 Oct 2024 17:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ge+GnYMt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA851FAEF4
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 17:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729015144; cv=none; b=XasflAqtQwc134ki2FWSzrJ+7+v6elPCC9++AYH2q/m+aoI7ttBf9tY1EkvmVchrK8KaHkHY7UoRfkPNHUM6aRf+cnp5sQm1juj0woSLIv5yWFibitdNLAv76nmFZA0C8/MIkVIFcmLWXWQ6nN1hp65J9FmE49NRV7P+DZb47eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729015144; c=relaxed/simple;
	bh=d+ea8ccZvUXgrS7wSLnvXQm/IOSNZR9uPNXAF5KAZsk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tU+Wn7ogL9hi1QcWMo44kZues79umy0D7jERWe9R+68uX5GuvNhItj70AQLpwW2XM7TmO2FXSDyG9o+dXUAPSH/UY5W6oUvyHLdYV9xYlkcqqmSXGEINAqhWeMKDBm8IwS8mGhE+NrYlApdi1WD2sdOOQXWHHH+K1qofAavwBi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ge+GnYMt; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539f58c68c5so4297936e87.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 10:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729015139; x=1729619939; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d+ea8ccZvUXgrS7wSLnvXQm/IOSNZR9uPNXAF5KAZsk=;
        b=Ge+GnYMtQ1ZqjL1GJtDqLGcryxlrqWUoUQWMI1RhLO34Jkwo7vQ1/u5Vdpb9KUD6sJ
         YtXBF7a1mMQ8zQKjtFnX5EfeaiQ4r4vhci2TrTSYNlNNaBYEEKRX/HjIk35pgdHx2Txe
         kZT9O/mLMSSDowKgLKojZEe3/bDdEKYkfeMrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729015139; x=1729619939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d+ea8ccZvUXgrS7wSLnvXQm/IOSNZR9uPNXAF5KAZsk=;
        b=TqhDBBCCwqUcr446fzq5Sl8YJsocrU/C3k3qM90dzQXrP8mT2GY3Hsiu6QSvYsnCPs
         f/sjPrzUycgrXOj0V+Ch3OGRx8FWkfgcOfF7xVFwdqBC/gCfD9XvK+HImdPGKEZBIMUM
         MLKTztCpPBk/4aUx203jroQVmsopYfpF9ebSPkX4n7meFawLqgoSCRb+bU3V+juzNKaX
         3agpst+UdhH31ZvLk34GiIUkvjGdrZzitM0P4/+7utwmAATVP69aLJBRgGGEMNlqyORX
         AYJkTs7t1ZlcJLSquoy+Wuw6hVj4GAwiNvNS7mOdR1HmD9RomUgW5rmOj+V1laPw5wKS
         N/3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdPIBTjiP6DdrFeKDhbUlts36DnM3OhUPH4pWH/Xur2cHyq5Jc6XRDA0TPBZ7yYmGdRr4/jcOpkeZw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0oN7N+JAotiHxEIJod84JzPLuBKu2yEc+nZuN3mFy3jqC35BE
	oXTLlBKHPn702Ou0zrbHYuH80lerQIIdTy3H3nuRWRsy4D1Dl7XVVor42PNkh5Ym8egXGMrDC8O
	Y491V
X-Google-Smtp-Source: AGHT+IFPY4dBPzr4ZlWia35CQmCVf4ohFrHV/UId1hYT+dYvnTTvw1VEyRyvBL1JwHBIBHi9PLnMWw==
X-Received: by 2002:a05:6512:b11:b0:539:8f3c:4586 with SMTP id 2adb3069b0e04-539e57276cbmr8250092e87.55.1729015139082;
        Tue, 15 Oct 2024 10:58:59 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a000124d3sm224412e87.246.2024.10.15.10.58.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 10:58:57 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539f58c68c5so4297860e87.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 10:58:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWITbY7eKJ/iUhoXlgSuEsoJ6SOzRGTRU//4p5BdtdfemRLyawgTIReBqqHuhkcR/Tcy7isLwe6MmDf@vger.kernel.org
X-Received: by 2002:a05:6512:3e01:b0:539:df2f:e114 with SMTP id
 2adb3069b0e04-539e571c9femr7438846e87.45.1729015137476; Tue, 15 Oct 2024
 10:58:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-6-wenst@chromium.org>
In-Reply-To: <20241008073430.3992087-6-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 15 Oct 2024 10:58:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vs2bekyqBN_Lro_u32Dg9WM-bjDZr_tx-KyYH_toabVg@mail.gmail.com>
Message-ID: <CAD=FV=Vs2bekyqBN_Lro_u32Dg9WM-bjDZr_tx-KyYH_toabVg@mail.gmail.com>
Subject: Re: [PATCH v8 5/8] i2c: of-prober: Add simple helpers for regulator support
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 8, 2024 at 12:35=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> +/**
> + * i2c_of_probe_simple_cleanup - Clean up and release resources for I2C =
OF prober simple helpers
> + * @dev: Pointer to the &struct device of the caller, only used for dev_=
printk() messages
> + * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
> + *
> + * * If a regulator supply was found, disable that regulator and release=
 it.

nit: was the double "*" starting the line above intentional?

Other than the nit, this looks good to me:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

