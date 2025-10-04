Return-Path: <devicetree+bounces-223611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A9ABB88E7
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 05:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9ACFC19E5DC2
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 03:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311F1218AD4;
	Sat,  4 Oct 2025 03:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OWDKCQRE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6BF1419A9
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 03:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759548138; cv=none; b=Aobl5XXNpeFnRiSMBYLTvasaGnvWRP6z9ThBuoRuRKAcE79Xc6n6LSUcJHDQikQaCFQItfII+MGVDwDHH8YAQvTXzZ5WClbEI59wz2ViLxWZbIKbI+XEfiaQPfKACsEElxy1flgUSqOhT0qWJjaWx34/XKn/wdKcwWJInQfpEnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759548138; c=relaxed/simple;
	bh=ey/UirZuMoQH6VVDj0zZ1/9OEU+uMzZ+O8OKJwtAu/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aUGNRhJAcVgPncwwsXPbGIhgtyQF94iXnVkVo8wycxa+6ksVBOwL0WeCtVGsSZs2XNevvDq5exC3RjeBS+yuetHu4BJumOgf7Js/Vih80+qLBsa5sD3rrv4FQF7k7nwg892rQleTnOhK9WV4gIDitZI9i83AZoi3fG3u+2gzVhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OWDKCQRE; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2698e4795ebso27988765ad.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 20:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759548135; x=1760152935; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vT/ORNW0pW5y5PIVl3vdZCajLNmtGvBDvw6fpaJcnVQ=;
        b=OWDKCQRERpYz8eXQbDiX4hmRiCEC3XqA3Sc49LfxUJyPS35ZyTUdB+zWdCAVtTqSJ8
         ZeA0tmBUoXc/9sFKH56O9ZHA0n9w0qwGQr6fIW4O96nvin5qEsH3rh0h6b9Y4pvx5HSo
         SoEUMQZ55ZepDw2PpWs2sp69z0NEXZPARjTZj3Jf5l7Fpey1ws9beSUVQJ0RzBujgns3
         V46SKM6owzLY8Ky0purH/MyAa0/+sIbFUdFKz1Nmr97qugj0ZcamwcJAUZ7bFPk321lx
         bRb6sR5XwRr1IgwVOZMmmVgZbiDgtt5jbhvMX82KORtYEGkFUGhoi92pHotunkmUKh/s
         VO8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759548135; x=1760152935;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vT/ORNW0pW5y5PIVl3vdZCajLNmtGvBDvw6fpaJcnVQ=;
        b=PZggsEJ18t1K5VgcgNRLYF5T311CpLmYvRspCycdrh9sgW2Qyztxyuz6UZ6qvs1aov
         bEwejz34SY4cs5whQSS2zImEKQikD62auUMC0Ns9Dx1IbHNVYivQLfFg4lN15lTssyts
         jzYlE7ryhb3AAP6K36bioJKeJP11lQ7ca4Cn0LlLqwNxxjNiajMuSiM5yR0xjq8Im4kW
         rqOKrrJG2fBXBfsNIVptCr2yvLQCnPSmrUWwy9WOajSDsi/Eaq40HJdIpV4smAWWZsSl
         dNwtVmi2vVvntL7zn1e/d5jRJJuHYXHmcS/5unG9nq/nNiHjRCcJZpqh5hw/DyHcOgM1
         2PZw==
X-Forwarded-Encrypted: i=1; AJvYcCXylQaWm5HyykiJOo9vAavR8VFVUTmjpb5mlSbNJxbwf5q1Apeluxeb3wrJo0WtcitBSwXTsHw6vKUU@vger.kernel.org
X-Gm-Message-State: AOJu0YxHNiWq99C4g3ltSZQbeOLyd2DNSB8l8PcnCJcKTd31tUo1U1DU
	F3JwW0Yng4zKVa2/AzFnlgE6eXrHsEGz/ZEogsFByUYwWwhLPFOWgxGk
X-Gm-Gg: ASbGnctO/zwBHh7/WRSyzxTebg8mLnTHxEYPhBu9PChO4vJKDObHCjLK6/fTDp/40Is
	GeWY4Fqp61wZuhn4joMALLPqUk6vm2+JhSLDRHyZ6Tn1NaaruwyibdtwgvsD00mV1qGmlDVq/My
	vda+P4gOEXZymcS5IndF6wnPH7xLcf9zgUxLzWpJvJ1y8EuJwqefIZxwFsbyUsQkL5VjSLW47Lz
	ZpoFn7YrYrE3+4VjVK4Z3YzWsM6KsEmeCemDVnq+HV2mOlI3SI0IOdEccEXNZ1w1LxIR5fhrQwp
	NOlexTcNJeGZwN0nB6s4Hpm3yUwKJ3YHXXShbzUYMuvisoZY5twFpii5qGFbMnzE7V7BF7bvwlZ
	b2io9npbAOhqqe6g87+1ayNGx+v8p0QGTusNCWPXxpxda/3kFd/Kha2d1CXUY5v8waSOlfr4=
X-Google-Smtp-Source: AGHT+IHEj0aXuUhMgTbCirX4CidHBDMcg5LPlI/yovtk5eB8b98mCogwEGyUGrgHax0e9En0MN3Xpg==
X-Received: by 2002:a17:903:2f8e:b0:24c:d322:d587 with SMTP id d9443c01a7336-28e9a60b519mr64976925ad.26.1759548135023;
        Fri, 03 Oct 2025 20:22:15 -0700 (PDT)
Received: from [10.0.2.15] ([157.50.90.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1b8444sm64824745ad.86.2025.10.03.20.22.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 20:22:14 -0700 (PDT)
Message-ID: <21b1dc10-acad-43b9-a9c6-24abb2886856@gmail.com>
Date: Sat, 4 Oct 2025 08:52:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: max30100: Add pulse-width property
To: Shrikant Raskar <raskar.shree97@gmail.com>, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 matt@ranostay.sg, skhan@linuxfoundation.org, david.hunter.linux@gmail.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
References: <20251004015623.7019-1-raskar.shree97@gmail.com>
 <20251004015623.7019-2-raskar.shree97@gmail.com>
Content-Language: en-US
From: Bhanu Seshu Kumar Valluri <bhanuseshukumar@gmail.com>
In-Reply-To: <20251004015623.7019-2-raskar.shree97@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/10/25 07:26, Shrikant Raskar wrote:
> The MAX30100 sensor supports multiple LED pulse widths (200us, 400us,
> 800us, 1600us). These settings affect measurement resolution and power
> consumption. Until now, the driver always defaulted to 1600us.
> 
> Introduce a new device tree property `maxim,pulse-width` that allows
> users to select the desired pulse width in microseconds from device
> tree.
> 
> Valid values are: 200, 400, 800, 1600.
> 
> This prepares for driver changes that read this property and configure
> the SPO2 register accordingly.
> 
> Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>

The subject prefix [PATCH 1/2] says it's a two part patch series. But I think
you send all changes in a single patch. If single patch use [PATCH] instead
of [PATCH 1/2].



