Return-Path: <devicetree+bounces-149808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BF0A4079B
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 11:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05C893BE340
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 10:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2301207A09;
	Sat, 22 Feb 2025 10:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RMvSABCR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AEA16F0FE
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 10:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740221319; cv=none; b=Zd432yXgADi71PTDqxRjbohWkwWiLfLsReXWgIIQhuMLAqKdIjOsfwMIYf1ByDn7pM+49jJ7pctEF8DcPZM+xxa+2EBUtgbu5+DUmwXXNIfDDlv1UohGVXgzLTxVCo4UnbAceXFA5ZBX6MVBKGDEOxUfR+ZiXeLLsxTs6m4s+rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740221319; c=relaxed/simple;
	bh=f4Bw/JJH34S6WqqDPjmH5pwEvRSGU7yq69HeWIS5/4k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=egdMXYvTwMXZZApXQnETwnXg+d4fbBUbumZIF3IabQLrB4b8bfJYuywkJ89/Q8Jc32+TTg3ImU0sXgbDbW9E2kcZxTwLxADhhnkJ9gupYXe6Gj40HgiUE0ctN3Iazy3h75+gTZrMKYO+pXMZa9mkpGRZJHG/aDSUpnWlfkknCI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RMvSABCR; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43994ef3872so17427955e9.2
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 02:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740221316; x=1740826116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f4Bw/JJH34S6WqqDPjmH5pwEvRSGU7yq69HeWIS5/4k=;
        b=RMvSABCRQjSufhFIrKke4nKctqxLBXp/SZsCrdNH7RtjQ7LXa0BhOaZmdlaGaVgwmO
         cjaKqHBVv4A3M91qf7OZPtgqJxhabTq26Lt27/S56TyKxwYXHdT1gC7W4YLFdLw2y3IS
         akpwHrLqMDmp60ooOoECjz5NohMtD+cOIFOkn+GjjdhzjGMkqcQfAq3vsEDvDEUHldZZ
         uMDm9L/Tq2h/FR//3CscQuKdvjRZRmrUynSkpRToYNwNjkooRdqhMTLWjrXkGBX2ZL9l
         g67yTEtaY/HAUmPIt+s4vu3S/qp1YRj2gozl7D+s+Tm9NHor7BARp+NI+N9tpZ7P4Ncv
         Mkyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740221316; x=1740826116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f4Bw/JJH34S6WqqDPjmH5pwEvRSGU7yq69HeWIS5/4k=;
        b=nPGTqZhiL4hL1mr6WGjvlpJJXUGo2QX/NC8Zq/zyg6GsRC1RDN8hLpmgB8qakbKRsH
         MqOHLqLYTtWsg761rLsFmNhQPCSEkMVzaFN3SYhkgdaJayS41+y0meZLWAwfjCt4zljJ
         UdO7YDAZV+WnxdkUFDLVLSF7qKb3Rewrx+RmjUicRetj9HFeFQ2JGaTAft61MUnk48od
         bkbzavZ4aGRAXnspmOVvGbWZBIUz53E8nq+wJ/5IOsgvL9rUcKD8DoQLTpvfa7PRkLMn
         jdbKgZwj7Z54oCWAumICj7kj+sC1Wy1QEPCNqD4tPv/CCN5oy6R5zLiTY0ElhVoFekIM
         nflg==
X-Gm-Message-State: AOJu0Yz0dxAJehdodymn9HDpC4M+mwCUPP50I8yFsbOUNoQkcLSpofL1
	txSaUZPYKIStQt/dT68IJN67f0FDXWWAeDRmZIiwfl9jYHZU7tF7
X-Gm-Gg: ASbGncs3smeGKkvnnYCtO19mP0D6Ttk1NhJgkyko24pZYWp9qw2Oux/zUpNJlJ2aijV
	N7eOSyq9Xz/ja+1VhDzwADtTbifNEBIofupF+V8LCF5p+EqBBDn/2OFhaJu0O2/L/OY/ZXoDq71
	7T5+4dPxixPAiqiJlWu/NDOSUue1oLjhkmjReP3I9OZ/1qV9qOe1VmfvXZcVmNgAZErFMDNzLzX
	QiU/dtb51plKv5/1Oho8mjxvSxbX7X+2VeEQC9Amm9JaELHGEplUywsocgpVuKtKHuu9ztAs4OD
	GsqPysApjBYqOjeSQBWUkvOH7gzoi2m+6POL3ao34M/Y5R/bOJXFgl0dZUUaOIFexfHh+N2iELx
	qXA==
X-Google-Smtp-Source: AGHT+IHGb1ynqcv3I1Lqpb4WSdae1Gn6bKYqVXe+dHJe3J8zwqiVL/sjjSKDSwbxbZrGWdzbVBO7Rg==
X-Received: by 2002:a5d:6d8c:0:b0:385:ee40:2d88 with SMTP id ffacd0b85a97d-38f6e7565e1mr5843559f8f.3.1740221316419;
        Sat, 22 Feb 2025 02:48:36 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-439b02ce735sm43140405e9.3.2025.02.22.02.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 02:48:35 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, samuel@sholland.org, wens@csie.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 4/4] arm64: dts: allwinner: h700: Add USB Host for RG35XX-H
Date: Sat, 22 Feb 2025 11:48:33 +0100
Message-ID: <870112230.0ifERbkFSE@jernej-laptop>
In-Reply-To: <20241018160617.157083-5-macroalpha82@gmail.com>
References:
 <20241018160617.157083-1-macroalpha82@gmail.com>
 <20241018160617.157083-5-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne petek, 18. oktober 2024 ob 18:06:17 Srednjeevropski standardni =C4=8Das=
 je Chris Morgan napisal(a):
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> The RG35XX-H has a USB host port in addition to the USB OTG port used
> for charging. The host port receives its power from two distinct GPIO
> controlled regulators.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



