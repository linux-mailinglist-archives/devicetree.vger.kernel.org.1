Return-Path: <devicetree+bounces-220231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F062BB93410
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 22:43:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B01163AC9DF
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 20:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0753526A0BD;
	Mon, 22 Sep 2025 20:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jXtbP1rp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A5268C40
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758573810; cv=none; b=ntmfQ4cZMexAn1YFMjWwVTrT3P07KrwW+HzvRXjg+05tv6LWZ6NUnp4sGL+kqUF0OTiSiwJT7DQWrbxxtlZtoWD3UZkxMnH5qZQ4LIXenDhmzz3EqfbbkIwIw/BlJVrgTBLd7iNiRf7i3e/ChdP+QguSHcORu3kIHPVuNdr7Wks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758573810; c=relaxed/simple;
	bh=8mdyqw9MjWOGNhllxvabr/uOzspow8KWf8sR0D56cCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZoCJSc8IVqLzXgFDWWosfMdiSGJn3p07diaCchVqF4dgbf/7MGKQ0rThMBUG4lbJbk9wYWtrO6i77Crq2eG5Eh+vacjYEh4kVOnhyoPXjwNHt5INhQn9PsRUODDOPgIEC4Ae3gWGc6O49VGfepERydbUgO7afeEEBN/QUZPb5JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXtbP1rp; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-57bd482dfd2so2620907e87.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758573807; x=1759178607; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8mdyqw9MjWOGNhllxvabr/uOzspow8KWf8sR0D56cCY=;
        b=jXtbP1rp/PniKszWzYRUEfQlRhUy8sA9xEXVI5Nsy8gkLwu2X2dV5W0JaHtR95oVTi
         vhGEV2tt01u9Bvo4qGA0KwKaTCQOMz+VavudE5wQjMCp41n78wH3mgVVuDMMVnx4WYQo
         wH1GJVqkAJ72EvIRDxPg2L917vusTtOcAhaJRGic/hZV0nGsRcHiyaikVPDsitK5DFuj
         by9+1e+l2kfS4g1MC9oug1OEv30GjM+5B7RH7p+hAA3NlsVx3bd/8iRfsE0vnqSjoP5x
         LAVUYb6MbTcT3n9swzBn2xisQFFDoUkdxTljJhNBJiKHHqdHwsVFEIkmjl02EtiTMtc8
         n+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758573807; x=1759178607;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8mdyqw9MjWOGNhllxvabr/uOzspow8KWf8sR0D56cCY=;
        b=g7He0irTadep4CU4T0+lnsgq/qcps+SovQbaltSrEXhxuSConPC81MgY0MASFZiBCx
         rkI435BCMxQhs1PDApHuyG9WadTyDwPQEG4kc8GBGNTPhNO5SsN2qBKrl66254cAKmHn
         Bu2E4UfsNm/HoUNggQsmzzF4gZZ0sfvKO4UXwmz3gBgyozPgJ6faDwGW60ejHbUnToDZ
         wF+jCtv2ZNE0hXYzqGBuNL/nlpOUgAqH6Vasu/lCb4LyyPMT1B3XM6/idhRvH1Rf5k6T
         AhVtzTj2u2KyXEIgxL/1NfNitAQevGgdArVT0bR6ahSELFZpaepKRsKjMHvNmdgmCfDk
         mD+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXDR0zecLxAcT8XqCu0iX2x462jwEVE058AOotTUbt7GRJiDlbU8/r0QlamQtVFpKI6dsHwxQw/00Or@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3kKMF/G2HRQKfSom1yQqVbJDfTSX+GR/U2zRZIOjUyI2YimyV
	Im6qQAIUXYTBW6IR1Lh3PLHOUkzexCcyMpBuz69kG837EkpYJVZLZdvi6wKH94O3vr7OlFHliFR
	UiTYkfwDT4ucIMe2UNCm0lw9KZ8+cPTo=
X-Gm-Gg: ASbGncuLIlbQ3w26LxByLZnyA5w9JtErVNWbMGi1DNPqvzzJm6e7Hr05+6z8ahOmwJ+
	SXZQFADE7gJ6X1y05IWYRE+nlnXPYc3tt/7sNzybWGmbiJikfKbMMhuR/YxJZlNtLQ9d8UuOal/
	Itlxp2WsE8KFabBU8NzRenCtNec5VXSPkfvQcv9Vio7JCB6Kmm03kRiNF9EykbRw/gqBHcneKAa
	UX3YO0MI/5nwhQheaAsqr5emSrUzuUfmoMz28U=
X-Google-Smtp-Source: AGHT+IGj3u3vxBovaJkpUOiQLhRlstxy96B8VGbVKJ2qkcwDCxDFJoIh3CGOM7DTK6eraZFEAmgnBu1U+ZWVdqK3ipM=
X-Received: by 2002:a05:6512:6713:b0:57e:d7be:c01f with SMTP id
 2adb3069b0e04-58070af43ffmr901e87.14.1758573807102; Mon, 22 Sep 2025 13:43:27
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <aNF1KOCs0eHL1Njb@Lord-Beerus>
In-Reply-To: <aNF1KOCs0eHL1Njb@Lord-Beerus>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 22 Sep 2025 17:43:15 -0300
X-Gm-Features: AS18NWB6vAOtYEJHU0O-pWIzCRfwsKb7fBh3jSGnR2BWR_k_vBKvJfHe8Ei0l_k
Message-ID: <CAOMZO5Ay87qRmWoCELRqCkfZtK+28bAe=0Lvwhzn3RCRKyjX=g@mail.gmail.com>
Subject: Re: [RFC] arm64: dts: freescale: imx93-var-som: Align dts adding
 missing components
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefano,

On Mon, Sep 22, 2025 at 1:11=E2=80=AFPM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:

> Before preparing the patches, I would like to ask for your advice:
> should I send one patch that performs the full DTS alignment (describing =
the
> patch as an alignemnt of the dts with the actual hardware), or would
> you prefer a patch series with one patch per peripheral (e.g. one for
> codec, one for PMIC, one for WiFi/BT, etc.)?

Sending a patch series with one patch per peripheral is preferred.

