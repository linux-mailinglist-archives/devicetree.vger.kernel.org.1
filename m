Return-Path: <devicetree+bounces-207442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5A5B2F765
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 14:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 992BEAA554F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54CC52E7F28;
	Thu, 21 Aug 2025 11:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xCtXgylk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824282E0929
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755777519; cv=none; b=fcfzztl0oEcZpW/i1nw28gftrtIIwaCef2uWdAK+6ITLqQVIIsm6xwBkl7e3IyFNmNvLs3PEL1BPjnTUAFeLB/FvRizGDUKBSjCKRjQGl/ZhroBzVLbp6u3L4UZP+p3u0uffza8fuosEUfBX2HlPhHZT8ZB083n+A/G8D6K+5yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755777519; c=relaxed/simple;
	bh=C1yHBNPn96c3V7CQ1BaXqtWREVYjXTs5jbHzOGvJ8fk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iXqkDKTl2+iNuJC3rE381IpF3sqYxXn5/NsCjvUyJv9EFtlAC7I+phD5S6Ox0F0UT/MxWdBZXOG4KmkC8gOSunQ7JX49aRYWQjdI5b/u/+bwCoO7pUqrjeFqVjKAExrmuPumjiNHCPQDszzMHWoGlOQ5xx0eA4cy6KOCsSGByfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xCtXgylk; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-55ce52ab898so918516e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 04:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755777516; x=1756382316; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C1yHBNPn96c3V7CQ1BaXqtWREVYjXTs5jbHzOGvJ8fk=;
        b=xCtXgylkBbfdKJboHDlBwK90op4jRs5JqWNuldY7emQXEfjph29J3zeHYzVY66HNBK
         wlzu7hYuc0Am7d+n/syK1tVjCxWoH+3e72rTBrhkC3Dx5aDIL+MKdCPMo+MkkbDYJW3T
         GQvD+kbfmctw/uefm2A35c8su4EkpA1Wfn2Rz7Mq+1bjEoE4nDoKcitA4mbIIfNVAXg+
         7Ix2Xb0Ls2ATJk50pm1I6IPQxRKbScEbdKffVfd4aO9RjpGSobDGGfARBTaCM+iKEhqr
         hERPw1NK173TD0FcmCdQROMxaa3zWtNMdMiZuPY6C1RavSibckpO8dwpO4lOMUbaTxJF
         xucg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755777516; x=1756382316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C1yHBNPn96c3V7CQ1BaXqtWREVYjXTs5jbHzOGvJ8fk=;
        b=Kg0dXMVfTK3we+NPG9mxHi2FcPxJzMMf2nbtWDN6EGlUcXd46Fq8fGkhRxZisgiR8u
         l9XOVFgM+g6dAlrnnuJ6zKP0eGltoV0VYLuUQ1vV4Ez/vBoEL/8dmo8lErRUpdifXUCY
         jvrjiu8V2o/ZErb3cT/q+hMJSlBTrQUhnc/rtKW8qYE+KpZceQNv6hAwK1GACwmzBNsf
         jw204KCnWk4MdLmsYmLCElRUUEiLqEJYfkerG1+wlQEcJIK7u1T7twjUg8tngsuGl4xC
         cPnGzqTfkicRwBHh6NScaWk5ugp2W92vwL4LxsmVx9WYBFdETwkGMv4Ks6TDckMVde6b
         fItg==
X-Forwarded-Encrypted: i=1; AJvYcCVsv8dnVVy4taGYbxNbQdRmUwxgmc6vb+kJL0p2rE4tOFcWp6zftHLgXV+uuXd2GjEHF2c48oErN/l3@vger.kernel.org
X-Gm-Message-State: AOJu0YxVe4RFBrW2QpIft+Ocx/T/jgGRk7Tjtp4Uk8YV/E207kBkWJV2
	FsXIb8cYssosHlOigJT04a/Gy4f8grM9stGywQJZMxtJCxr244D24YyHkTrQE00QBnbXSwXG3w1
	GfzZLshHFRsD3fcppoCngl9Hua6Y5rWerIKzeEH52yQ==
X-Gm-Gg: ASbGnctFH5Hiv3UKwRyz3350l1FtgOAqoQLFhBt7/G/Z1RL3sNKMWsFYNFMcJOCpsHG
	QGXADx7RWuQAzwmpdYjneqM1+ixV42NEtrn8iMqOAhLpnPNP+Iti9QzQXQc3TGrHsLf5MrIVfcW
	qMFgMgNhtVj+92wvj2VMabcJP/63oEaY1Wnmhl2YOfTyjLC4MA6el+juS/9cm2/zEuVRWoMiot5
	LdeLrYtUtrEPfGkEQ==
X-Google-Smtp-Source: AGHT+IH58fB2HF0XIYb9mpaGtP+eqBvxII7AxaSZMaIMfHYj0Aglieg7CeivWcXE0AOhVbRVIpo+wetUS4Xw3r7Sv6Q=
X-Received: by 2002:a05:651c:f01:b0:32b:9c54:4ca1 with SMTP id
 38308e7fff4ca-33549fddaf7mr6881041fa.39.1755777515598; Thu, 21 Aug 2025
 04:58:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812084639.13442-1-andrea.porta@suse.com>
In-Reply-To: <20250812084639.13442-1-andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Aug 2025 13:58:24 +0200
X-Gm-Features: Ac12FXxsqYADEtH5a5dR5PUdlqrKLGpwt68yMJcS6gbSE3gVttgWEaGZaRZKzIU
Message-ID: <CACRpkdYPyp7p9Pe6KU9yq+1V7OTykCJrNFzv8KxuzxSDYJ93sA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: rp1: Describe groups for RP1 pin controller
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com, 
	Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 12, 2025 at 10:44=E2=80=AFAM Andrea della Porta
<andrea.porta@suse.com> wrote:

> The DT binding for RP1 pin controller currently lacks the group
> definitions.
>
> Add groups enumeration to the schema.
>
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

Patch applied!

Yours,
Linus Walleij

