Return-Path: <devicetree+bounces-116478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 110879B3055
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:34:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA0622816A2
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDE381D966A;
	Mon, 28 Oct 2024 12:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PE5ZTt43"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DAD1D6DAA
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 12:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730118839; cv=none; b=sCOTZGAyKZSMHQRw6WL4tToIv4wIrDgwv/sbBFMKhrQGjoaRWZ1vxMyCxhYIvIMxJErGPyDf0hwyynt6lre5uclHL4sc347NOqalduIz9veJnJDx3TvK8wUwMequNJJ7gkmGDWO+KMdgnuSXbvc2PrmXJARI9Ru20y71diiGUCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730118839; c=relaxed/simple;
	bh=HDLQY3qQ6e13iwTfkGPYuIXPQSA/x/amsdqW39bGlDw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tkhs08jZXrz2rxxsxlNBk4ENxy48SVTwAwP7vNH4aa2Fh/rSLS9uD1/r1YzrnXVopHjv+vJVj1mrPhao6lKR59t976nfPfUjDaFg7SHSvEojiyBjMrQAVRyVzKh3pVspfT+U4CLkXloRNs/z55Dcj9/jFL6TUgVr4lW+qmfguCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PE5ZTt43; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb4ec17f5cso37927831fa.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 05:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730118836; x=1730723636; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HDLQY3qQ6e13iwTfkGPYuIXPQSA/x/amsdqW39bGlDw=;
        b=PE5ZTt43gh8cA/nB+oCeTmhjICOl31/hJhkwvxczmBTQBS6uekZyDxysX1n1Yqgaw9
         Dcx3LA3AcI2qoJ3s3EEGK7X0E4AbiIv9GgJ1F9LZ+pV3DZextBjcNq8OGuVY73sY+r2u
         eqBm7ycgWV4/3uZZMch1pp47aHZa9+ZSlKSYMnm7OZgb3ckPexIHYagBvD7FbVDL0gAh
         p8c5RjM1W5tj0/iOkoybOtxFz48yhIwYiEy5s4aYJ3My9xJ5prnw9ZudzqTB5rPtkY+m
         2cZQXdMZVaormdv4VfFJIWu3qvUtgvpFdCVU3Cw+e5M+F2h/xs05zIUCtfWCbzkkiPAV
         U1Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730118836; x=1730723636;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HDLQY3qQ6e13iwTfkGPYuIXPQSA/x/amsdqW39bGlDw=;
        b=ulkidTgm+mjunGwZtr5uQFx1A5Ue2eLvlWssz0HA5SqKYSByqJXaritpzvO7fJ/bPu
         6vcMzxgaxcCT07fsMFIqNLgDdmjfHCOMV0/B+V9gQaDp6IaaBeC9EzzZBXhvMf1Fp85l
         sXALBRYduJD5ekPbq6ByJAeb3UhMx6PNMGf3+6ADuoR1UEIdepAIL7foMWGi5FFvaTtD
         OiV1sG6BBNePSnPfzcBCPhmA0kmg5U7rMjKpQkncSZxszkzl7JzcLDNXvwbHHIv0sAR1
         P86h9iCAYS23i96dhZJCxB3ny+RYXcZ0V3SjDn9W3dQr1ozvz7sBXTopRuMYtl/6vLqY
         nZbg==
X-Forwarded-Encrypted: i=1; AJvYcCXRiHAxxTBZmaVDlZzlHYNmAaGr1ZC+C7+qR28tmboZIn8e8TpxD+HAwazYlNRw7k6BLo6ckV4HqJHt@vger.kernel.org
X-Gm-Message-State: AOJu0YwIqAnLPX6fTBLfbmrb4MKWxkRtCR6daAobY/l7hvraTmjcAwwI
	7FCewpTRZWjUmkDWhM+oUu1N97JLYuWoGaSQTy0W48rsD2ZcpYrD6Evjeba3rtLhzOrv8Ml3HbL
	m8v+DHUA8s399tO73Vm3RNXVd7R2kZg==
X-Google-Smtp-Source: AGHT+IHZj/V8KLGee6BNlI6LrtJfPAxAxG9OQGWFq92wsn4uuuFerhAkdyRsDdmrgpr6My5eZvNh+rg/W6QZpCi0EqE=
X-Received: by 2002:a05:651c:222a:b0:2fc:9759:4e3d with SMTP id
 38308e7fff4ca-2fcbdfc57bdmr30593791fa.19.1730118835677; Mon, 28 Oct 2024
 05:33:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241027225408.195475-1-gilles.talis@gmail.com>
In-Reply-To: <20241027225408.195475-1-gilles.talis@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 28 Oct 2024 09:33:44 -0300
Message-ID: <CAOMZO5CR0=Vqd6v=N=Ymtsfw5F1M54tEYACpzk1HcMcP3tgAHA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-navqp: Add HDMI support
To: Gilles Talis <gilles.talis@gmail.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	shawnguo@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gilles,

On Sun, Oct 27, 2024 at 7:57=E2=80=AFPM Gilles Talis <gilles.talis@gmail.co=
m> wrote:
>
> The HDMI connector on the board is a micro-HDMI (type "d")
>
> Signed-off-by: Gilles Talis <gilles.talis@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

