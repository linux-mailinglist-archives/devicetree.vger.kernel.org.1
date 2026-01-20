Return-Path: <devicetree+bounces-257179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD3DD3BE89
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:50:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 194DB4E385B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61F11329C6A;
	Tue, 20 Jan 2026 04:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YXN63F1D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59173382C0
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768884598; cv=none; b=Fh/dPSwMD2eUha4sRmtyfDcNj/dxVXIo+s2/qFVPQU2/RR8I4PHIwPHdBuIE200wAVH9z7X0gkAuymCoEgM/dBeeNbyEvRaniUlvmgt0wPVXKxvBPitepz3fA6IRiyBkApwPdk5JluhKujiXPRZm/Hcs/yHrDlqwnYhhZ0JwCr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768884598; c=relaxed/simple;
	bh=n5A0OXSyk7lo7f3jHURyz0bX/5X3lYhpTO7Z9MO/Uec=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pE0+U5+8JOKw7T/mnQQtnBAzjWN5ZiXLV+JOMv88ePbFVkfNA7zPAT8wOVHdOEIdWC6ZTrQBcOrNecVx/JwXCJoDuMENSExqDBVOiiMMLF0F3yJ2tmvHq3HlNcHotZWE4zd+j7nBUj7wobDXCGylb0B5B3enGLF660mEvK9KjVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YXN63F1D; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-45c92df37fdso1924274b6e.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 20:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768884596; x=1769489396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i2Ldiltg0ilm3GITC1FlZ3jygue5ViLbnCHXlSmV/Sg=;
        b=YXN63F1DQZXX/WBiF0tTfa7DVR4//UzBq4CDileK40OqbJ/THFkcJ4w6EQSIGd0y3z
         vQq5UvEsWwh1rL8IseNb+LBUI1WO+yIXoKLj3moJsfRPQZltnkejH1jzjOFo9BGKMLcn
         C2CtChe7Vxk2VL3Pn0u2x+dOtusU6CPbwY/yUp3tW6zI8NWhBcmaS5BJSZOI7wTjjvwW
         oZ1xmUis830J12OXZzoSa8VbEhKpNLFmeTyj3ur/7FJMrIV7SXsazwZ4FDqoGfDbHkFh
         0G03Y9DENLegIcqAtNf0PggUVIGoMJjNtIBYN3SX8tnvKW+cYzMVdoX5vAWP4jzMUCDl
         8r/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768884596; x=1769489396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i2Ldiltg0ilm3GITC1FlZ3jygue5ViLbnCHXlSmV/Sg=;
        b=oVDZTMPqgKQpzSCUUpkHmq3cJgl/L5rtjCLgMesZp1uKNXOWLz7qCXVzbNyl9+6BMe
         QSQyAlKKrqPCa7wGZnjtubriMZwN4muL+s5HoiOr99IU3aykt3PT4138V1qxfByLqpe9
         ilWEvg4A2nPQr35TpCT6ChT4betYgS+QIo6rwC0OQrctQaGGxoVQgfcanTL87FCDJ/tB
         AIn/3Mmk7os07PRCdB7Uzdj+0Aow4fNq17ob6A3C5By4OOecgyD0MBept2nDN9Gq5xvW
         Tyqh0sNSzdqApBtAPybIuSiT4x0M0hPuIvyvIY8hEmKGKeOLE6TfksppiErABTWPbXA3
         /wEw==
X-Forwarded-Encrypted: i=1; AJvYcCU11TUrHB2gGixrTxg+fe/WRMvxMN5l3Z8XmkFqu3mGTHJJvovPFT+GuH60HcLG44Ji4MC5eHTPXNTs@vger.kernel.org
X-Gm-Message-State: AOJu0YxdcAwfMipR4zX2CmpGoyNmgRiz4TEl7y1833F5JIS2tY87gtdz
	V+mKewPaXBq8d53wScYw8YSFfpSdvm+XiT32pvTlN04Y2gisfr51EShd4GHCfdZ9
X-Gm-Gg: AY/fxX7eq1SVmbHmlq80lC3VaoSHiHkCoGsLQYXmfHuKzBXjVy1irejZnSGgXJXiRH+
	og9BJtTmdo6Sy7z28Gkk16RaDUCd3qgkVQMhqUqiucGnL7cGkKTVpykxN4K6br2Cj1JZYy7h/Um
	okc0vTvoBXig1rrjwITJxP+VN3qyEatLHgAGXx+7jwhgVOmk8XgN1tI6WmmdvyzIqv3htN/fdDa
	+hSxDOQ9SPBouJ/2oivAlUC5ub1HszoeH6R+0sow6tTTrFoQPxsgmuNeWAqhnEvpYsC85e22bqx
	BQVOXu1Jhj6RqWhPX+9GNTQ4qp7GDUxrhh4aR7ujpW7X15J1FcajNFNVNQrtwMtRLBTjDXXPQ7B
	Ep16wco7gC6BGlKhY8dDsJE29Jmq+6b6dV7ZAXaR7k4wxvoQ6OLtHWOOIpdvYEf6pVAnPBMXeK2
	u8JumpAoApVQ==
X-Received: by 2002:a05:7022:925:b0:119:e569:fba6 with SMTP id a92af1059eb24-1244a7195b4mr14136099c88.21.1768877353611;
        Mon, 19 Jan 2026 18:49:13 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac585a9sm16856206c88.2.2026.01.19.18.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 18:49:13 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Yixun Lan <dlan@gentoo.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guodong Xu <guodong@riscstar.com>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	Junhui Liu <junhui.liu@pigmoral.tech>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	spacemit@lists.linux.dev
Subject: Re: (subset) [PATCH v2 0/4] riscv: dts: Add "b" ISA extension to existing devicetrees
Date: Tue, 20 Jan 2026 10:48:55 +0800
Message-ID: <176887176536.427065.4468747981087466363.b4-ty@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
References: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 15 Jan 2026 07:18:56 +0800, Guodong Xu wrote:
> The RISC-V "b" (Bit-manipulation) extension was ratified in April 2024,
> much later than its component extensions zba/zbb/zbs (June 2021). Recent
> updates to the device tree bindings [2] enforce that when all three
> component extensions are present, "b" must also be specified. Related
> discussion can also be found in [1].
> 
> Patch 1 clarifies the ISA spec version for canonical ordering in uabi.rst.
> It is a trivial update, but can help readers reference the correct
> document version. Acked-by Paul Walmsley in v1.
> 
> [...]

Applied to dt/riscv, thanks!

[3/4] riscv: dts: sophgo: sg2044: Add "b" ISA extension
      https://github.com/sophgo/linux/commit/f16ae81b80ca4e721f4c4ed1f28390115f7721eb

Thanks,
Inochi


