Return-Path: <devicetree+bounces-229032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 370F5BF3343
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E05CB48488D
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33FE22FF66A;
	Mon, 20 Oct 2025 19:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TJGO/Lg/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCEF2D594D
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760988520; cv=none; b=H8CIg3uvXDcBOPDw8yub6KHe0dq3cbZwn5ehfhlwBDUVM91iXvNJT5tactke/LO8hB9a8dfLM0qvT5TzrsxoEZHrFKnkFLA5vFsPy/L36bKkFwCVeZnfdAdWzJSrbEBND0qLY4+vV5D4f/AfsA4q+bDjVVUUroW9MYgIlKRZKAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760988520; c=relaxed/simple;
	bh=p7xYeF0WlMh71JeISQYSQHf2LpPiKT+ylBcdVGC2AqU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IO25SWen/o/DTzMIH7+vW6XjzFvX6+KhDYpabA/ifsiHvo2M+Qgn5y+G0m026FIRWu0xLklauwdPoMBgIfTgjh16SuK94MBwhMuyVURMbgbxKVmaTgswYrfpH3EPNugzAqpW4PgYi0k3Pv/3W6NfQ+XS7LErX4koK5Nb4iq74KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TJGO/Lg/; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-591c98ebe90so5252762e87.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760988515; x=1761593315; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mMg83nd2YrTgwcvW3RZ6bW/OIA8b6kbsYQV4BXY32dU=;
        b=TJGO/Lg/3ZI93Doa2cyBSYdG6jGqWq5DvF/eqVzDpPPyMRBa6AD0YhzNX6Jd4wcAfA
         vsCuM3uiNUVCwqVJDiG8onEnDMq3gnhXC3i7sJuGv/JQ61TVrUcnRPyBvEy2hAmJyRwV
         ygZD2Ep/HAgDkZWgN8pIeclFa8whL6MXt9cCH9gAmXxoOOzETXTG2dfr3NkQfN17hrA8
         P2oIWCCVoPU4Fgq06zo5DNzQhUcg5Zyl7DzUMNqyzsaCSLXmjcE2kxIkczEjobnlHxaW
         WPImJXTGIUmsPXISTMrgoO7xZKATCaEDgVSn/GrsQWhBBoDaeB0PhYtbwynLVgt4nGvJ
         V39A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760988515; x=1761593315;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mMg83nd2YrTgwcvW3RZ6bW/OIA8b6kbsYQV4BXY32dU=;
        b=lyiV15MYV2PQJxbE9jIn136mTyPBMvw4xfsjwvLvFy8QO7nBze8qtLzJ71UDlWA6DJ
         aFv8jqe6YAtctEzXyCANADctWOTlE7XxNuF/z44bP7dxT2OMyG+R4A6G5bZPCOsx8uLI
         Hk1M1txhN7423P83HO4RFyT1TsWmfM8/wvYQNpx2jiH2youaPyvftcjYbJcxFIduKVRl
         05bcPzCpCxHsA0aEHn88s11iUZ94NvS8V86FTpB/lvVFFs0VMN+eUwMQwQAbZhjzTDs5
         rA/s3Ft54KSUdx5usVLa7gxmy/Pk40SlzZ9XFSf952KRIHi+Xj2UzImMjp7A/cfnuWLK
         QNew==
X-Forwarded-Encrypted: i=1; AJvYcCWl1Cu2cSVE7lu4yNy9AWOI2uCYupz1qPYy6sX//3R9SQqnnSR8ZNnVrrlLsV/mbcMGTGlFISTEAHZj@vger.kernel.org
X-Gm-Message-State: AOJu0YwIahaKMw7lrlwB2Hk+D0vcJeU5mOR6OTxT57tUMu+eYybaHPKE
	k9m2c166GoyxiqaaovOXBXZwXKmMrVs14rr4/tOAt6R0SbIDl48W+E3rooCWYUkCTKFPbdaMUVy
	KoZOniV4gUTvPUeRkv6s7+fMdZGPa3gA=
X-Gm-Gg: ASbGncv2Rcr6P1je8YKQlxHd+chmQaWJ1LbguLWt+ASFa//s6o2pE8fdURwo3JkVGSN
	rlA+bbmWWCpfEjSqNuvo0iGZKc0pkTI4jR7T/kF0DwJEbLLtwcMSDqFggoteC9sozgBePuNA4nU
	hTjaT/ZspNxsww7CyHjXrquRzeYkzd88I3ows2vF7RQgqYDCJsYIMmLbniXdO4iJUkihEFxW7o7
	GL9RC0ZylXVMErsuJUZAVR6bx5pxR+pu9mKmMoMf2o/Yw5IXTkI5R/QsWHEedsZMhABWKLrUa1F
	rhEZ4O1NS8s81NfiEA==
X-Google-Smtp-Source: AGHT+IGBoVkVev7OLhVh5KiRwW/MZskLumEnnwL6WLxBkk2eAfCxIeEvBR17BmPX3b8GgUCopYGwgBk2P/JNXv/x5+E=
X-Received: by 2002:a05:6512:1307:b0:57e:b9a:9c82 with SMTP id
 2adb3069b0e04-591d85836e7mr4364166e87.39.1760988515325; Mon, 20 Oct 2025
 12:28:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250803-p3450-mts-bug-v2-0-6307125408c3@gmail.com>
In-Reply-To: <20250803-p3450-mts-bug-v2-0-6307125408c3@gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 20 Oct 2025 14:28:22 -0500
X-Gm-Features: AS18NWBlNKt3MmTfiejt6ZGCRffbefMOPo_ko_DLqTSSs5UW2n7AtLASjfzoSFc
Message-ID: <CALHNRZ8ycMNA-OLx=hWNmetqxioDSbt2mRH=_NXr2zLu_pbJoA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] arm64: tegra: Add reserved-memory node to L4T
 Tegra210 devices
To: webgeek1234@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 3, 2025 at 10:14=E2=80=AFPM Aaron Kling via B4 Relay
<devnull+webgeek1234.gmail.com@kernel.org> wrote:
>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
> Changes in v2:
> - Add patch for P2180
> - Link to v1: https://lore.kernel.org/r/20250526-p3450-mts-bug-v1-1-78500=
613f02c@gmail.com
>
> ---
> Aaron Kling (2):
>       arm64: tegra: Add reserved-memory node for P3450
>       arm64: tegra: Add reserved-memory node for P2180
>
>  arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi     | 6 ++++++
>  arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 6 ++++++
>  2 files changed, 12 insertions(+)
> ---
> base-commit: 0ff41df1cb268fc69e703a08a57ee14ae967d0ca
> change-id: 20250526-p3450-mts-bug-02394af31f0a
>
> Best regards,
> --
> Aaron Kling <webgeek1234@gmail.com>

Reminder to review or pick up this series.

Aaron

