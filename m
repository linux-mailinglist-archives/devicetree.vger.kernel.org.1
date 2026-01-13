Return-Path: <devicetree+bounces-254355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FC9D177DA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6B08F30060F3
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF0B3806D1;
	Tue, 13 Jan 2026 09:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MjptcuPl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3953815C4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295258; cv=none; b=af0eFzFXn3rNpq4hrHuO7c0YawerhxX4cPITI3w58m2BNG3o64fpOXomOzl620zXtNO0wM1M/LXhSHuobqLGxpCnxnT+2gnPIbQF56wUX57r7canhgBg4EvoL92GTPLtf8wwAe4+++RvelgjlX0hXA8Ttx4uvhhhjfF9rOsxJg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295258; c=relaxed/simple;
	bh=koPjTBX4iK9OQ+Ff94Uc6fblTMyD4uSDXtmNeEAxpE0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I8IJZrSOmz/smqN0l3x/Uae8DV820vH+tCygmqxTW5EvdRzTbZgsMUrNAw8k/Pj0bPS+A2qGa1vzwcxttfsoUEIABj+C6kaK4Oxv+DxeSX2fZdifCA/GAQqZDwvGmTVTvZ9N7rmBrCHi0rQxibqUMya10oUIsXV5rbWBuUWlzPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MjptcuPl; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2b0ea1edf11so18390780eec.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768295256; x=1768900056; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=koPjTBX4iK9OQ+Ff94Uc6fblTMyD4uSDXtmNeEAxpE0=;
        b=MjptcuPlKq9EAYwq4rI+sQ6FIKHbgR6q7MmzTDFh3CHl91HQrmnP/lLjMD5PtXA4H8
         +jtoO8Jf18xMhTcJxX54wN2jrYgdtG5w2UhbH0Vs0El45kdE2rDHy7m4mczADZOnq58X
         X5Q5ZPun1RsaNxoa9q5hYn6thCQIv1jKSs7gIoOLc7MZhR3T/5YTwJsgJVSkIDhMglCE
         YxmnvXB0TVZ53+MpMsEdwTGTAbKvhQN4mo7eEKz9qBS2Mgk4c0Uj03EXPmA6MkVzovRN
         A67HBJFXWpOT0j2sQ293hazJ2btR/w52JrC0V6DwOqxsXkweT9rLqQXEWKIM/bwXyTNi
         2iDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295256; x=1768900056;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=koPjTBX4iK9OQ+Ff94Uc6fblTMyD4uSDXtmNeEAxpE0=;
        b=PEDITzUajpCfLbZ4MyJvixRo6DvW9gGwTFk+87Xa2deyjvbybzOSXAVF+9echAVZUe
         Ma3CXxnoXXJghriygsdjrxh8h3CAo8oTLjOlOUM/QAkMKJGQBuAsipIreeQevcjzTKWo
         CtgsDk4+v9MBYEaDFtE4cyVDe5aq+ZycwpU6fQnY5HHAoxzljs3aExRbMIdNKQh3tPUn
         O/OJrKrz3wT9++zy7Pu6vYQu28mfv/YwwLnsTBqSKfJ9QrBqebajoYpyrkv6e2l9Rp7k
         9XmLocnypVQ96itGZY2mCdGpM+E3fO6vy08ugZ7M4/q798w3BNCikoPZ8NOnO3EbsB8k
         nwrg==
X-Forwarded-Encrypted: i=1; AJvYcCVd3RAmKQxghTt/7D0V4c5/BM3/hWWmISsldDxGrq5ZNBHSvLBzVhHljGkynTCKRwm2hZskWYus6VRM@vger.kernel.org
X-Gm-Message-State: AOJu0YzHml5Eob8G02pLb5zarupALjybmA4/muf4C+UxxuUxmTYa16xZ
	EmxfjW7s4uwCdQllTh0kfiGwFwDBGgMcreg0pfIKPXakiIYp7H5BrZelY9Q9q+8q+ztKOkDuo1F
	MH0ljllw9odHdLWDUI0wHguOnewVspoI=
X-Gm-Gg: AY/fxX7ZSYtm6omHUNvDb2qbPMq45P1d7DjfVtp1oi/7UXf89uwBMIDX90waHQ9pIW/
	bi4DLWaQjnfh/Yck1m7kintBopRZl83uMLB3xASNswHnyEXH2pQR2RMXmdk6+s3rOPiANVKJtPr
	/BWVlgypd7vX8j6kCw1I3La57z27q3IhW4zlQjZsQU3uScMXaIoX7q+Krpw1WO8hooq/IzIKAMb
	e3mMsjxrSHi5fj/5AWy4q2KIgoNW1IioTr7Jb7WqaeGHG3X02XXK2fIMo1aZhQEqvb7SSoQPwAH
	RIE3/vAHaYJIet5gLf1btd7cl5Nny8RBAouWvABrm8FXrM0i21uA4bOC/NCuHXG7frOsnmirFI5
	58f03UG5kLw==
X-Google-Smtp-Source: AGHT+IF3RX9nAlZTR2amE9GxDzDwPqdE7Cjqqbe7GDtDpeVioGO8As8gNYcnkAyF+8R6p5o6StJOxLoio/8dQb2c+Lg=
X-Received: by 2002:a05:7022:43a0:b0:11d:f440:b758 with SMTP id
 a92af1059eb24-121f8b450b3mr24817667c88.25.1768295256086; Tue, 13 Jan 2026
 01:07:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111-imx952-dts-v2-v2-0-5773fa57e89e@nxp.com> <20260111-imx952-dts-v2-v2-10-5773fa57e89e@nxp.com>
In-Reply-To: <20260111-imx952-dts-v2-v2-10-5773fa57e89e@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 13 Jan 2026 11:10:04 +0200
X-Gm-Features: AZwV_Qg-q7k5jyzvnB6ALn27XAuNQ9bYa59uAz3y6dRfMLXSzH7lkJ4OAjmRmcw
Message-ID: <CAEnQRZCKAfhDT0p+MFjdZ+bLQJad1Wm6YT872FXyWB63u=zegQ@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] arm64: dts: imx952-evk: Add nxp,ctrl-ids for
 scmi misc
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 11, 2026 at 2:54=E2=80=AFPM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Add nxp,ctrl-ids in scmi_misc node for wakeup notification.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

