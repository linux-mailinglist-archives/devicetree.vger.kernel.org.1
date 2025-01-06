Return-Path: <devicetree+bounces-135944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D52A03150
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 21:23:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E82C18869A8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6178D1DEFE7;
	Mon,  6 Jan 2025 20:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="cy507WVq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFFA1CEADF
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 20:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736195017; cv=none; b=CVcuWpMOCKI1+Lzdli3b9QTcBYSPgjJges+cXCeI0SHvp7lmtAwlMv3BkEvdRkvhB4ZRU0tETxCo2Lzu+wzloEyGpcOirNN9EO6xbrn2MUF3z50ETs071CKR9gdbfqsRu3H7ZhrOVDou09BIXO+DJCpz9RXqaaRQzHByyjulCoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736195017; c=relaxed/simple;
	bh=oloSoCpL+vTs6hRSB6u1qL5TlfX3tfKLCkUfIBOyPNQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LhHp8NY2NglWyrY79/Jphw09a/45ct4wO9ZEQoDrR9f+ngR1H3IO9YhJk/W4ZcZN2UFmPA/grRlmgre9F4ixidlE8WCJKlYhEsTbyjCPRjOIdtq1ebIC+xnfSArgYEBjbTiHHth761EYyqVpgPAKIjIYLhYkWwovTgawSfcF2e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=cy507WVq; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-436202dd730so106113045e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 12:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1736195014; x=1736799814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nh6giEYIA/meByuU7DxkCeD78i3wvwoOcPOobfQbLGE=;
        b=cy507WVqyEKOsFmXneyCRgh6hOceo/ee7d+W6LotcWfENy+ixMUBkMdpJdCTuJgTJ9
         GhF/h9PWsWouCtVh7Ut5UZRLnbF9knYF6q32B3oYgnAkcG96rp2kgu6qa6gqICRF8nAq
         VTkciP+GJuECBRDzv+QidErPsOpo/cId7/sTFitQxL6qAvwGM5y/WqfksE/6UYIqlglv
         itgWl30P1IOLnr0AIVeSkYsBjSJ1R5QfYs0GogXS0ME2QyPy5mXL34Xj5JOcE6FL3x7N
         jicEN/M/1bZJB9eEDJMb+EVGetR2foHrJj1HnifZxqv2eBOHhyNYxuyPnmtK0KgGB/e6
         vyew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736195014; x=1736799814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nh6giEYIA/meByuU7DxkCeD78i3wvwoOcPOobfQbLGE=;
        b=lfyRopCsHarmA7mDeokjFToDY5TxPjQ6MZSB5MuUUBosZs5TV9JA6VaC4UfHxYlV23
         UnP8N1NYtKw4jTFf7sDWSw+IqSoKWxaYO2x1hstr7qQbSSdebqwOAnv6w6lBu9dD2jj4
         UeVNaTL4QnmwAfNaOw9Ht2QbyQAaLBvnAji+3ZGUcUdp02n8obB5d6XDDTTcyXLjTjZv
         4fNXi32bSecQQkehDGO9iYPEe4moWHtK21i9FUnuw+OH3OqpRz4/WSudc9t9zUDh6H2/
         2k26aEe7FuhMPieheWdHJ3iNZIHkYHS+tMOk1wNUlMyDU0hqj8KCvRNyCp80SKrGFn0x
         iV5A==
X-Forwarded-Encrypted: i=1; AJvYcCWoSZqevi4n8384mR/DTbjt4xLxnnCNgMMGceDCsO1/hdd25r65hBF7zCZyo9USD2HWyd4degG9E36F@vger.kernel.org
X-Gm-Message-State: AOJu0YyFLSoVc70OPRsSqoh4y5iqqSw/7hOT5rFDuu1WrJ3ife18kBzB
	EPucpiAqRhsLIH/FyeV2ExqfPlwB4kJJ/vjdKvSb8RLRPaGiW0KNbozsTm1z7KA=
X-Gm-Gg: ASbGncsexZigrVP9kiz/wdPj1KEEsHbIOykd4D1Vb7ZoEmNgNYnhBbnobZQ77ODZ1OM
	v56F1kJvGClOBpDGwmeRadmUoWZHF+NjHq0qPA9XwjyYIHF6U32FE1nPGI1ZPN2MlXCxtnptvLA
	ZanKJlNAG+fdAwjS7gHS5hY9cMLno+Xj5GUkdABvDggGcVT8lHcPBvdRdl33/l4Zpq07tD3U9sX
	4oVr8P7uUzSRGYpPEOkHiyYxV6TT3Dki3+zGcKH5blfrQBWpu8mIQ==
X-Google-Smtp-Source: AGHT+IG5MF7x6loZ2YU8l7YFeeisPs11ZQvCeOUqElgSEpjCa2qSR+5vvj/MXT5V88O23KvWA1y/Iw==
X-Received: by 2002:a7b:cd98:0:b0:42c:de2f:da27 with SMTP id 5b1f17b1804b1-4366b2f9323mr450859345e9.2.1736195014045;
        Mon, 06 Jan 2025 12:23:34 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:6d7c:e1c5:e9:58a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b11495sm609463555e9.19.2025.01.06.12.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 12:23:33 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Naveen N Rao <naveen@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Frank Li <Frank.Li@nxp.com>,
	=?UTF-8?q?J=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: (subset) [PATCH 00/19] powerpc: MPC83xx cleanup and LANCOM NWAPP2 board
Date: Mon,  6 Jan 2025 21:23:32 +0100
Message-ID: <173619500923.255677.11065404025961122002.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250102-mpc83xx-v1-0-86f78ba2a7af@posteo.net>
References: <20250102-mpc83xx-v1-0-86f78ba2a7af@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 02 Jan 2025 19:31:41 +0100, J. Neuschäfer wrote:
> This patchset adds a devicetree for the LANCOM NWAPP2 board based on the
> MPC8314E platform, and slightly modernizes the MPC83xx platform support
> in the process.
> 
> This board is nominally end-of-life, but available to hobbyists.
> A U-Boot port is also in the making.
> 
> [...]

Applied, thanks!

[11/19] dt-bindings: gpio: fsl,qoriq-gpio: Add compatible string fsl,mpc8314-gpio
        commit: e083b304bb0c2c8c9fc1c2adb63eed6233babfe8
[13/19] gpio: mpc8xxx: Add MPC8314 support
        commit: 401239e1ec9757bf508240e49f5d5da9ea75e5f7

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

