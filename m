Return-Path: <devicetree+bounces-221432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0BEB9F8FD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:27:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EFD01C226C0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B6E23C51D;
	Thu, 25 Sep 2025 13:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdHcgEAk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1490A1DED52
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758806787; cv=none; b=Cvh1HKNoWNsASEuHXjU7Btpmna0JHclBXxv4sGj83zr54z5H4rN110FL5tg5mGY8RRKk9LevxtTN9i5DeJTqxKEzMMEfdAeGQUFZuOYxWCyi7mAMJKxjYyzelLGMvQicpaPq2+AKpfrLNHWFCGLhPkZjYYNRL6CydO3UPFLSvLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758806787; c=relaxed/simple;
	bh=88NOcHfKKYsahqEmL02itR928NeSctZtHmwIpVJ3FDk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DRFPblQWZrJlhmji1gyUspt1zLOdnU0mIOrzMKb2dLJof0g4cekoCWPEVyRqEuQ1vhN5zyy/yJW3C1NSgk9JJxXkOHP9i3SkMInNb32cF+HJw04yi5AZv5HmBnYpLTJblkCidubXgzUrtyEojNSbtQJ0GumZpONf3SjKlCoGdiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdHcgEAk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACE80C19423
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758806786;
	bh=88NOcHfKKYsahqEmL02itR928NeSctZtHmwIpVJ3FDk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=bdHcgEAkEJmAs8eXzAlIYBsUMYr2nTi2cPGvx5tGG+kuNQDcVuc5Vz9PDvGKcqTgl
	 Gqm7iVCTjUuBN/66+fdLoCOmTNW7EFIF8HGcmLB4qm+Lk2sh7r9kHbNz7I0aQ+ZFTd
	 TeMOzsLF70DJvYhEHUl04xwt9l1sGuBxIJQp/toiCF4i9C3oTceUWyjRL9NbNZiGR7
	 9m7SbxoKAYBBfpsVvNBBXr7TSHDImrT2gYZo1S6DOPvVFoTKBsQMVDpI1FTx+IYFHC
	 U7TwW51+R2iJ0n0xCSxrx+Lh06whkrcL/EZOF5OpHPn2+4CmXGz1sjhEEHq2A3litn
	 +mFVYG69AYuXQ==
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b4fb8d3a2dbso823090a12.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:26:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUnXW6/q3UAZduUju2e2fuDV+IyRultrHF4BGr01SepjD2NVXRHWHScSt/eBLyRx3VtxjT9F6Fp3GnN@vger.kernel.org
X-Gm-Message-State: AOJu0YzJN1wzkNReH3+dhlPB8EQI8N9TOu9btdOJxK49r09R+akz1Zwq
	gvTnEIFOTDXTZaZZwzK95s3LoU1rACcGTHXXzrqlBi++sAGrr08i0xJIUjCvxNJsExKqFjLeqDT
	rByHReCchPmGfdRqYmgwiw9a9o4GmcFg=
X-Google-Smtp-Source: AGHT+IGsOMxlyxZ7mhUSjQt6C0Lc1FSkqDaXyZq/j5oElV/4P1h/YQwBHEjH7ZyXECfZVJr/eB5uTZx0o877OHXZ14o=
X-Received: by 2002:a17:902:e890:b0:24c:a269:b6d5 with SMTP id
 d9443c01a7336-27ed493e891mr36124545ad.0.1758806786057; Thu, 25 Sep 2025
 06:26:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com> <20250924-knp-dts-v1-18-3fdbc4b9e1b1@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-18-3fdbc4b9e1b1@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 25 Sep 2025 22:26:13 +0900
X-Gmail-Original-Message-ID: <CAJKOXPfY-CpE_aKd910PQ2+u9ux2EvuVEt9ArzhdVCJcTQJUQQ@mail.gmail.com>
X-Gm-Features: AS18NWDBrwXfUaWFEPV9rWtwVaLLmke2vezdq5SVvr5UMJmIr9OvdeTS1SZ8EMc
Message-ID: <CAJKOXPfY-CpE_aKd910PQ2+u9ux2EvuVEt9ArzhdVCJcTQJUQQ@mail.gmail.com>
Subject: Re: [PATCH 18/20] arm64: dts: qcom: kaanapali-mtp: Add audio support
 (WSA8845, WCD9395, DMIC)
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com, 
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, 
	Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 09:18, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>
> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>
> Add support for audio on the Kaanapali MTP platform by introducing device
> tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
> microphone for capture, and sound card routing. The WCD9395 codec is add
> to supply MIC-BIAS, for enabling onboard microphone capture.
>
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 226 +++++++++++++++++++++++++++++
>  1 file changed, 226 insertions(+)
>

Audio is not a separate feature from USB. It's simply incomplete
picture which is wrong for case of submitting everything at once.
Either you release early, release often (which I asked you many
times), or you submit complete work.

You don't understand how your own SoC is organized and create fake
split and inflated patch count just, as someone admitted, to have LWN
stats.

This work is incomplete, so please start organizing patches per
logical features, not per your patch count and company KPI
.
NAK, incomplete patch and previously communicated as non working

