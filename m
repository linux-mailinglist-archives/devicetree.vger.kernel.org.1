Return-Path: <devicetree+bounces-76721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C4290BB92
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 21:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0A20283924
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 19:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5AA190056;
	Mon, 17 Jun 2024 19:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="h4FM0aEF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08E019939D
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 19:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718654241; cv=none; b=SLBS01XOeyqlBk6Ueitz4BSmfvGRLBCNHGpv6JmltMJPXcm7vhfcGMVsExWRgoDpP89a8to3lQM9kcrL/BJ3pxiOXj7GfyamwNviBrUM82xUeup0WjqjKZwn0FnVV78y17wY9t5Z7LYfiP9JOGlsBVdeT4Tg/vDTMI05CefTHao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718654241; c=relaxed/simple;
	bh=BPGfBSXIDGz7yjzlZ4GzjDeNK36NgkAUkgVC//2x3N0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ryp+Xi17y/UTEqC8SqYENvcMaZmM41cx3AtUhPpcf7iMVN7+NooO9VYhH/5Lfx9mOUvua0JsiBD6Osxlxsn0gALOYHuSMDs+fzntL8fOx6GoqhWD/y+6tGpITodFczPQ/Oo26GriArb6bZuG0O1vluAW0/nvzbbHRjsyF/C3uEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=h4FM0aEF; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ebe0a81dc8so51753941fa.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 12:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718654238; x=1719259038; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BPGfBSXIDGz7yjzlZ4GzjDeNK36NgkAUkgVC//2x3N0=;
        b=h4FM0aEFGHuZ0mu5fvJrmnRpR3162gXoaJGMrkX81jmsyAci13rhwTkbeFsWavsE02
         8yRakAgqttTM3w+YPaGNNj+UcPEvhXAP97o7d5Vzja6D2KdhG7n10PkEhGjHXZC5nrY0
         99xUYF/bi3g7EYeyRgp6CySYNoXoNSSTaPypyLgxz38XnVC2mrniq8SgmZAGUBjtwzGB
         0FZkTLDWL6fkLtPrN7ivm3MEMoRNd04Vgctw3ugRCTpMnAuN+vRVLzoQFvf8+0mpephf
         do8uDIyOtOhhwrg0nLgGD8DosjgKWjeT/2viBvXaX6MwRisdviQv/Y+M/XLulNcipKNf
         CaCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718654238; x=1719259038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BPGfBSXIDGz7yjzlZ4GzjDeNK36NgkAUkgVC//2x3N0=;
        b=DABXIzr/pdAERxX1bg2uGG0Oj1AVjU0GyaXtlBTnjF5r9d+CphAw8m1bhU1ZZG5tK+
         bme9XYlut0KukJqu8EbaMFLoadWPH0s9ElfOB3FSFYlPDxGNTbORjEF9HRwYnfaQTAVT
         kZY7Z6h+NGl2rKEu1aZrb9D6A2nb8OICGih10VN4Viri/sIqa1O1IMQwnh1GG+QtM0Np
         XQvewB7d9U9GHrGWQgiZsCw1WaUx63JtZzQhFBSpt8lpLf0KO4KfD8wXFwvrmyqZmIgb
         MH+xiw34FEw28sP91QQBtWrCL13D8CsWIMiU4vcaAbLTZ+PZplkGbIcfnl2ntZc2CWzc
         0Dgw==
X-Forwarded-Encrypted: i=1; AJvYcCVKOK0TqHCJPLcLWwUS0s+B/OvnsOTjxpYY+F9htiL6EiAf+AGLri08tUMUFYY/VcGIr6lADIYI/3miYghBorYkO4xZwOfZYuOjPA==
X-Gm-Message-State: AOJu0YzKKIz9DjvbTiqIenVAngzqguLWl/kDekiP7cRry7DOXUwvZAv0
	U9lWGu62sDI+eO6HMO7pu5tG2IsRFsf/PVsDjPB8UrGjAHh8ji6C5/EAaugRrPbGprBnysn9M52
	MqwypK7cJQSqL/dL6B9tNplbNAhEatWfCdjsVWQ==
X-Google-Smtp-Source: AGHT+IHTU7Jh6DU7VGE9POXczJ3FUWDY9c7qjW478IAmZHY0i+2WVDCPuGCN/ls9eDDXzEL66B9bz2LR8Y6OPn0iPqc=
X-Received: by 2002:a2e:87da:0:b0:2ec:1dd1:b3ae with SMTP id
 38308e7fff4ca-2ec1dd1b5e3mr59198141fa.32.1718654237778; Mon, 17 Jun 2024
 12:57:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527-shm-bridge-v10-0-ce7afaa58d3a@linaro.org>
In-Reply-To: <20240527-shm-bridge-v10-0-ce7afaa58d3a@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 17 Jun 2024 21:57:06 +0200
Message-ID: <CAMRc=McQDBywMqu43vG=UXyEH6V6w1REyYAtEPQuogH7C=Sj-Q@mail.gmail.com>
Subject: Re: [PATCH v10 00/15] firmware: qcom: implement support for and
 enable SHM bridge
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Marko <robimarko@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Maximilian Luz <luzmaximilian@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Elliot Berman <quic_eberman@quicinc.com>, Alex Elder <elder@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@quicinc.com, Andrew Halaney <ahalaney@redhat.com>, 
	Deepti Jaggi <quic_djaggi@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 2:56=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> SCM calls that take memory buffers as arguments require that they be
> page-aligned, physically continuous and non-cachable. The same
> requirements apply to the buffer used to pass additional arguments to SCM
> calls that take more than 4.
>

[...]

It's been three weeks. Ping?

Bart

