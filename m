Return-Path: <devicetree+bounces-254344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A3AD176D7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:58:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5B203007F30
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E21837FF64;
	Tue, 13 Jan 2026 08:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cUS2UaGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F5937BE84
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294719; cv=none; b=W5AYd/Iz2KtWCeuXAfzTEimBntn9NTGrROvBB+ZpblGpkLOEOqWvuRRObwFNtNtl9SSTR+9kYDPxoTS2S9FePiX185eGtsDboZ5wlrZjU3x+3pSm1GjEQb200ZoqfgdlGn4E9/X0WFtqEMNrFiwVhzcvbAtOga+8prQah6KurdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294719; c=relaxed/simple;
	bh=qFAe31p8PPO4mtj+DijEpW3hOfltqumeq8By/+jReis=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y+uUR7DrE3gB+3bExmwvgqrcVLc5R+x/tobDkDoHIeYwShtRgTQZqLLQ6yxZV6jz3ibIwmR+VUQ6/Kh8t8YAxGdNnDgO2A9GOH3W1evf1dPOsmHuoi/NzyG4YSWccOAvRNEEVJndktOQMArqCQJQUOCZiJram1jvx3UndY5w5hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cUS2UaGn; arc=none smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-11f3e3f0cacso9197586c88.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768294717; x=1768899517; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFAe31p8PPO4mtj+DijEpW3hOfltqumeq8By/+jReis=;
        b=cUS2UaGnBv7KPR3OLSypvgIcCy9+LaWCIWJu1CesVLMq6XrkQGxebf1XDOHVp8h/mW
         /922KNKSyPIwgvTiEWFTU0ldfIvCRN92ZeWsVTSNl+bEIBeAbhA+AyRUVDuj63s4FeC9
         mfpK5UpFzhq6qcuuvZvr4kuIz0U1X4zE7X3rHFqhP3ppAH2H/kUgFbFqv7ti1DZLeo8I
         OAlRDnXv6j6K4AFYfmzFceZfwXbNxw7Vj1LdsANWvdpzDAqF8Sa9PbjvdRqRXSkrRIzn
         drJ7YlSNjUSfjkeAEc+CJTlEBQ4izXF6yGqH+Ctbd/nSzFU7tWyld90ly1ARugY+kdob
         jGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294717; x=1768899517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qFAe31p8PPO4mtj+DijEpW3hOfltqumeq8By/+jReis=;
        b=NdDShwppEKwJsLsICz3pJwqr6BuQM3Zwyad/0NoH/khqDEAj5ouHE4QhSkUBYfpPU9
         7RRv11iPbH/G7Uol5Wo2V5NYF0hW6+ACna1QDefmwUQMtO59aB2zLfVcq+jAv/RyGZHD
         fmug7Ln05SSYDwcYyFN2ZbrF9jE95W1aJP2SwoTPa6ZmtLY8Hd2I75OpOnjG5KlLfDis
         ixFfCqa/7V3ab9rGE4hP619mlzMLZSBvKaLjau2G+bVSYlCCoT28jC52AtQhozQTU038
         7J7T6RaeIPHXBMxocGcXZv4SpYFnmPqyzAI5HBERaCvUCUjhf45xZdOxCZ7DMSMiLsv0
         MoCA==
X-Forwarded-Encrypted: i=1; AJvYcCWWFQaGoqZtltPoEM1xlwgYSx1B5Gce3+oN2moXSIp87wwanCgLhDyNBcB8uY2DuSfcxH/uveBXN7qd@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+hKBkNdMhowpdbxhA1iST8p+1YqtkFiQUam+AJW9Q2Cw6PaXl
	vbHmh5sRVgkvRByvuY6g8TqvLivhbvAKzfrJ50kvxA/EcRLl35CqJEYqGSmzCXzddahnEacsdan
	4DQXhGAgTcZa9hetaPG5G051d25OmPXs=
X-Gm-Gg: AY/fxX5TKivtPEhyzkx4aO3TabPhC7PB2VbkfDzWwWZKordWNc3ZODP7AMp47Z/t32D
	gynZHvWMid8uG0FJq6QyxtB1cUK7SprmsemivgNsnXqLstOofFhYRtKl325RWfOfw/OiOMiAczm
	xSZdX4UdInmCsJD5q0N91Fuc6zjIIlLJ6F10DQw84vh0o3DOSgGLtSWuLVVLwp37rEh5Sh7nRcj
	p61dpzCityFxM2Rf82dZla+ajuR20M8fjrgBterhrzyyKJRX7b2vY1URHBXWTcxbfMOxGsArZmM
	KK2WEORWhUnUmU/Ko1uo9tgkzJbZ8aURPLr13KmuNW57K2L1KVSs2uZhav6y9r7HQWVL9OK0v7k
	YF2s+MTu7yw==
X-Google-Smtp-Source: AGHT+IHiFhj1SBZLl1zt634a7vOzJVi0cLQ2+ekOBzZnK6j9L0o9kjlibBH9Kh5FRme3B2cB/y9gNpIFI0l3hUxnOM0=
X-Received: by 2002:a05:7022:126:b0:121:cae0:a843 with SMTP id
 a92af1059eb24-121f8adce2dmr17795472c88.13.1768294717350; Tue, 13 Jan 2026
 00:58:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111-imx952-dts-v2-v2-0-5773fa57e89e@nxp.com> <20260111-imx952-dts-v2-v2-5-5773fa57e89e@nxp.com>
In-Reply-To: <20260111-imx952-dts-v2-v2-5-5773fa57e89e@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 13 Jan 2026 11:01:07 +0200
X-Gm-Features: AZwV_Qgo7fPdD9gHTGPqvBycw28dLEq2C2vaqXtaAyuZNVr2OJaK4dq1mXPXdQ8
Message-ID: <CAEnQRZDc6nbGZt6jzFTYv3VrS+HvcZ9uXCYOGm0XKR7qWSLQbg@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] arm64: dts: imx952-evk: Enable SPI7
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 11, 2026 at 2:44=E2=80=AFPM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Enable SPI7 for i.MX952-EVK.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

