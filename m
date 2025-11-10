Return-Path: <devicetree+bounces-236613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 55540C45D21
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CB315347C4C
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA944302CBD;
	Mon, 10 Nov 2025 10:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j+2ybnZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8944A33
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769385; cv=none; b=OwMv1DGKGvFXXEuJyqbo89klJQDRnCl5O0/pstnXhjHSiL83m+8lO+lL0EY4WkvSMw0Smy6+WfXQ+BwBljU9Y7B4IBXwPUNdNYylGRA7t1en9JNF435h0rkQ0il+pW1po8KLpOQb4b4sXOSIuijbogJLdQ55B8vzLLtZkLLGfZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769385; c=relaxed/simple;
	bh=tDhf8qixrDvFldi5/wrQHvvbq/Y7Dz2jnieCvqBR5hg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H819f/LhqsQwgtkBaU8I5aGLR2TK0105d/SoAeWWB/DSMXpz0FOJ4QVcnrIyZHCGTqV5btlIa9DKqo8s9Z73S+qXHjGXMTUR04G0zaH/a9SvkjaYuWgnK/D1G03EvxOpfqnX601dgsIyKtOU/8ow/I4a7GBx38OOkbdQCQweFyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j+2ybnZ1; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-594270ec7f9so2548519e87.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 02:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762769381; x=1763374181; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDhf8qixrDvFldi5/wrQHvvbq/Y7Dz2jnieCvqBR5hg=;
        b=j+2ybnZ1I86i8SvXdiHb9YpvHS0baO0DllnCHI2/YHXyM6N/OyODyLVtZY299lmAoK
         6TETXDVrhjrZ+TL6+k7GjVMiPF5gD3RptoH5dG7r8Zmxcvauv12mAG5Foowb5e+wRXRa
         IyaHgaAZkKiZ4KT2io0lDcwtanQN3mBL8VkuYQeEZvk/oTTY7CDpaaL0qlgEoRITYh5X
         trj6e4gE+KltwVxcyZyl2lgKcSpt+K1CzKcx8+R7k85aqtfhs8z7tQlDJK3k8fEjoQZP
         JvIr9m+2O3DD3pPDLQ+ZwcRDFKhzQllIeR2OXrR+/oiKROz4RvID4cvupqJxrw1JXTFm
         EGXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762769381; x=1763374181;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tDhf8qixrDvFldi5/wrQHvvbq/Y7Dz2jnieCvqBR5hg=;
        b=R0eR6lKBdA2MIAbPIbGgiD6iMLuTiRUS3s0h1reTBbP/Q8gJCYdoeHbeLcQrOHp0gH
         ImzOSwBxTAlkLRlHcfDR8XxACQneEDmtLb6PDbpu46Aha8d5M02zFsh7sDqVfZlHcHpy
         iYLj6EGwAaowa1+qe+9sjdXZ1AlsdYHzIAj3EojckRU3JM28HaggKAcfRzy5i1LiII1v
         PZ/v+oka15L45aakRRNkbXTxO2dMgawussRIxUqevmFHDhwzPOBbVVT6hvwuiPhCka8l
         +poS+KuP61prMi9+rfYI8AqMDLoEH0LpJsy5s8WZVcKOSKz4XKbbUXjic/McY2xpfQu+
         hPxw==
X-Forwarded-Encrypted: i=1; AJvYcCVZvMqW5GIst0d/n4m8ABdhJ4GJ3i7P6OGt/d7SjJIKO/oYws8HKC/EfCreIi7ahQfRNrhASxZAHMh0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5s/TnBtdlWW6MrOsQxP6masj9I2HsaL+aMJKX1lQsIm75YGkU
	8h8FXcfcbSgLWIOZ/00MkfBXXRJ40tE9l9s2WiPzTZ4hHvJiQOaNFMAzmyyljwWzz8Su9j2c3tP
	hwZLI2OQTIFn3fokVTND4sx8LehO2cqsuo3T4iyBrdw==
X-Gm-Gg: ASbGnctM0iLgQ1XbtMSldwYV8e3P21UnaIsN6mAIls9v0zA+991ij1q48FQzUufoCqt
	56AKm32OelEVVQtG4sxPo346ji1IwokZ2PH0conHskgp35we0WVU/t6+FP0ScQ2lTC8OQMebXds
	jyrsRQIvL5VdqyG4p+joA/yvceGlZeJZKA4B6dVoX+Lf9tLzF6gGDHxNNNAT9geTJF3PWvSpCda
	bZ3pyuvfx0F0hMXLWtDDDxdUD1cE8mN4zz7jBxnrFPhTOUWDhz5qJKdb04vvkF+Z7UffRk=
X-Google-Smtp-Source: AGHT+IFGPVnaDRtv2gClXSnX0sH/hU/2tQYDsgz3FSsDzfiozT/9TYr3cARpl9kJdemTQgStsHfELCywzdcTfbAOhKg=
X-Received: by 2002:a05:6512:1325:b0:594:4ef9:41f1 with SMTP id
 2adb3069b0e04-5945f1db816mr2146235e87.47.1762769380663; Mon, 10 Nov 2025
 02:09:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027212642.1710144-2-robh@kernel.org>
In-Reply-To: <20251027212642.1710144-2-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Nov 2025 11:09:27 +0100
X-Gm-Features: AWmQ_blogvQPPAETGlrOkDS77tME5aB-9Sv0mNqgOJbiE_S-LtUsi9rfJh-GT20
Message-ID: <CACRpkdZTVaBeSPOFcVAwB1avUK21ftRrLGM=0bkBjvxOfo=XsA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert sprd,sc9860-pinctrl to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 27, 2025 at 10:27=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> Convert the sprd,sc9860-pinctrl binding to DT schema format. What's
> valid for the the sleep mode child nodes wasn't well defined. The schema
> is based on the example (as there's no .dts with pin states) and the
> driver's register definitions.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Patch applied!

> With this, all the pinctrl bindings used on arm64 are converted!

Time to celebrate!!

Yours,
Linus Walleij

