Return-Path: <devicetree+bounces-232782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F74C1B913
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B8BE55C6415
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29F4F257858;
	Wed, 29 Oct 2025 14:52:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8ED1DE8AF
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749550; cv=none; b=d1xQV+zPcIgMrqJmm5rmWb+r9GV17X1VYDbqMLO/oHtibOljlTJ6/rWgZJ6IhG6DTPQ6NuOxjZlrwgOPJCMi1/G4HH935kZaV4gxUsD7o0ZLldVh8lzi5XlHo3AepSqoqSNT9HMk6gDrGO2SUVrgEhAuolceVg6lYOYpu6AgKPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749550; c=relaxed/simple;
	bh=lfiaCy81o+Yc4E3VYzi/mV8FENlkKHuoO0aA7zcUcY0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FWhquJr5RXh5MqcZCf3JhiA1DWBOiJvk97yaEJ0lWp25xIguonRhTIreZcYaJgf48BvomZndq8x+fThnNfMT0oSn9YExB42UN8PL3gCS/IL239ziiXugwJrvwb+QYlDxjYbO5o03Oa5FsNu7ZSmLRN8Z14ybvMtbmg1Mj4SQp3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5db2dc4e42dso1168033137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:52:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761749547; x=1762354347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9FLpuySnjEqiS9qmBmDDye9ClI7f1GY+eT111Ebu1EY=;
        b=I2A/qrvHfaBvEZr3Ih2KjmM7WoIidi7BKHou0eJGLO6R7HXapF1KecDKnqWE3IVAtM
         thFSIvqAec0lrMfznfM76u1mOYGiMtuacGo7bjgylARF70Gz872xGO2vPOZyYvvpZoDp
         9dujvSJdmfRjPuabAc+/wUBk/VtGgSXOcAGIEm3IUl4lH5BB0mWGJ6hw8jKYtHv4lnWs
         yUHIrBxfghheEC/qxhGoF4Yzf9/HYwEFSogLgY5nSC8Rw+CyM1msDc4c7zMWilZDafmR
         enm8ppOYHFHvpMHcU3cIaPMjv+VM1f+4sUNPNmn3yO/+N0IHaWiNnNFCwt43kANLz8zh
         wO4A==
X-Forwarded-Encrypted: i=1; AJvYcCV19F5Vha/f4BipSB+FIQEunVW8Nc2P5FktlVsK1uzBfN69gzOWSzXxsC0Vcav9CUOx9x+i7QN+dsoP@vger.kernel.org
X-Gm-Message-State: AOJu0YwPv5KR+jNjLilmzYfwEQ3wkzMR4vUvRQHpKhpi8Bwp11q4Zl9Q
	QGrkxa7+OpSWJaJcEiyD32xphVKl2vB1IlV8RZhhu0zq5odHC8WhbqPu/xod8fhM
X-Gm-Gg: ASbGncssM5W0CvwEO6N0JmP/wfmZ/kAbOG37/BP61wtB4YqQS2z4rEF245ZNYyHS4/D
	UTAEP8V+KOoMaQS0qsV2jMx51xYTOhUY34C4agrmNgnfvouLGOlnxGWNy+EWmgREf4Du2sMTvdo
	Ae7s3djbPi/HI1p76NPAfcHCORbi+Jb6PmnjjqLvbBzbirpHeNdm2ah0I59df2n/AQVulyrPhHi
	EBhK/xcT0pL9aXW+arxHEc9HvHXOmyKYcLE8EskrWLSRr4/8KZzuQ0PAm8doQ0aJpemeuzYfC5C
	2n0zFOuMfbXuS7Ciah09DB4JeXsJVPbNzXDdAzMjYVSHXiHjTvPSCs2AAAtXnlQv/vF9k8LQKhS
	bRyrG0aRDp1Lr7otLyKwIviNXqKEMvzwSN00LU8vUAy0OirKbiiRms4wFzaKZESq4apKqfpAy9i
	ApoDrqkIhjwmKiPtVfZAGWBEaqYl3ZQnVCJzJgYTNXeA==
X-Google-Smtp-Source: AGHT+IHZhuZ0r+Z4L1APb2Pq6HFzg0AiEdb4dthh87co0eT+YSGQ4/TLzPKXtQlv5LN8ANr2P6cB+Q==
X-Received: by 2002:a05:6102:6105:10b0:5db:2168:77bd with SMTP id ada2fe7eead31-5db7e069f95mr2526446137.2.1761749547276;
        Wed, 29 Oct 2025 07:52:27 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934c40c0492sm5243699241.16.2025.10.29.07.52.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 07:52:26 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-932c2071cf5so991515241.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:52:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU7RioCVHgpVFSR4I4HQxxVUGmjw+BkwlXKfq8gcHDKv+d3626OqLWLY/dxU4LvYS446+jww6LJ+mb/@vger.kernel.org
X-Received: by 2002:a05:6102:2c06:b0:5ca:714b:2dcd with SMTP id
 ada2fe7eead31-5db7e20592fmr2373437137.10.1761749546310; Wed, 29 Oct 2025
 07:52:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027211249.95826-1-marek.vasut+renesas@mailbox.org> <20251027211249.95826-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251027211249.95826-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 15:52:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV2Kr4WcYRERHCYR1zGAh0n2N3D=LYbRSYLJnRTYDB4+w@mail.gmail.com>
X-Gm-Features: AWmQ_bkKsdjAWwO1kVg5eGvvrllD1NL0DkP6oF9YOfmHIHPrQOIMjaePzAGpSiU
Message-ID: <CAMuHMdV2Kr4WcYRERHCYR1zGAh0n2N3D=LYbRSYLJnRTYDB4+w@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: renesas: r8a77960-salvator-x: Enable GPU support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Oct 2025 at 22:13, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Enable GPU on Salvator-X with R-Car M3-W.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

