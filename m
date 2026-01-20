Return-Path: <devicetree+bounces-257278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B43D3C5C5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:43:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D7FD74EA764
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6E83ED13C;
	Tue, 20 Jan 2026 10:23:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C883B8D70
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904598; cv=none; b=rdLSB+zA/lsy7aiKekWofmVStS1923FIyiemC3BVmwT7nE2dCfHyMub//pivjoa4I3vMbnFNmdaPRoRRp+VpCTjsMT+/EOKO7qLEWL1L2X+We9Gfyy39hCEcqT899cl9luKRvPTv+R7XKPBxgkwjVRiBNzzQQfttDj+9BcpYtL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904598; c=relaxed/simple;
	bh=ly0/vW5IDlDw+5wI+QKQKa0L1EivDoecPfiopYcWyII=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LbJxe75sLAoNcC1RRP+SY1N5vjxOf/yoZlZnqdYLVKvyOzm+IfpnvP1ua4gl1Flag109KUeY0xmjzn1/zFzyGP4VUMcCiXp7G3YMoV7NpGztCZiGHQp7h95CWCffoSSGpjV9V2FDhVIdNgOp+hDm9OhmeVAIXnZ5y5kFLCLLWiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5efa6d5dbf5so1612398137.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:23:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768904595; x=1769509395;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0ac9c/OTxQ/f6N2lklbqJQ1hEcN+Ckhb/mx79x7PYg=;
        b=McpW3bhYbMi3EQNodiAVuPujGRbbST9TrEY8FexMZqlF4scdr9bHhiF9dzl0w76KJX
         RSgqdvQrmEgkjQyY3XWyoTjQNOofH4E3cWQH1juNzJvoO0hkIcQSNyjsIia/qYGM/E7/
         DFlCGIzcO8NRTO5bNIvUuFNXhiCc1+YWdduffY2XU5t6f4g5lP7VLlaU4VkVQWk6/fCX
         m1xQHxtqvFvpjbIfuHvS7yspi/v5mzs86CfKh+DIG/RDvtw7AzAi83YPQojk0EJh/biq
         36E1MT0x9+z96rmsS72i4RYg3/IXcLbZSJ3ghTemAi8JOacoriUq+FVPqr8lH+gLlIOR
         8EMw==
X-Forwarded-Encrypted: i=1; AJvYcCXY26/+4JAYixI+nEdc3AYs9FFTxiY5NnNL2VHStJ7h7cPNVX3Kmcp//KFUtMLsKUbpnJGBJ9M775dW@vger.kernel.org
X-Gm-Message-State: AOJu0YzfqujS+J/WiAoWrKpEGGBNJVmoPUVYzrXaqosb+6INR2Dq6uIZ
	OyLaYANNZ2pzznCYgrNjqBJMu6bRJaX0ohboaPqJZ7kIGbtOMP6xn3agBVNVxpmS
X-Gm-Gg: AZuq6aKoArj4e1Hvq7n7P/hXkGQ5fHK4+6+afYzG2KJuDW/bBPqap9r4sgjBaHSodxb
	yDXbXge7e1ddQNbTdgu84pL9mc4lSjGNmhG9aN4VQ9i4WsLqGWPoXCEW3MA1dlF2u5p3127pe/+
	vN0APecd+oNPD2x8pXH5tMbjCGLbkAywb3wUKGPWpHR73mkyv9viOnzlrwNH2cHB5Bw1IUtCsqE
	vT/c7oFUNatn3201ymFRBpKciOim3ATEZf7zyQ1NH0jUrETHfjVoz4mq0tt6kkt7mxNwYLUobsT
	lNO6GbWdHqze7cG9YN9fjUM6VwPNHJ7jBe1hcFo8Zk9UVdEhyBSMiCjziIUwFtf/n0Vq+frPw+V
	HI+7hSKCBPSBYQrwCaAui0Mx6uiwm5Wd5g9XwC/3R/eWBraL/dRRm8PDzhEhln/t+ZODgTx7E2l
	8vE92vd+urNDwmQzZN1K5G814q5CvGjcEyGCHoNCM0cQ+QebmALwMv
X-Received: by 2002:a05:6102:3f10:b0:5db:e851:9389 with SMTP id ada2fe7eead31-5f1a6fd0fb3mr3878980137.3.1768904594967;
        Tue, 20 Jan 2026 02:23:14 -0800 (PST)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a68fe9cdsm4188812137.2.2026.01.20.02.23.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:23:14 -0800 (PST)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-5635e6b80easo1335319e0c.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:23:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVTkSKqs0a11kAiTIcJqPlC6J7HuaZbmvNS9DYH5itynpX+CB9KFnOIxT1lufBXzSJ1GJbMcviyNsC6@vger.kernel.org
X-Received: by 2002:a05:6102:dcb:b0:5dd:84f1:b51a with SMTP id
 ada2fe7eead31-5f1a720e344mr3802674137.43.1768904593920; Tue, 20 Jan 2026
 02:23:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260117001215.59272-1-marek.vasut+renesas@mailbox.org>
 <20260117-grinning-heavy-crab-11f245@quoll> <38a146cf-8eee-4fbb-8783-231108a01b54@mailbox.org>
 <578745f0-0865-4195-9237-6d41c7fd55f2@kernel.org>
In-Reply-To: <578745f0-0865-4195-9237-6d41c7fd55f2@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 11:23:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUuYJ6pSFXy9KBsgkbJ003HEEKhMPgUHkQbdJPFchR39w@mail.gmail.com>
X-Gm-Features: AZwV_Qg0GRK3xtZRzMXlXd6nCURzar6s0zix0S_d3ClYfwO2CsgqrBgFFjQMPVY
Message-ID: <CAMuHMdUuYJ6pSFXy9KBsgkbJ003HEEKhMPgUHkQbdJPFchR39w@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: touchscreen: trivial-touch: Drop
 'interrupts' requirement for old Ilitek
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Vasut <marek.vasut@mailbox.org>, linux-input@vger.kernel.org, 
	Frank Li <Frank.Li@nxp.com>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Job Noorman <job@noorman.info>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 17 Jan 2026 at 19:34, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On 17/01/2026 16:33, Marek Vasut wrote:
> > On 1/17/26 12:22 PM, Krzysztof Kozlowski wrote:
> >> On Sat, Jan 17, 2026 at 01:12:02AM +0100, Marek Vasut wrote:
> >>> The old Ilitek touch controllers V3 and V6 can operate without
> >>> interrupt line, in polling mode. Drop the 'interrupts' property
> >>> requirement for those four controllers. To avoid overloading the
> >>> trivial-touch, fork the old Ilitek V3/V6 touch controller binding
> >>> into separate document.
> >>
> >> One if: block is fine, so IMO, this should stay in original binding
> >> especially that more devices like some azoteq or semtech might have same
> >> rule of not requiring interrupt line. Anyway, no big deal.
> > I am not sure about the other non-ilitek devices, but the fruitboards do
> > use at least goodix and etm/edt touch controllers without interrupt line
> > too, those I have on my desk (those two have separate, more extensive,
> > binding document). I also suspect we will see more of those touch
> > controllers with optional interrupt line, so if we do, I think we can
> > re-combine the binding documents again ?
>
> Yes.

IMHO more churn, and more git blame mismatches...
Why not keep them in a single document in the first place, like in v1?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

