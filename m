Return-Path: <devicetree+bounces-132275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F409F656F
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:59:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 586171886290
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4BCD19F485;
	Wed, 18 Dec 2024 11:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iEGdaBga"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3038519F422
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734523140; cv=none; b=mqNAPElKunWKE3TS81Wl11mNrBycwYZxCHZMC5AWHG/4PcdPWFrQoEMj85chN5Fznt/ifinpAmRoaaa1fsYEs7bA8t7pm7rlbZz/y/0LlNeY//J/6mUIkuH23cGzz9Rng82tE5dw5cjkJio6JNtsOpJSVOV0zvv8a3+Kvy9aWZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734523140; c=relaxed/simple;
	bh=1+XS02ndYuHh8Y6R7lznhLt5EHIcca3+r9gOHrH6w2Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ethLivG565QrEbNnpcFmjOxhEn6yb502DHHU46zbp+OLyP2t9mcY888xbSp5k0CGYc69NB50ONtApxlRGzSQn4DC8khGEiX+I/qQ1j/lmIcwCn432aAzn0FULAuTRAAKd73RWF9dgLw1GZknPRf+kK2VaJvVW6+LU6QzWH8+2Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iEGdaBga; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5f321876499so333727eaf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734523138; x=1735127938; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1+XS02ndYuHh8Y6R7lznhLt5EHIcca3+r9gOHrH6w2Q=;
        b=iEGdaBgauuRo08fkM4gotu0SEwDDjBjAuBQ2qSJ7yRK0EyzZmExNPX/WE/6XYiZKV1
         ClWEt6lTx+NUObIBmGxH0dGXejP8UeVdwZUQDp6nyE+hEQSbfnXmgbwON4iVb1kKuJqi
         hmiF1f7//HegYtuD+wrkjn3QHABRPks/ENFJW9xbodBqUfDsW/MQPgRfVHO+Pjunfmeb
         Ie2A1D1qviE0BCYC11H/uRtfEw2rvSQzFyL0Fjic9DIjB+GacEup9T+yaN+3YiBpuczb
         wsxNgfhV824IyGP6MhET7tF2nKxDErFLLqzFFo6YcO7XWZF28RuZA+YqtTMEhqcCRt4l
         /X5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734523138; x=1735127938;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1+XS02ndYuHh8Y6R7lznhLt5EHIcca3+r9gOHrH6w2Q=;
        b=mI+8kps4MSw5ioaEEB5Ax/dOMsf0IzDWkThUA2WKNPZqF0+xv0/Ol3vBToOCwo7i+V
         EzypdQaMmb3rC+XAXTsuXMDFMkaIIzyTHXPpgUNeKCYYzgz6sCAz4QYfwCVgk2pIp5sb
         8+AM6NhAgAbGzAwi/ap2dj8tFK4peOcyB60kXsARvL92/e2qMSpOkE7D7OYkTLiG90Hi
         MxWtbFfRHBt3zQ7WagPCoNtnFbsfmJH1q9mqWO3pFOyW9/VYjwQpGtYOUbeh5vUTW8bR
         H7tSy0eiRfYOmTMHzMlVmxyEff/fMP+Ylqx0cL4etLT4j6T7E/njoS4PWmZ8+7nTz6Sm
         Ywrg==
X-Forwarded-Encrypted: i=1; AJvYcCVdewarqOoOvUTCSOTqvQMuZ5KcKnDoJK6B4d+Z1ahZeYuOCehuuD25XeAfnCRLDcxj89mQuuWKbGwK@vger.kernel.org
X-Gm-Message-State: AOJu0YzWYPKGMzDVCwvAjhs3eQWNKptMK9jtvge7Tk/E2yt7RNC3PYSa
	uqJaLlCgBHgAByIlQot0ZDM3bOgynWGlOBkMQY3fiKq8QDn3jfnEstuFDp+J3uktX+wBUd7+tkg
	CxpSs47emfMIOfkzwS90vGkefW8cF3jBCofjhvA==
X-Gm-Gg: ASbGncsi4BD3nBE3QiF4ETGnXSbsLe76yHLQYBeETNIHC6KhzCBDXrZhRms1GwKR7a1
	6oemvkGl99yiKlS7LeTRONf6JMIDLv8mrqkJzSQk=
X-Google-Smtp-Source: AGHT+IHTn5PamW7QopLfPRzomInn7e/qfueiK6Mp/67924pi7x26nUbu2hSnUQW+W0L7ObbKhwdLAp9PQ0RRDehLdt0=
X-Received: by 2002:a05:6820:2287:b0:5f2:c5e0:453f with SMTP id
 006d021491bc7-5f4ca701b85mr1225321eaf.4.1734523138285; Wed, 18 Dec 2024
 03:58:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217-acpm-v4-upstream-mbox-v5-0-cd1d3951fe84@linaro.org> <20241217-acpm-v4-upstream-mbox-v5-2-cd1d3951fe84@linaro.org>
In-Reply-To: <20241217-acpm-v4-upstream-mbox-v5-2-cd1d3951fe84@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 18 Dec 2024 11:58:47 +0000
Message-ID: <CADrjBPp5M8+3eX75XEVPUO_voVBHP_ZbMXP6YRJbrw0xj8ftRQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] mailbox: add Samsung Exynos driver
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, andre.draszik@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com, daniel.lezcano@linaro.org, 
	vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"

Hi Tudor,

On Tue, 17 Dec 2024 at 09:40, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> The Samsung Exynos mailbox controller has 16 flag bits for hardware
> interrupt generation and a shared register for passing mailbox messages.
> When the controller is used by the ACPM protocol the shared register is
> ignored and the mailbox controller acts as a doorbell. The controller
> just raises the interrupt to APM after the ACPM protocol has written
> the message to SRAM.
>
> Add support for the Samsung Exynos mailbox controller.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

[..]

