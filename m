Return-Path: <devicetree+bounces-223641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 278CDBB9180
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 22:00:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8F87B4E757E
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 20:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E43323A984;
	Sat,  4 Oct 2025 20:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="gK3JVhjB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88FD217648
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 20:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759608025; cv=none; b=Ts9Akjo/WnX/ITpY82vh03ak4S7yKa8uPeolNktJxE/27MTe/M/5WZEEB9zih+murTrzPcmIPAvaxxE2OdN+yiB2lBcIaGEjTRgzuahM421bEaMmyQzqCEdyGQttZuYu1dN9HPn4zKDV82O8wsLXN8h4heMsJQpWsyIkehq6lUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759608025; c=relaxed/simple;
	bh=Y7aP5ANWHznsHRPpXqT15itWt6xDKWtsAwFYNj6Ecek=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PNk2j6Cu8k33rMpD74+oavYNwLXfByf95Rxhxj2kdVudfCGPKzuft3oDYzlHJCyJ29qc1vu7plgUYsLsuc34iphVX6LHTzgogp+Pyh6m6BFPN0BTQpSK4rdvStVLVdwRs9vCjqcVzYxHUY6562VUbiVmCvbCiUMlsLJ4eafhGpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=gK3JVhjB; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-279e2554c8fso32191275ad.2
        for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 13:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1759608023; x=1760212823; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y7aP5ANWHznsHRPpXqT15itWt6xDKWtsAwFYNj6Ecek=;
        b=gK3JVhjBVzca2lJCqNHEZe4BhwnRugbTEFHsJWLYXZEfbfwMCqjEK1uPnVOPpNNBEd
         YE0Ab3rl3NuN6LSTtlB+YvmlQ6o+JTcFKIrnCXLUALmVj5dBdtPag3OYVHtjnZXa50by
         vXZ6+fGf/dtYMruvlzyA4fwH8O55UHQZteWg/IRzwR3X3WXMxceMqAUjNb4p8z6z+dPx
         sZVz5fOPIgwUKFeYwgZ5zcYIJqjTq0nv7eeqh0B0qmCpbYiqH3qpvLRxqaqQUQCdSQ9s
         CbCmnJz/LaKK+d61+xiPRxwS+u7vq9B+1CAy3WJYQ5BnAsWbx1BIFVZVx8jYiJ6HKIIx
         5ohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759608023; x=1760212823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y7aP5ANWHznsHRPpXqT15itWt6xDKWtsAwFYNj6Ecek=;
        b=qLqW1/nsgtFJFDDJPywKMk5wbgf0JZ0JIMy/7QjcOWLwZs7bYApLJ2IpHKQxAR8yy8
         PYlSgjasNBJTWfUZpK9wqDjvr/YMqUIherpnUW8rVKIizPSehJDzu/s1ywNyH4UFcSh7
         ya4ddRftu9e9AyTjDm7gUw7BUKrBQ9cGNNXijdjCG9iQa/d1xRJFeXqqF7C0PZeOVDUK
         2vF1I8ZMMQoLeG/62uKusfaG3X2LSz0xuMag8E8mjWIJo7yMSZTLO5mMO0M2rbCIbkyJ
         lNeaG8lKvRyglXtIAMxaQsaCJnmgQlWmmgASxpsEV0e0120YVU+FD7O8RNRsAEb3Ta9M
         LpCg==
X-Forwarded-Encrypted: i=1; AJvYcCV6wWf8SNgdDdSkNRyQlqocV+NJo+brm3tlnFTghn6YoiKHDokbBJJ83WUabRj1Kz9+h/bPUujT6LQA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9qnWMe0uU8Qzm5LSBh9/o2gWuPGU2eRwv7/6bF7i0yRb4bLtp
	tqEcPV8CUzaHBhZg9d+dF64atcr5jeH2ewuq6v8tzSpK5gd6gBL4z5Yl924+ep0yKNtvc+r8b8G
	SDzLJ9qA8gHoB7G/FyMaOOoTNidpGr7s=
X-Gm-Gg: ASbGnctq8mDWA+MzKn4fB8HNA6oCv4KybH3m7aRc+bB8+f6cD4wJRGlFutKDj9fnuT+
	cGfkvONgG8U1VNz6jKRUQylGep1PCDoC3IrgHs0lbX+Xfn8e+7GnrYMrQJ7Gl3jlvNMaB5DkBEC
	c+7h9MaFH/GQZ7ui3BqJAPaBQuWdBQo+HqPlrWCL4GV4wDr9eYA0foHHcQN7+58EynbNaAtfriq
	ROme7jxnPaPRRcX5agn531+tA3HwCTh/w3bkbPVxlE/GJ2HfM1eZZiUfXJ9a11O
X-Google-Smtp-Source: AGHT+IGt39Nt9p5q066AwuwZ4TSsvdBdT0kbd0QVrdYOaUXToPuPqoewdXCA9vnV1UglZ/I0nfi7H/q2TLlH53BiA4k=
X-Received: by 2002:a17:903:b8c:b0:276:76e1:2e84 with SMTP id
 d9443c01a7336-28e9a542c2bmr87291145ad.3.1759608022835; Sat, 04 Oct 2025
 13:00:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250927125006.824293-1-christianshewitt@gmail.com>
In-Reply-To: <20250927125006.824293-1-christianshewitt@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 4 Oct 2025 22:00:11 +0200
X-Gm-Features: AS18NWCuGwewacgkM0Ab0HEEi4QG9Szb0DHvCKwfduJRn9-rG355CymOveg6Dfw
Message-ID: <CAFBinCD9qq0_ppwt9gbyKW3kcSr8PTX+rnVPbrM33YOABxSoGA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add support for Tanix TX9 Pro
To: Christian Hewitt <christianshewitt@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 27, 2025 at 2:50=E2=80=AFPM Christian Hewitt
<christianshewitt@gmail.com> wrote:
>
> The Oranth Tanix TX9 Pro is an Android STB using the Amlogic S912 chip
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

