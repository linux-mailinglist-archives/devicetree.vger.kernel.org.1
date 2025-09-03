Return-Path: <devicetree+bounces-212293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D6FB42471
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:08:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 325097B7057
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E79EF31A56D;
	Wed,  3 Sep 2025 15:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="le96U6k7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE393148C9
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756912109; cv=none; b=nJ6mmxrn6M/Z3aB7pktknGNYE22IJdduUHSnCebhBMkyQWVtINgqfMSOSTsZrJz9cKrCYNdHgkgyxAo3qNjkWu//yCbsM+jOafaIa/3gN9grpy17se0yBs8Kz4Bm8TS33kfhpt/+NoLzpIHycG3gAaJLXOaOJABB5p3q+/mP7GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756912109; c=relaxed/simple;
	bh=96YaeCpb+HKVPG3JA2d5NfvcGaCRpyQaoylvRtxb4uc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hGrCjQoryGGzM0Yh5p+NFEXOhcgKIh4s9go8czwMxN2k3NP6I/wwSuzx6FQdcJTRvcAw6X9mMITV0S/4RjS4Th3iyU9YVZaS+oz8LkV0Qv5ycWHfUIYGsJpcG/S6ly9L+02TU593RW3TOgNcMBwMTf91ogR2tdbHANvDZVE3Zbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=le96U6k7; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-61e8fdfd9b4so2272761a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756912106; x=1757516906; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96YaeCpb+HKVPG3JA2d5NfvcGaCRpyQaoylvRtxb4uc=;
        b=le96U6k79NkgVQa7/QcjlCjZi80ce7VQIrSBEgDupAk69tWX3uUW27C6NRN833BmM+
         q2XrP5cfRzC3Hw5RZoKwOK0Nfp982sdXyaaAQx4EEfyWPHgKbSyxQmWB7ydRRbhnLqGR
         7R52k6Jurt8hBO13HrFDPqiZY1+PNoKcwYxigAJuiKE9jeyWD9Rqj7RJMLtrfJLqwlud
         aBqVzh7fiPivYo0iVSVnNZlFu8AEnnL+cwuDHUIYS7lF6OMVSaW7t3wM9H9AXXNqi82X
         x4n0wRbl3lIaNUU+vAm+yUlNl7zGr5Y4ECSaSru3M9qT3H1VPh3q8CKUs8tdBCztDTLq
         mOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756912106; x=1757516906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=96YaeCpb+HKVPG3JA2d5NfvcGaCRpyQaoylvRtxb4uc=;
        b=sUJdiY6WdkH0LIXRokdtjNI9ErIFavUy0z2vpQS+7o4qjY0HONspVxxcwXrAX6XziI
         7IYJSz4usSeYqi4xUQHzbSk4zt2o26f+XSlcUtC9fojynt/axotVcJ6WW8PRFbRminim
         W4dm7kTtSmTFtbFnuFBczabmuc8wD7fEMyQqrk2k8HDems32/gSTpbenBka2cWZFdATG
         AKpA6rS1U8uv+Vbju/RGq7RrrrN5svjkRXcWYCWS9AK1QqXZqD4fZ45jA1ldI9I8XXp1
         WgBdYC2yyCgisObYLKyC0VbeDlek9wEgSFhfqfXASMkz//KT/1t5s+7S0Y4DRecuKOhl
         O9UQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGdS5NaY4OciowOzkfBtATas2uQjH+c7zfiJ5gD1nhfrzDVSAj4houSzQQJ6tqrL7pezsnbvAZbi8v@vger.kernel.org
X-Gm-Message-State: AOJu0YyLuN5r9WvqVASL71/zneysjy5gXadx4dGnZ6QHkcLz2PYSzo6p
	kgIPSj4Q3QncJOxtGssvp75sKAWTV6G2QP04L4mJ516aNT+7V8uf/4Pz9PV/Jqf9tgf5opmzEVU
	t20Aq61wNe9PyzbQzIGrzZ97uXw6oLAD/rxad1+XU8w==
