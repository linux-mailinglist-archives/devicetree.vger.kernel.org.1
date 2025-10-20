Return-Path: <devicetree+bounces-229089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC90BF39C4
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 23:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F28EB1891329
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44C9A334C0E;
	Mon, 20 Oct 2025 20:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WmI7eBD7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F97312804
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760993883; cv=none; b=Ay1F274hQJcU4O5iIFLleefXuq3S1A4C5DcwNzqMO9rwXLcU4JaR0nI0ONnD2SNKX2LlrdT0nNNilmdA0O9DMcqrNGk+0RMYFXr5NO8Pwf7Pq8brD+zOHDGavfUN+Ddl0gc1y2e9KrVLdBr0MeZk6W5kFnaq1oXq45hYe/flAtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760993883; c=relaxed/simple;
	bh=pnGIELu6O3HOFz98MQJ52a4u31e/dW1FZz/2rCRONDA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j92dP/fP1DTwSN92gkL2tgTSlxiKdcevpAMeGfwFPLB6/mM6GdAomPRjwdG9/a9MP2pX8gaNtIJg2aNWNz5x4ks3/gmedCS0anG+NF/zqzdSBPe/uIZmvKh9WHk7FPYGBwltQL4Nri1Q+iq83nYP3Ap5HqjmpfvEXY9lbYn2oA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WmI7eBD7; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-363f137bbf8so43388871fa.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760993878; x=1761598678; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnGIELu6O3HOFz98MQJ52a4u31e/dW1FZz/2rCRONDA=;
        b=WmI7eBD7c/kbXiyRvGUJzFnOd1KS9mNgkAx/wKoeAQB0mlgqIA2U1xsZkEDYK7cEuy
         9WAU+Yd6tVz5yRhqNE5nuKCffhDzR1DSbC5SHojwi9bzoGt/Pjq0nvggRco8qIFUjl2u
         3xPDvs3lqvMTnlQt8VnzJOvzeNIsp56+c+JWaUjc6yfZXcUqVz+as9sMaU2M6IvBCOlc
         BIxXVpS/S7CHaFj8qXiMLDHzxNbzdI2jJr6Yh+JZ/KHa9biHV+IrviCYLHvT9lPU6m1E
         1h9ZSuo5ay4CcPysAivrLy6ECwNdqzD6y9A+5Kl+sdbfci/dpZShoouIoUuYlNoPcejN
         f7QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760993878; x=1761598678;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pnGIELu6O3HOFz98MQJ52a4u31e/dW1FZz/2rCRONDA=;
        b=DYEDU7p4b1tLQaP17iH3rr3x1ncOinq8Fft0QF2lYCAgh65K4kgm5Kp8qvsrQWfSv2
         sICNIVKFp3r9PZcZ0YEIoS1NoYWvnQTCsIgknCXGjNQPyomRnyAlbwZWY9xAt2zXc8WS
         DwzCmG0g4bOtf52d8EOJ2Z2j9Eij7fwmUVm4Ho0pQdyiCvtkzVtZIct8wrDHAG5AbEfJ
         p3k8TSfZ3RDOgVmXd4K0RPL8cNRumNgu1JUorqFQ7CV5mPIAmFHZ9SWj+3AZ0EA6nICG
         kokXw9Yta9FPXaAbMQkGiK4vH3XmGo24dlGtSUrTo9At/V3ZyXx2J7kRw60KwxrrVHyK
         QTQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlDBEnB6bnSaXW24y693sIzoi7CIgCyVx2+bSfKgUDjfmFE1+3e3LF9BO/jWQ9XcnVqNNwFLtwKQ0r@vger.kernel.org
X-Gm-Message-State: AOJu0YxAvYDzcB30bxdtezSUqpI6tXLxPNQd118VHBEBATDBtsbyDkJn
	Yd9yIfD5RXz03zC/ntnkhCoiGKf/KJwJN+Sm2auY0JpNeFtBgvvnrr3bSot0AIR4zEKk6/ZIXm9
	oDnr/drYYw7Mj15TGKLl0sko3SNpvowBk2k4WaCaOsw==
X-Gm-Gg: ASbGncuh+JwwpyNZwwHykndLWr6CMsK3uoGy28R3Uvb48d8G2bt7cw9ZyIb9hvTEugt
	0jwrQ+xuTWEnRBhJSr26JmyUvpbLSP/3ffG46P3nYjc5ecNv9npHmgtD0Tjl/W+gjnvAFhTzVTw
	SziPde3Po3Nzia3qjmZxhYm2GWDiCIQxyOin3wjX+tmKLv2PkyV6nvc99uKpJpphV0fAeUV2Blk
	DUqDuTUzlNZN991tdv2xwwgi0Sqp/QcuWEwpXnW1j/T3CyHbopzXWGSuLiX
X-Google-Smtp-Source: AGHT+IHiYaMFIB5h1IuCc0gpYw8kK+jaVWftl0vp6vdhycGk4jXf5AqAN9UnlLAvcdiDy+MzLOJyJ3cRLt227uwuZLI=
X-Received: by 2002:a2e:bc87:0:b0:36b:c7d2:3aec with SMTP id
 38308e7fff4ca-37797a3b35bmr47819151fa.31.1760993877917; Mon, 20 Oct 2025
 13:57:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013191226.4137995-1-robh@kernel.org>
In-Reply-To: <20251013191226.4137995-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Oct 2025 22:57:46 +0200
X-Gm-Features: AS18NWDSPZhI5en_XfH6pnJ7MLfO5Ag8k1dsw9jH3twF_H6jQqdTj7LeE7PJz1k
Message-ID: <CACRpkdZR+vTDcC-F1=bMK20hJm8g4gs3R5Y=APAyANKS4btAXg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert brcm,ns2-pinmux to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 13, 2025 at 9:12=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:

> Convert the brcm,ns2-pinmux binding to DT schema format. It's a
> straight-forward conversion.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

No comments for a week so patch applied.

Yours,
Linus Walleij

