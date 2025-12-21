Return-Path: <devicetree+bounces-248589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E87CD4275
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 16:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CA5793000B5B
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 15:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82F9A28727A;
	Sun, 21 Dec 2025 15:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b0x6QkUh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26F5250BEC
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 15:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766332374; cv=none; b=jf9mW5CPFn4YGtgoa9ZhH6Y5TG0QiGbNuooWDgQyz7tEmP8+ribHTM311XkHM0FgTVz0sJyZ6bcdXxFYN13k5qyUQA+b2AZnzAczYndeOvN96cyZkmrR/9gFy2lrqdl067pLnRBa5zXZ0KWIX+7fsAi4BZiLZFg3gqHzkn8qvKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766332374; c=relaxed/simple;
	bh=Ktfr7SJQpTbgMhZZT/6XJflt14sbq+igmEnRrXK6oIQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=a999o03EokHwWvmcWJzYlhNXxNq1g/7kyWbRDsFrpvIC50ylUXTOwmTwvDZgn7uKHNwNFtlFsXI/hlLJsvRaEZ3gUcZhZabtrazZC6veZ9YvbLmTkodJ0H97fknDOq/TjPWzauiREiZmllK9Bgf5LGpnjzBwfP2kZAuKFCygx/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b0x6QkUh; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47789cd2083so17059935e9.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 07:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766332371; x=1766937171; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ktfr7SJQpTbgMhZZT/6XJflt14sbq+igmEnRrXK6oIQ=;
        b=b0x6QkUhCzEVOKd0a2Z+If9/8EC+j+8WA80JZXwvTTLRdd4Wsea+/EKPuEQFdz6WNM
         mvK8Yz3giF6O4UCX54kegGiuI638clUhuaJUkmI+B2JMlp2bQh8yr1i4m5QvD0vP7UwR
         MIJKYAPy7jYTPuiDYBVL3dsFPv/Ck5i02B11AzDU0XTwsUy06y8xw2rL6ThScgwjuEE3
         zLJQT7sqA3QHfDc+BQNOyhyWopQAU0edY1ta8c3yVsfXVijVqLEuES5GVk0N0Q158ggu
         6CWVj6w2KDjOkcW7Q4pHI25yy68+iS0sXOP9Y8bDKBh+bBnpgML3Q9pu5Jr807Ftigz2
         juQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766332371; x=1766937171;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ktfr7SJQpTbgMhZZT/6XJflt14sbq+igmEnRrXK6oIQ=;
        b=tctWgI8jnA7Xs7X0o/5vyVBrrrL3hFeWntGDwP89X21wH8BR1IGWTl1WBZYXFo8j8U
         H641ZVTx0s1KGFtN8bOxzL0+EDEdRb/xZSv8ZwkZGq0Vxw9QTt1dGzoNN6ak0rVQs5BL
         FSMJut9g/67gNG+R2SQSxssLumsBQ2irVRPUf0J3o1ACimoUnU9t9WrWkMtz7y1wmmkr
         W4ne8kSEpIe3cYkG2OetBYMUZfrNhSFXBQuLBcbmDNqKe7CYFhaVLuqxpQEgDjfReDYW
         D8Oglw4sKF2aOZ8ipY6rKxPc1DAqGBw8mmEtBQKQtEgk2zYh3YeufRKs/PsbJt6W9//4
         xVHg==
X-Forwarded-Encrypted: i=1; AJvYcCWtLP4bcsN0MGUMktgmBHWR29dwcbXlJhL9UOiy3LElGGpYa6Y6jna+WWtv0MbwS/TSl9i8nFwjvr5r@vger.kernel.org
X-Gm-Message-State: AOJu0YwgA4XSala/+b2famtzoVJNG1XFd1jXl3C8D+oHqe+0s61EOoba
	la67HTcDW4lwNQUadI5kIrtH9mam9Du7ZIDq+kXT9Qh2E633AfgH67o7
X-Gm-Gg: AY/fxX5wlifIu6lgxcIxd+YvWbSp1j7bOVZLlxIXDyBRit4c3wujEmAwZRgvw6onGqM
	UXVCgaIotDpeVLJ1YDlrCnhhJ1F3a2Io3X7m9Q1eoC76RjvOB1B/OIGqJqwOCLvrCUsYrkKTXQa
	Oo9xk4zLvy/HkljYW5MFOHlXvlVhCqoibgszeTqKiuSwVNaZ0LBppJQylNTms5/8eT1cSB1nCUL
	7Qn/nTdN1WejuSO5BXaaSre6qxWdiKIHVhOk5BQ4GS1zZ/qItbF5yb2crnB3KQ+/3rFOSSbjoEq
	WL9rWupizt58FOKzOe4AJ4X4oLNCv8eWXAJZ5RPqqT9/6zqu+vkNtlPxamhxADnND1fWqzhJ8Xf
	kIMzI9gH3my3vBQI7MhfCr2/ZslvyGAV7Cdm6woj/NbvvmDJv9x2xeTyYOJUJjErdIfjrRmNy7+
	rByCppgqSpSfbh7+fjGHQt1Lwp0qqKlvECVy7+o5wNYepTn0B9TNwd/Zt19dtf6SC1/jFC
X-Google-Smtp-Source: AGHT+IEbJh6QEEBqVoiA8uGAKHnpKaENlX2JGObti1D5zf3tJMVvd1glLOCkUq93fMJj0p1hdC0a4g==
X-Received: by 2002:a05:600c:45c8:b0:477:8a2a:1244 with SMTP id 5b1f17b1804b1-47d195558bemr85515255e9.11.1766332371058;
        Sun, 21 Dec 2025 07:52:51 -0800 (PST)
Received: from jernej-laptop.localnet (82-192-45-213.dynamic.telemach.net. [82.192.45.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a0fb9asm81695155e9.2.2025.12.21.07.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 07:52:50 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 4/4] arm64: dts: allwinner: t527: orangepi-4a: Enable SPI-NOR
 flash
Date: Sun, 21 Dec 2025 16:52:49 +0100
Message-ID: <13909614.uLZWGnKmhe@jernej-laptop>
In-Reply-To: <20251221110513.1850535-5-wens@kernel.org>
References:
 <20251221110513.1850535-1-wens@kernel.org>
 <20251221110513.1850535-5-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne nedelja, 21. december 2025 ob 12:05:11 Srednjeevropski standardni =C4=
=8Das je Chen-Yu Tsai napisal(a):
> The Orangepi 4A has a SPI-NOR flash connected to spi0 on the PC pins.
> The HOLD and WP pins are not connected, and are instead pulled up by the
> supply rail.
>=20
> Enable spi0 and add a device node for the SPI-NOR flash.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



