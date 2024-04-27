Return-Path: <devicetree+bounces-63301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D30748B4585
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 12:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 426C5282856
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 10:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F27F47F69;
	Sat, 27 Apr 2024 10:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="exYMyUU2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFBC47F45
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 10:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714213222; cv=none; b=b/itMp4vi0qkGx3XGk80yprQTa3OlVg688mcNu0WxbduEEFP2D41V9jfJMzdkpQZ/p914Mkppx/DThbA+KBMuPdy/Km9w9qjyqzwPuDXqOdsmWZ0PhVVFEzdsPchsAttlprFeoVrfsOroIE08XdW9yuvK+3o0xMCpfCyCm/Y2CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714213222; c=relaxed/simple;
	bh=/Ov3HxWoUq28WJk09V7518F+JgaY60ThUTskN5tFB+w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dUg85BWVg2COLv07CvUsLzesmaybYZd+wZQG8F8IwTYCUyWbJ/W78XuvBuN1RhNhown7aZmDB5Qo5cNuyZgfJPViTH/oWkqsQbyqR6yax7IIch8USAWMY5utbC74iLS8UnxsYcNln11bp8mVIsdq4gpTrrt+5FIvGDYWJaOcBI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=exYMyUU2; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-34af8b880e8so1808788f8f.0
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 03:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714213219; x=1714818019; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YHJd5Ub+zNiNQnkR29UpgThMCfp9nBVMMGF9iCNGC/g=;
        b=exYMyUU29freRON2j0DViD6GGAjPkcE77ZJoGc6Gb5HDIC4VgxSPNH9jLSov2gUYz4
         dbVQVZx1PFWxXagmC0CQ/cKydjEFmqbtC0WLaUjnGR9ZOX1xM7HkU4Wd6qlcTufUxH9T
         dyWlGob1iIHyTfdNml7pLDYX8+EaW4g9oychSFnGVuhHuIWutb8sP2tQssXXOMGE6njG
         uJB2TC/P4avNrLClHhq6NCcrYdmpkbbMxjWC/RVznDfcP9AZYqnLq80dVMd7NWAKEsjb
         PVcS+JRYXGzwiDLYL7063l+eGRNq7MJ+gqd/odx/Yg9i6ABCGXErhoY7St4hc6fBsbLw
         NnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714213219; x=1714818019;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHJd5Ub+zNiNQnkR29UpgThMCfp9nBVMMGF9iCNGC/g=;
        b=ln8LXcy6HEuojZE9vWjQ2MyJ+u/SBLk28ljk1kc0F1Yik9qt2I49m43keB8g5C+yxi
         qcAw/HDIteLelbvIkUyKMH4A9u90bDxvhVbCXBAEUpxJTwNPpcDWPAU7WLhvjFJ0N/uv
         GXPP4XkmGQP0H5VAr6wd77W6srKd/wSgaST06B8Mj+2IALi//zwTWY3CClh29JrcV1SK
         XhKjUEA9zq3dCZOeVdVqcBm0Q87h0piNofOPLlX69chh2lrIJdWrnQTpiaTtYAd9bB5e
         rhTLQE5b7yaR71zUtxZKjWUVBDyILbHzPIu+ZaTjwNhbq8JuMLxeOyNDLCvqTpG+TVNy
         09Rw==
X-Gm-Message-State: AOJu0Ywy8FbgQ/VHT9qV0k71p2rcR8JC8pbyrdw1MVkCT7NQhH+2xAR0
	rUMhE7yrI2KKbJZRk+rxcJPameIZFKXvNJg80NgrkWqngQRMXpZq
X-Google-Smtp-Source: AGHT+IFL9pmwago60lsjtM31ujCqiGalMdnj/9GkMZCkdytk+HPgG5MXpKDQddtrnSdu/GUykTlYRw==
X-Received: by 2002:a05:6000:18af:b0:34c:765:7657 with SMTP id b15-20020a05600018af00b0034c07657657mr4831986wri.24.1714213218824;
        Sat, 27 Apr 2024 03:20:18 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id g4-20020adff3c4000000b00343c1cd5aedsm24475445wrp.52.2024.04.27.03.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 03:20:18 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 Ryan Walklin <ryan@testtoast.com>
Subject: Re: [PATCH v5 2/4] arm64: dts: allwinner: h700: Add RG35XX 2024 DTS
Date: Sat, 27 Apr 2024 12:20:17 +0200
Message-ID: <1856456.atdPhlSkOF@jernej-laptop>
In-Reply-To: <20240426213505.69273-10-ryan@testtoast.com>
References:
 <20240426213505.69273-5-ryan@testtoast.com>
 <20240426213505.69273-10-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Dne petek, 26. april 2024 ob 23:35:10 GMT +2 je Ryan Walklin napisal(a):
> The base model RG35XX (2024) is a handheld gaming device based on an
> Allwinner H700 chip.
> 
> The H700 is a H616 variant (4x ARM Cortex-A53 cores @ 1.5Ghz with Mali G31
> GPU) which exposes RGB LCD and NMI pins.
> 
> Device features:
> - Allwinner H700 @ 1.5GHz
> - 1GB LPDDR4 DRAM
> - X-Powers AXP717 PMIC
> - 3.5" 640x480 RGB LCD
> - Two microSD slots
> - Mini-HDMI out
> - GPIO keypad
> - 3.5mm headphone jack
> - USB-C charging port
> 
> Enabled in this DTS:
> - AXP717 PMIC with RSB serial interface, regulators and NMI interrupt
>   controller
> - Power LED (charge LED on device controlled directly by PMIC)
> - Serial UART (accessible from headers on the board)
> - MMC slots (SD2 appears to have a GPIO-switched regulator for 1.8v
>   low-voltage signalling, this is not yet modeled so a fixed-regulator and
>   3.3v and 1.8v rails from the PMIC are used. A switched regulator will be
>   confirmed and posted in a follow-up patch)
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



