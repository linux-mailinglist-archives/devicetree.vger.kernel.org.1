Return-Path: <devicetree+bounces-254412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D90D1800B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB281301458E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AFA938A2B7;
	Tue, 13 Jan 2026 10:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SJnlgFyE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DE7389DFA
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300051; cv=none; b=UbIdsnNoauOPIec5VGFsS/iTkFjhCvHkyS2pSQqjQEd1+IWo8TbpfvmC1hBQSwYNJnxCqqHnEOMeh7wSDW3nkc2tGrlxFSqB35rwlaQa02kSSMnG7kq+Hij6Hr8x6Z4XUweEH6F8mOyLpTqmcPmntFdXAsG8EGnYXmzqD3uJl0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300051; c=relaxed/simple;
	bh=j9j/FxY93W6EebNy78ig35wmDS4XaSkKhbvzGGptDpY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rlEpbA70bgXSj5cWvxGFE4+5LzNRdd7f/accx/T2c0nw3ueIiyvloyFFiBnkYJ5oEKL3JaBT6H9Kj2fSCCsyN+sBDJgOjUcl6+A1Bp9ppfmNHQB/RAtSgxArZ2qH1GWMaM4AQMoscetSsrSByaaQvfVFBFDoX7G4gSBu9IGHxGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SJnlgFyE; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-11df4458a85so9985345c88.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768300049; x=1768904849; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wW2RV5GZiteOIDgKP3C/DU2CD20lK7usX0CbcTmS+0w=;
        b=SJnlgFyEyVhQEz5chy4pd9YrYFQBsyq/JojEN3qInX9tOQDALwTgDgmLgy2UFaqeFO
         TznNDdAzvcc+zA/cAHRlescexR9sllBMB3k1U1Jk2rc7lO813qXEWJbTHswnuLb51kTS
         yDtLXLnzUB3bOX07tDXAtLjec/fsHtRXryjHrX7GS1oW6/0zjdzvs3s4w3pz2tAlM/6Z
         6ix2+nfnPjQs/nIeKx5YkrdWKiPD612CwwjXrRHvray7nS0HRIyArlna+KPqec1+LPAE
         AyZhdnh5NuO3P5jS/kMK3oSn7q2286KcnTZwf4UPOe/YN8Iyc8lZh3wigpp9BAS84u0G
         nWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300049; x=1768904849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wW2RV5GZiteOIDgKP3C/DU2CD20lK7usX0CbcTmS+0w=;
        b=UMk6sN12gL+ok+rLLDNjmDZnORIBaMHvmVVnfkFx1VdDqr/vZDzz5YEvbhpu2IPkPx
         9KBKFYV9wfJ0YY7VDm0dacbwjKRnov+N11SveJZ4EOLjme775FbPolCJXAvioQEqN3MV
         V2HxdEPJpliMu/zi1f42ITbshCdwQbqTH8GTIea8LmlAG8LcBUUR5lpPXM3k7BPQYIZ/
         DlQA/kX+BwjDe6jjlw6dJKDljejZP0+CVLZgYBvjWH5QCp9K0O+CDG7uvFb+2tDIHI2G
         0PJx0oXAVLMnip++0KRh6/QzwFkX9CxslkagaAUlXmr7oweZAa1Q21GGmq7OhYDCVUDc
         sOtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZb1ouJaPOdZ3VdBA64GJ3/RtpCvuPBAcPnuKUGPMi5IUGZoT+E8L6tEtYoKEuySpR3nAFPY8mBdLA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8X7oMlQh6qiWbB86wc6mJYxBajzZcUZRzccyApyMtVyYa/K0h
	0B/ArgJ/ZwpiP+HyXrpjVMBtFTkNKi3RxYXvhOQqLT0H771OOGKCxikP0H4pLjvNpoIAsWdf405
	poqDy9vidzhmtqF4E2O08z9sJn/7CdEo=
X-Gm-Gg: AY/fxX5whfQ/ks7gNawM9IxKSMwIyr+SqS4hWGwgDzjKOf7Z1yjFin9Bc9zAv48gQXJ
	r6QMpXIQx8aDNim7dGFJck408i15NSH/cRLC4mWideCQidKsy58xJ4Pbz8DTJm2m1ik5nAH1aF2
	9LOvVtqloYC7SVhIkquR909NP8DEPppc1Yhxi6FB/GUpZtQBJmgqpueJuiuZIgE/xE53b1TT4BG
	h+zzCX/oRbA0LrHq783yhAss76ptqhnJwdicOFQmPIYZWmv+Tq0bHEsvPv3ldrGROvMVGSavO51
	6FlVwNAYqvDvB7IcWjUtDIgb5yVXUFuaMpP1L8yWX3QUVB2UTaEs1tA3RZnTc63us4iobFXHFuZ
	fOzWM9glT4hxOeY6nDNhw
X-Google-Smtp-Source: AGHT+IGfZnTOvyA+GnXypmSKKp8ss0rUr7qVhUutqVZTtjEFsV9r1oGBsX3My8UCe04SYXGn8hA8XADTEg/VbdC5KTM=
X-Received: by 2002:a05:7022:621:b0:122:9d:bd43 with SMTP id
 a92af1059eb24-122009dc38cmr17343117c88.19.1768300048919; Tue, 13 Jan 2026
 02:27:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109-imx95-rproc-2026-1-8-v6-0-d2fefb36263d@nxp.com> <20260109-imx95-rproc-2026-1-8-v6-5-d2fefb36263d@nxp.com>
In-Reply-To: <20260109-imx95-rproc-2026-1-8-v6-5-d2fefb36263d@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 13 Jan 2026 12:29:58 +0200
X-Gm-Features: AZwV_Qhqne5fRPBq_W-RkiEIzWVDm8CQPMcCvVpNRV8tzXEGjqNR0mdGDlyatAc
Message-ID: <CAEnQRZDjfyrcMj5ykvAQX1RzTMBCj-EaiM8SSKePb=6FyG+1cg@mail.gmail.com>
Subject: Re: [PATCH v6 5/6] remoteproc: imx_rproc: Add support for System
 Manager CPU API
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Daniel Baluta <daniel.baluta@nxp.com>, Frank Li <Frank.Li@nxp.com>, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 2:16=E2=80=AFPM Peng Fan (OSS) <peng.fan@oss.nxp.com=
> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> When the System Manager configuration places the M7 core in the same
> Logical Machine(LM) as the A55 cores (M7 LM ID equals A55 LM ID), Linux
> can control M7 using the CPU protocol API. For more details, see the
> previous patch that adds LMM API support.
>
> Changes include:
> - Introduce imx_rproc_ops_sm_cpu for CPU API operations.
> - Reuse imx_rproc_sm_detect_mode to detect shared LM and set priv->ops to
>   imx_rproc_ops_sm_cpu.
> - Implement imx_rproc_sm_cpu_{start,stop} to handle M7 start and stop.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

