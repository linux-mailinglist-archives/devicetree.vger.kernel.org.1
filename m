Return-Path: <devicetree+bounces-235434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD03CC3881A
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 01:40:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0D533AFC12
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 00:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8DA1D88B4;
	Thu,  6 Nov 2025 00:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="N1XzEY02"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F871C5D6A
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 00:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762389616; cv=none; b=sONuETk0C867adfEu/O2aAMAI1cbU4XAdEj5pnk4P1seUnd3FhItU7QWOUxXEDEDt/wER/C9JZiC26X6g6BdtLXkQcm+z4a3pGk0rxrnPqzVWGPxL0nd52wVaSrWrbccqrtJrUyEx5fgErFM5c6cZ4ues9sSCQbHnvsmgKLqMys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762389616; c=relaxed/simple;
	bh=rue2bCVLqqgDBX61ZwQetRzMYMuU2vRzhd7cN9vguj4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Uaj9cxkFtYdLBBNjufrk1UrrG8Tky3gP7nPvh7Evvh+uIYJa2XJN+0mBr88UrijOxRFEcxwPQj+wkKmn2Y0G3iNFvCWEFQ+p/U6sVjhdh8LDPInmD9GrVPy4EeIKe+bjWeRKwRIDGLYJ+4boFtj5+4XKeomtGw0mg7fdWVc3K1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=N1XzEY02; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-341988c720aso364524a91.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 16:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762389613; x=1762994413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4Fdh+kQLyNyqbGV17ENMExDWzQqmTQ2Vs89uoeAIDg=;
        b=N1XzEY02s0UHGtXIFG5sLArKhzYybx5PvMx4d4Jok/BZYT5qyGIzpzt28hnvxHn/aA
         IhGZyFEXohCeI6ZEfMfKBfmTAg+UkpHIZiZyOgp0zMOBByq0jHdbt0B4aMeJvLmtvOOF
         0cUtjvKXuXDUt0qbDhM/8zL/ugo3Mla0pjoBomnAfEM/HKZtjXHBiF0j/9OXRUzVqvQk
         zQqGYcj7lTq1FCQLFbbpXJweoo5BhPwNLotTVZbXP9SNZztmCb2O5ge4onqvNLDJVw3T
         x5DMvzDAMM1TBNEi6kbaqw6WiN4VQiM2VTqRvWIV+hyYVS4ZeHs6TSSA482pi01xiO1Q
         tzjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762389613; x=1762994413;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y4Fdh+kQLyNyqbGV17ENMExDWzQqmTQ2Vs89uoeAIDg=;
        b=XfqVrlYDf4wThVCbK+wKS9HBEe+Tkot7eTk9lxdmpS7otazmx3iGsJslGhyGLXRIhu
         MGgDXkbHudqgMxq1InEIufAh0YW7CwEQi4u1uE6oOCW5O0tqPEuXT9PqCmTFbCQnDhwc
         7iQ6IAonAnWV2pSsTeCJBAvF8mq+x+UatVCLjxAEqk7ZobuJAKYXJT4y3DwrzVJgQls9
         vYeYRmRcDa3mgEtCb5RX0ejrTOvakIoWenqD1C9tgj06oC71JfuxpY5CrQ3L5ptQA8gk
         o194/7KhnYk/ZIEVlx+7/O7cj92cYaqvZax+49wqcj0rMKmSqkFDdz8hcE9IG/URNICd
         ol+w==
X-Forwarded-Encrypted: i=1; AJvYcCVbvy/vbbrD0TNPIXmrFvlmGqbWlF9sgow+GbsVfaBGLRMV1G8tWT5L88PFhVX427tOCN989aXB4C2x@vger.kernel.org
X-Gm-Message-State: AOJu0YwrFnqQW6/UMEbkZlyDx52JXct6QfnjFzGxGhkBUxxDSiv5yDRJ
	6pXJrTtXJV+t40o/y3InLJ8/H5L1s81lE7tCBVGNotTCJlv4iDxZ5VYNnrEyVLhGKiw=
X-Gm-Gg: ASbGncte2iPFDjmxB3TPv5pW5yUJHto9EOoBOV80KJx272X7v2BW6OglULzdcLNL0Xx
	+RLgdYQ8HzMuXM8rpHOVqlQE30Opum1djax6aSfv25iz0+29w6ei/mnATL42um2zT5EFMsL03Pv
	B4oy8SkVatpHvEZqbpuuHVi+1WkoSOFE1G3dYoybiIJs2l3RRCoUJGvxTNZn4FAZrGh35lSCrTq
	0Rh7Dr872fSIn5UIdlsO7v/G0CVnEi8WVlVUIE+UTo9yVlPKrB3gdSX5UA0IPkDpPp5nDFERmPE
	1C1969lyyYDi+iH+gcNrJ2FUHWxW8+FFNzDHWn5RcGFLIJ6oyfgMrCZolaq6drZM6SxpZpcThfe
	pbpefUh49zQLU5s7UmGWtJ2XVg4u8bzBexT6piOlV6cvEcp4YBx+K6BA2tDdUbc9FXxZKjEEthg
	==
X-Google-Smtp-Source: AGHT+IEcLNKZAx7Gs58quiN/BqhCrVzUdA9uzXWTUpsiUUbQ/IIuN6vGZJk0KYstqzmC11nr84QNuQ==
X-Received: by 2002:a17:90b:4a84:b0:340:be40:fe0c with SMTP id 98e67ed59e1d1-341a7009dd4mr6232479a91.36.1762389613281;
        Wed, 05 Nov 2025 16:40:13 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba90307193fsm507604a12.38.2025.11.05.16.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 16:40:12 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Tony Lindgren <tony@atomide.com>, Nathan Chancellor <nathan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Schiffer <matthias.schiffer@tq-group.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>, linux@ew.tq-group.com, 
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 llvm@lists.linux.dev, patches@lists.linux.dev
In-Reply-To: <20251105-omap-mba335x-fix-clang-comment-warning-v2-1-f8a0003e1003@kernel.org>
References: <20251105-omap-mba335x-fix-clang-comment-warning-v2-1-f8a0003e1003@kernel.org>
Subject: Re: [PATCH v2] ARM: dts: omap: am335x-mba335x: Fix stray '/*' in
 comment
Message-Id: <176238961246.3045323.4889142584936333323.b4-ty@baylibre.com>
Date: Wed, 05 Nov 2025 16:40:12 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-56183


On Wed, 05 Nov 2025 13:41:09 -0700, Nathan Chancellor wrote:
> When preprocessing arch/arm/boot/dts/ti/omap/am335x-mba335x.dts with
> clang, there are a couple of warnings about '/*' within a block comment.
> 
>   arch/arm/boot/dts/ti/omap/am335x-mba335x.dts:260:7: warning: '/*' within block comment [-Wcomment]
>     260 |                         /* /* gpmc_csn3.gpio2_0 - interrupt */
>         |                            ^
>   arch/arm/boot/dts/ti/omap/am335x-mba335x.dts:267:7: warning: '/*' within block comment [-Wcomment]
>     267 |                         /* /* gpmc_ben1.gpio1_28 - interrupt */
>         |                            ^
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: omap: am335x-mba335x: Fix stray '/*' in comment
      commit: 35c973187f59328a5a58be132bd83ec2fe076620

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


