Return-Path: <devicetree+bounces-146251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A97BA33E17
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 12:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24A25188D2C6
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 11:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A858720E700;
	Thu, 13 Feb 2025 11:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aVUlp8HE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE8420D4FA
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 11:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739446221; cv=none; b=pCbznUFDEIBRP5z9jmQ0KIsBSwioD1dEbbF0nsoxYfr5ClkMHVuP94A5i/vAgiDPTpVW2XcmXFarZQs7qh0WfXyyBEPHV6YzWF1eXeUzG54rNZZJoKVL08rtzAfuSoYzS/9laSD0ef+8O9KhztpPPIHbb41sQJ7PAwc5zpGAqEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739446221; c=relaxed/simple;
	bh=7Z56Y83f+ojrrsd3GpgSgBFA2lIExVUESQWAv2+ulCQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WJl7ch2SsAEmipQ+Ck7qS07ltetZAPaYDEdhVQoVDxYL6OcCD1xWlRIAHPQo1B+NKyu4w0ZscR9acFjNrQIaE/ugzdFZwe0oeYmsZRY1XFoZyNgQxrWR7KwrV7UtmYKSDnBuidwGazgDSQ5XM2wJOWdU/Uvn69SZ6EXmVKqsW4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aVUlp8HE; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-543d8badc30so832441e87.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 03:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739446218; x=1740051018; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Z56Y83f+ojrrsd3GpgSgBFA2lIExVUESQWAv2+ulCQ=;
        b=aVUlp8HE3Mj7Yw7D+M2Ilr4HILAWlFgq0W3QEgCdurBYNiGOc/07AzttlQiYIeIO8d
         Ic71Tdj3Oz5HCo1v1Qj8syKHM6RoXfC5tRYaNXfBYJLnvUcPgf7xHn5dVV0KqqThBvVJ
         bVIPVR9ck/VY2Tgy6z1LtDBh395vM/i2OcF6e8ZGpLHX0wFvaKo1f/MkKnXPXEtzcROO
         Sskoh9CVyZCvJBCaCR5MfbL0dvOLw2ulPxWcRWTR6WwhQeLa7gIrl8zpan2jdmjrTLF6
         WdTqKjXNYFttme7LiFvF5AaFz52Ym0JulLwEJkFA55FnkGgaoxr1fxJEKXojdudKcm+s
         4urg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739446218; x=1740051018;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Z56Y83f+ojrrsd3GpgSgBFA2lIExVUESQWAv2+ulCQ=;
        b=EpjiiImkXP3mZ431rMGjN/avmL3Ah4kAM3ZuWl+27v7o4n4hynb5Ai4t2IEAVnNSVt
         /OE4oP4r7l15ubbt8y5WcrVxaHIpTpix/NErzwh6RidPXM36DBkDuVNy1IMHoe4CuKh6
         Md7rb8h+urEcJMhO8i533pLckc5vDNFHPS+FWI/cwNyGpbl9+8zHDb0mrae++/oUVwVC
         eZjm2DrUjO1pagxfxN0fovMqZiOJq5WJSx5p+X6tvgwcC9/t9f+SNSB60x3izbPtVmX+
         VgIbj8uGnBgG/6E8MeG8xI+sCBpEWt3JxUt6FfyUadE2jq6hAWsjQkm9x9/qlF/Px/1H
         q0qA==
X-Forwarded-Encrypted: i=1; AJvYcCULOxWfa/ICN9Zt4ZZFvUCRpyMzVaThmJrFSPLNk/wajAWpfZYHsTktd1SHl1UV3cl2IiTpVVc9UwA6@vger.kernel.org
X-Gm-Message-State: AOJu0YziPqkneS9eqA2BPeLVWFpwce2c3alj/9hHRyDKkR6L9KRitt1B
	D1DZvL7mAF5kawLLUiOSX1RqVGUaHji1R/9DI+C/TgmKVu8Es2dRGCSetNvKTmF/8XJ+iw+6/9n
	uPMntVWst1arxBvEwBAABFBLeU2a1uiuyUeyNaQ==
X-Gm-Gg: ASbGncve5aeoGN5BVENyZQm+WtjIg1uaGp7eGmHTSnWi6NQglQMyGxCHcsEzKo6iO6D
	TkYDnDV1RJTmxmJE/+k4x6cEJfQtonWeqDoPBLwr8z1k+LXNHczBVu+sV8ssG4uint3Vf22w5
X-Google-Smtp-Source: AGHT+IGtr+B7QUg7ovhczdnIrY54CJufjoazE+Gk4x6uF30Uby+ckGzBKyKIc+SyfPUrY3/AAaJl/Zu1tehVGQNXynI=
X-Received: by 2002:a05:6512:3447:b0:545:b40:6566 with SMTP id
 2adb3069b0e04-5451ddeb857mr591146e87.53.1739446217812; Thu, 13 Feb 2025
 03:30:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250203144422.269948-1-ninad@linux.ibm.com> <20250203144422.269948-3-ninad@linux.ibm.com>
In-Reply-To: <20250203144422.269948-3-ninad@linux.ibm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 13 Feb 2025 12:30:06 +0100
X-Gm-Features: AWEUYZklvT3HDVtZsVqTrXdrtQL7QNdhFrM_NmeZwuKBhmtHfAH-J4BH0prCplk
Message-ID: <CACRpkdZW9aNbrQk-zz4G0_W-HXrxgpWi_QzuLvActcWkh+U4Tw@mail.gmail.com>
Subject: Re: [PATCH v7 2/9] dt-bindings: gpio: ast2400-gpio: Add hogs parsing
To: Ninad Palsule <ninad@linux.ibm.com>
Cc: brgl@bgdev.pl, minyard@acm.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	openipmi-developer@lists.sourceforge.net, netdev@vger.kernel.org, 
	joel@jms.id.au, andrew@codeconstruct.com.au, devicetree@vger.kernel.org, 
	eajames@linux.ibm.com, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 3, 2025 at 3:44=E2=80=AFPM Ninad Palsule <ninad@linux.ibm.com> =
wrote:

> Allow parsing GPIO controller children nodes with GPIO hogs.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

