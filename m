Return-Path: <devicetree+bounces-133153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A3A9F96B1
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61745188640B
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A09D219E9E;
	Fri, 20 Dec 2024 16:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YlsGdUet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A779218E81
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 16:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734712736; cv=none; b=OheoyvTxfw+oL9QROs0VjpaWEvQlgOs+tRGBG6hdUR1KzZ+xw91RyM7uO6CxeBbpwwiAwyT0gJAs8I67ceVzf3kNlbDxms2WQT3LVVj9IDm+5qgAvvXW13s6Cgf7WZEfwcxFn6H9cC+ZYEwBLbnTLLzi6+h9ZtpefYxit7dMBLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734712736; c=relaxed/simple;
	bh=xJSwMwfXea0BCApufwp6R9Atd5xVKXp/cphPRHQEwpQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HwefO7x1OfUB2zIsvaKczSv8I5t9YELLWmcRbF8oIcydgs+/NdJn2gNZ1Ja1mql4NXVJy2AMe6JK1nyGnOOqxdsFS60UXUFnjwKYbygCaEQVLoN+JhheqAqE6vdu3mVjGZriKhyI3LrGsg7yLHNxjxxlHUzetnaY4mtnTrMuETs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YlsGdUet; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-385de59c1a0so1393090f8f.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734712733; x=1735317533; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZMjaxIrXAl8+D23U0gHcM2nCzHZSoXq/gNYNvPuquzk=;
        b=YlsGdUetpCBUXcV81RzSgF38fkwpyi6q0Bx45rjn14jcwVOyf4yRyuJnHNEKhJJs5A
         qGl17v9W5b9hJ5fhAnyNkcLV9N2MuBgPJnt6icSRgZnXo9XBaH7DHWPa0FugnjZIjcUt
         WU+XUkMJ2IvpCD0EA3+lnyV09Wl5wzdGUj4FA7YMtFSCSYd2tprQdfZTYdpEBoRgQ9sP
         7CkeKiocjllZ6xadqEoKmsQga7RyH1g4bkPlVviy9JqPxGtVPCydQW0oTPHKzHWa4t2d
         hFobXzYdElWwoNmsicQITLowtFoSEv9J5jsw+PLTdp2GI0EfxqfYL8lI3SolCLQhCOHD
         G1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734712733; x=1735317533;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMjaxIrXAl8+D23U0gHcM2nCzHZSoXq/gNYNvPuquzk=;
        b=V3o0AGsNRGebhnUJYtkR75KFjXfIkDnHHgfcr7bFOvK/BoFPlTlE9Cyh7z4PUmc7al
         4ljtGpAZKdCs1OfuW30kj2k6M4C0SOJk7BPTZ6bH7hwuFY2lVFBJ+PEm+g9vnYPTmm6X
         gzkTzAR3iaVUrL1xTKCp7TT/gQSvQFpCJ/lr3Ov22pWvzIWSSsQIWCVoRzdo4M4ov4Yu
         87JdCqZcmdyjMf5hHUrj3p6JrtIMPbkVsoBZlP4LReJ9JKb1dXwpB3POtimQ4OUwmcac
         jWDpjhCtJs/D5BJn05pZTqbpEpSRm1a9fa7doyrzZq37qkeHt2RipR3ELWAat5FwN0vA
         JgKQ==
X-Gm-Message-State: AOJu0Yw52OsIyIUKsM0run7G+eGhpRXhx63oXCBG6/8YeBcku+8WcLxH
	05draIdWivrJ3ZUe5TxNeCAoZDHOfcVfUTHEJX3NIsdhAe34eK9iA59jml9GEVw=
X-Gm-Gg: ASbGnctUN9EBu0esATDt3QjNvtFeRIY8NaXgu3Z/8funTovtz02ozX0sy77Kc+DN3pq
	jPoYmuEZ61LF7sg7incNyCkmS7PO/fW/hASB5JhJKDzXuwxI5yLXAdkS8zlJ7NepjEcgtZ2oTM1
	MNxtX6+I4EvlX8+bV7U8gUGVi4KTb5lIrmPBqy51pVqiIChUdRwbLyb3vLReN0ZY+ERkm3xAciE
	cP6kEQXgzHQ7nRNIuA/MiqLJAQiTKacg5Dh4DRVWR6xqXbbiSVg69KXMEBvtDK6AHFHcBPfqaw=
X-Google-Smtp-Source: AGHT+IHqOirBZstSfYx6JiXmK1tP63cY6i0TWPO19FfSKxMKoV+jcXzzn/Z280M9yArEGees9/iZMQ==
X-Received: by 2002:a5d:584e:0:b0:385:e5d8:3ec2 with SMTP id ffacd0b85a97d-38a221f9c94mr4138698f8f.28.1734712733628;
        Fri, 20 Dec 2024 08:38:53 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366128a3c9sm50183285e9.40.2024.12.20.08.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 08:38:53 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-mips@vger.kernel.org, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>
In-Reply-To: <20241209-rmem-v2-0-cbc0e8c08a21@bootlin.com>
References: <20241209-rmem-v2-0-cbc0e8c08a21@bootlin.com>
Subject: Re: [PATCH v2 0/6] nvmem: rmem: cleanup & add checksumming support
 for Mobileye EyeQ5
Message-Id: <173471273278.222247.2932059480135959910.b4-ty@linaro.org>
Date: Fri, 20 Dec 2024 16:38:52 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2


On Mon, 09 Dec 2024 16:59:34 +0100, Théo Lebrun wrote:
> This series is two-fold.
> 
>  - First some cleanup to nvmem/rmem.
> 
>    [PATCH 2/6] nvmem: specify ->reg_read/reg_write() expected return values
>    [PATCH 3/6] nvmem: rmem: make ->reg_read() straight forward code
>    [PATCH 4/6] nvmem: rmem: remove unused struct rmem::size field
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: nvmem: rmem: Add mobileye,eyeq5-bootloader-config
      commit: 21c97c8e6c3a71be6bbc65c1208179aa660fe09c
[2/6] nvmem: specify ->reg_read/reg_write() expected return values
      commit: c66eab50332f47a12fca4839e64beceb125dacd7
[3/6] nvmem: rmem: make ->reg_read() straight forward code
      commit: 231465538ec46e7cfccc76cbf9f62525acba7fc0
[4/6] nvmem: rmem: remove unused struct rmem::size field
      commit: f6565dd8f1f38ef7eecba78848bea20255177a0d
[5/6] nvmem: rmem: add CRC validation for Mobileye EyeQ5 NVMEM
      commit: 1b2cc9a90cf4542a3267dedcd5db69fc75da0ef6
[6/6] MIPS: mobileye: eyeq5: add bootloader config reserved memory
      commit: b5edb40c25c38b0c6cc7330dea75efc4bc7b0c2e

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


