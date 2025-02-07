Return-Path: <devicetree+bounces-144052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7F4A2CAAB
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 18:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A5D07A36ED
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 17:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535FB19D89E;
	Fri,  7 Feb 2025 17:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="manKdVlA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDB2199EAD
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 17:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738951189; cv=none; b=fJ64c2CuUK/87Ql6eu9Smvwlg8Tub9Ow4rvZB0vbxVdF+iihuGcfkO6iLE0+vpcnEdUQoeKthkAOXXPO1qoIb9LkbZRRmcyRjpuMLrMTgPwBqleaaOInq6Awul7vAvKYrfj9BC9ovnekxH5IwlRGKUOBGjoySFBxLZXD2lUKrtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738951189; c=relaxed/simple;
	bh=qsTJIapezLhW06qmRT26gxTR963xvPSpeajLEAGo7zU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t4zLGk9xXkQXnVrRxoF3enGaJle96n4+9CIXirQh+2klQTMkhhd8PDOi0gHleG6aRmeucav4WRLMzLtJ8Dir3snqgkZtSBP+NbueifKEINnZAzRp5RULTsZIYj3rYCYujleN7sX6dkpFr0RVQi+qHcg//JpTN1+mBQo/kgiuRYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=manKdVlA; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54410d769f7so2273033e87.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 09:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738951184; x=1739555984; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7PwmuaIBJ/10qYXXlbzfefJdtGyrGJpw93xkGEeBXLI=;
        b=manKdVlAEr21pgIoeTb/dwp8ulbOv2UqgP1EM9KyJx9Lvz660bhwrC8ToeF0SazzLA
         Ef1AQMFfQBN3G6imEWAAXvEunzuxgg/i0jOalxqZY1FPMLpJA5BfMSNCkRsCvr4M6+d/
         E6uCGFkDzl8D58Y3jLe2CqtwBOz7QLgN1bhhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738951184; x=1739555984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7PwmuaIBJ/10qYXXlbzfefJdtGyrGJpw93xkGEeBXLI=;
        b=o39RE4Cn7ZesuZKjoi3rcuSbZeifpei4qo4a5MtcFAIwH9s6EMmKahAedtdAb++gvk
         3MTRCUy0Af45xExq4zQIwqNA2RTlwsC+dkkBl7veTlzcpKSKUa5hyzoWh5U56wng7GVU
         Ewwh5pWS2lnq3MRQdUreeAcaZyzOdZVMhRvRsVIH/DqakS21So8P4GWNqgJ7bMkq7BSE
         g1nUzoopq4+Q+gHkGizMxX759W0Vhw0fu3g8HUKtcATbsipY6GJMa/DrFJtarNtNkCBQ
         am40iL7u0a2YhQ5bl58RLmQL11aDkrNO868NwqL3iyA9KPVj13YbUE+IY8nuKaUP+PAe
         5t1g==
X-Forwarded-Encrypted: i=1; AJvYcCUIb9yvt05PHc/9iVVNFcGwHzrKCElxlZiik6I2zNTIayI8cpH5pPaVPKqYtvFo5hg+TO2mlecSHAwz@vger.kernel.org
X-Gm-Message-State: AOJu0YwX1Dy5xkvavH6YEggt6mi6QzG7HsIPpx3CNhPcrlubPNFagLh8
	uajVQI9O643qkHnc28pwVAoSRxGytYGBBB4gFaW7AVFLEgwhB1BkF08H2kBpT2pvBmXn13G/3ML
	glccL
X-Gm-Gg: ASbGncutYVbwzM0PcC9hubFV5P0ymyWYY8al5QcXaYxyvzrtFP6XqgkpMumvfIvP2IA
	+jHs48+y8cEf5Wr1ihCbGJr2//tyB3eNKbMaNXqjKdldleCd1M/9x5AGdoUrZJMbVHwNeQ3rgm/
	XbnzZYwVSMonF5DFvlKyeQEDrTm6i8Wjmzk/708RXaNW9j+1g+EH8nXKRx0gvyItIeCWly7BpNi
	Qf64borblgUIoZvVS8wCNGgNCddW1OuztLM0kfD7cr2JKGlLfoLlrxnFES64DUSzl48gH/9AmWy
	DpMVS98CXEO2CKK2vrsgEExFuaNW/MpCAxldhfvgV5ciWIuwA/MNIIY=
X-Google-Smtp-Source: AGHT+IFwSua7VvYZBLB9mIqbc09czAAQaDvPyxy9e2iP6JIlFrXmLJbAtRBtOTr97ohZmIRVWddQ2g==
X-Received: by 2002:a05:6512:1195:b0:542:6d01:f55c with SMTP id 2adb3069b0e04-54414a962c4mr1694829e87.3.1738951183928;
        Fri, 07 Feb 2025 09:59:43 -0800 (PST)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com. [209.85.167.42])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545032facbasm34173e87.220.2025.02.07.09.59.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 09:59:43 -0800 (PST)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54412a7d75cso1887434e87.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 09:59:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWABI9qX4kybN7cKNM+w5CTe/dfmwztv01nVlIkcKSGV/07y5l9PM7IHGev5Mmk4VuCvozg9hklDuxG@vger.kernel.org
X-Received: by 2002:a05:6512:b8a:b0:542:6105:bb72 with SMTP id
 2adb3069b0e04-54414a9cbc3mr1362214e87.19.1738951182378; Fri, 07 Feb 2025
 09:59:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
 <20250206131300.1295111-4-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250206131300.1295111-4-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 7 Feb 2025 09:59:30 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xe90b6x4JF716=O==U3US-vONovcvDm0yfOconkFRPcg@mail.gmail.com>
X-Gm-Features: AWEUYZnN1bml-NA4ebUvH8W9aveGL3aSVmaC8yx15fMw7Kdh-ZCSTxHkG5ADkjk
Message-ID: <CAD=FV=Xe90b6x4JF716=O==U3US-vONovcvDm0yfOconkFRPcg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/panel: panel-himax-hx83102: support for
 csot-pna957qt1-1 MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 6, 2025 at 5:13=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> The csot-pna957qt1-1 is a 10.95" TFT panel. The MIPI controller on this
> panel is the same as the other panels here, so add this panel to this
> driver.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx83102.c | 123 ++++++++++++++++++++
>  1 file changed, 123 insertions(+)

Pushed to drm-misc-next:

[3/3] drm/panel: panel-himax-hx83102: support for csot-pna957qt1-1
MIPI-DSI panel
      commit: 05345cea4ff5a857612df3f10144dec685c07e6d

