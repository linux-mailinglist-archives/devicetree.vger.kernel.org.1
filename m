Return-Path: <devicetree+bounces-135202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C34DA000C2
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 22:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88CB51882997
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 21:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1471B425A;
	Thu,  2 Jan 2025 21:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="klF1lGjv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8A813AA2A
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 21:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735853842; cv=none; b=SlTHCHwMp7ejxhOiD4NNwaLWGyvZ6hyazqzgcmTZb+jHMObMNSRVYvu+V3TZo/DU35Sr8G6g1WOsBzk4+AmuGRnmTdzaweA5RrlhmyvYCZDk2lVSZmBmrYs716EjwjzhT4UXhOEXW3bqW4/BEiRCM/i69SRtcoyeKeyHe1PYQ9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735853842; c=relaxed/simple;
	bh=gisomaO+L2GIVKZW9oMvTTOjgiixCpyPxn51SMugAMU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dn0zybd1bC7r5QGkMW8NSgeCgjWZAtdi2PxugkyIBz4tFSEh9J12DNIr/ZD7k7I9AM9KXBuHCVVckaluA6M5amxxCHAw3s73BO+TKtQzEnMm6U/i5j4B2oZGveUWWhnuerp8443uIn41EeV1CjKMqN/CZ4mqDj0PCzW7HheWJpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=klF1lGjv; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5401c52000dso13438835e87.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 13:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735853838; x=1736458638; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gisomaO+L2GIVKZW9oMvTTOjgiixCpyPxn51SMugAMU=;
        b=klF1lGjvDZqdKZbqR34fV4MWhFHsq13W2NYMhbwLXHB5pjTS2KFaGTz7UeNEdlXzs9
         r8nbW5Wz0ZXXpi6rcqOGn183rRwhEX72+FD47NldopXnFki5Y6C9q+SIqRl76pi8UCex
         YCjUlN1Xe+Q7rFAN79/+XfA9zFglLbk3VDTD9G81KzdN5o2GdCybrSjMRPbxfDWjtjqb
         1HXC4KB40CVZT0GXqLyccFlPzqz2dkDB2hIXe70m9R7qlIiQqm9EWy0jA0nZrB9JAYo9
         zlOCB+1VjACzFoVGo/+3vGrw1v01DVwBAnWnb7FHsB92KUbQDMD2X2lmMuPe8aEa1nRP
         I6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735853838; x=1736458638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gisomaO+L2GIVKZW9oMvTTOjgiixCpyPxn51SMugAMU=;
        b=OIJMeAezVKtj74/lBPhmzFwgS9v+vsH7j08JUfyCqf2E+R1SXllj/PIecDGAbuSDeu
         LmRATYsActse9mHw4E/z2qZV3gNjvi5jBUHw/JWDWK21IsBggsQjRNurMoMufn5hbVpJ
         zpzcglhePRD8AeSnnST4SVzwY176fS/ori1Ij+d7Qo+a+bVx14ETVPO4IDgFTQ8x/ZDa
         Tb/z6AICF/WPphe5YZ1uRGDNn2Vzd16R1C0ImRDAlIkF6JdWFhh2VdPjT1iLsvRBA7YD
         Vd38i5I51lhm9j0BmsVOKBX+jGCkP/dKzqfrkl5Yj4euYblf46lx5hAE2BeAiYbdTVkL
         psXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDjyB0dVjKTfcCTICamHV5p5QelvsVsg6HQUW5X7/85fO7BGHpFpayzmxJbm6RXq4rws+OwdMeHdwC@vger.kernel.org
X-Gm-Message-State: AOJu0YwNM1n605ZieJ0dEN68ERgm6exhwCQK/I6ZbDdZsDtia39SB7po
	7/4KABEaZJ7SkNztKEeODAu9GHgxm+lycrUtCdZ1MZoDWKuhN2ABEjpOZtaOWDKyvIOO2GT7uC0
	T2WUlCY54sysVeNovwI9uCNuNXhmDEOQSc+GbQA==
X-Gm-Gg: ASbGncsu7S1fvn7LaBkOQKPehkxaPzm9ggfH1efqq86eQn6nVwRFWinJNzJMkeI8cFQ
	Mrp2/bO1axD1LRu+/xbi66BG2qv/bm85naQP2
X-Google-Smtp-Source: AGHT+IFzHplckR4742TUfZ5sO6raHTYRlXz3BpSLB1Co99YggfuQOyG2xtX6buS1XOMwQ6IDHaXQhcF4tHvVn0hAZ0E=
X-Received: by 2002:a05:6512:2246:b0:542:2e04:edd1 with SMTP id
 2adb3069b0e04-5422e04f073mr10683653e87.42.1735853838389; Thu, 02 Jan 2025
 13:37:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250102-mpc83xx-v1-0-86f78ba2a7af@posteo.net> <20250102-mpc83xx-v1-11-86f78ba2a7af@posteo.net>
In-Reply-To: <20250102-mpc83xx-v1-11-86f78ba2a7af@posteo.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Jan 2025 22:37:06 +0100
Message-ID: <CACRpkdbwAUYxerznTzukeWkMSj80ni82oupdLjBbZRHzmjuH2A@mail.gmail.com>
Subject: Re: [PATCH 11/19] dt-bindings: gpio: fsl,qoriq-gpio: Add compatible
 string fsl,mpc8314-gpio
To: j.ne@posteo.net
Cc: Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, Naveen N Rao <naveen@kernel.org>, 
	Madhavan Srinivasan <maddy@linux.ibm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Frank Li <Frank.Li@nxp.com>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 2, 2025 at 7:32=E2=80=AFPM J. Neusch=C3=A4fer via B4 Relay
<devnull+j.ne.posteo.net@kernel.org> wrote:

> From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
>
> This is for the MPC831{4,5}{,E} SoCs.
>
> Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

