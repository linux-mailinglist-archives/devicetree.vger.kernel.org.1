Return-Path: <devicetree+bounces-99593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0D896A4F7
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 19:02:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CEAF1C2125D
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 17:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E737E18BBBE;
	Tue,  3 Sep 2024 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E1fTPKNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4586A1C14
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 17:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725382973; cv=none; b=pt5iiLHkZuhWJxLv+T82BafRPlfgPX1b5tOoQkx9MeNS3qjNBzcivCJdyPhk6eGTS1YTNVjXNwwOBTQulJILQk3KLFlNdocaGNX4sCWOTEAyVlRYGqVpL0/f9sAmJEtJUVzTMIvxjH8bNxAWKgP6Lm5YWBpCzOZ9LOtsKQLmkbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725382973; c=relaxed/simple;
	bh=Q3YzhK8R11bkvUF8+DllZk6A0z430wy/iDWP4hGpx1g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZJG8sxZCQ0LwhmyBZOPw6fD2ENqOSTE/yebgTie0tdOMl6F5rgRr48btba39QyBQO3W3Yrjygu0mh3nTH2mOQkli2ukOadpPXF+tVZ8TZLmeeg1DJX2Lp+X7/8zSZGXAoT57gg8LEd1uAc6PiAoBW+0cBLAs/gIgCxz4FUKz0pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E1fTPKNZ; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f4f24263acso83640101fa.0
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 10:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725382970; x=1725987770; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q3YzhK8R11bkvUF8+DllZk6A0z430wy/iDWP4hGpx1g=;
        b=E1fTPKNZbV5p9iIvV7H7zoa0BN+2hufuRoIbnZ6pMcbNMU3D2M6A2OlUOmXwcZ4tDX
         Y+V04ME/juyQw36OYvFvBTivEN/t1DImDcDRi3KRViolS3wWvYLfxMbUf8xdy4xb7I9k
         DylvndBJL2M3PXTF5n2tWbg4FOC2zOzq+0nynbdy61APlQcxdw4xy2Emm70nVooyEZel
         UrxCQIhkdq3PI03p5Z/z5X3vSP5hqtaw7o01QTkI2lkDqT7meqD14GlmpYw8kqU237mh
         6rszficsRnSnDEdzWpX8TNAvsPGlCYK+Fz8IcxWLlXKQzPwDy6n9AhTRNWokHNgAf7SY
         TKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725382970; x=1725987770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3YzhK8R11bkvUF8+DllZk6A0z430wy/iDWP4hGpx1g=;
        b=ZDf35LngRaC9xb3KraOfhxXO9eaOUIE8oPaT9npA1WDaoa9301VhNPXxe11US2dGZm
         s4emjxOmkR13acivITyHH42Daxxkiwac3WeJrAEWHdJcZ6gtRfz2rthIJTEhXPJPCor8
         klNqQkXZOOucLV3A/an3BXUDF+J7CmIiNV9BHLq88mSqSU4Sjem6ZXrXJKlseWF0MxmE
         j7uCx+mP5nqY7UPSLZOkuVtSKUSiVFE95AFRYHhfQYXtRmJqklRlC7+uo51a1Z2iPqeH
         t2ShACYBhDi3gnzyrtuBqynVzmql9jmybCXhB+H34Vr7VRXbbXsOoNWO+auobJJOo0cb
         iVsw==
X-Forwarded-Encrypted: i=1; AJvYcCVTLXkpjXwz5GVonvF7f2wwPn524yPaFpjAyrGkEJR6dWpMPxC0QEMqMcUAG4Hb4z4pxonGH26EOQan@vger.kernel.org
X-Gm-Message-State: AOJu0Yxoa6jgg70xsL96f3Mion6cQz3GlVzJUhiNlSGAb59e6BmhPL0a
	Mt+uZrHZHqfSdeHRd8G1ZEy35ah2WkUUt59ANP0/aM7o6eXPSQu5e0x52kS23kd2VOAt1b7a+xn
	0/t+3Fz0m/pAsRnmh0VgzrrT98Q4=
X-Google-Smtp-Source: AGHT+IEzMBGRuqLEiLcO65zri6rKRHx9lCYrxdw3EN0gYO/mD+Tx4K5tZUtqqFzR0RMJZ0s8O33zOc9QJHxxisc+9l8=
X-Received: by 2002:a2e:819:0:b0:2f0:1a95:7106 with SMTP id
 38308e7fff4ca-2f61089392fmr114095061fa.39.1725382969868; Tue, 03 Sep 2024
 10:02:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240903162729.1151134-1-festevam@gmail.com> <0b97acc0-2720-4962-b3c3-bb444cf81e66@denx.de>
In-Reply-To: <0b97acc0-2720-4962-b3c3-bb444cf81e66@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 3 Sep 2024 14:02:38 -0300
Message-ID: <CAOMZO5CBLLO2sL6aJD346O721mRwPKBysRMPnXkq1KXNKo8axw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: lcdif: Document the dmas/dma-names properties
To: Marek Vasut <marex@denx.de>
Cc: mripard@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek,

On Tue, Sep 3, 2024 at 1:51=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:

> This also applies to MX23 , that one also has the support for
> command-mode LCDs which are then driven by pumping commands via DMA. I
> don't think Linux actually supports this mode of operation, but I do
> recall using it some long time ago on MX23.

I checked the i.MX23 Reference Manual and no LCDIF DMA entry is listed in
either Table 10-1. APBH DMA Channel Assignments or Table 11-1. APBX
DMA Channel Assignments.

