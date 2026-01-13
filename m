Return-Path: <devicetree+bounces-254346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B6DD17702
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CB1783004EF1
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FA23806DB;
	Tue, 13 Jan 2026 09:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m1VynTPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF033815CD
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294814; cv=none; b=c/IcCVJrAH6euLMNFpCMgnLRTq6EeHzy/4eVcTM4L1twDWT6AuTqEXcJ/nhRJOgw6m+BXjhvYv/25tTxSNlVRpkyWbL9s217NC4OCIxY/ulnnL7wGIkjSsbf+elK4n9ur0kmyQMzZ0YGw2yIPFEDxew2n/VwBnRm/PnRg/r5KFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294814; c=relaxed/simple;
	bh=dBgh3Jpx9q0vMwoLAMjf7VGH77cU87wpAE8E4CagitA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RU1eUdXIgzJuXfrKq8h2BWRgd0D1e/DAMrdHR5XatEpuAebMMJO0Mw+nJueLzbVnnn/4qPW4V7L55SBhL1mEET5+/ciryJKXTmXs+um2xrbgyWcQRqBrx3U9fOlnWFz87YIDGA3nRUQ7OCEf3x4pXJnT2lt3TLx7Ip/dv2F33mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m1VynTPC; arc=none smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-11beb0a7bd6so4466088c88.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768294811; x=1768899611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dBgh3Jpx9q0vMwoLAMjf7VGH77cU87wpAE8E4CagitA=;
        b=m1VynTPCSO9D2gt8m/b8wByIdLJNR59Q/yzMHOKK6a/YmLa/eIsNvpjtNFG9vTtvOt
         FRdjYytGmvrgH3ltkBoGrhVOt6Lphk/CQlb6mv0o+zuhil4JpjE5+UGyyX3OOfr73dGG
         c4SvWkKFTBDzvhYu9id5aMYRVtVf7t95VFM54MEtK/YfO6LCW2YbxBE2H0MBN+fbRW9Q
         IB8VA1e4kG2mSYT/K7d7KAbhnLxrJVhxFvaciERIF0AQqs1BEjgg2nngEh4B1ENyvbbR
         ivD2MqrG3PUQrVXq4U2fIBKr5u5iVF19qT2wOEvvDBLMtXb27+G++2kTdvBuCVq/NaBR
         aujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294811; x=1768899611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dBgh3Jpx9q0vMwoLAMjf7VGH77cU87wpAE8E4CagitA=;
        b=Vh8eVs0uvxN2UBc0mzK/dkjqfD1gxaeRb3xv0zxGOxBLYSF/lZIYm7SXbmskpjJL4j
         iSRB/30Me2X9ejoYFSen69kcTn8cWbqSrR/JQyRCQ5hOdbqek0x1TekGr0wdX21EyWIi
         4BilPryi92i8SGG6szY1CQSNqFnQbXYkttjEMuj2C11HyH45J1Hw4JY4ZAO4VaSVNwgD
         ikEElqt4GbL0sSbviftOGxVqdHIUen8FfKx3wgFBiSwPgedJG6oxvAfFOydXmhghIcTK
         sSf5DVTkLVHYjPCz3cCwM/oPYYGPqYvWiB8EjM33EGzDq3Vt+Ya9LVGfa8+yu9OpGT2K
         8pLw==
X-Forwarded-Encrypted: i=1; AJvYcCX39C9TtE6tc/XVV4VoJC+z/p5MbfYAdaf01TT/cvP8gofcN/NMSXSUCdZfR5ia2xXuiYZ4G0PGzgpw@vger.kernel.org
X-Gm-Message-State: AOJu0YwQMTNd63bZjND5/C5www2nIHZhiS9x1UWtd8JhisYfMj+9EUmA
	fkm49+sTJrQddWWBxdC7F+lTu5K9vtGArLGy12vPc32T8BsI/Vd/khqcE6Myt3cl5YRb1ZdohOw
	7wmlT8iugc5hZt2BmLgIOUZIsjON9TcarsX94
X-Gm-Gg: AY/fxX4BXIy97jiq+DiBuG2otw6dF3ec6rl4qPgocRI63OzWghFnWHCTIcDVQCP2Q+v
	nHuA/Yqpwr5myon0gPdo2+YSUCJU1wUS4VTMB2tvkdWispap5lsIFPKD+b5/beAsxjMVixwrLkB
	8b9+mCzUAl/MpN+rZQiOqE7PwtfA0hEuB3I6S46tLzDS99Nlw3A1I4q2adJAs9nBTv/a/MqQ1Yw
	85Qqj7Aqwe5wC9dhiHysiKr8NE1lpRwKBWb52FDomb7PTPfC73mDLZ7t99/+MM3lbi8LnsagYVZ
	kIuM2dEZ4GydpdrmpIPWv7OSaH2zoSUhorlRltt/VaG2WTNMjFX8V7foWEnJOMlVTXzD9tMKPni
	A3ww7dFP2IA==
X-Received: by 2002:a05:7022:419b:b0:11f:46b4:449f with SMTP id
 a92af1059eb24-1232b6425f5mr2643006c88.24.1768294810986; Tue, 13 Jan 2026
 01:00:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111-imx952-dts-v2-v2-0-5773fa57e89e@nxp.com> <20260111-imx952-dts-v2-v2-7-5773fa57e89e@nxp.com>
In-Reply-To: <20260111-imx952-dts-v2-v2-7-5773fa57e89e@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 13 Jan 2026 11:02:38 +0200
X-Gm-Features: AZwV_QiS-vbZEBI1B5-7VHnaj5-2xQU7eh6G0NpgJs-gint5WBMU_wp9zkj0OrU
Message-ID: <CAEnQRZDODr2a3fvobXM7RWN_yo1mu5W+h6+tpbLho3QL=cQDuQ@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] arm64: dts: imx952-evk: Enable wdog3
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 11, 2026 at 2:45=E2=80=AFPM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Enable wdog3 to allow System manager reset Linux.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

