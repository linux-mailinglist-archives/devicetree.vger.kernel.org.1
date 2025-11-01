Return-Path: <devicetree+bounces-234097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92975C28895
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 00:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E2CE3BA6B8
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 23:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3486C25CC4D;
	Sat,  1 Nov 2025 23:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="im+5SDmF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A792A1E1DE7
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 23:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762040669; cv=none; b=rPlzctpKfceM57fpEbol/s4T3OoBHAROQPHsAd35V7+FVbWfzSJMuq0yj8vZwlj8IqSe5oUmmgfNfcGNfWK77Ua+rPuUNE2weNbyqJm3J1CMGAuWB+GVyQe/AWp7hbwlQYjxvPHcN8zbRW4tyeTRndZ+npZq02+ez/6Gd+j93pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762040669; c=relaxed/simple;
	bh=jh7KR1Uq6F54HgOUIevcql72dp2/doXnUhOqdIkZoG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iQN7Z+jPHrYs3b6YATdf6D4kZLcpfmxqotp5X9JuQaMngb9voI6RAp913eUUPsyZtHfB8i9qqmWH1BGbO1+izvcp8Jqm5R2U0sXr3/x1Eb7kP9Oqw1dLdG25ZNVkwo7qGzn0KKoesGK3w0mwGVrEnmGTkdDY09t/IMHnnSSdKC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=im+5SDmF; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2958db8ae4fso1396645ad.2
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 16:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762040667; x=1762645467; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M5xrL6w1s6Y/SwQgHOGtWpqSk58YCr4boule2VrLo7o=;
        b=im+5SDmF5tPZ4a5UnxL2LVPvU9FUg4lX/xrf/PJ4CD3ZPI/ZL+w0La28uu8ZNT+yI9
         buAhJ89vnkuNU3Kl5967D6j06vFe51WJaYyDYROXZyr0e9dEKuKjE+hn/T8mkOXe6t6R
         hvUELjTRG8fo184kg1ubxi4ed+FIT53SFi4TQFEa0OS+G9O6ZabD9rmF1bR0jRhDuzMQ
         kcDpX2jhbTEIXwLMRY0/64eyrqROhMEMNFGtEN987Sc2vcVAVhbR8J59Y++yl69XJWzB
         DGgpQAgpjA24dENnZv0Pgj3W6TUMF3ITbwNNGKfi/XNFRHT5apHuogucAmX32UGIeTlr
         DbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762040667; x=1762645467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M5xrL6w1s6Y/SwQgHOGtWpqSk58YCr4boule2VrLo7o=;
        b=M8PwdcdHJqmbymJqJafRMMemtXZqBkXZpR/PT5bkr4qvI2D5T/XHaEVgy2RSXww359
         ZL+PugY7KiDdtJLMRLKBxHE2bAolVuSEsYgtIobm23NhMucYfmHyexSxlyg6Vg8up5kO
         hkK13Fbreojd1k+++OQ5eUHbAozrLUMfLqSX15zzBac8ng7Qz9TJFlPhfVcOGDlJhzai
         wCXGwhxw8XO3O0GA+LMLo2H8APJQChNCHCuc8yogdj3wNH7NGm5F6HxEf6sqwc+yufF+
         yinC5qkTj/3WEKsWrRpaHUqTlVnD1wTJBgZ9tMmtWt5+PtWL1wWgQRmNG7T+wUSP43cv
         QIkw==
X-Forwarded-Encrypted: i=1; AJvYcCWFKotOHUK/VIxZG6ne02WLgPffiXOJm7rO+fVJBgsUXnqn1lPKG1mmhw+QNEQpCKUD6KLqR7icMohP@vger.kernel.org
X-Gm-Message-State: AOJu0YyaELiesBTMUQYeBG9+OIQKjnLnURQLgQzrgtXGXkh9vrwoZy38
	UqJczXhPhZg5bE8dSngqb7cdXsV5CNbK/HVaJzYrfpKG8wE+0W97y3Ii
X-Gm-Gg: ASbGncuVhAMS0lny/GrbQSeomB43ykinZqEXWJdQ5vovKD4d14/9RqO+CSh6/2PzH0U
	6vdZ9zn+sGqwmh1BDJVj+8PsRgUkjhno5each3yUuobCxG3/BohJimdVoX2WT1nadjIscNpUXvM
	+WY5gwwqYZ4O/ktauR2jfbCadaQVgjNIFBKqFkizN8U+7lbzNf1WUMtCEy2uM8PoBEnbuygWrzc
	6MLCxzz6K7S+6zFWvq2OwUbPvnSSPStUjIo+sa+Y4aj5ciGV45+KCaKpCf40ByLkc5RzOXyaeCn
	U+mldYJ2UVIj7hB6+ePp4aR0Uj3m2Nittrvkn4jlvReNcN9vZm63gOCXzV2DpjErXao1Tu0O+o+
	B6p85xqvO4oUnnBXe5zqWF72Wkj1FnRKQrz8ma2Wyi/cycDxmfevfMrBZ426vKLyrDVCt+VQnHu
	oCw8fScDZ2cA==
X-Google-Smtp-Source: AGHT+IHes7gAPMGnU9C8dtef1adr+TMQgs0cEQ/JgUMpaIjuvVBJgyDHwEuzKah+vpeRkyOHYuQGpw==
X-Received: by 2002:a17:902:c942:b0:295:7f1f:a80a with SMTP id d9443c01a7336-2957f1fb69dmr17823945ad.27.1762040666931;
        Sat, 01 Nov 2025 16:44:26 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-340b070ec06sm4370384a91.3.2025.11.01.16.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 16:44:26 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	rabenda.cn@gmail.com,
	krzk+dt@kernel.org,
	mani@kernel.org,
	liujingqi@lanxincomputing.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	tglx@linutronix.de,
	sycamoremoon376@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com,
	Chen Wang <unicornxw@gmail.com>
Cc: Inochi Amaoto <inochiama@gmail.com>
Subject: Re: [PATCH 0/4] Add PCIe support in DTS for Sophgo SG2042 SoC
Date: Sun,  2 Nov 2025 07:44:12 +0800
Message-ID: <176204064246.157916.1254578946904175496.b4-ty@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <cover.1760929111.git.unicorn_wang@outlook.com>
References: <cover.1760929111.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 20 Oct 2025 11:32:55 +0800, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> This new patch set is a continuation of the previous patchset
> "[PATCH v3 0/7] Add PCIe support to Sophgo SG2042 SoC" [1].
> 
> The drivers and bindings have already been merged into the kernel
> mainline, and this patchset will focus on submitting the remaining
> DTS changes into the mainline.
> 
> [...]

Applied to dt/riscv, thanks!

[1/4] riscv: sophgo: dts: add PCIe controllers for SG2042
      https://github.com/sophgo/linux/commit/4e27aca4881ace1e9a812fc2c88b33dd84e29993
[2/4] riscv: sophgo: dts: enable PCIe for PioneerBox
      https://github.com/sophgo/linux/commit/b85ad0d06a19de95d41f91162389a1bbb461a405
[3/4] riscv: sophgo: dts: enable PCIe for SG2042_EVB_V1.X
      https://github.com/sophgo/linux/commit/c6c215099e89b1eb71ed6592163ae5b530f4538e
[4/4] riscv: sophgo: dts: enable PCIe for SG2042_EVB_V2.0
      https://github.com/sophgo/linux/commit/579d6526aa43a155c8685a88ef8350a8c29afa47

Thanks,
Inochi


