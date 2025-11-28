Return-Path: <devicetree+bounces-242905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 84202C91107
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:49:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2C1E134BFF8
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 07:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D53F22798E5;
	Fri, 28 Nov 2025 07:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E9T06tps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4865D23EAB6
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764316181; cv=none; b=X9srVXkp4rR2q+JkfvuKA8JsErzpg8SKqeBAr3WSUOXI9/6BpKSNx7BSbf1Vn/5ac89haX7zDqv7rYpzb4S6qdzmhfTgmEztx4OoCnmFxWcSemSmf8f0vcpj5uCvZZZ2bq0fcfbKhc2BLirFwFwBeDdRgL4ARMEAJd7LI94eKqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764316181; c=relaxed/simple;
	bh=Xzb4o6woI0sKd6leSwCGnufqfj0RdO1VKVEpocSGcGU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O3aEUJ4RSnlRxo49N+qJidnpjdlUevyHxqPMNkEweIhCO/ci+pcUJjvUxZCD3lbyFWclcmSoAtxskJ9CSmu7dOXsJd/oqT+23yaWfwqHOlgu2FSqMvQUhu4ZJ5fC3//cjI70rvBVGhMtQqX5B40kcjwYJ9qhqCnwtBxsacOGPyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E9T06tps; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4ed7a7ddc27so14253991cf.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 23:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764316179; x=1764920979; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xzb4o6woI0sKd6leSwCGnufqfj0RdO1VKVEpocSGcGU=;
        b=E9T06tpsyCcdjDqrjgkPE4fUfzxY5JE0PkltORz9aSzZDPWcYJd4JmgrIuDt1nU25K
         ZvGPKrwBSlrvmofQ0+mYuxgfNL7TcwDXevKRZGcq5QJ2A+37aogIS4+i3PKnTZMvcua/
         7v8LKe9lhSJlEjzahQL9ZSHIa4U8yxTZmuc9Xr6BcCqr5tzkD55uRZkovzsgAjAsbNP/
         2bf5juQOXy+9pa3UGVMuo38G5d0sb2dJ6uyRtHs6NV99aGCw2nI8TLx9xbcaPPBP3DjJ
         vFxuHlP+cGpf3oC4TIqboslT68/US2S8fao7Mx41ZsZ8iY/7nudorYdB/LVLIv+Hfmgn
         nmZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764316179; x=1764920979;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xzb4o6woI0sKd6leSwCGnufqfj0RdO1VKVEpocSGcGU=;
        b=mbDbW9KZ4L7zai+6ZVsYpOU04Nn21bESNUXEcoDyUBTd7B40TiawDwqPb3gvPWgq4a
         kctyDZ8Phy04oFKvMQzd8z8e7aTlLZ6sX/AuJG1nZUaqv+aiqfJJV3dRqdwAKhv/IFrq
         QY/OnhlKqovrmprnH6k77RhoEkkcyUCFkrHedHGfx6GB3ghXUrCd+Dvy/ZdBefNZ38Eb
         1LMJcqgzeEwHH+OLM024cGi3fwwLeqtTz2bVauQJ8GZh+af4l4ZGBybV0BZzidZwKEu6
         g+fdWCNqKAsqED1/g5nWDa/nE6KGneB285cOVhYBpGK0lg2YpcCGDTplb5z0rgIE4q7E
         y/bw==
X-Gm-Message-State: AOJu0YyOPH1YzHhIxcI0Jr44evVZt5niVCoiof+E8cx3n7RkUg7982Z9
	oGeWsN4LBWK4uvJw1JL67RSsERYs5nF+hqyPSvhUtFraS6+XfdLT0cWLkJ/LU+dNoCTw+P9vt3q
	eyCqlxbbtC5FsiIQ/ySmZZrsJDtf1KYQ=
X-Gm-Gg: ASbGncvo7fLC3hxE4ehtYAgGMjzow1gFbBz0Huv+f77lApgj6QL6okM0jY5QooPO3NS
	PVhGf5QUdPXe6V3IjaJEH6QUoetfD62Ibed8bcOog5zzJ56HIcDTZm5mbOCaS/3xStbGFexLSwj
	9y2PS6O3dpfWkvGns2vegF7QaernO30c5gsQTb9Umu94skoo8hddkT7rSKHwdKsDkDZ5tVn62xL
	NKGZgA/l1zTU9lF1t3930iq1bJ0mXB6GGta98KrpMezLyYGmkKyNuNXxSMEavFh+TufFEsRZ/IN
	qS5GegNShtYqValnCryQMUbxd7wc
X-Google-Smtp-Source: AGHT+IHYzLcGh+cWGpJkei51y/kYklMPmBU3wbElTrGhOhOpPSp6GAM0EV8iuyukCLvsobhwpt+JVDig/00Wu3PpzZo=
X-Received: by 2002:a05:622a:4d4b:b0:4e8:aff9:a7a8 with SMTP id
 d75a77b69052e-4efc3f2a0efmr187482101cf.52.1764316179224; Thu, 27 Nov 2025
 23:49:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com>
In-Reply-To: <20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 28 Nov 2025 11:49:31 +0400
X-Gm-Features: AWmQ_bnfm67nHyppKcn_WewzrQOH_TFdC0fMKR8wgi2rranNPLttVu9G4ijWIFw
Message-ID: <CABjd4Yx0wJG-RjbGo1EZXK=bDp0sBJvcwA8tJ5jNOZRmGq3r3g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 27, 2025 at 3:46=E2=80=AFPM Alexey Charkov <alchark@gmail.com> =
wrote:
>
> The NanoPi M5 board supports pluggable UFS modules using the UFSHC
> inside its Rockchip RK3576 SoC.
>
> Enable the respective devicetree node.
>
> Board specific supply regulators are not added, because they are all
> non-gateable descendants of other regulators marked always-on.

On a second thought, I'll add those regulators in v2, and also include
a link to the relevant schematic [1]. Explicitly listing the
regulators has a slight benefit of fewer complaints from the driver at
boot time, and maybe at some point we'll want to try and remove some
of the "always-on" markings (which would require a reasonably complete
description of the power graph inside the device tree). They are also
actual devices on board and not pure aliases of other existing power
lines, which IMO qualifies them for inclusion in the DT.

FTR:
VCC_UFS is directly fed by VCC_3V3_S3, no fancy circuitry in between
VCC1V2_UFS_VCCQ is fed by VCC5V0_SYS_S5 via a DCDC buck converter,
whose EN pin is driven by VCC_3V3_S3
VCC1V8_UFS_VCCQ2 is fed by VCC_1V8_S3 via a MOSFET gated by voltage on
VDDA_1V2_S0
UFS host controller itself is part of the VCCIO7 domain, whose logic
is driven by VDD_0V75_S3 and whose VCC is fed by VDDA_1V2_S0

Will wait for 24h to elapse since v1 submission and send a v2 later today.

Best regards,
Alexey

[1] https://wiki.friendlyelec.com/wiki/images/9/97/NanoPi_M5_LP5_2411_SCH.p=
df

