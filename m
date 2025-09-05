Return-Path: <devicetree+bounces-213166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C59B44CAF
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 06:26:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3A1B487EE4
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 04:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06EF7258CFF;
	Fri,  5 Sep 2025 04:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="htMXJrRR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B23223715
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 04:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757046364; cv=none; b=BXqw+FDCLAXYTQ0EO7VeRsKkJLQNbDNhbt4tf8Kv1xJr3gMEiOit5o6rIPe+DF06LAwk0WTAOsqlekbc1VJ3D48Gz8eZUFP99YvoBMiG9ZvcHUIxjPTTCkPgkPzC/YaCm8koaWDpknC/FVsyrvO8TUI7vQ8UdUeHPH9GHc40ecQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757046364; c=relaxed/simple;
	bh=IHmo68YQ7L/duddAgclVIEvUtWdksnELEMP5v/s9PNQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gKRFVcp0qrdTU2Bnx7Id4b56okYgCT8goOpoS6Lu86WV6qwFbonJgzlXFTSHK17nSdZfh56xkp3qu5shA4hWhwaDBfpBIm6aYaX1wOxmJ7+SoSdnehDbdnE4PJxkg51Wjey4XY6Axdd11xcLg9E3UCT5VXcNUtiZkyHmrrGZzEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=htMXJrRR; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55f720ffe34so2246093e87.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 21:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757046361; x=1757651161; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IHmo68YQ7L/duddAgclVIEvUtWdksnELEMP5v/s9PNQ=;
        b=htMXJrRRMGYyCmihQClevvmjDrLBJX7Z/3XgUtOCOU7dthuqse7P5iUGq8/t1mW3V8
         fcpakuzx0HKkJ30QzYlnKffMhb+SdxpVUetVkESl6QcwonkAFCf2bUV1fGGzNQiN2Pve
         2oEnzR5onaauL8sipAf9CWGwPWzL2IUhU1GmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757046361; x=1757651161;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IHmo68YQ7L/duddAgclVIEvUtWdksnELEMP5v/s9PNQ=;
        b=QyhxGsOETxsEqfK9reGsKJy8M8ycfmCIkny0hvFiS2vVKUAE4aP18x77iZkhryiVHv
         NVRK7E23Hro1CEt5/WQHbl0fPCit0b2QdA8ZZx2gduVmhkTYXvuCfEs4IHhwBBg2c24F
         Tu/3RVBp5uG6xTI4yumfTHs5oWXr0XyF5gJLwykv5JzX/Q1zj8yZVz5C8ta9J65enld5
         Mhhfuvvw+NlPZniqSytUbjDt6eaA3E4BjBoovPbyVZMfB0YMnfyb6OINYXL4XyYYxPOV
         kSpG2FG83WXnj/QElwI38DtH+fxRAlwu1fW8i3IDRPHhQWfMELqk+vN57nvzrVsx4qv7
         q2iA==
X-Forwarded-Encrypted: i=1; AJvYcCVvyGXfAT4q9cx38vh/sBKx+fJ29ZbAxDT86kKpnD/KALppFQLaUeqNCbJfXyqpb9YWvsiOPTMO7zxi@vger.kernel.org
X-Gm-Message-State: AOJu0YzAI2vKf8T7QpZsx2BPVfmZlqjL+UflsYk6ocslTXZ4gYppnMBq
	Seecd972YNJ6ELsleED7yXn6RXIMvCWKJ1JRDdkX7dBrpu7UvZHPCKOOkoycgsdha0NrQJFmZyJ
	IQ+aDnGrugZ7oM8TLUp/biDMo8JQoYDDwWbaAf0T4
X-Gm-Gg: ASbGncsC7hpwrI/QTKNukZT3s13EPA7Z01/gr3HNxv581BL++NZ9IMOB7zl1k0nGypo
	SKpGGew1nlY+uQHa9lnv+eDIgRno6Gl1knmF3HPmAjWODakfJ/fwxHDLX26WtfFAcYLBTuC8iSb
	+6RF6e6/o3/PLykf3u5q/efhlvArVhfqhneQk5rFz8kMApujKrPOrMYz220Og7Ps9kGOhUFvoop
	vtVEDz2K0/bCS/zoSDl0MosXoP4xt5wjam/7Q==
X-Google-Smtp-Source: AGHT+IH5pWHA8nQf6AbDXyeEcMeTEINpq+oHNFsdmhAJKkVR1+KEZHE+PC3gHq59gfSmiiSALqCN4LCODqxkvK4xsXI=
X-Received: by 2002:a05:6512:3c93:b0:55f:552c:f731 with SMTP id
 2adb3069b0e04-56099453ef8mr666761e87.7.1757046361254; Thu, 04 Sep 2025
 21:26:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250829091913.131528-1-laura.nao@collabora.com> <20250829091913.131528-8-laura.nao@collabora.com>
In-Reply-To: <20250829091913.131528-8-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 5 Sep 2025 12:25:50 +0800
X-Gm-Features: Ac12FXzDHpGuz6HiaGhCY4WidH-LRTm2axo9L1u6x0u8-eqIT-uiyLk75FyGJCg
Message-ID: <CAGXv+5FgKsg0sM6EXeTL=du2BY1xgH6jVmtQtb2M0kY3iix-tA@mail.gmail.com>
Subject: Re: [PATCH v5 07/27] clk: mediatek: clk-gate: Add ops for gates with
 HW voter
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 29, 2025 at 5:21=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> MT8196 use a HW voter for gate enable/disable control. Voting is
> performed using set/clr regs, with a status bit used to verify the vote
> state. Add new set of gate clock operations with support for voting via
> set/clr regs.
>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

