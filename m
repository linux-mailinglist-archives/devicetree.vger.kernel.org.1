Return-Path: <devicetree+bounces-175825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE691AB1FE3
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 00:28:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6F157AFBCF
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 22:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BF20262FD8;
	Fri,  9 May 2025 22:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="q0tflXen"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39F3261399
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 22:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746829676; cv=none; b=sgq9Z4ATliZRuwleMZFzuewVmpVJnoiWfimrdIP3M30MZXNUTBJrCkNTQF160kxRAxB1DKxwEsVHLjSuy49L+vJbOi08MIqjDk8pzCVzh0swZscUHgLicBEKKezXCivRsLibcflkfNp6fKduCbXKdRdDYjPHtwJCSgDEtfLFB9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746829676; c=relaxed/simple;
	bh=fpcCe5Pe3DQ99Xt5/ZVJQxg4XXuoBQ3TXj482waHmN0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=dE/2hMZ+aPEvmnirL+OxlxOPPyGd3lWocRfF0H4mq8a5/wvl2rWx/fXUe1EneKUcNGa3sb2smzu3X7G0GDV2gOTh4VPepKydudFjSmp3hs5/hAJsB7kJngO7UyjffkndmYL7OIQ/yyMCPkyBgXrZLL0gz8S5xvbgvZEdX/aB3+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=q0tflXen; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7415d28381dso2025186b3a.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 15:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1746829671; x=1747434471; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SlfY6HFrt6KjD7LtGN0cH5vsLg4tj5XTdmzdfNRbZFQ=;
        b=q0tflXenaF26nFZQ0OZLF+enPQSgKw/Q+/e0AzkZnyuKvBWkpTeo6TE+3aOQuzUqkO
         GN4JdiJCyQJ8z0rTYlCVrZKC+ZYgykT4zlXCME1NZYf1OI4aTvs7bSnWSIOhi1HrDFNp
         HS1zBS6ueMR/X3rKPbxpCmank5R/HYYJb1WxpuPwfCGJRt1OVdgdAv1AvI7kHQJypKpR
         T8FFAU8PJm9ygd7g/KzJ7gZe/Jxhfqr0HtO8VEU/ponA8zDvwCFMDDKUnRuosTOoKk+I
         p5SADGfzAwXDdSmIH+J5cFLxAAHhk0rbN22USSIhYVhy8vkpvojXB6IM0FJV9HV065zC
         ALrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746829671; x=1747434471;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SlfY6HFrt6KjD7LtGN0cH5vsLg4tj5XTdmzdfNRbZFQ=;
        b=L8mdHBR7ZTjfsRdL/Iz2jJKwoxffoUX8hxUz/0QMnj9RhhzjevFSxYb5FyT4W8qD1H
         sSjEg93TwjDUkf/moA2gJaEVr0/Mvb1Hw4pZPi009X+T9SclhQY1Lwkz3x4TXUQYcbZE
         PLNdeqbkAZunhyqb1KBE5bxlrxAllBM5b3D+K24YvBZRHr9jEg6xBQj5MqTtCL6HlLUZ
         sPVswAjoW4QKYb8QSTjuYdXFBlihZN2TbM4VOcI4C8r978OCdyLBHE/GJwpqs1pmQINs
         ncTXQw4VsWHfZb1yVK23uwjGQWpU5VKjpm5q77NPOWcNfAWRx1Jz8TLRX6fJvCU9bJiX
         p+uw==
X-Forwarded-Encrypted: i=1; AJvYcCUPwvi9u/44eIdMsAaLzEhQ1wmT7q1yNUAAHS7VO1Ohj1Q5blRAMP4OqQZCua1nLnbhdKZxA4nKK+8C@vger.kernel.org
X-Gm-Message-State: AOJu0YwlYEnETNj5UTTqlH8vB1nPfPULje5c7sLDchbWqP2KiEW0zizM
	sj1razd+3P7X70YaDqm2V8cnTagvid0jlFy8zOw5wch1845FDYsADTormp+FEG4=
X-Gm-Gg: ASbGncvNz3LdX1+fWEUemntC93vFYbFmoA8Tzq5Fe69cXz7BVcOV8mH0JfXNnRHLjY9
	AtARSCndR8PAd1MUFHORL7QLMdhx0/PnqxbzoAwY+xYS2OMehs2ttrWqmiba258egwx+wRbTMIp
	H/vytlcoPAf01nvkA7ju43rFf7iAE7bVt6Rg5pbdbi5gB6fJRdd4lWbXRzOGImzLCjm518Tfa4w
	m3w6eE4lppkzUB8gWf29SAYtsefDSmyr4bam44aNuBRmcXx29w/jWli+UnF9ewdxPZhgO8aJ1zu
	PpB33dPf7dZILq+I8yOeYKDIP4Q108xzN1xlQZZeVGzWr6KzhmCq2DXYXQ==
X-Google-Smtp-Source: AGHT+IENf7Kcb8dJPQCDteAQPpxoaSfjEOkbSR/iBVh1JMloeodx77VyrnDGlCBUYNSjh2bS0sBuDQ==
X-Received: by 2002:a17:903:41c2:b0:22e:62da:2e66 with SMTP id d9443c01a7336-22fc8c78182mr82262675ad.24.1746829671116;
        Fri, 09 May 2025 15:27:51 -0700 (PDT)
Received: from x1 (97-120-122-6.ptld.qwest.net. [97.120.122.6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc82a0e52sm22426175ad.216.2025.05.09.15.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 15:27:50 -0700 (PDT)
Date: Fri, 9 May 2025 15:27:48 -0700
From: Drew Fustini <drew@pdp7.com>
To: soc@kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, Conor Dooley <conor@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: T-HEAD Devicetrees for v6.16
Message-ID: <aB6BZMWDXoRXrZVf@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit 0af2f6be1b4281385b618cb86ad946eded089ac8:

  Linux 6.15-rc1 (2025-04-06 13:11:33 -0700)

are available in the Git repository at:

  git@github.com:pdp7/linux.git tags/thead-dt-for-v6.16

for you to fetch changes up to a4c95b924d513728df8631471eb3b1c300909e21:

  riscv: dts: thead: Add device tree VO clock controller (2025-05-07 23:38:41 -0700)

----------------------------------------------------------------
T-HEAD Devicetrees for v6.16

There are several additions for the T-Head TH1520 SoC:

 - AON (Always-On) node which serves as a power-domain controller
 - Reset controller node
 - VO (Video Output) clock controller node

These changes have all been tested in linux-next with the corresponding
driver patches.

Signed-off-by: Drew Fustini <drew@pdp7.com>

----------------------------------------------------------------
Michal Wilczynski (3):
      riscv: dts: thead: Introduce power domain nodes with aon firmware
      riscv: dts: thead: Introduce reset controller node
      riscv: dts: thead: Add device tree VO clock controller

 arch/riscv/boot/dts/thead/th1520.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

