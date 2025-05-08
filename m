Return-Path: <devicetree+bounces-175044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A88B0AAFA36
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4049A3B0CA7
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A10014A4C7;
	Thu,  8 May 2025 12:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UTLmdOzG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E41722577C
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 12:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746707990; cv=none; b=GvQLlZNadAuPl38q5AWepjxH3qAkVTb05HLVIUAE9HONRNJaKcldUq1pIzylqKvOHBCYf9s/GulIgKzre+53qCAbFI1Z/f5C2/fX/httsUUnFXbF+gW35rLMMbzjlzHSdEq8fF5bMmniMgdSw3dVD1CBDFduq5vqZ/kuc95WYio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746707990; c=relaxed/simple;
	bh=nYbRnTvngXL8TZ/RUSCi51dLsk/tokgb7Y1lJ3Uts/I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oA2ABZjCWA0v4OgXBf9LmMVXkNjqjnFm4idCH8t5nt+uIBBx5nhLeDnf2Dw3qplN1sX8naY274s8a68IFuCk8WQc/GYRzuwKhq51aZKLB+sxKWbJuYL38N5yOzbORGUZR1t6chIbwGhe/6CpdyIbeneQIITENEYYdTyh/L0kVZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UTLmdOzG; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30effbfaf61so11904431fa.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 05:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746707986; x=1747312786; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYbRnTvngXL8TZ/RUSCi51dLsk/tokgb7Y1lJ3Uts/I=;
        b=UTLmdOzGPrj6UjhbYEdkhavjUzTVOgPjd7Uogb98gu8A6ff2sfSKQw5w0EiWQ+zwev
         wSZrVj7jsCRfN7VqxF7dTAA85td/glGN6tM4S3iIvNqAvX4Y62u4sBVpZYhlgs2fQW6G
         s0aen+4zFw5leBj7jL3yOhVMINnAGwVHW+hLsdf0wyN242d73PKIXVBnxbxy3hjIt1XJ
         4P2v1PiheM97uWYoI2q1oy46mAHvuY0bmWlZZyhgwfDfxa42NJKAJxI1NXDAOYwknxQv
         6+GBsHgwdSh4gmJxXDsWMvTngz/H5eTDI1ERd32DOh/y3iIyBFHTWscMijyBW7tONbh2
         09RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746707986; x=1747312786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nYbRnTvngXL8TZ/RUSCi51dLsk/tokgb7Y1lJ3Uts/I=;
        b=DlxhO/eKbcZqpWTat4nPPhDNEn7CjKLx5TB6Sok8b2dBTJLlstDovPtp2I1EVWfEi2
         kFg5bxwcqbNfkVq9AyRwB9sW8dkQ1zCQhG4q8y7mmTH0mSmHnQPUEnUjvOss3RcXd5y/
         /xSouC3j27azQ28eA9LIYYjF5W5nWwysxHj/e5SXLnZmWFUEhQ4GyT5q+sp0usV7gGzv
         KBlmucJIqduX2JeNz3/yr9OualwCWu/kJYbOps9S3nzdPtRwiCmLHwGd1k1NwmybrOBD
         OlKSF7fB2c+H/EqGK3L55YAD0v74RwDTGE0WuI1BDV0ACJHAFfm8XqqnHyAIPJqcutr/
         mSnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdo+7zDHyfSsssfiLSrviLCUkQG/WfbNl6CVunuwQ9ZVj3/6LbRiSBnYlSbeQ8wgsk4OCNaiPvnXXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyjCABNGUAy8WvSzJloHeE/hoJH/nT2huxu/KNb5+TQR/rLjX1S
	PcY9w079JSFXUj/vh0s5hl24WYv/lqMCn9gskxPB3HuKNR49lels/F3fye7yPsG2VCpR6vIKRSm
	goWJGI0y0WVNxoom/4WybzOm9V8jput9z7+CEpA==
X-Gm-Gg: ASbGnct6ONmJO7mw1cLGDkF4w7wcqRolhf6utk2CCjKOdW4trO0eFuC/9/+VF2hrQAC
	ER/ibtqcQUsvSBFoGXzMSmSm/CrzOHDSpBPorM+cKyd8lA7iy2XkRaskErZEAh3Qyy802lzR+cT
	xZEPCwdtq60UL3j+Z0zIhxug==
X-Google-Smtp-Source: AGHT+IGq3VdGMjg8OazCCc4CII0+nPRQNZ01hABaFqWf0AEHwQm7ayKUJesfbQ6Em4uNq6qZQ9GpKePgPTEqMruD+oY=
X-Received: by 2002:a05:651c:1516:b0:30b:ee7d:1a88 with SMTP id
 38308e7fff4ca-326b75c3463mr11198921fa.10.1746707986261; Thu, 08 May 2025
 05:39:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250506092718.106088-1-clamor95@gmail.com> <20250506092718.106088-4-clamor95@gmail.com>
In-Reply-To: <20250506092718.106088-4-clamor95@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 May 2025 14:39:35 +0200
X-Gm-Features: ATxdqUGblqi1KlMDIXY7oub3qeO9KDXkWp2T7tIpa9zxqTaWBLntJfiKyh9725E
Message-ID: <CACRpkdYo9ve4ERJ3Qv92eZW-ODqjhD-gxZ92T2hZaD8NJ2GErQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: display: panel: Document Renesas
 R69328 based DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 6, 2025 at 11:27=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:

> R69328 is liquid crystal driver for high-definition amorphous silicon
> (a-Si) panels and is ideal for tablets and smartphones.
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

