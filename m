Return-Path: <devicetree+bounces-259833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAjlE0abeGlurQEAu9opvQ
	(envelope-from <devicetree+bounces-259833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:02:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C870B934B3
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:02:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 634FC3034E29
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 102A51A9F93;
	Tue, 27 Jan 2026 11:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Myjrrvkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655EA30AD15
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769511722; cv=pass; b=M3Ko/YZG7+yojHkgukfR0A4ngNNMrldpj8uzZp+dDLnS5O6jvhKrswN4rOCSesMS8RQ+hzTjvibdUKGbRUuDVskc77FJw0yhNp2Xc8Lkqds3auZculDQJiFzN3Yt0K2ox9+pupEfYG9wmU9nOTEsZP6u7RLMUBElTi5KhEwzAqM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769511722; c=relaxed/simple;
	bh=B8zdYTaGcvallBhBtXowYFbPk/Q6LuMK6Up0jicjUT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jgO00/epnW3/m9sVLsPdx8ZjD00T/jMfEGHda3QuizQiZJZcqBd5epgF99BuaHOMsbIa6lstOekLFA7z0ChUJo7OGyjrXG/nCu7FPqZJbL4C7E1vL4dhqFwK89Ir7WvC9OPqJNBM+FOjvMUucVmyKv3Rtc8fjQ4e0xuFtvTGdi8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Myjrrvkb; arc=pass smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59b834e3d64so6812645e87.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:02:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769511719; cv=none;
        d=google.com; s=arc-20240605;
        b=cx4kKKeFOmV1QFPtEs2atwfK5sMpVZsVNX/S18K9vcGkqMkNIcaUJpNn1Uw5RecGBu
         wNmL56NBsZCcavWUhvQcvvQRt4raDHESkRm+1SAFT+vAz4JR9Kc/cH2nCVLOI/TawQ7j
         VLTRbHZsYWJ6KuYG9/xst2E/c5gVYqvQd1POWIwTLNuahI05huPb8oWAK3ZV95EDpS8j
         irkYO8d9IWN5y3uEtKqLcvyNJwemQsIKJVZMguRd7vGS0d6GCMheyiKyNMzpmeYyixFp
         DdDuMULx3mAcVL6+1+pwIpUcjMrLWiF/dJr9/ofe5FzxxpFqXSFk4uXlnAbXZYyNTn1j
         9ozw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OqeEVMZrY/b1NpZNa3oOu9VBtor2/8rkEIETkYfILLc=;
        fh=rDL6TSE0ej16J+uqhSSbdCXgjj7HP0PKs9uGwuDhbzw=;
        b=Xif/wjqXKjHOj23ik4pJJLuosbiYviPGUgPBBn5QchSI/snZKPM2Tmgv9o29bJUefh
         zVXum2L4irxjfz0QBJ/y64EBoRzDMvHiGm47oUyZxsVWmXh1yRVe0yyyVGpY+zdQ/l8i
         4FTYj0cdBEkCXpNgmIBrnm0yKrQg63TiW+y1wrdI571V6UeQp0cnnoLoVQvBDs2ZKDgu
         40itE0ErcjH9o4usi0f8NIkK39heFjyRGNddp3D/9Pt+KfxHY/QllIWohkqcAEh8D01H
         TQxX5M5wDVU452dSIUoLl+Kbc/J626J3vxMxPZtSfeeV81GjHAboRw/hxlOaAiUhYjrT
         8d5A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769511719; x=1770116519; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OqeEVMZrY/b1NpZNa3oOu9VBtor2/8rkEIETkYfILLc=;
        b=Myjrrvkbms+/zSeiNRh25LRTZmgqgs/ALIYMlO5Zl6nbM5cWEOqQGf6K8gLa5bMP6h
         C7ldnd2LUEITaAQSjFTeu0e+TwH/yyi5jyKFUXucYSmpyH1lbTP84AMbCk+TdL3W2nlk
         w5fIxhasviwFxrpHL65ruQZsxfic8Dw1Y6oEQr1MeP0JI//mSLjtU/q2kljZj2rT+Ymy
         yxjMznm8a7FZ+ISeUloUoGi5oKph05sQlLWg0OTc0yBRJksmFoduOB7drZ+dtuw0rMLm
         WZOlnZ9C3TWASwwFLJ65kVNHK6RdXRJj0q3Y0kFXygTLAjqe6VHzSBmBfkLvGdZ5vL9I
         eUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769511719; x=1770116519;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OqeEVMZrY/b1NpZNa3oOu9VBtor2/8rkEIETkYfILLc=;
        b=NhTeL4Zr0skxSQHmCa9x1Zy7T1/y1A0zQ80hakdELDGYSZPkhbMWANqnmR7p29Lwp0
         /zamTHjvioh/MaEyEGm2Grn8vnJPWJ148UUcfKPClSFG9MRqBV8JD5H+JbwnABjgNcRK
         gXJYmbuvyjVnWseYSrphMCrTPDXqwIiY7xrwdReBT+UI1zCWVi7Fpp+1qLAF6scvlIJy
         kAFxKvvO2/M3ZjgURUX3cUjefR4uI4hK+WdUpx5zMc/OuWgWPMXDS19+G4eEvve9sOl6
         t/Rcc44Cn+Yl2b8+fj3WyCbPL4SWGR8Rg/yp9eun8ScH/wAFewrNjRMYTeGbgn7ChX54
         F5uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUO998PPBAcV+Qz2IjJYOW9Qm/ebXbcUkdqsqQ1bVpvjMyXCUEjZEuaPp9eKQ2wjFRGpH0nRbS6Os4e@vger.kernel.org
X-Gm-Message-State: AOJu0YyfYH5wMYkuR2rMuNTTY702PsFtqqWoIQaIDBJRqJMndTfMyGs8
	KznP9xKGSnXH8/MsYWJ1/tN1OBux4j15849qxgzedgHbGSP23TeyejECmGCncA9RKEKzh1qbOsS
	/O1IISWevssXssyHtjiGfX+j99/C6qVpP/l7uf0zNmw==
X-Gm-Gg: AZuq6aKjFv9ugRv2hgr80AR1H0qvjX2nmMT7OgJuZlwaa4xh3S/tGSDgcV8WUee/ERv
	HZWAM25UazHyOUhKVyYbVQ9OtLKGprEl+T1sK2tvAOsa0l7hG8MSjDWd1Li4qL74JVvBSZYmdTU
	GfIs9zqHUfzf/xO1FN5EQF6roTODlyKC1qC4kkSeLw55O7SBN/EoH4dJ3iI47AKJMqRwfWvkF7g
	Sx98iA+hyB9lzbqGsZKyijl3uMIuqGepIJerqUhx4oQ7oRgpPMstksr3PHEI3AddYAMMfFYmRMs
	P+UmX6Q=
X-Received: by 2002:a05:6512:3407:b0:59e:39b:f46f with SMTP id
 2adb3069b0e04-59e0402f27fmr590217e87.43.1769511718237; Tue, 27 Jan 2026
 03:01:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1769171049-74327-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1769171049-74327-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Jan 2026 12:01:21 +0100
X-Gm-Features: AZwV_QjWKWIZU3kG6heS5jQbYm2iHh9G7GKnI8uUsEJZ2hAre5A9ItHgOfjtB5Y
Message-ID: <CAPDyKFq_=7SS5RWyFXYjec3hTFdwN2_aKAt5O6SqgBuYxFh7Ew@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Remove deprecated mshc alias support from dw_mmc
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Wei Xu <xuwei5@hisilicon.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Jaehoon Chung <jh80.chung@samsung.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259833-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:email,mail.gmail.com:mid,linaro.org:dkim]
X-Rspamd-Queue-Id: C870B934B3
X-Rspamd-Action: no action

