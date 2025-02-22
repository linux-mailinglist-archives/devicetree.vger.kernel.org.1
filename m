Return-Path: <devicetree+bounces-149807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FC2A40799
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 11:48:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FC4E702E6B
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 10:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA7C207A09;
	Sat, 22 Feb 2025 10:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jh8UeQOw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E1C2063FE
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 10:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740221251; cv=none; b=LU04MrlyX4IoR4UvLtkJqPxoP8sxfghSGuWIrE8vAs2Cj6J3Gid0zzu6ChfjnYCFYGDoAO3+lbXzcLPLlZO5Yd2Hm5Zspt4QalJo37Ft4kl4lvdnt9glAURmZAsQcDPC8km2cQzPRb7dP9mGcbr4uWVPh3EJmxcmPGyYWSOHeXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740221251; c=relaxed/simple;
	bh=K4gTS6aNOoGkLqoGCTSScxVNlWdF2p8+kobu38XGSa8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nS/NtBjnBmB3YYwV7nbBBZOTIGAO5xqu/XOIwM/k/T9wT0sPPNkWIvwi/oU/O7JSkzrYdUnE0qDvUV8LeM5YDTVZG19crJMsi9Ytl0USbernB4ZKnU+7Lx/PmsWPAOqV7YBYiYQOEkXiT8kv9Lxa0p8fYKaluPDXLYlP+FG3k6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jh8UeQOw; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38f6475f747so1299269f8f.3
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 02:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740221248; x=1740826048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4gTS6aNOoGkLqoGCTSScxVNlWdF2p8+kobu38XGSa8=;
        b=Jh8UeQOwR34DzM1wnPPbbFX06I7M2rmoT3agnLVkYTOr3klKwVikE8AGagR3QUB2u0
         W/swHRMGU/0E48Y4C50XIC1qY4vglmgRD9vkxZ0ybGd9uo92+8EelH4L1VE2C2hatUPK
         K5p3fgtHf1WTquZjbl3ajYlqMomzU4LCYZfy5duOKTOsIs24WcH92vdSbKOH18nNK/uI
         amSiDd55wOGLOGo4gJ9arUAESRauTvMiXOPDpwcQVTXhTz7DQju2BR6L9U04xcKN8zCy
         Z0FmhhYat5hMysDib6d4wy1KVT2vKy0CkPYWNUEjz5aQgRfYQXKtm2SUnySzCdIG9caC
         OW8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740221248; x=1740826048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K4gTS6aNOoGkLqoGCTSScxVNlWdF2p8+kobu38XGSa8=;
        b=WjGNrlWV20wYzmQKGKhgsnbsMze4XSxaoTxCV3dj3dg4dexbf3jO0IHovKzTx7oxdf
         VXiKXxPHmLBacDjxA7x7kILVp2nZawlFR7yEBUxVpQxf66No7ilczaieMG92ypR2HH63
         JImqB2QdEP06sLC7rL6sbmaPiDmt6kPwdDCukg5BnBuTp1yN2U8fvWHi5SB7fKL1jUnr
         eB0sH3OlQPhNollp198pPno36Ttpp2bEYOzJamnLvhJR1DzS0mEvMOkdUZ6wFGFUNiqc
         vfrjax2MPYEV8mZdd7ITXvheqWCWrKc41DhklDSjPslYIPyyuW2yrcFFg2WsdI6pjP8L
         I2sg==
X-Gm-Message-State: AOJu0Yx4nfX0K/btKiYgU3NHqW2lpIX1nxf87A2TdW4+1EPnZuIUIoKc
	lIvmPJDjQbyZHQEWnDkq2as2HmtI/3V6SmyjY/zTJZvhCYJf2XgS
X-Gm-Gg: ASbGncvcbr1ASLs2MJqkmfmxM3XgEFT4qsoV7iePCZYVQ6tyMRXOgKbfgE/qNl+NTjJ
	Mzr4De/XSwY9zNVER4ohRaEDhXsg7vuYJBux9sGx97UQZj0wBMnWd8FDlxn22a5Kc3X/0//9fEI
	D4QWd+bf6ax56YQgCyZxWFim/frGLnsg7CVWOKWbXigoP7mq3mApVS0SpUVHA8IJhyAUbPKxmuf
	HFxarRlDzzwfJDvKhAIsy5MWl3XuH9FwrrPhq77EktQTd6zyI2dGH/EnDuymgNLdwQFTxueY1pf
	C0xhKIjb2xf1ab8jMuIT47CuQ/pGDhzhECAY3aZhRsWqp8PRfAE0X45B0VXsqIaiZzmIIfGCaUy
	nVQ==
X-Google-Smtp-Source: AGHT+IGMFat89xDslZ3gs0OEN7qP54MKN3a90GPZu3cGzZ8CzpD0nmIqc72q8bVak1DiEV6lXFfl7A==
X-Received: by 2002:a5d:47c9:0:b0:38f:31fe:6d23 with SMTP id ffacd0b85a97d-38f6e967ed3mr5620901f8f.23.1740221248358;
        Sat, 22 Feb 2025 02:47:28 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f8115sm26269377f8f.92.2025.02.22.02.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 02:47:28 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, samuel@sholland.org, wens@csie.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 3/4] arm64: dts: allwinner: h700: Add LED1 for Anbernic RG35XX
Date: Sat, 22 Feb 2025 11:47:26 +0100
Message-ID: <2494727.jE0xQCEvom@jernej-laptop>
In-Reply-To: <20241018160617.157083-4-macroalpha82@gmail.com>
References:
 <20241018160617.157083-1-macroalpha82@gmail.com>
 <20241018160617.157083-4-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne petek, 18. oktober 2024 ob 18:06:16 Srednjeevropski standardni =C4=8Das=
 je Chris Morgan napisal(a):
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add the second LED (red) to the Anbernic RG35XX series. The RG35XX has
> 3 LEDs: an orange one that is controlled directly by the PMIC; and a
> green and red one that are controlled by GPIOs.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



