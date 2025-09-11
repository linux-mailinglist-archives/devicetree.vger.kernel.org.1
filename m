Return-Path: <devicetree+bounces-216083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E78B5396A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6D371CC0C96
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9BDE3570C5;
	Thu, 11 Sep 2025 16:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YdlVCj/l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7432350D61
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 16:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757608695; cv=none; b=TiDuT0l8UFuoyzp73PYmy5LjQa3VWCDt4JJEWheKmuNCM1tI047J6CIgRYVgFkZxEj9mytDKFLosOJRutvcaTHrVfqTD6NVveyc4OjffGesY7pnIWzStAaKgZ+wmqoHdNcRDMbDJJC7qNYbE1xbeq/nvV6BzhIWq3YiaBG59YaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757608695; c=relaxed/simple;
	bh=bex2+V7d3fY5yk+kOmpGFKebQ4zJwljGd3CvhqQ/V6w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qs4XH4X0hsuCsMVWj0t191xHvgC8Uz35DyM9BzTUInjXa5MP8YPww9YyIMfcftcUrRo0usN1BH0bKJgopbREf4WsyemnWnpFEv+KFS/UqEsPBYlF7wqmGa9ai7h2LR4KL0RM+e+Zw1OmNkJiMRZXvvwaZhNdI5Sxo+HmsCuvP/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YdlVCj/l; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-336cdca667aso7709521fa.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757608692; x=1758213492; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bex2+V7d3fY5yk+kOmpGFKebQ4zJwljGd3CvhqQ/V6w=;
        b=YdlVCj/l3L51d6Gpto2HNFtGTHtCN+b83cKNrWnEIT4xQ8Q/3ZYfzejXpo9b/bwRiY
         tAdAEjJzQEj3EzNL+rU/HtyuIlfbwoKlqEWOIwUI33H5W/Kr6iQC2OsvgUZN+1hgDSHZ
         w0iwmytaG4LiPMKeMSZbsdKHUuPabzEUuCHxUa8IlRV6Gu3OUNNwAl57F6JVd/svKXZh
         Ch4PHQcIoBuhUysFNZE2um65xwig/za5KhNhPM5rFarHp6ZhaPz1r28NooWrNbx39gOX
         zI1WXs+drRDTJUVDoun4r/1BwZ4T9acqZo82Qj4Q6Kuv1AFtwKQKAYN2Rf8NH7dvHUBN
         oFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757608692; x=1758213492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bex2+V7d3fY5yk+kOmpGFKebQ4zJwljGd3CvhqQ/V6w=;
        b=fbkNzDhyicz9B9yTJVFg/ff2h7OTKKWRxE6jcSNUB88Au35qaQSXUB98TiOBZ7bqFd
         LWFbUu9hLR7HTIucmLks3iJsd94RWLwEBUY4nx7c9d4TlK/MZFOkt7PpoH0gvcDnHYW5
         0eW0PJiAntcaeCkaOuZnapkmQvkM7cMtwoUDCZpqeGRxuMojnDduNMTcYSR+WJDkxbk9
         r3co2hl4gmfDoxIqTp84r7AIPbpU0ACoOLJZm/dF0vQ1Ewz5omvOlAo3HgrkF1w7e4wm
         6SmIhTa+9LZ4h1hkbsHQYdnPplh66xkyySVdF9Ul+7KqPcRFNBlmfv4XYYYI1/CA8Dc+
         yisA==
X-Forwarded-Encrypted: i=1; AJvYcCXF4jq1bqhnbQB0NZOl4c4xTaBs8XPM59r0zc7l4OFP8gB4Xf8bLvzyuTawLhQJfVWwyKJv0PAao180@vger.kernel.org
X-Gm-Message-State: AOJu0YwUOGF91DqgPEWHa/rJx3aN6Np/HEdAOe8AqBr8Mdu3BEkzgHQA
	uDck7f/fEItEr3nJUaVAxClziswnTFuSuewPxPwvq65qhOqLQMPIFCAjEYa733wIoa1a4ka3tNi
	UPKLelHZSL1i2ADB3WMjPHPNi5xqJjoZBJpR90/02ug==
X-Gm-Gg: ASbGncv2JkUglX2RHRs2UhmGpVsfXo/XYlTbkRvInnQX+1DwKqy1Yl5XweRzjoARqD2
	OwOxU8A2hwPzhti3aDPrQ4QvkapLR5DkFGEnGALzUDQ9bLySP0v0DMPQKGYQxQ6q/xNJUOE1x/7
	t1jP+pen5DzFE5VfkQI59fpVpjV6b/Dl1T/puSBjjZFx4EDL0r1SbvNlclHRtB2EvxW9SLfABgr
	jUxW7c=
X-Google-Smtp-Source: AGHT+IH5GDSID+SNmkZ+hBsqboCV6rCoacLulWcRRWpDCMeGBv1RsbWZSmbv+7M3X/ucDVSiUVTrG/nHZ4e4Zv2VBw4=
X-Received: by 2002:a05:651c:20ce:20b0:336:e1d6:8920 with SMTP id
 38308e7fff4ca-33b537e751dmr53150541fa.31.1757608691862; Thu, 11 Sep 2025
 09:38:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250827024222.588082-1-gary.yang@cixtech.com>
 <20250827024222.588082-3-gary.yang@cixtech.com> <CACRpkdaX2VPAb+vihZ5BEAsGy+jNUdQ8q+3c3Q78uWmqZYeu=g@mail.gmail.com>
 <PUZPR06MB58879640C5849ABA55EF0C34EF0FA@PUZPR06MB5887.apcprd06.prod.outlook.com>
 <CACRpkdZzqRo9LRkF8=BSDANweWd0ccWtu5_nznDUn_FS6Fb0BQ@mail.gmail.com> <PUZPR06MB588739911F77623C32AEACCAEF09A@PUZPR06MB5887.apcprd06.prod.outlook.com>
In-Reply-To: <PUZPR06MB588739911F77623C32AEACCAEF09A@PUZPR06MB5887.apcprd06.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 11 Sep 2025 18:37:59 +0200
X-Gm-Features: Ac12FXzHNnPAyVkfAfBXUIgdGtuNy2-qsTIWg_VXZwNkdVHi4GMCBwA0X_hlFmQ
Message-ID: <CACRpkdZwiCjej7yDi7w0OVTFA1jCjzzvRkDN00VU+94JAVL0MA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: Add cix,sky1-pinctrl
To: Gary Yang <gary.yang@cixtech.com>
Cc: "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 11, 2025 at 3:58=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> w=
rote:

> Yes, I understand your thinking now. we also find some examples under arc=
h/arm64/boot/dts/*/*.h.
>
> for example: arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h and arch/arm6=
4/boot/dts/mediatek/mt8516-pinfunc.h
>
> We will take them as example, and create arch/arm64/boot/dts/cix/sky1-pin=
func.h. All right?

Yes go ahead with this!

Yours,
Linus Walleij

