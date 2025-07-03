Return-Path: <devicetree+bounces-192849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 738C9AF8319
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 00:04:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 243F44A84F4
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 22:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA7A529C351;
	Thu,  3 Jul 2025 22:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ANj8kmoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1081E228CB5
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 22:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751580283; cv=none; b=kFvnQv5vL2eelhryDPeQ58SFCCtS0n9YR/ecQsJOZDfiacYSmZ4r0i1UDVTHjXAuPQ85suKvRy+w5xYAAdZWf7QZBhV5gJLJsv7YvhJTMumikDJRiW3iQ+vPLs8VLzBQ1dJY/STmYx4nJSzvj0rnKjD1tfI2Ov2nM1ENb0rvXE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751580283; c=relaxed/simple;
	bh=NYlX3ZZkKCv0zsZmTBGfcGnARoW6yQhWGD9ntTDvZCA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=spvsI4nhJAbqkdQOEaWkODK2ks6E2UB9f/yWdHuvUNj72tY9qbroHqfa3YHsbtGWroIl6UWftJ1PLflQhWhEYOxH9qOtUBf8nMUxr4K1183SciK7rre+yqu7NYp/JmXyZs48JqYTksqL3xGgVByGOVxvIgs6Jyvkix3CmNR7mSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ANj8kmoT; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-32b8134ef6aso3567591fa.0
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 15:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751580280; x=1752185080; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NYlX3ZZkKCv0zsZmTBGfcGnARoW6yQhWGD9ntTDvZCA=;
        b=ANj8kmoTEkEyXEz+7Zfl8fWKE0C4id12ZxKjRwLDJb0W+dShbDpwEwSbwJJ/yvFWP4
         pHeT1ScfDZpdLswr+j2WQ1gfQHj7nP5hPLhDCpGzEXmZCBq5Qy8MIqoLwLDVr/dMldhi
         M9+8wSF4gPnrm5skus1RY/YErKAS/HbcQAAsRDLVMaQNgF0jc5d050dZzoEV3cMNdtQ+
         dHe9M7xFzP8L7oFJaeTXHSKPLP5elmn4X7MCPQFX0Ioml920VbVwGl+5XGwCU/lyRv/W
         7jsuZULL7eKmGVY2akXbf0wZUEMvqKIc/voHFYDIFaTkFRej47nWPPjBvQl3gskUF+UU
         zsfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751580280; x=1752185080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NYlX3ZZkKCv0zsZmTBGfcGnARoW6yQhWGD9ntTDvZCA=;
        b=bsazHsklprKikHRrkCYCSFVQyFdc66UPWHnGFR/DOxa7jKVFDoLTiqfDkG8L33K8rq
         PVPCtmRTLlfNSMakVVVt3czs5etGFZk40PeoGsLkG1fK/4xN7yys69Uv/a258NUUgPFV
         c1beU/YXLS/a1r+K/zBoiSSMKT8ZMreJruvKXcD/6RjjcsX9uVrcR4wV3j4XsB1xd6pc
         KFKx6716H0UV7TVQW9VcH+GRYHLcCykpZd8mb4gY2cF6W1jUgX+fp0jl450PFrrRBcyi
         URrZDcc3Q0cT7Go+q1pA5XMHalHGm6mM5aiqZHohcv4tXXrlapgPQTRaze8OWP0ExaUd
         8Duw==
X-Forwarded-Encrypted: i=1; AJvYcCWAu3z2Xyo4JEe4jSpVYN/MsRjC2lhdopS1H1hTLOZ13mb7pIzgarfb78rpG0IsKeOfF5CxGV/CDVEn@vger.kernel.org
X-Gm-Message-State: AOJu0YzR5JjPlUSP2wfcqQxxASbdr0q2xRp5/cFpa4CZBrBoPqr95o90
	Su/85KAowXdlEq5gcDPSWqx4Ey8Mg+BnR0tFQZLjNrM6x3bjM2/0j1OC0101oLVr28784rnDZS5
	QPj+tv4KIXcDwhCbLp/C6Ka45hCWVAa6jOgMpt7Q5pA==
X-Gm-Gg: ASbGncs1oeGV7cem69IyS3j0utavMgQEcSsta0M91qs+AQdcvsOTUnu4E2Skro8UYLp
	Q2WkGssAQ3nQUnifvzXEPgEJS9G3s7Jk2FnUPtqLktEGxKt53TLET5FNQ2tOGJ05Utf7Sxms2Pi
	wbWfEzPgaHz80HuhMokaEgRQooKr9+zRLJw+mqRi+/5K8=
X-Google-Smtp-Source: AGHT+IGImGMP5Fq/y4gpdZAXe/bNUj9t48oLyRIX8c3HTSvwJygjhM/8i/8L71e57dTnyWSS9tDnQTa49ULtKebAmMU=
X-Received: by 2002:a2e:8a8f:0:b0:319:d856:c2f3 with SMTP id
 38308e7fff4ca-32e5f581285mr443871fa.10.1751580280107; Thu, 03 Jul 2025
 15:04:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250610152309.299438-1-antonio.borneo@foss.st.com> <20250610152309.299438-6-antonio.borneo@foss.st.com>
In-Reply-To: <20250610152309.299438-6-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Jul 2025 00:04:28 +0200
X-Gm-Features: Ac12FXyERrVVYpDPvl_uPGT_I6xGEjEKe5SU2NHnd5_uoaadOpsZN_FvQyb9INI
Message-ID: <CACRpkdbKNDr00y9-7gL5vixuvtdx7WgkPh5krGKkW9fNizx_HA@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 5/5] dt-bindings: pinctrl: stm32: Add missing
 blank lines
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 10, 2025 at 5:24=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Separate the properties through a blank line.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

This patch 5/5 applied to the pinctrl tree.

Yours,
Linus Walleij

