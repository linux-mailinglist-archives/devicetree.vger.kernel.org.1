Return-Path: <devicetree+bounces-164127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E77A7F418
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 07:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA08C17A1F5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 05:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AAEC1C84AD;
	Tue,  8 Apr 2025 05:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ycp8js6V"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69117207E0F
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 05:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744089611; cv=none; b=alhy/DOcTgD9MLd1pSViNVMVmVdbDIOAgK0g7PF34bups0Gf5KmMZbuVcq3qg3IVYy6L8cH80YyK2l+tcqYnR6VVgf0rVJe28uyeWTMM0HW1/MoYCYaI4W+KxsapQf5cCCWC3hioBh9mFvHBix1wNiVGO4jpXvlwnkfCR7yUk1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744089611; c=relaxed/simple;
	bh=cPWwWnJ7ViDkLl5MW+qHSwW3GfvvX0QdfidKESl6o9Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FZ3eUQ3wLWCzRcaUEuzBgnHET3mLhQyJ3DjuKy3Eu39sL7OFr0ULxMQMaIqEfsLQi+y23DE9k5AeY0nKBdr1jLGvjCWUb6gxSnOw3wHiBGX0dBqPDy+41S+01QvoSFqshPCn43sxFl86m3f+gxAApTr5edKUW4aBK83qU09mbB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Ycp8js6V; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744089609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cPWwWnJ7ViDkLl5MW+qHSwW3GfvvX0QdfidKESl6o9Y=;
	b=Ycp8js6VGyZT5BefndTNG8mFNiRC/GRFYarA5FTXwJq2A2bHQbRpuPHPRlzP2Ro8gxGR8P
	ajX/97ZaXNM74o5/0gf5/Woeo5G5CvkkOtkdy45Z2C0oKoVUS6bCuyQWR9vmTX2oF90JL4
	MB9+teaFTfJvxqFkAi2JwRIrzYMq3ws=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-647-8YrfhLIrMTCdUyUhU3rs9A-1; Tue, 08 Apr 2025 01:20:07 -0400
X-MC-Unique: 8YrfhLIrMTCdUyUhU3rs9A-1
X-Mimecast-MFC-AGG-ID: 8YrfhLIrMTCdUyUhU3rs9A_1744089607
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-601c2ff0a0dso714078eaf.1
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 22:20:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744089607; x=1744694407;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cPWwWnJ7ViDkLl5MW+qHSwW3GfvvX0QdfidKESl6o9Y=;
        b=KVwPKFi07ArobXtIdlR89DKEyBsRTIAoonZL2p+DzDzzymKjcYndqRWIGXTjg8Y6A2
         q4rCmqB1e7UqWWk8LCuB4J5waD5TwkAGKmDL6k+78OqlsLBiQoHZreDtLwlROsSmgiVz
         SoJLogz5Qy/yiECU/80M+AVs+86ZRX460OtiikcRld3qt8xYxGpFvyB3+CWkiMXVxsz/
         usGOYC3nYwM69+iLV6rIFh/0U6E3gqdiPDXgETIbTpR409th7nEZh+HXkI5NObr4Sk7E
         5Gj2k7JY+0/DlH8EZYFLx6OHNbb7IPnro55Vb4k7998Q9MMZEbdZgA+htJqfNyzes3Qm
         A+0A==
X-Forwarded-Encrypted: i=1; AJvYcCW6PtxisRrN8Y9bCKQ6OrYar1lhPdQ3rjMmzitPTLyMqeSNYFVeJyzTIMrbFeHzj56A3xWTex+i4Izr@vger.kernel.org
X-Gm-Message-State: AOJu0YxrlTRvlzaIdJZqSfxPlKiltw1QU0ORyPFu6Xegd3lszuOzWmST
	5+BAZEG/Ja9I6/t2c9AwteWwHoXqqF8MHuqADG62HKqxS22XbkvCEfir0/yx750tP4zUd5AzBH/
	FmUiCCIzALBpk8ucKcs+nxsgqnHfhwLcbIQJrHjvYXMxreP/jApGMF/3pMBZMmWpFuwHKLZ4egh
	WN0obL2BUmYsRtDVHmntRuunpxFAfyfK8IJw==
X-Gm-Gg: ASbGncuKzoZxCCqfvk19zdBQ7fDCFX3fLzgKxgiBeIOrw0bcdHL27QuNp/uqJTFQRLo
	v20bffBmpqytBux2AC5Nz6sb1w0RrE3y8bnHGvH8rMoP5AYdMgkGF1AdZwADqVsnO/GlbL7E=
X-Received: by 2002:a05:6808:158d:b0:3f6:6dea:55ac with SMTP id 5614622812f47-400456a460fmr3391071b6e.9.1744089607260;
        Mon, 07 Apr 2025 22:20:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFndQwFQTxqQbhh7/1XO26yh+0Bql7sVDUgvChNzviW902Do9tUiMP8jbpkd2ikbG9OPRvnppdBsFKJDjF8szQ=
X-Received: by 2002:a05:6808:158d:b0:3f6:6dea:55ac with SMTP id
 5614622812f47-400456a460fmr3391067b6e.9.1744089606990; Mon, 07 Apr 2025
 22:20:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250407172836.1009461-1-ivecera@redhat.com> <20250407173149.1010216-6-ivecera@redhat.com>
 <74172acd-e649-4613-a408-d1f61ceeba8b@kernel.org>
In-Reply-To: <74172acd-e649-4613-a408-d1f61ceeba8b@kernel.org>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 8 Apr 2025 07:19:55 +0200
X-Gm-Features: ATxdqUE8CZctw0bSKyYLZFAm9WOiGKPiK7Kqb-GLiHvQfp2TsbW9P7zTG2qlt-E
Message-ID: <CADEbmW3Byn8a4otcHqHr_=p4s5kKFq2D9N9xouWVr_0VX3ZikQ@mail.gmail.com>
Subject: Re: [PATCH 15/28] dt-bindings: dpll: Add device tree bindings for
 DPLL device and pin
To: Krzysztof Kozlowski <krzk@kernel.org>, Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, Jiri Pirko <jiri@resnulli.us>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Prathosh Satish <Prathosh.Satish@microchip.com>, Lee Jones <lee@kernel.org>, 
	Kees Cook <kees@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 7, 2025 at 8:02=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
> On 07/04/2025 19:31, Ivan Vecera wrote:
> > This adds DT bindings schema for DPLL (device phase-locked loop)
> > Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
>
> Did this really happen?

We have been through several iterations of the patchset internally. I
pointed out numerous bugs in the driver code and suggested cleanups.
However, I know very little about DT, so in v2 we should omit my
Reviewed-by on the DT patches.
Michal


