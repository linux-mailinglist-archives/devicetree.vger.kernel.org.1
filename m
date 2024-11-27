Return-Path: <devicetree+bounces-125113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E90C99DABBC
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 17:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F2A81655CA
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 16:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17281200BA7;
	Wed, 27 Nov 2024 16:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wkTsPrSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F8F200BAA
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 16:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732724654; cv=none; b=tt9IU7H4Gb1yh929rFSU0i+h+UBtwz94nwNm/1uiO6tZ2uHgl4yYeQP8Mo+9i6kWirtyY98Qcdt6tlCOQNolKawSXOygOkKE+ZrrwVX7kMMZ4Q5X0w36IouxqZkY/I8h34rLDBQIysPP4gZNrrpKtCsFZ0D1ZtNfBUK0RiJaGRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732724654; c=relaxed/simple;
	bh=rKda9Awu4irodPKAZZW8j0P3UYNrlv+gac9bpLX6Xnk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XWo7OhHbw/N8SzzyYmRCiGOpsRp9TaesU6SS2tfupqlWzCuAxJ/UJZYB2s9rZsUke1VrKCgaiSj+Qn54G8udGULrQybMY7+nVUh+dakbf44t9YeoaGDLy4VuHj9uTQJClVVw9/Iq6B6Yp0mplriSNlLhFch8neAojI3k/qWqgOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wkTsPrSE; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-434a766b475so16998785e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 08:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732724650; x=1733329450; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W3ci6YCIiDufTlH6QWOH+RcWY/SBARvhjUkFISOP+Eg=;
        b=wkTsPrSEQ20h6aP0HOoF/eQMNlrO/PBotYi55eoy0YzYFlPycEfeKlMiEhXrOiOw9H
         kFksT3vqU0zpUGQJXUB++m7fPwbmwclZ4DNSxdGP5eBoOzRDCsE1Vf8nArcrslNwA++/
         9NUXL0qtqmfYjlx6E8fbkbutqepwQfIyIsaWoQJSWdT+Nl1TxVeSbPfk4XBqlBgPJ/ep
         R+W5yBkF8kdrG5K3+uRA4nmtmOaEde8Q136HkBsLfs8+jKVOr3bcB3kgCfGIw00CldcK
         +XdxZUL/Ytk3WHNLPGVpz9wCGcP3ZLTFzDl07VmRtSADJI9Eok9agp5y08iEsSxEoxHk
         wbsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732724650; x=1733329450;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W3ci6YCIiDufTlH6QWOH+RcWY/SBARvhjUkFISOP+Eg=;
        b=J4RxVgfLXxVZj8Gnba7laQrXXyiwYLtJjrAl6uzAobUPydUBjlcu7RqqMYaoknhJFd
         sxJWV2NdpVHp4r1UNhdcQ9bGvOGd2l6QB/7Y2v5FkafioFBjLOglcyqUDlTpnNnkQsX3
         4A7N1sSU2vNHV+eZnH52iTIQGZvYjQ/uAexrQ1yozubcEECqSw6l9LDjz5SZh5mpFdv+
         WqmaCv9WTLP1gsYlsJ1MmDQ0BF7YbmJauLwd1f5faR89wRH66GQsQbnOLOnE4Am6P9Nu
         bAxKN0lCrWHrxSqaOzSttkr6bsYVoUBXfWcXPLUut94cJlqYxWkj+N+LCFtetoSp8Y6d
         GGGA==
X-Forwarded-Encrypted: i=1; AJvYcCXmmX24hj0qOUJYyvDMNjprqnx66qyUbl74sHKnf8buaMZskLSZnIFyw6mOibyAasmtccOrg019z6hh@vger.kernel.org
X-Gm-Message-State: AOJu0YyKieYUKTLAPf3PqrEOq5SzY//mxW9DK6XvI8M4J9xqVHKk7EM8
	yKUq5Gjs/HJXO/spTso8fMApDoSVIFh6SBQWwKGzvm5Mb3UiCbv4ndNl68Fqzg0=
X-Gm-Gg: ASbGnctCfliK+Edx2vtnjZ6sOWcHScPdHmlMgPjoBRQAjPXLOi3FaPSJG2I6a4Cip5y
	jKfkrYysc0HbCudV3Tg8rKVoGTqUdnAjSsiSkmfe+X4oLESIKpI+6dXmVyT5HbISAllNzt1XWm4
	Q4fQEe30XpDwMKyBuJt063M9oaNdFWBYslUMvpeloWFu6Ku+LrqY7A6jXidcXYFMzgbuJG88MOt
	gOmOATBeLVMwwx5j7HLPZLi1nhHEQszrNPRekB+g5fw3zdCyd/GSA==
X-Google-Smtp-Source: AGHT+IGDZztPo405KuhE/5HQpdEcc6G4U1hi5a0UqN/AZl+cMPyQNrZOeFD27R5rS38JBrkH0dwofA==
X-Received: by 2002:a05:600c:354e:b0:434:a684:9b1 with SMTP id 5b1f17b1804b1-434a9dbbfc6mr34223735e9.4.1732724650556;
        Wed, 27 Nov 2024 08:24:10 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3defsm17311830f8f.70.2024.11.27.08.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 08:24:10 -0800 (PST)
Message-ID: <813713d8ac62be0782bcf36d1d23bec5f4a3c08e.camel@linaro.org>
Subject: Re: [PATCH 3/9] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Marek Szyprowski
 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Sam
 Protsenko <semen.protsenko@linaro.org>, Will McVicker
 <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org
Date: Wed, 27 Nov 2024 16:24:08 +0000
In-Reply-To: <20241127-majorette-decorated-44dc1e7dd121@spud>
References: 
	<20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-phy-v1-3-1b7fce24960b@linaro.org>
	 <20241127-majorette-decorated-44dc1e7dd121@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Conor,

On Wed, 2024-11-27 at 16:00 +0000, Conor Dooley wrote:
> On Wed, Nov 27, 2024 at 10:58:13AM +0000, Andr=C3=A9 Draszik wrote:
> > The USB PHY on gs101 needs to be configured based on the orientation of
> > the connector. For that the DTS needs a link between the phy's port and
> > a TCPCi, and we'll need to inform the phy driver that it should handle
> > the orientation (register a handler).
> >=20
> > Update the schema to enforce that by requiring the orientation-switch
> > and port properties (on gs101 only).
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>=20
> What is your driver doing if these are not provided? New required
> properties are an ABI break after all and I don't see a mention of how
> you're handling it here.

This is hooked-in in patch 8 of this series in
exynos5_usbdrd_setup_notifiers(). The new behaviour is gated off

    if (device_property_present(phy_drd->dev, "orientation-switch")) {
        ...

Without that property (i.e. old DTS or !gs101), the driver will behave as
before (meaning for gs101 it will work in SS mode in one orientation only).

Does that address your concern?

Cheers,
Andre'


