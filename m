Return-Path: <devicetree+bounces-20523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 575367FFB59
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 20:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87F531C20C05
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 19:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3E2851C2E;
	Thu, 30 Nov 2023 19:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IPPhuq0K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2962ED40;
	Thu, 30 Nov 2023 11:28:54 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-5c6353b7390so67598a12.1;
        Thu, 30 Nov 2023 11:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701372533; x=1701977333; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e1pz9eK3UxkJqIAioP7ZLAbs33usVtodeaM0G9qSeB4=;
        b=IPPhuq0Kh2OmZvlkLXBle6C03q4rcLpDeIkY1GSXDgM2deOBUhQ9xOlxK6lF7459SP
         mUxocR1iBMtnTM/Dxase8r68XKCCPk+hkyl1a+tERKsgh8Xmrb7/LIFDvM5CqY4ZBAaB
         1WQEBHWZ0EOCUwIHBYWBELCeuwn7DOGlKJnXcuHyX/reXz/cny425i9DSfLjugRHqfNs
         oZimVb3iqu3CtgTi7z9vZX2Ot+xaH3zRlunIT8UxpccwnnEf/Mqh7MG59s305j41N9lO
         0yXQeGhvxb7zHnCas5jnLt2RBFmrckisWUv6b2VtylW+cOjx+jCSZucttEwqFrIp0pd9
         SC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701372533; x=1701977333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e1pz9eK3UxkJqIAioP7ZLAbs33usVtodeaM0G9qSeB4=;
        b=ljKACu8LccwlpQFpxs9RKU/ofBh6pohi/KDaBC9dCR+AVgPRVyVtFDKpPJXOXMr7tv
         tk5UvU5Z9EcBM6T5IdLcVnAn/imSYO33iqLT1oKYUkgYZ3bfzEq+ubviobU3tWHgqGa+
         pi9MMtcNUk7O2W0T9W8MXkI8Nwd2mu3wAv8s9FJyGKfbkpmj9GGtM13rOwiBhoAzAFtr
         /fziQRzPhWETg3bFz6qBP/tEejLTFjZhRosnc9DiNc52WkdO9ET9MIl9AQDXMhK0nUyj
         zibb115leCxR31JjOHI14ljK/HbcC0CauzbHMw7NEjewrbPkrorgOtDeeIksNCrXzrKo
         OT5Q==
X-Gm-Message-State: AOJu0YykhOAbb3XglcgIPb3IoykWr7Ut3dgmmrrnQj4dko7ZDyP1gvFZ
	KMr3a+hvWGgMqx8KQmoygPml54KN5izrgR6LcIQ=
X-Google-Smtp-Source: AGHT+IFfVUyHkgue6UYMBXPyYNTpZpY2Sn0iNgGlE7aJqov+VsOZpRU5ACSMaD2+wAMRIIc4/vToTVvC8wk8dg5cBkw=
X-Received: by 2002:a17:90b:1dc8:b0:285:71b5:7b7d with SMTP id
 pd8-20020a17090b1dc800b0028571b57b7dmr23211093pjb.0.1701372533534; Thu, 30
 Nov 2023 11:28:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130191815.2421978-1-robh@kernel.org>
In-Reply-To: <20231130191815.2421978-1-robh@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 30 Nov 2023 16:28:42 -0300
Message-ID: <CAOMZO5AZNz1cRg+aYQjDmpZ75ATJQUTWmC5mx+vgaYcBL6M+2w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice: Fix PCI bus nodes
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, 
	Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Thu, Nov 30, 2023 at 4:18=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> The imx8mm-venice boards PCI bus nodes are a complete mess. The
> unit-addresses are wrong. The PCI bridge nodes are incomplete missing
> "device_type" and "ranges" and just wrong for "#address-cells" and
> "#size-cells" values.
>
> All of these issues are reported warnings if anyone bothered to pay
> attention. Sigh.

The warnings are gone in linux-next:

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
arch/arm64/boot/dts/freescale?h=3Dnext-20231130&id=3Dd61c5068729a76a6183a89=
7bcad4bf26e8d3d674