X-Gm-Gg: ASbGncu22L7TQf2YyVCCeZxqVF6+KMBh3s0Tt6ASvafIG/hSVM6vfmrcvZNILvzlKkJ
	nvIG2lKEFAJoxZ5rdNo4PZ9yHEfnrA+GmlC7l1nWkXjoTUy5wOOTaIXAlNprMVdXJCBJqmPbUfD
	4OYPwPrQyd+Wf2FX/42PNIZZnlsMp7WtVjfWidj9Y2SFlz3hsJvklTrm+PeM9UwcjnFLEL0KnVd
	7THWsXlOu3a4minEnb/33gkXYJbHRvuRo2bFxTGLDHHm593sIPXI0QEjFOLdBTOfvr70Q5NU9eG
	njVDuDTvwhoVByEJ
X-Google-Smtp-Source: AGHT+IFn7BWyhxyqlF2KcZUxCc0qBvV63/yqKBt2qJWo0WsCdrH2xfKlcteVT3gnPfYsWlvKxJ4MQhTpAo8e8ENe2Tc=
X-Received: by 2002:a05:6402:504b:b0:618:3521:6842 with SMTP id
 4fb4d7f45d1cf-61d26d9c52dmr14417866a12.16.1756912106252; Wed, 03 Sep 2025
 08:08:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821-imx95-rproc-1-v5-0-e93191dfac51@nxp.com>
 <20250821-imx95-rproc-1-v5-2-e93191dfac51@nxp.com> <aLHOhKpAQbVCC76-@p14s>
 <20250830125208.GA22718@nxa18884-linux.ap.freescale.net> <aLcdmY-gqd5cFOYc@p14s>
 <20250903045611.GA8860@nxa18884-linux.ap.freescale.net> <20250903063915.GA18615@nxa18884-linux.ap.freescale.net>
 <CAEnQRZBCxp4rT=es3fDh2w1Ut=i4u3GCnyoOFjqJEMj3CLWPWA@mail.gmail.com>
In-Reply-To: <CAEnQRZBCxp4rT=es3fDh2w1Ut=i4u3GCnyoOFjqJEMj3CLWPWA@mail.gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 3 Sep 2025 09:08:14 -0600
X-Gm-Features: Ac12FXyQRSgi-B9_MD_FBGgX_7saidUAIRI9AwJxOjtr7PuEWmGlg5OZDn0enLY
Message-ID: <CANLsYkwE+6B_CgCJQdYF_n-XOH7AkDF_e2KTJnK4EtNtHRX__w@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] remoteproc: imx_rproc: Add support for System
 Manager API
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Peng Fan <peng.fan@oss.nxp.com>, Peng Fan <peng.fan@nxp.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Frank Li <frank.li@nxp.com>, 
	Daniel Baluta <daniel.baluta@nxp.com>, Iuliana Prodan <iuliana.prodan@nxp.com>, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 3 Sept 2025 at 01:20, Daniel Baluta <daniel.baluta@gmail.com> wrote=
:
>
> <snip>
>
> > >Please give detailed suggestions, but not a general comment.
> >
> >
> > @Daniel, @Frank =E2=80=94 since you've reviewed and R-b'd this patchset=
, do you
> > have thoughts on the latest feedback from Mathieu? Would you agree that
> > further simplification is needed, or is the current structure acceptabl=
e?=E2=80=9D
>
> Peng, please trim the message when replying so that you keep only
> relevant part of the text.
>
> I think you are both right here. I understand your frustration :)
> but also Mathieu's point of view is reasonable.
>
> For a person who doesn't know the internals of IMX remoteproc the code
> is a little
> bit hard to understand. Peng I've given you my R-b because even if the
> feels like
> it is getting complicated it is still manageable and you are the
> maintainer for it.
>
> Allow me a few days to see if we can simplify the logic.
>

Excellent.

> thanks,
> Daniel.

