Return-Path: <devicetree+bounces-237708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E5144C5300D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:25:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3A542350C77
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CB3A33C538;
	Wed, 12 Nov 2025 15:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="cW/Ju3Xd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F493054F2
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762959908; cv=none; b=QqpbUoZVO2hnJhVOPX1jORdaTwaHFmY81J3weqtVmIe91cCLhP9hikrFVG9xjp1/XHxsYiOOL7DnZr+DfXavZNewnm7MKKoY0iPMfpP1rJMcoUInci4ZgZOKKVM3RqDI4wVCV0i5Xd2QMbcxlFnxQCnuYgqVuIombiFFQc6YBC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762959908; c=relaxed/simple;
	bh=FIAphDibMa8xAGt0oMhOdg/Lxpd1tnylTtVjb7k1iJM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HpqTviUYb4j0oO5ZrgrLgR4D8rxMeikVv496NZDGALhzYbxhrYEahsC3d9KPmnVYCbd3E8IWbgfyRtvAB9K9ltD0WfyOGXfUUgta0uVTG5IRgnx0M3dSX1R7ZMSrickuiRx/eF4NghgF62Fl9ULnb2ZKL6UklbKV4i9m7xcy4fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=cW/Ju3Xd; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59428d2d975so1036732e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762959904; x=1763564704; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rmsnGw4PfJsQw8KA/neT+eebP5BBF6SBpPNbiarSAls=;
        b=cW/Ju3Xd3wL9t399QvrP4TM9yvMhC39qt/nLYOjU24Z7Kn1reRSli5ecLHUb3SOEcS
         566R0xKvlxdBI3pyDLqDhsduggbl4iCU0JTsV30M9e6092s/uk5/BMMNnBg2FGc8/v/T
         lDNILxxMVlWst86bBVJgVDT0g9uOmhVLD1oTUDMHKpHx2FXRI+9m03pYciEl6oh2DHVt
         XNFiGc/yerpmhbJhKwv9Nrk8qA9QeCzm83o7iwZRo+d0X/xePfK8h1oQFrBH8JI7Bw7o
         dcD1ew1iXmnihKvT5whwRyOovuDnTOxSL6M/zp3nFlHsWJlXeTHHlFQFf3wRlATiZ+ys
         539g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762959904; x=1763564704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rmsnGw4PfJsQw8KA/neT+eebP5BBF6SBpPNbiarSAls=;
        b=m41/kJiMnlCMQ2Juql44A/g4aUMDYhpk1G0+UZHvCDLT3+zrgaX8GQgNHtoLUZ1WiK
         F0wr+8Mf9FuYUsntHcDyFKKRA7hSA77ajA5dilMD6Ex+Q055CKQUigdUCiYI2/oC3xjW
         2ipCmItuifJ7gzkdQN02vQ7T4/33eIH4FH5GsYxhP9452s6iUJ94ADcC4dvZVQ2mCGIk
         hxAwF1KTpj4KDczZ3JLBwvQtJJEnAIOpVspn0Cp0UqvOk/uQHwAEBOkVC0Nds9j9O9MW
         KK9NvyIVf9aNeeYvGwLidGP7GDOuDBiKT+Il9jVeDmHwvjNNaXWI5l9yMD6QdWXR7DhV
         ftsA==
X-Forwarded-Encrypted: i=1; AJvYcCWg8xyoQAjpK7npYOAAuwGJ3qdZU8XJgSVTtHVQYqTNN2+5N4YsqZzMfbNhPJg1Y7ki3r26NeHAHdDt@vger.kernel.org
X-Gm-Message-State: AOJu0YzSaVSGkywVRCT3WKINbJsKYpUlSlbhdCWQn1azANdEzMaPtsrl
	h9yEzdeCw9hM8itOextOmyep7kjF6gNWR11c7LY315mp3EumLNli0aLvpYU7B+wiX9w7di97R/h
	hE2SbskD8wna31Eo0bCPQpkNGmg1BJE/AxLpZoWADVw==
X-Gm-Gg: ASbGnctaY5YKwXM3OMqgGpPmsD4GXaYIqVVd76/5jQoSiPVmLFKH5dOnrsTjUbv/wUz
	Gd9bHe69+aQCGi5+I1/Dth6FrG6Eceo60Bf0or9+JWmxp2fko/t2Fo91DK767AX0Ls4kqtTNPjp
	iW8WGnIHhiLTdFjtO0+wect9+EjsVuLa/uHcRkSbhH9VKlnnrro8ENYkY4uMrrJTg5RgI+qdjXm
	MzdkFjujLDHJuRsJkZiBTkQY+Hrhg6nfH+GYhFdupMYyavw8iWgSL3OK6EHlRiP0ZdpPWB0ZBMd
	L2RzQABA9UPB
X-Google-Smtp-Source: AGHT+IGpFZP82Q3cbrNeFsJc4tKVrryXSSKN61jox+qRc2N3O6n0Phs2f40ef+TfbeVUzZ7oOVHXjU/rRF9NrH3t2mo=
X-Received: by 2002:a05:6512:2244:b0:594:4ebf:e6eb with SMTP id
 2adb3069b0e04-59576df8bf0mr1056064e87.14.1762959904372; Wed, 12 Nov 2025
 07:05:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251108-pci-m2-v2-0-e8bc4d7bf42d@oss.qualcomm.com> <20251108-pci-m2-v2-4-e8bc4d7bf42d@oss.qualcomm.com>
In-Reply-To: <20251108-pci-m2-v2-4-e8bc4d7bf42d@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 12 Nov 2025 16:04:51 +0100
X-Gm-Features: AWmQ_bn6jfC1UwRAcmNPmB9esLpHkqY8yzwF9QLHVPKS_PQlxia95vgSqktJHYI
Message-ID: <CAMRc=Mfh-5D4Fv+HGJLFMUcOGKPkq7Jsz64LZcTiYxP0b87goQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] power: sequencing: Add the Power Sequencing driver
 for the PCIe M.2 connectors
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 8, 2025 at 4:24=E2=80=AFAM Manivannan Sadhasivam
<manivannan.sadhasivam@oss.qualcomm.com> wrote:
>
> +
> +static int pwrseq_pcie_m2_match(struct pwrseq_device *pwrseq,
> +                                struct device *dev)
> +{
> +       struct pwrseq_pcie_m2_ctx *ctx =3D pwrseq_device_get_drvdata(pwrs=
eq);
> +       struct device_node *remote, *endpoint;
> +
> +       /*
> +        * Traverse the 'remote-endpoint' nodes and check if the remote n=
ode's
> +        * parent matches the OF node of 'dev'.
> +        */
> +       for_each_endpoint_of_node(ctx->of_node, endpoint) {
> +               remote =3D of_graph_get_remote_port_parent(endpoint);
> +               if (remote && (remote =3D=3D dev_of_node(dev))) {
> +                       of_node_put(remote);
> +                       of_node_put(endpoint);
> +                       return PWRSEQ_MATCH_OK;
> +               }
> +               of_node_put(remote);
> +       }
> +
> +       return PWRSEQ_NO_MATCH;
> +}

Nit: I would simplify this function with __free(device_node) since
there'll be a v3 anyway. Other than that it looks good, so when the
bindings get acked I assume this can go into the pwrseq/for-next?
There don't seem to be any build-time dependencies between this and
the PCI part.

Bart

