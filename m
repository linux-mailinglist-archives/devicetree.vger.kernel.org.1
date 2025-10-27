Return-Path: <devicetree+bounces-231396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D1DC0CDFE
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:07:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A648419A6DE8
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A97C02EF660;
	Mon, 27 Oct 2025 10:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WD1KCBdt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6B02E0406
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761559477; cv=none; b=KV72+B6csILap7G2eBtR9lAlkZF7ikkDMVB1iXjovrtLZ7N+loZCh/NrnBHs82W+AviScM7M0lUMvbPQlxXAGETwwd8jTwteT83McRvvrOJinfH0pDKYCaBn3nXhPUJpuuSCW3oCnQLMBfxJ8TjXNLqeVGU7f3fnO4BBuZfhzCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761559477; c=relaxed/simple;
	bh=bZ+q597kUNGqIq8Y48TGj7KcH72hkRPIAwT7wzsSsNE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cocPfV0BbHwcXJ0RbYCjqzmridJFEvzCglLG9cyByHliucBwLD3rTxITpBLknFoZ6R0egfkOh4xdrGdzhQ/IIE8q+LifwUP8s+Cnbn2RY0n+Y6wqozf7GN4aXvoGO4XkEj60uxDLuo/iZox/8nlKi7Vsqan+ds6kxjNSkN1c87Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WD1KCBdt; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b6cfffbb1e3so3043271a12.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761559475; x=1762164275; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bZ+q597kUNGqIq8Y48TGj7KcH72hkRPIAwT7wzsSsNE=;
        b=WD1KCBdtVr6Uaf9+9XtB5USN+vvFfrFollNT/kQurwRdF5GgPxZU6Piej6sbf/Nmso
         pS3WSR2v5QqFrKbcDiAWkIf6U5tgqeh2lJ3tNNAsToEv7ldL0UerM22oPjbPXurjPPKy
         Zfh9h48ml1aDyZoqIwPT8djKKyIGTTg8iNowpKfnZ4/qWLgPq72lNYYFbu152iDyUgjO
         zyOq9DUHZUfTg0U/SLqr/LAfqxg8x+pGcheMMrfV7kR6fzZOSGG7vE1GiXHC2IZD+UTG
         MfDj/5pDUVv5aVrizCoakLxOHa8njkfTRA5kk8mTbz1nxtqF5NmyKqIXGd+8TJFPoWtI
         iqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761559475; x=1762164275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bZ+q597kUNGqIq8Y48TGj7KcH72hkRPIAwT7wzsSsNE=;
        b=P7hR+Z0xwEryTaHmhQ2sufwKjIp6607KcnSY3trZxlx1SgWsfMv+5rIUUzwcWc8n+E
         Bq0Ib+8Tz259t/PHlrqMeFQtMCAsIj8QC1dhAnA/6h7tZFyqw+8nTKJ4jDSC1VKN8wJ4
         v4tgIRXnGI7TM0RGZhfsE9FTR8igId486Svca5anIGNu3sMO85lI2R68G8azljtkwcxf
         fJAa3j1oFs+A/SYe0RCRUyGVs8CRl63sislWqwHlXHNgjbcWgp8FgyZAUMy+DO+FjI78
         wAScvnFYAz4cIIxp3YMRKUnRyMdxSFmToomqN1SGVhiG+psS1sWnmTmpEuIORkWr/+6z
         8Ocg==
X-Forwarded-Encrypted: i=1; AJvYcCXHLTwsC0eLhma6mQpnTlM9Iy0yTxOA3pWmsKFGPKjtAK2r6h2yPhHkKXdAFjWSETDzAf3VzsGl6xE6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwhi/EH4W04ErHses+CLDZgbC29WvNy03N7MRMdPWPzlszD/qR
	BKTgGOQRoO9JXy0uOHJ+62+2RdRMjC4cMWwyzZzuismYT0t9gLOgqhSAtnEhKvoCPh/HGn4TPCN
	SG7NUDyJ+R0fXwqM7JEVvK4OkVEL7EwU=
X-Gm-Gg: ASbGncvqyvExY4MMrYvRzL7BSIymH3ziumyOuc4V5Psjj/FDCXRUZDWbIjh71mbNLWq
	PC+6TxpdO8iWAIqeztqpXWEzxEAU7MBz8MlLp6guoZXBStYR3An6KtqZcRV+XtyOMgZqGwWV+pE
	5uMyzpoNrAv8S+lJug4MOpE3hVOf3+Bhkj2NrBNzj5elJaJpiZyMd+orXGJEiorg82HwEeAGbRE
	T9b0nCzphdPiq1s7VuGwt0Fzxr+qXxqmP3c4E1QO0p7S+YLsa/Zi8eW28sRWlpe5bb3ObR/tqsC
	hFbvG/aEDWxAZg==
X-Google-Smtp-Source: AGHT+IGw9d1pKeseKB3lkBBW02LMj7kEUpU+h4+fmOwbWm1TH6VnLmuaWiTPpQmTwuE7imUFGIVOUC22U7kWNosjmns=
X-Received: by 2002:a17:902:ec88:b0:293:57e:cd70 with SMTP id
 d9443c01a7336-293057ecfddmr246648875ad.28.1761559475507; Mon, 27 Oct 2025
 03:04:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com> <20251017112025.11997-9-laurentiumihalcea111@gmail.com>
In-Reply-To: <20251017112025.11997-9-laurentiumihalcea111@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 27 Oct 2025 12:07:00 +0200
X-Gm-Features: AWmQ_bkbCiTHPHYYWScVXCVLYPxiC042hgQVGHC_daQ-QvhcSia1ZdA6dYYMWm4
Message-ID: <CAEnQRZAN0Kn=3hnw6dvCDsXXrQc17E87_hRT1R78ueKh+PzKjw@mail.gmail.com>
Subject: Re: [PATCH v2 8/8] arm64: dts: imx8ulp: add sim lpav node
To: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>, 
	Shengjiu Wang <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 17, 2025 at 2:24=E2=80=AFPM Laurentiu Mihalcea
<laurentiumihalcea111@gmail.com> wrote:
>
> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>
> Add DT node for the SIM LPAV module.
>
> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