On Fri, 23 Jan 2026 at 13:24, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
>
> The support for the mshc alias has long been deprecated[1], as the mmc core
> already provides standard alias support for obtaining the controller ID[2].
> With mshc aliases removed from the last Rk3036 plaform[3], the only remaining
> users are the HiSilicon hi3660-hikey960 and hi3670-hikey970 boards. This patch
> series removes support for mshc from the dwmmc driver and updates the DTS files
> for the hi3660-hikey960 and hi3670-hikey970 to use the standard mmc alias instead.
> Considering that the hikey960 and hikey970 are open development boards, users are
> expected to use newer kernels, and the need to adapt old DTBs to new kernels is
> relatively low. Therefore, backward compatibility of DTBs is likely not a major
> concern here.
>
> [1] https://lore.kernel.org/linux-rockchip/20211124184603.3897245-1-john@metanate.com/
> [2] Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> [3] https://lore.kernel.org/linux-rockchip/c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com/
>
>
> Changes in v2:
> - Fix a warning(lkp)
> - reorder patch sequence
>
> Shawn Lin (3):
>   arm64: dts: hisilicon: hikey960/970: Convert to use standard mmc alias
>   mmc: dw_mmc-k3: Remove mshc alias support
>   mmc: dw_mmc: Remove mshc alias support
>
>  arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts |  4 ++--
>  arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts |  4 ++--
>  drivers/mmc/host/dw_mmc-k3.c                      | 23 ++++++++---------------
>  drivers/mmc/host/dw_mmc.c                         |  9 +++------
>  4 files changed, 15 insertions(+), 25 deletions(-)
>
> --
> 2.7.4
>

The series applied for next, thanks!

Kind regards
Uffe

