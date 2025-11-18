Return-Path: <devicetree+bounces-239579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5053BC66D27
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 02:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9F67E4E32F9
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 01:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED9D224B1E;
	Tue, 18 Nov 2025 01:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T7ssIQnj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9064F28C866
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 01:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763428790; cv=none; b=kbCgocCyT/mL+PydhwHL2iy4lBoOYj0qc30WbMqzwAEZGQsmQX4HhDmAsGwaU786RsI82lfvSOwfM2e2yh3/yPHLHPq1GK2/xCLa4x3mWo2oL4fiArbEejgBeyCNm+KO1KBo6f9pe4zj8i5YYsfH2iX6Q3WnA37SR5c55IXP9ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763428790; c=relaxed/simple;
	bh=KfZrY4abbwxsQcwx1AzWdikpfTyaAs+44RSqcFkZ/Pw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sx5ncq0V/CLUy1OPZhztfAzP7i+KWkkMycju2o8JqSKE9aM5LpkYanDhC/u8InlrqCHvAILrNjSvwDAeelRK3NTvwEeIhmDEQYbaYgxluOngtSfXcFaxTsjrbOhAeRTLIL4X80STDu2aq/H0LHUAb6aWW0LSJIeBzfkWKU3E3+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T7ssIQnj; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-bd1ce1b35e7so944883a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763428788; x=1764033588; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/JBgoq+z6jGecNEGkZTUmDc8yTXhWwsgJ8qD9aHwpDI=;
        b=T7ssIQnjoqLwyatjx9JF1IltFZHwgdICsaO7eMbG/LiqOGyRr2HKfBq4k9Mgr1Qxgp
         ez3XTqXCHRCA5pJMFurWwWLCG8d5p/hDuecLAjKkYUS459uysoAu+8CTvrrcCR69SqXk
         YyolrHfh9LdMuxGCDhQ2OiAGr8cT1kY7SH0NTmPDohPDKbiYCR0EncEc/8r8VHe9S6r6
         6zl+VT/X1jPb3r8nC5uv16PnDBNrtYq4mBPPaq63bVdwTfeYep3Urz7XBgtlFjjXaIFP
         NF5DP1hT01VQ9U2FSxt/uCPw4ZcKljGGsVFWronWI4KIyMDT13pKFXZO+yuwgi+NRG1l
         s3qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763428788; x=1764033588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/JBgoq+z6jGecNEGkZTUmDc8yTXhWwsgJ8qD9aHwpDI=;
        b=YNodJEKx1CFx/c/uDQNmgrmWPpHdhCKDRHWTWsEfSTAgzN+LEiMm+VBzXBpaHL2NLp
         MwbGgWrmCuilz+YasIPZ2gZzZFNpuxzrHKyT1ayDtN6O7rV8jjjRRdT4DQ4IBnKoLSwc
         i13NIRf9Hsb7Oafr8qB8iC1iDWxBTT8Ef8C8DCfG7c6oBNsF29i+PStj3EUDdFQbWCuP
         yAh4g1H5HJIm6yAsFaC3vVBgdn1hRClMfR4ZaR4W1wOeYmTrXtKJJxk9Iux1MuWcJa+Z
         UqrIaak9hXtosMHex/BgGWOOjZgxLUaKppXP4IqCcN+zPRhDbVENF70MSO4Z4vBi/+z9
         Ae8w==
X-Forwarded-Encrypted: i=1; AJvYcCWeR06zC0+5PeU97wS4mWWb7UhpwhZV9qNoUIPgB5wWZQRiesVmmQzpaBSgHS0fCcarOqdxWgUTNSAZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzS3tRw+F3laeSGIu9bLdhBOhTG2v0k0KgXVDpELE7VRE01cUbx
	PcNbc2/6RB9LAdX6Kc/gWAO1d+uBfK6xLkK+WM7frK727wAyCfXTN/Vh
X-Gm-Gg: ASbGncvj7UhLH6JOed+gzM2OsRD6oC4RcH+nlTfynkhq9SOqpkX2GZG0Hs5sXcVJ9hm
	62aHG3pMV7U6GKwTbRinRh58AWbuzF9CxfEHh0rC8XP9Bsjnnp25gtWKLdjrZUQrLvlxoDFbieH
	3eh+5AYXAcGXHbCxYdR2PQZLGHIq3cYEkj2TXVOHzLd8r+RuAivJh1hfX/1uzsrxUnQeeJJJSMt
	qorIaf3MkVE0uy4EqnVkfOVrl+foylO7E2b+H99OLNwNQWzk5PN0NsqvFBYfm3sq3KvEkpn5MO0
	w6JDTpkNRiNkdp4edSBr92iBG944zWMcdhakyOu1GvrWYs3SiSgM5f2zTfyX5Ex4QlP7i+x9nJc
	GSiah0+zGyGOMopsVVknByAMgIHcT6NU4QPy5XLcgxdyLih7UPtDZxoC9/9UnXZBht648BT2Emv
	Gn++wMTPnmMEmCzlPXu/0qZimAoR8cIf0=
X-Google-Smtp-Source: AGHT+IHAlVYCgwLwhG5dvCsbxSy4/6DoRbKsslM0o7aXrisHTVE8SaDF04sXPQlYXdqI+lq/6xvytQ==
X-Received: by 2002:a05:701b:281b:b0:11b:9386:a381 with SMTP id a92af1059eb24-11b9386a5e1mr2777708c88.48.1763428787615;
        Mon, 17 Nov 2025 17:19:47 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885e3sm53255982c88.0.2025.11.17.17.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 17:19:46 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Zixian Zeng <sycamoremoon376@gmail.com>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Han Gao <rabenda.cn@gmail.com>,
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 0/4] Add SPI NOR DTS node for SG2042 SoC and boards using it
Date: Tue, 18 Nov 2025 09:19:12 +0800
Message-ID: <176342869620.638242.11529006624321296909.b4-ty@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20250916-sfg-spidts-v2-0-b5d9024fe1c8@gmail.com>
References: <20250916-sfg-spidts-v2-0-b5d9024fe1c8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 16 Sep 2025 21:22:49 +0800, Zixian Zeng wrote:
> [PATCH 1/4] and [PATCH 2/4] are copied from patch set [1]
> [PATCH v4 4/4] with content changes:
> 
> According to SG2042 Pioneer and SG2042_EVB_V1/V2 schematics, SPI-NOR Flash
> cannot support QSPI due to hardware design.
> Thus spi-(tx|rx)-bus-width must be set to 1.
> 
> [...]

Applied to dt/riscv, thanks!

[1/4] riscv: dts: sophgo: Add SPI NOR node for SG2042
      https://github.com/sophgo/linux/commit/59dc89fdfe0bbcce186116651bd017cfb9f70fc0
[2/4] riscv: dts: sophgo: Enable SPI NOR node for PioneerBox
      https://github.com/sophgo/linux/commit/f49314cbbc98f9ab2bf4eb82ccacbf79f179db6c
[3/4] riscv: dts: sophgo: Enable SPI NOR node for SG2042_EVB_V1
      https://github.com/sophgo/linux/commit/11f4d84c9f724ec4c6810567d6b9713b054bb28b
[4/4] riscv: dts: sophgo: Enable SPI NOR node for SG2042_EVB_V2
      https://github.com/sophgo/linux/commit/af5eb17ff893bf6e52680a31059e1816749c2d20

Thanks,
Inochi


