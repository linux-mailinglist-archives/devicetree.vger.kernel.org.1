Return-Path: <devicetree+bounces-69032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C19C38CE901
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 19:04:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 63C421F21171
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 17:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD5112EBC9;
	Fri, 24 May 2024 17:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rSFr54Q7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10A26FC3
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 17:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716570284; cv=none; b=F2yhDxekelzbJuArMMHAfOYmybSNgEP1mFuUiHtTOwN6X7gvb0RX1uhRiPvebFlJwcdcpKRYNxpPysAREYS6yUx/IUQMJKWjAJS2aTt61cjGKujT5HHtdrMVAnTRRjE+efn2COkjIk9QhLa8dwSvw8EMoAOz5a+Kjq+27l9M6zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716570284; c=relaxed/simple;
	bh=rJE263YISCij1EmIdTcRwM40u3kR87IR35EC+jgragg=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=b/ULj0piRS7dn71kk8T598bMBpV11z4HT2lj4sTxoGGJB4DYf+x8YZIt9Dv32VoqcB/FjISyhzlxyWoRkhjqvGKRMUWviqOATUE6DeZXqqfvLNiRdOd/MF+rpjdaEHh8qIj5Ov+X0Ox1ALmz6kEeLG0xAI2yHgeROa/9Atv36ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rSFr54Q7; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-43e415ae282so40031041cf.1
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 10:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716570281; x=1717175081; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=103YsFNsMTXDCwKBR9YjseSwxoiUd4PI1qUX7kud7uk=;
        b=rSFr54Q7tEsWj+Fpky6hG9fVWjrPo9acjG6tbNx1mJ6Bz9XIqEhPPKPzs66tQj29fI
         abnZj+sFi7OcxtzZaO+s6sD8/1mMk8waNytAezMiSfdMJJti6BvINAGxf04lZxNRUcWG
         lI5F+3b9d6swUNCTKPdu4eK9oWD70NCfFkUcwm4xKUifDcEG+nahIPDqNuX1ol5FJJxq
         fKzCn3UMhBryzJ3l3QNG7tVvz0V3ySYrw1FV+aCO85CQn3MHs9/ZJkYo0YgnF2ikGQ9Z
         qGqgbNYNqor6w6T6RvODTO1jz/PQmAfL88p4QDPcQmiS5CVSfWCtvD/ocMIipejqgw0p
         xHkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716570281; x=1717175081;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=103YsFNsMTXDCwKBR9YjseSwxoiUd4PI1qUX7kud7uk=;
        b=HGfAqaFDIzN/C66gRqTRg4fM8jBTkJCudAZJwIhL4jtVWEhe6VTVXNOPVK1et8oBoM
         AOfnruvoLlEyCKwxwqc4gjiXWzFwOw2sKsKjdxIWiQY3Kf9kjqqnuiDOctpY1epGFCii
         uJIgW4x65z/QY4nyCoL8qAbb+byhI04sdctc3TOcoTL3HJhdJT5HvegnrddSdV6N7k6p
         cnQPgWLzeibA48Pywe29y0a45Bz5g4F1yKORw0JTLoIVX1gXV2/gGtDsy6TIFPq1lEwj
         24hTTf5oZbaYcEDtoIFyS6uChK4PwWQJF0+5PfF7FFnqNtKD05arvEzHHGrXVoc2bEoe
         6hLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq2AwkTuzCAlx8ZBlTqbCAhNEHiYvENkpPNx9Wli/BmJLl+fDqh9ZuByZ3BRllhJJd/HfuYqiiDdjc/+xgd/wiRnPoLRaxj34Nvw==
X-Gm-Message-State: AOJu0YzK/+XG2cAr1HEs/DY+Wskt4rXmFaobJaoPqwSlumv8dmhB7Orl
	C2NeRNA+92Ju40xyZPER4PMFpcG3N/pb2xkVqL9npsl/Bnf1SwKghPn/bmjJJ1o=
X-Google-Smtp-Source: AGHT+IH1UW7JaY6cjE18kQP2rfBZaK8ZAUYTq3i7crFhcbD2OCRGMioSXW3Nwj4b/xZ9saW9vDyksQ==
X-Received: by 2002:ac8:57d1:0:b0:43e:3c91:cbaf with SMTP id d75a77b69052e-43fb0e4c066mr29951661cf.4.1716570281512;
        Fri, 24 May 2024 10:04:41 -0700 (PDT)
Received: from xanadu (modemcable018.15-162-184.mc.videotron.ca. [184.162.15.18])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-43fb17fa057sm9641811cf.40.2024.05.24.10.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 10:04:40 -0700 (PDT)
Date: Fri, 24 May 2024 13:04:38 -0400 (EDT)
From: Nicolas Pitre <npitre@baylibre.com>
To: Julien Panis <jpanis@baylibre.com>
cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
    Conor Dooley <conor+dt@kernel.org>, 
    Matthias Brugger <matthias.bgg@gmail.com>, 
    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
    Daniel Lezcano <daniel.lezcano@linaro.org>, 
    "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
    Lukasz Luba <lukasz.luba@arm.com>, devicetree@vger.kernel.org, 
    linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 0/6] Mediatek thermal sensor driver support for MT8186
 and MT8188
In-Reply-To: <20240524-mtk-thermal-mt818x-dtsi-v5-0-56f8579820e7@baylibre.com>
Message-ID: <238nnn48-0o7r-22q2-2rpo-s3n7n62pn2q4@onlyvoer.pbz>
References: <20240524-mtk-thermal-mt818x-dtsi-v5-0-56f8579820e7@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Fri, 24 May 2024, Julien Panis wrote:

> [RFC] When PATCH 1/6 and 2/6 are squashed, checkpatch raises this WARNING:
> "DT binding docs and includes should be a separate patch." That's why I
> split them in this v5. The problem is that the driver can't be compiled
> any more at PATCH 1/6. It needs PATCH 2/6 to be compiled. Should the
> checkpatch warning be ignored here ? Should I finally squash PATCH 1/6
> and PATCH 2/6 ?

IMHO it might be preferable to preserve successful compilation across 
bisection than to appeal to checkpatch in this case.


Nicolas

