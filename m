Return-Path: <devicetree+bounces-220811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EFBB9AA34
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:29:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FE601B2669C
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE25312817;
	Wed, 24 Sep 2025 15:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lip7kLZB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987E33126D8
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758727481; cv=none; b=rXJXmXKR8UDIoCoh30ulERPVTUx1Q959eRL0+IACIMiLg4SPMoOGpY/dRXwY3s/7n3wBp5ne8ix5cA/Yze5pVhGveInguraHOXEQc/XqAo4GgqCsogkye+JbWK2LirsAixTaiUJOuVRoGCn4EKGcjBDNu1flC2tg1gviOAzz2kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758727481; c=relaxed/simple;
	bh=0BPOAm9dP69JEhXlTRE7Dca+7rydr7eI9CX+nU9juPs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=uD756Os5wkFrCARP7SIehH3394u3UHsfNFc/wI03ZStA+VVVtniAQBRJa+IcPLcjNbpNnC3mZyc2EV92kJMDnJH/yFp1gGcrZKTocCEqB9oxwsu/JiHo9urkPUB2rbzKMlHGL2pbQnhaTmOQEDNH+y6+RRawuh9bYv3ZqHswZes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lip7kLZB; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45ddc7d5731so47703285e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758727478; x=1759332278; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fYxSqnIQ3qjG/8iu9AExs5DpSEa0GvyoBl784AP7Qs8=;
        b=Lip7kLZBNZZO5+kG+pahRHh6A3oZVmPiqtyNkxxQNuBRTGe9d4m0QxeE5dZ1RGHkHM
         slcN68FUApI0/qXfiYnM6hb+4ix8pZq4UCd1+Ob72sutGaL7yt1j+wizz7gWAHuAC16J
         SFqiVVhWy05YkkURJHfR2DFQHsBnMvnaUp3kAk+U9SoVw4tETMQd+U/R9ZCGrS/NusM+
         wDgtGNOHecQPpn/8J8zEJR0Wn6LrVlzgGz3HHsNJIx1GyniBANOc3WGvU4Wvr0Uyibk+
         W5fKRrCDEV3NIUI5BK7AQ9GI2KvXrK3UYFgC6lnj18mOddqspNKHpIRE4RAd9HvfwL5r
         EkcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758727478; x=1759332278;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fYxSqnIQ3qjG/8iu9AExs5DpSEa0GvyoBl784AP7Qs8=;
        b=lMZpt1Jcuj1IPFhJLC4Iia7N12Y/Dx2zcwQ6g3sQRlPBIyfA2FvDRWvbmKpdpEfGRV
         8bAtVDKekA+N1hyRYl3STewIWc2z1T4euV0z/4Bd/wrkS9MIcH+q/w/r/O+86KxeXgwa
         ISRB3vdVO/rpnEYP7kACtT4jfiSyjUMU37w7YSusHhdGViEYe2orJYrS2HvKXsQOELS2
         ByRkkvf9qmDOl9n58g5dBdmLMiXWfH89TNf3XykfjnVtu+cIgvGGTMQHUjhatRu1WMs1
         0t34/cFRjhHEqXdyEJIrhCRqu4lTbkv/mGIr+EfeRiFUg5+nzlkUTjgXGp7GW0xIkZy1
         AeHg==
X-Forwarded-Encrypted: i=1; AJvYcCXVlHVC3NGFgYMCxc24Nz3qBRwjesuFBPkdtDppJnc0lgD1fFaN4fO9pkUTeXHncP0XY58gapuTd9k0@vger.kernel.org
X-Gm-Message-State: AOJu0YymQDmEg5LgbJEZp3y96PqB6UwBxQSShgXdstDbwFeTIQB3gm/8
	GNbPLI5bVONQkRZJloERi5+0qRd4I+pnu/vBZPPib5yYC9aw4za2hj8hVH+Cwc5BADtn/ImXmWw
	Lh52Gwt9etg==
X-Gm-Gg: ASbGncsWB06YuFFIqg5YFWI1BpWRId1c3VoWW1vAR09ldjXRgaFBxvZ8DvxuTBuXl0V
	jMJJ+xtwuw4v5fodbcZdivhMJ6dqZFIzI6KEfzVEaHRuQ16A6mdeK04xHKBSB6ZrJ39dHt1eUMC
	VC97xt8OwUAk97KXzEL+LuIzzigunMBLRcGh0MEC0RUecS9yvr/w+Z+eogCb3M9kMVi+0/kRGov
	JwoiGgH8y5vpzzlBXCAO/M9HSmc+cFAHYsKyJWGp2q1eU9ypR6CHjdvAgoML8ngeAdldZ4bLWQH
	D66YBmMC7YegoZyOsfQMTeORZezf5qrCKNIPGPgv4Pt3wQAnPn4yYUm4nH9C/tl3+BmKPGBtbBn
	mFjLm27KEHuVcz0OTVxacgFz9+g==
X-Google-Smtp-Source: AGHT+IHSVtQc0PcF907T9ysNH9gXQFv1R4nZa4WXYglWRwMrUQrvL7l25ij/5cog4d6UrbB58i1fUQ==
X-Received: by 2002:a05:600c:3583:b0:45b:97e0:22a8 with SMTP id 5b1f17b1804b1-46e329eb144mr2418835e9.22.1758727477928;
        Wed, 24 Sep 2025 08:24:37 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a9ac582sm38510685e9.9.2025.09.24.08.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:24:37 -0700 (PDT)
Message-ID: <03cbad1f4f311727b4dce9c969404e2bc138c556.camel@linaro.org>
Subject: Re: [PATCH v5 2/5] firmware: exynos-acpm: add DVFS protocol
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Griffin	 <peter.griffin@linaro.org>, Michael
 Turquette <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>,  Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Catalin Marinas	
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
Date: Wed, 24 Sep 2025 16:24:35 +0100
In-Reply-To: <20250924-acpm-clk-v5-2-4cca1fadd00d@linaro.org>
References: <20250924-acpm-clk-v5-0-4cca1fadd00d@linaro.org>
	 <20250924-acpm-clk-v5-2-4cca1fadd00d@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Tudor,

On Wed, 2025-09-24 at 15:11 +0000, Tudor Ambarus wrote:
> Add ACPM DVFS protocol handler. It constructs DVFS messages that
> the APM firmware can understand.
>=20
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Tested-by: Peter Griffin <peter.griffin@linaro.org> # on gs101-oriole
> ---

[...]

> diff --git a/include/linux/firmware/samsung/exynos-acpm-protocol.h b/incl=
ude/linux/firmware/samsung/exynos-acpm-protocol.h
> index f628bf1862c25fa018a2fe5e7e123bf05c5254b9..e41055316bb578bb8250a1b11=
77f1059eeeb2611 100644
> --- a/include/linux/firmware/samsung/exynos-acpm-protocol.h
> +++ b/include/linux/firmware/samsung/exynos-acpm-protocol.h
> @@ -13,6 +13,15 @@
> =C2=A0struct acpm_handle;
> =C2=A0struct device_node;
> =C2=A0
> +struct acpm_dvfs_ops {
> +	int (*set_rate)(const struct acpm_handle *handle,
> +			unsigned int acpm_chan_id, unsigned int clk_id,
> +			unsigned long rate);
> +	unsigned long (*get_rate)(const struct acpm_handle *handle,
> +				=C2=A0 unsigned int acpm_chan_id,
> +				=C2=A0 unsigned int clk_id, u32 dbg_val);

Everything seems self-explanatory except this dbg_val. What are API users m=
eant
to put there? Maybe some kerneldoc could explain it?

Cheers,
Andre'

