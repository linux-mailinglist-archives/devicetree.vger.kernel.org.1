Return-Path: <devicetree+bounces-147319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B4EA37EF9
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:53:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 097553AD878
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E452163B5;
	Mon, 17 Feb 2025 09:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ToPjMZTj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B672163AA
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739786001; cv=none; b=M7Gk02Qou2AAAbDp6qSmysrspgqIyMCQXeSOCHraAfUkPbaj5yBTSco74l24WXdQjotTRktg1z3R6oTpyDlP+Z6AdQb0Zra792klVkQBYGAfqlM4wYaNc64OBmO1/XhNvaxTCDIXohEiKCIJN2J0gf0bqSZMl6E6fyulCnFRr+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739786001; c=relaxed/simple;
	bh=oCeuS+u1QhpRFgwAopPjT252QH1+aQ+tSfK/tfWZbfs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=L4HznMC0KhKsLd1afUN8zYVgkcy7NWBlYZMhmAtx6Uj71T9DiodqiLDDEvUg1BQxsZ7aU/9vug2sXx8Xn34zy04iXf4bhKK4eQFXqxvhP1U0OJ0kv8x/o9uW00173qMVuFdlwe0YhquG8JGT8NwezeWnj8yKQe+41Qub0BJUA8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ToPjMZTj; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4395f81db4dso24286835e9.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 01:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739785998; x=1740390798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BPsuvIVCjk9dgW5qk+ZZy8wtpQYYoP8bQTH9T/Us5UE=;
        b=ToPjMZTjDu35wSQfZN8tbEFOKfM0eekmxZW74Nkc79F6kXYAlqhtbH/DaNaXLsnq9A
         9uON3iwXAMRAWJRKnrxksoAjXOD5Cd5SWEAnRHjmNR84YJ4ozzf7URbBMxw20jCejYPn
         KBgxZRQwpsanlHsOIHf0qM0pZxbz72V609oQ5FSprM38ePvHJWpyKNGtm1rp9v0/UL8g
         7uenf2r4BlRFSjE3ZkYYvATV3LsFMAKpMsh4n9eLXYZvrNXQVR9qMP3AoSBPFg43fahv
         odWdlAVey8GxQiAPX05F038s6ArzlZiK7WqTcbQd1U+vJypmqpQ261aXQAYFNWT8UEPf
         RG0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739785998; x=1740390798;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BPsuvIVCjk9dgW5qk+ZZy8wtpQYYoP8bQTH9T/Us5UE=;
        b=BER427kmsBLrXCtbuLA50KqeWyPj9hn+oyYP5anMvPfgJo1dEI/rAZlmwN4Fv6mMiw
         u3jCako1VLNUW2iTbGFrWeixkZi8ommHqMJ93lseh40TrxjWD9T4NT+etZ+nHmtxHsz2
         6RcAZ0W2WhaYO2JVDfOXl4D2zmvpYi1mDdUA6j6FZGYXSqmD+pkKWf2pu8eAiXDdyYou
         M/U75dmIsPutozv5X7LFGJxHtNFn8I047R9VnLIGsysp+pZJkQ28dV5SLELSKxvQ6RGp
         6Ydnh7tKOqRSJ3TCpdIZ8RM0yAhkJ/XoigVIyUos1X7N8WEkrrhK3iBYXMlb95P05m8X
         Fvjw==
X-Forwarded-Encrypted: i=1; AJvYcCXBCznP80mEYW4d9wHo4NK5iKrr5bXBxU7Jb3FfnWgI/2LtjSQrh5m8QDJDwcdXeqqNCnoGxdYvh2HA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8kC89SSF9/uIBjPDCPfo/Bh2dTVuHkPnhTLJjHDDgxKColyuI
	ZshOVizVuL+uNPA+OcXQ5BKNkqn+VF99958fx0ZBr/OCK/14wbEf3YXs9Vz1Tvs=
X-Gm-Gg: ASbGncuKjDr+mtl1VZBzToz8YSHHB3fTbzcawg2MF4xk10AuH4gvmKU9rC9ZtnL5lP3
	+OL46J2TkNeYugiFPl5F8sEgUWZuS4KsyX/kxThnP1hWICEtvWnPAkyKd2qy3ml/8Y/dqKWMeDo
	wgSvYZSacR/m/4z1xjXqUOdMsn8pVpHuNjJ95M30KWTeznl9whGst3d+Ct5zzeVQz4JSswR63ru
	PI2/MPErr3UwvH04HusISvqRXmiruGHuMcVBFaXaEm6gyeb2q3Cp6jMD5h+ezn7n8GPc5A1CNg0
	/dXZXeZYg5eV5XsWhDW8d3FOG+3OanCk6w==
X-Google-Smtp-Source: AGHT+IEOYIa8ffLFYb2JZ8gSPjsLQ0t83+FYPxRHrdauemZg6o916N1LhDz8exoVJs4omLbErDeTDw==
X-Received: by 2002:a05:600c:3012:b0:439:8490:d1e5 with SMTP id 5b1f17b1804b1-4398490d2b2mr22061025e9.4.1739785997586;
        Mon, 17 Feb 2025 01:53:17 -0800 (PST)
Received: from [192.168.68.111] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4398a64febasm9743935e9.1.2025.02.17.01.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 01:53:17 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, detlev.casanova@collabora.com, 
 sebastian.reichel@collabora.com
In-Reply-To: <20250210224510.1194963-1-heiko@sntech.de>
References: <20250210224510.1194963-1-heiko@sntech.de>
Subject: Re: (subset) [PATCH RESEND v2 0/6] RK3576 OTP support
Message-Id: <173978599692.25901.15315285566342669137.b4-ty@linaro.org>
Date: Mon, 17 Feb 2025 09:53:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Mon, 10 Feb 2025 23:45:04 +0100, Heiko Stuebner wrote:
> This enables OTP support in the nvmem driver for rk3576.
> 
> I expect to pick the clock patch (patch1) and the arm64-dts patch (patch6)
> myself, after the nvmem-driver and -binding patches have been applied
> (patches 2-5).
> 
> But kept them together for people wanting to try this series.
> 
> [...]

Applied, thanks!

[1/6] clk: rockchip: rk3576: define clk_otp_phy_g
      commit: 3e081aa132bbefe31ac95dd6dfc8d787ffa83d0b
[2/6] nvmem: rockchip-otp: Move read-offset into variant-data
      commit: 024e21343f3cbcde0343473fcaf094d2c19cc7bf
[3/6] dt-bindings: nvmem: rockchip,otp: add missing limits for clock-names
      commit: a1bf00100d06ad69286154a63e548ae6f6ce8539
[4/6] dt-bindings: nvmem: rockchip,otp: Add compatible for RK3576
      commit: 8c94337ebbfb840944574f82df0cbe35930d8df8
[5/6] nvmem: rockchip-otp: add rk3576 variant data
      commit: c5ebefe4e20d9fd99ae49cbfd1c18632cf338fa5

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


