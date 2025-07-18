Return-Path: <devicetree+bounces-197544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 34881B09D11
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:57:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C99301C27EBA
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 052862957AD;
	Fri, 18 Jul 2025 07:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="je4LupE+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C485294A1F
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825382; cv=none; b=W/WSpKXlL0F0+2coeFJUpfWraIOQk3Twth7bz+jXr7MOSdHy1jrIVjtzzi1ah5ixU74Et1n/TAd9j23ZrzqDgKxSA/TuUiNcp5BMj78Ev507mCg60/6t7CKi4mSdtxNhtIKka+C3zyDs0nKUrUXnd0xMcq7oppCMm2/40klseBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825382; c=relaxed/simple;
	bh=alPVexbBxhry3NY0dUuLyiLSWqDYznmgxA4PA0hqC8M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qo/3bPQfQHwE4bSWY5tTONPWkP83c48KlU6k9mAnq54wEZSWTDnMIsmkViuKdxl3y3QyK0SiCQW7zMSrftMyr+NfMNuuuDB7ZZBxmZtAm9YN/4ljlSZ2o1KTFG58v94PF/7LVgjv7lk4LQIuor+fLlLoy9sflpUaqVzvArLQcBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=je4LupE+; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a536ecbf6fso1074806f8f.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825379; x=1753430179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ahNBqCLgi20kpDipeWAA9FM61/0sj5pfbYA2+06aUAo=;
        b=je4LupE+B138ExPFNmZJ3B6BBxAfvbc8+uKQIFyKd1uPr9ZXG5Z11eriUjxDnLF8+/
         otSAv/k0+1a9Q8wKwgY+2BUaE2qAH5RHxwrhOvLnCkqnc7tPHQ94szQio4Bdmg21ESW2
         5dxS+aVE2j5hEcRvJPpNqxP+JC7UCPML4NSVHTed9okUJecffSQSEjnw7Q7RIwFo0eES
         i/3tnPh7J5H8MUFhBrcjt4ogq2E9bdct23UtylCXKM/X74PbVE9SlKxRyof7yFGUfa1T
         qC/3vzaaqznJk7mb/401LI95PYEpXLbUnZ+7zhqsKWS2Bch1/SbAkwihC+/cFIemOjjo
         WJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825379; x=1753430179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ahNBqCLgi20kpDipeWAA9FM61/0sj5pfbYA2+06aUAo=;
        b=sqW/j2tyG+s0jjBnXJQcm38fUOcntCw/Np0wC/BlOWmc9vmoUIy9D84EOpQyR5Hn8P
         R/LzrSXoPfabSvt1F9z3xTeW9IaIuZnN9tZF5txGyeXwvh4PGHp8H+MlsazkDKbVIL8r
         NHf3BP8nx8FEZMPpY+IB4/sJc4x6udCftDjbXI2xPCpa/T7W5hRL57TY7F8YXu/8ZNRr
         nic+qEjiNIgVbFrFyKOa0liOIXk4G72sV0gR3W7cFOQbqDSjv8DBp8jfwXCSs8i+kmOD
         ZeRzblT8uARyDY2REx6O6xS6kkP30knP7O6TTgL+gRn7vDBo/veVmO1vMIHOzGHl9Ele
         OG5w==
X-Forwarded-Encrypted: i=1; AJvYcCV4Q9Dt6euxMdL8wQhclJS2A1uZ2HrbICp9FVdMd/JE4S5iQ/FBHjpzSZGo6B6t/Yewbqp2gD9fDLVV@vger.kernel.org
X-Gm-Message-State: AOJu0YwyhVlKGktdrFdEBGhYwHzQ+Ft7daX5bugQehq0b45qCbqor5XU
	uZRI3bvB/7BThb9Xt5wnzQVTqy/INoxk1cgLAbLH+g6I2Hipj4rQt9BLCo7ODFES1zA=
X-Gm-Gg: ASbGncsXWaJTfnyupYuijHIjPVpipdoreyjdCOlTZfkAaIhUjjHL1hTyCFGXDPDDPFP
	R3Yn667wmXWIP6lmZtATcSLCbeIJdrCm+r6TzjTPyaeCq7n1CULjA4HIwXoImRpqMKVAu8fkNbU
	Qq08KCwJKfFNyqmLwxEeSpTov7D366WLaJycKSryW1EjFQcA3A9M1oSNntQg5+K2wTB0qauseVE
	sCSX5coz8P2mMcO6zGkERqemTCNyRP+Lr3P4k0V0kwRnelueA7qJCRR74xVppa9YkfgtGdfAGEG
	0cqqs6scxxXOhpfKT0bJXI6XD6YMA/rfLIrzDp4envG93UIJeZivxrcE4QzQYZqZ9yaOF1DB2sp
	ohKAiB7RfqxTgrm2A9bSD
X-Google-Smtp-Source: AGHT+IFNTTbzWKYK0ucn/dZcLBK1rm2Jfq9Njsqv0jifRb/BRMEZCeoWnJAL5EROj0k/HrXN7bDTkA==
X-Received: by 2002:a05:6000:178e:b0:3b5:f165:14e1 with SMTP id ffacd0b85a97d-3b613e98294mr4670874f8f.38.1752825379490;
        Fri, 18 Jul 2025 00:56:19 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert cavium,octeon-3860-gpio to DT schema
Date: Fri, 18 Jul 2025 09:55:50 +0200
Message-ID: <175282531512.45055.16195340693528031808.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202927.3012974-1-robh@kernel.org>
References: <20250714202927.3012974-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:29:25 -0500, Rob Herring (Arm) wrote:
> Convert the Cavium Octeon 3860 GPIO binding to DT schema format. It's a
> straight forward conversion.
> 
> Looks like Octeon has no maintainers, so Bartosz is listed.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert cavium,octeon-3860-gpio to DT schema
      https://git.kernel.org/brgl/linux/c/5c163c9759605148d0c66acd8d795133c4b48ebb

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

