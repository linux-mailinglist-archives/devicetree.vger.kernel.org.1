Return-Path: <devicetree+bounces-243947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 064F8C9E990
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1CBD44E3815
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6202E0902;
	Wed,  3 Dec 2025 09:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AGgNb8gF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705842DFA25
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764755597; cv=none; b=BqtJ0A7DVIfQPNwpBMnVuM4HQKeRO18X/eSWeJ4AkX4rRqb3xktHtwY8se/rAcpUsmrmE0cQZyyUyb7i6OqJwZZhmZZpSq7Wm/NWW9MaIErM47G8yLYNszde5b4x9EGjvmd3uoyOv5dRWB4ENkGn4Xa/UUaqeovzaBQ8ma0t4uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764755597; c=relaxed/simple;
	bh=0MIEaIEz+Uu4LM0hJtlrbSaF1/Us3rYdZCWuXdM8wDU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aPBEBlTI+hySYu3sZHMk1FUaBD3rxhV2LWsZ/swo6VVpGCR5ZpIjNNhm+59bwIlgJTd1WD4wPnbmpSyFC7M0d7hcSjqWwCTrUilrQqCOUiNpXPgdP9lc+d4svlfwvJWGkQ1+csuDQlxnh/NTEwGBcon8GZwOr/M4djyusqiPIlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AGgNb8gF; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-343f35d0f99so5123732a91.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764755595; x=1765360395; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0MIEaIEz+Uu4LM0hJtlrbSaF1/Us3rYdZCWuXdM8wDU=;
        b=AGgNb8gFWr2/utfDcVWq75mRSZXwvsDjmVqhZ8HUltMLhRbO0a+JNwKc/0Cl7wFu6I
         4Yajxh/K/kdr2tNRyOZHFOiiwnJp8r4PZ3s7L3KqE7BVrJwCcRnTPNmf1MaVfz0t+PL6
         FlyMYXrGPYwuu6vQy5pktJsfrxXtW2gBLvK1YVHUwX+pVf9BeStA5DTUQ8MDVop5PKbq
         vrA3N05xKXaXqhawdgRAnMZewH8TDpd8YEgxLKTkc2gPs5Ad/WSr2hshVzf1fMMjMW1n
         +ED95t/VGv7H++uEEBFeUF5ffXWwYUhCVqlTNfba+zoA1gwJu+Cr5n/Yh1A1oQc/RCQ0
         /yCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764755595; x=1765360395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0MIEaIEz+Uu4LM0hJtlrbSaF1/Us3rYdZCWuXdM8wDU=;
        b=spp/iWZG5p9yp+hFfiyRJ1a/dfgF7G+kUIk83BJXAgfRk8L3ij+ykd38CFMNON4oT9
         ocgJP8/I0QNmLsBGAdYnYXHPwpwzOt1T7pr8sYsxiXdLTZYPUQ/EN8yM+W8G7x9gqEej
         fyuIX5bWdnDAGil/H8GJ/s+8+49MU689cmbyZ22PMr4dx2+0xZOD3XoY2Ty5Q8yBp23/
         bdu5UzjGuEYNGbZ4cjAlsSD/g0ni8eAFEZRhSqep6GzRDlcq4+XsHuJfOWTM3Oexrh0t
         MUzHNPBDkP1Uvm4B/qrPs4Nm5tdHym6TVaB21ssYBqs9uBoPdKHD6MlS/WXPYjO5LgUg
         LKCQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6i+QQuNh+qpHxYhgPJQmWPNmZGH9ZTgGZrK9gc/pkyQF+t+YN1XL+DBCw73PHZb4eltC6p2UXNLB2@vger.kernel.org
X-Gm-Message-State: AOJu0YyDxHy6GpWo2ksHDKDiXGe0YIUhZsmvfj2TzGmdbOLYICjPakow
	WUk29+LHUOQ8T8nsbAWiu0yY5Y1nmkkD9JFTOgCokvM08L15VBXWJ2meT8e2BPHmcVPLGZw318m
	LaLRcKpp3Jxo8/MWuvLrEeeRKWbuRwg4=
X-Gm-Gg: ASbGncuHiD9CMG5GCWfpK3UTdyUZgHH0fUmSy4q/x5JHqjpLVBmapnmK0nx+NDosNKr
	jzjTyyJiV0OoPyKl02fzOWTTuQGmS8uUtwhQubj8GjvoM1h+CHIkzzB0aDSv/FrL6vDrKy0eyE5
	rcjTGLlGkJmG6XyVSH5HMKIPK7SwFiQ5VauUTFfXgUZrot2iEv1+FSiC6xwdREEgF73NEvhdq2E
	LXB5tOL5lA2m4F+qu6ttMaH9rc5JVon5V5u5NJwoeciYjFdLJbfqmaIElBWwinGW6xK+IBaq0+O
	kyh6vJYqMyestovdjSuJsBYTgBfjWpiVlbHbuLrDb0jRO6v7K1wqmW+SiN64hBagP/2MpK0/qiF
	IKtCq+tPJ2g==
X-Google-Smtp-Source: AGHT+IHHiE5h9vFxn3JWLglIm1nyTMKgPs1nJsrmvzcPj24vwltjLLoR5BR4ubExcXnNuPJHINfYUI8wqXTVIRIaQbw=
X-Received: by 2002:a05:7022:3893:b0:11c:fe15:f66d with SMTP id
 a92af1059eb24-11df0c5e372mr1051422c88.17.1764755594695; Wed, 03 Dec 2025
 01:53:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203070605.1868821-1-chancel.liu@nxp.com> <20251203070605.1868821-3-chancel.liu@nxp.com>
In-Reply-To: <20251203070605.1868821-3-chancel.liu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Dec 2025 11:55:47 +0200
X-Gm-Features: AWmQ_bl-2uOJJKigyYxADeo7ivsphIlHSLcBD3op8Es5RJBv4uA5RHkTpe-gdho
Message-ID: <CAEnQRZDx6kBwMYzXRH7zEzJQ58We+o6cfEh-XYcnL6tL4K+gFQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: imx91-11x11-evk: Add bt-sco sound card support
To: Chancel Liu <chancel.liu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 3, 2025 at 9:07=E2=80=AFAM Chancel Liu <chancel.liu@nxp.com> wr=
ote:
>
> Add bt-sco sound card, which is used by BT HFP case.
> It supports wb profile as default.
>
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

