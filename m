Return-Path: <devicetree+bounces-240726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B62C748A2
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id A47743040E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB15633FE2B;
	Thu, 20 Nov 2025 14:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qez/IS1b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA592FE045
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 14:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763648494; cv=none; b=HlJRcV0PY95FUtawBWIR6DsSZDZLGqqfugS0Xvmida5PM2UhbEtUh20mWbJE8OM40T8HbrpinO0OUFfE2IljwPLaDolT//3AErG9kNizjegW1XLhoL6XLx3iytirYLJCt/OOwCHLELirx9pFtIT+wIBHfg1W6a2T6Z8f/q4dO3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763648494; c=relaxed/simple;
	bh=qwe17jWRkF8MbWtz2ojHL7+cjbPZ2AheYxkTaSPABK0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=drypPAuh/XQh5lopj0Ku6Vwi1v+spjL4pL5rHo35TcmT72a13qgX/MWiUWbRZX7VzUd2cpyo+ruJ1CWqkRD/UbMAZJr6q0rJTZlzD7T2/0cVdqoOiK4NmP8xbyNLCblxo17R6egoEnSsXFNY8Y7KbjBp/nDNKGhy0YAlSnNDlCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qez/IS1b; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so6655945e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 06:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763648491; x=1764253291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4vwGWKGJvlZBNC9/cIqoY6FRuhMfwnJeZfMijAXI4Rg=;
        b=qez/IS1bsChgC/CGobMynZApCaLyandr8BwwZwdIAYL0DucqadpQJl/yzAVkU8qyeE
         y54TXtKv1NNgy3pNGlJOl6+ztqpahr3vzXHBx6ev8o30Y8lfu3/hj9wSjmKpbMKSxc+a
         ewbGIx2diwRwruxWaOoEBEEWgnNpIGbLLOwYbDfqwC5XMptsJwmrBw4BBh60H8F5h+W8
         tYlEY0ZA4/zVBwbFkARP2y/iYYnYmpjzwqgN0zXE1q1WVJzEOzYTF+3voa6dIDENOE3e
         FkmcXis2cqHvNBWh5OYQ8n1jmVIdwKGPAY7Viq+aO8ItR+dwDcThlZvf4wesOVqo5vJL
         Drjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763648491; x=1764253291;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4vwGWKGJvlZBNC9/cIqoY6FRuhMfwnJeZfMijAXI4Rg=;
        b=dCM0+1gSJSoYgCWASCFiPW4br/X1Hf+/ArPbauobDKfJpJqspaKZYzNCWjf0hHIjQ5
         nPkwLrbdXzwexbbpw3kRIfqzwQYBIkH9NCP3x7ZxRL1wb9BQWzoFvraAfWleT1X6AIth
         fDRQwFXIvBq2F21/oryze/cJ4wacQntnOhDZdESX703Zo7kU3TzXgJChRiPn9j92rapR
         CUQQNvMk/d2AnXt3rTV2t0JMrl7pTb+Q3DZ3ArCEpAtUO4gcnTyt5IIPuT43iMwiuNY4
         a/rPClWLPLuq/Di9VPuDHvlAAvW320vDfDdR28hlgV3Q74tRj++y5vBv4rw/fiohJWjH
         Xb4w==
X-Gm-Message-State: AOJu0Yz48D8OKqKwNLrz2A933VTyoNEVM+ytU+/lrXUG01dr2BdTuW1S
	71vbXaMcNDAGXm1RfIoiGkDzvFIpx4kSNfmXJKDB2zMZQNWvnW6grIU03FSxYSejQ0E=
X-Gm-Gg: ASbGnctgg+9pQ7NCK3f4/YBaiPSTMBHeQwVqCxr5ffpNqPOelgMIHPSOUj6AgW8xPCt
	hOmMeZDn63NNtMoeQY7TNYrweGFHaiv5+zw8ccZuoQukdlGTUX2ueAvb6AeQ9a35BYzMEwynKaA
	3WVr+P1xV0iZDIGWRBopipcp2qFZ5HZvNvC9DnW8/5KBwRJAjCHYWCArxt5+E/fMCnHMLCJcy8u
	57toL/90GbVlAerkSZ+hSdZ9s4UsDlAmvmS++cdnHfvAGFHzER5PvwgLWcZ3GMIWLMwxRtJeJuE
	KZSTaRkebOvv6E4kbRRCyB7qiMeXN3+Iq4aeCi1AbqcLQjUDFVyNbqOl8nYWP0qd785+38dVO3l
	Hd+dyJsBKUe6VnnZ+j/DCa5oz/1bH2BCv0IEeNUfZdXtAc2K9QfkG1a3+VAGCtomn6RbXkEkeJM
	B+sMmLYAlQr/y7Q2yGyF2ppMYYQqbJ/jo=
X-Google-Smtp-Source: AGHT+IFxAbvoQ/DxLOXZp0l1dwaXexo9KAQDd8gwZkfBWJtP1PrL6I+wcx7pCO0NKjnPPhgubkLJcw==
X-Received: by 2002:a05:600c:4746:b0:471:1774:3003 with SMTP id 5b1f17b1804b1-477bac1d90bmr23599555e9.29.1763648490969;
        Thu, 20 Nov 2025 06:21:30 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9df8db3sm63372585e9.11.2025.11.20.06.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 06:21:30 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
References: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
Subject: Re: (subset) [PATCH v3 0/5] soc: amlogic: Add new Amlogic SoCs
 info defines
Message-Id: <176364849018.2627407.16106708011654431567.b4-ty@linaro.org>
Date: Thu, 20 Nov 2025 15:21:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Wed, 19 Nov 2025 10:52:21 +0800, Xianwei Zhao wrote:
> Add more Amlogic SoCs info defines, include S6, S7, S7D.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.19/arm64-dt)

[3/5] arm64: dts: amlogic: s6: add ao secure node
      https://git.kernel.org/amlogic/c/834f278c9f0676f3c97b62b5d7469ef212362cc4
[4/5] arm64: dts: amlogic: s7: add ao secure node
      https://git.kernel.org/amlogic/c/0145430828b5ec34b85a65584ea1e749df43a704
[5/5] arm64: dts: amlogic: s7d: add ao secure node
      https://git.kernel.org/amlogic/c/5224cde731e8f749d643dcc994526b827891eb8e

These changes has been applied on the intermediate git tree [1].

The v6.19/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


