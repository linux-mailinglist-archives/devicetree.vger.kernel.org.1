Return-Path: <devicetree+bounces-76933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3B490C961
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0839EB2231D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 11:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE4F15EFB9;
	Tue, 18 Jun 2024 10:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bDTs/Rhn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69EC15EFA2
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 10:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718706303; cv=none; b=JDZomZRK/Xm+CYz/3qs+tpt+3V2y8Goq0Nysy4TOUTwjRwpeyrWTKEz00fC9DL2fkL6CX51KNDCm92sfrhZ9ZIYQqkm8p7IDxgrjcgvLxd9cVoUt0jzQFRivyKUqgFi10BqQNmLPFZvF21cEMmRC+ToMwqn/uv6lXF3CilB1YnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718706303; c=relaxed/simple;
	bh=vORZc79X1rnxAyyCpSE7q09cQDfcT1xma8XWqw5O8M0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IRSEju23aS2l0VjQ3sVZFOHLQ29mPZhSPb/VFNvpcNSV7ga20g80/7PRAKppIZ1XQtlKQKeM+QAHt2BIISuxgbsABYfrPvwVzwbniMwPlIIfcOoEHPd1TNAA280/XKxMq+xeoQUADsV494KrojfWxdi+0k1TVpl1nUuX1SfIjr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bDTs/Rhn; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52c89d6b4adso4783084e87.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 03:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718706300; x=1719311100; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vORZc79X1rnxAyyCpSE7q09cQDfcT1xma8XWqw5O8M0=;
        b=bDTs/Rhn9uKuoFnAavsBfVwyr8eFN3dzixLtdqJEB9oNsOSDsJy4WKdgjuPtRwAUzj
         AHUEVSStMVkPdRBONr2O54308oMi9UJH5lG5KAlF2bVCipkgN1SlDe8T/Kb9by5lb6HI
         V8FV4Xxl4EDX3PeVez2yj8KswewrydhK2O64SZxX3WNs+pvEDBqDvE8l/QRdjKTb9xSN
         cqHJYWIr9c9Lo5/xbMPI9BTLjzp3/RlsnD8xKkNeLzALWI3OtXVSwt7X5rCLrBnCvall
         GCDZTA5a2ydaH1arxbAp9niOlhHT2xrlYCbMgKntghwyD5URwYfAqldHiU42tbCgPjX2
         2JUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718706300; x=1719311100;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vORZc79X1rnxAyyCpSE7q09cQDfcT1xma8XWqw5O8M0=;
        b=BFilkaZcpgxuqD7XVX1XGSMthmNW80xMGK9tT4y74VsWw7coaXKXPxqjWewYYGKk7H
         tJEPPVv4/MJKmTee8w+PzqOUlVFDJ8zYW0OJjLdnzLeJ5R0vzM59SS63CmjfK8sHUrB3
         vgBm4ejhQJ8nQB63/TGVgGvbUxsLJLcwbp7rLwGcU9sv7M/d5cbO6MKNr3f8bOAhTQst
         S1vqV37Jh6JfKq87L/hz0WJ7lUJwQOQGAKzznDqgmHPMoX5bZd7rxswGbILsymuRyPs/
         hMg7aGJCbCkSZ28Vl6dIkqfFZiNDE3OdlqCux9TaG5gbD8IZIsXDaPb5f8VXQ5gO0JXt
         Ki+g==
X-Forwarded-Encrypted: i=1; AJvYcCVnL0mJvPO5frz9+SDU4yG3GFe6zmIcm2FHYegFoXn/CJdJKqNGoQD36ZN6n+Y/m1+M2VVagaR1wBZtPN562JYmvohq/nyzbP2bJw==
X-Gm-Message-State: AOJu0YymNyujgF47+TDhLOinYzDWFwbNpNqjQy5YmPCbTamGcMn5luTv
	CpLjb3NOCE3LU9NWCm1Ei7qxM5K0WW8AM972nQrDghK3ENtfGVs0gfHHbcqPDvaukXJLY4g2+AF
	V5GrW4FJ6OuFLLlY3JLzcooa5kewjWlHPiYH+Og==
X-Google-Smtp-Source: AGHT+IGmdTolgQpGEP2QQMQ3xSyIW78z1iVbi6bOrtMBYdBJmz1sd/on240XJN70b3haSE6d2gxQr6Bx2fcQnQKq3f0=
X-Received: by 2002:a05:6512:ea4:b0:52c:86eb:a2e6 with SMTP id
 2adb3069b0e04-52ca6e567fcmr9051810e87.4.1718706300138; Tue, 18 Jun 2024
 03:25:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <Zm7I2Zbq1JNPoEJp@standask-GA-A55M-S2HP>
In-Reply-To: <Zm7I2Zbq1JNPoEJp@standask-GA-A55M-S2HP>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 18 Jun 2024 12:24:49 +0200
Message-ID: <CACRpkdYEjg==qRSVG_tZ3Zn0kY04pwXX9jMAZL1fQjPybNm1yw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: clock: drop obsolete stericsson,abx500.txt
To: Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 16, 2024 at 1:13=E2=80=AFPM Stanislav Jakubek
<stano.jakubek@gmail.com> wrote:

> These bindings are already (better) described in mfd/stericsson,ab8500.ya=
ml,
> drop these now obsolete bindings.
>
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>

I must have missed this file when I converted the bindings, thanks for clea=
ning
up my mess!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

