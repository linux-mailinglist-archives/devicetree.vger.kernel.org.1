Return-Path: <devicetree+bounces-70349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 286518D3239
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D548028425B
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC39168C25;
	Wed, 29 May 2024 08:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HZsw9ADR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896907347D
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716972423; cv=none; b=E7ZMbeiHpSNfCcwI59SR0x4zXgqbA2GC6hJVGJA8eB3/zIGfwIHx0Ji67dHHzqISKzVjnlFCtIZ6V1jvE3qHgZC/OgEnEdrBeH0DT3XuQ1vJNSZk/OgDFjC45k/tXXcu0IUvtZtVmHJNUOZxYaaB2CQgXejEgHc162F3gcg80vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716972423; c=relaxed/simple;
	bh=lvTa5cX1mmBZ1ZZ4KWiUXD/FpcG1GZZGSVfvUOJDuuc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ARc+jcIxjenYrHGDzkA+VW8eMeaGTKFRZOHxl5CR4JtviO9qIcDnhK0PTLnOcIjAA2T42zIYYLY0FZW4amHvbLoAeLy6McHclJ3YCzCz41LPG/ZsQTzGMzxfVqXO9lWfkSzJ63IhJ0DTx5zoDXqAiOdeFh+hGg8TeV7GegedOpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HZsw9ADR; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-df771959b5bso1841732276.1
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716972420; x=1717577220; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvTa5cX1mmBZ1ZZ4KWiUXD/FpcG1GZZGSVfvUOJDuuc=;
        b=HZsw9ADRdPM/TS/DCBnVuO0aSHroPL+J2F1HOkEtRENtPi9FIxNxx+iBUJB33YsGW5
         EAVdDtKj1xWYk++ectvUP7npw6lmgmw/hbuh+Mns4gb8EaNwE95ojggIgbzUQUhUO4KP
         uTvliiJm/j9LDqmyJGmbyhXvgnEnhyvgLH4FOyn3VXJMJClo9Ux4qnwKw7sLNB07A5z9
         ebNINa6H4nXh1kJXcflTZ2jxw+Gn1VqYrDNivTHGWqs+niJ7tMXw2Rs/G8TwFnFcWGi+
         d3tfquNfivIaEY2PhPZS14EDNLD/7aH/diq4ntMsVWxO93Ce8K8a3nTDS5LOtofTPInE
         kvzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716972420; x=1717577220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvTa5cX1mmBZ1ZZ4KWiUXD/FpcG1GZZGSVfvUOJDuuc=;
        b=g8IhqIJetuheyq7hXURoyD5ayXndcnyoNAPFxoV7jh4hIhVpCT5fPXlaEvxCKm8d0d
         w5HHiQTYwAj9JujQ0PbExPCwX4IybXYeS11fxj3SyQYANxigMj2y18gkx0krR/4RnE+3
         khEeiWPQ07c45N5ugTaKknfjpneUtyGHP0D9YWa5YIxRAOFJj0e98av7vw2DA7E2/TcC
         WImL5JRqO/gfyJhU9kE/XZI2eGpcWL+4U07IyNvYg+wkNbI4ehnqENU8nfKSCIYjdTm0
         us7co1UopXIjafB9KzPhtzbTcgnYRCl9bWlmoTWHa/Gh1tWrEHYo60PHDBG/APfOEDxu
         o+eA==
X-Forwarded-Encrypted: i=1; AJvYcCXNkA5rknKLX78chMHiVJ3Mz/aStcpDEEISU8IaGwXTQeOqaA/w/FyeJIHBgcFcG+u5UgWUAyxNfRon7mvOzQCqYLCHyj5krIXB0Q==
X-Gm-Message-State: AOJu0YxvY4e1GqSMY2pkviOMBiz6YbyN9h05B4CxlMi+1JooIC7lRtOX
	YiOl0Ku3s7KyMGNjLgAsHr1T90JMXaY4ifUE79DXtHTHUnntWP+J7gHOPT5Y1b8+cYxO/3kShWM
	/jWpD22AnoRIntEG33Qd1J6yFMHIzDuUMEp2hNQ==
X-Google-Smtp-Source: AGHT+IGuMznx5rWwHnVVAA5zaRjFtg8ZFNidvvarA84qFUsV/R+f1/mRXm1Lav0k09Px+qVqWtmoJmeY+03tojOc7sI=
X-Received: by 2002:a25:81c7:0:b0:dcc:8f97:4c42 with SMTP id
 3f1490d57ef6-df772155e85mr14425777276.13.1716972420598; Wed, 29 May 2024
 01:47:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528191536.1444649-1-robh@kernel.org>
In-Reply-To: <20240528191536.1444649-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 10:46:49 +0200
Message-ID: <CACRpkdZznuUSAKZx-BLgt+smaTDt8fVtJ-xRzL_0u7uYMDGJog@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm: dts: arm: Drop redundant fixed-factor clocks
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2024 at 9:15=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:

> There's not much reason to have multiple fixed-factor-clock instances
> which are all the same factor and clock input. Drop the nodes, but keep
> the labels to minimize the changes and keep some distinction of the
> different clocks.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

