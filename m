Return-Path: <devicetree+bounces-216135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB2DB53BCA
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:46:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A087A3A5F22
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5E129405;
	Thu, 11 Sep 2025 18:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gAqPG4ZC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386AB2DC79F
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757616356; cv=none; b=HvDnHVIskK5fYOjuPO2SXyQV0a8dWvzySPtySMlZeRQXca20qjSx+7l0ejZasJwU46f1aoCjVJL/ilIy4IVaVcqJn+zogmzPYa2Y3S8cXcwcGqqe+Jl/hvVNcCuTncgCI3XumCrx9voBNUmyJ8G57d0rs/2nCYhyaFEa8pEdn5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757616356; c=relaxed/simple;
	bh=TuLHTjFykUilhUZnT3fFY7LhO9LUKhtWGTRGhNjPoAg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NcwF2YwaQq6sYW471fIxPGq7wqbSHMmq8klU8qHWt08k4vuvN5IVPSaTtfQ4+Nhqio2ZeHWpveL5ILc5ZKYO+yd1cIsSHaEyWqUA/Cp7gVj0uXmNfTq6oMYfkN/4SN9kZeV/G+iKV6gcL+X5xU/UYio54GHQ8Sxy+iqwkySSuCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gAqPG4ZC; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-772481b2329so1268477b3a.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757616354; x=1758221154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zac0gA5hNMKVbpgn/Yg6guyOmUi0xcryzjiA7m1Jwg0=;
        b=gAqPG4ZCw3JAzkDy4ajED2oD7jCaDDMYjsb7b8igaXdWamPCviMyo82CrIIdbcCujH
         jlXLTOdzH58hX4hLwKduUq5/2ZgbDoU6PxS02QOHsFegUUI9BvkTYB2Ggw6F8mczE9hl
         s195pWuOrdiN6W0YP4/zB7Nkyt2ez9Aej9a86fiUSZv+8hWH4RFsP9luE0Ox/3o+LURa
         lMAOkfE5gPr6LLtzAz9diLavPWXrLbeN06FS9mX3oS+iSAJO441k5peLxrbnSYkijq/L
         GWF4hPHYgHQHqVYlRqeEtKqtng10Zc/ELSdXOl0TabsxJMHQi4wp2RO9wNzLGV9mLUQG
         LGRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757616354; x=1758221154;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zac0gA5hNMKVbpgn/Yg6guyOmUi0xcryzjiA7m1Jwg0=;
        b=idzBMx8ic9MNGwvyrnBbssyi5WZTQXMd7tK8eMwYR0TNHxZdw3W/kujeUse0tg5C7a
         hwDpb8mYS+39UiPGYRgl6i+3dmxSmrjtpmfu2y4mlJqYpZqF+iHPIn41biSXhcguobL6
         931MkzjK6r+8a+luXss32LpSevs22/K/Vm+86B9rTu/jd+yLH+gSAH4BwqiHW4quhqqd
         BBYFJNmxT0c8FYIuq0JzSLajzKyLLqRUXN015q1kw10qILUGTbd8JxScjAMbQ/upxayt
         O4e/3ilOhgFUm7bmzaP515LJOy1cUcEAa3ctPF/xS8KNI6LZSx8X6JAplnPLqjO5z48B
         b9Aw==
X-Gm-Message-State: AOJu0YzlW3R5zqlIdd89CBSaaRa7DwRtJsfriVtpTHVBUA8shOT2QlkH
	SIgFvh1lh1RUd0kdhXWBYUW5IOtpramL+JI+FBHquXHYs3shgFjw9jHK2kBS4mVQmvsyvg==
X-Gm-Gg: ASbGncsCbI/m5M9F4Rjn7zlCPMdtcqqVGvG1+fxLSnru06N0RSu7oBLnvGricpW0zxi
	DBumcJJx0p1/hP7ipKXg0hgvdLeKnIkyVuAaluVTIl4AEMupSEnyoH/+KCnTNMTIxupWby0VXeF
	Es+UNE7BcdPL1Hv6R64dDc0sqe2vylffioPZ/MH8KHrr3KnlQ5EJAuaqzraj9mfV3v1iLzVxPTi
	+5NLaXpAtbwFdnCKijQ+nhqtXruqj0VjiGnoMWBzZv94ELO8J5Kr4O5ksHJtQx4S5VvnH+tEzJX
	jlqYx21je/b3cA8Lzqr6v1C7qp/IHbm7iwtJv88mMaswRXFiu8ll0k/dMlyBuhKihtPjb14vsRy
	fhW5xXUG8NHWkywYi4L8hScI0JW9s/rQsx/uAES9vYu0bKtmBnwxRJHZrEIf58jRZ5ddlTmXXlN
	N7sqnYPltot/AyJyZ+yZ6dwA==
X-Google-Smtp-Source: AGHT+IH5VlnojxWoH8JIuuaFn5H79HN4d5aux1SvTMyGC3y//bGWrfCGI5TTIL0/XlPldxFHDOB0Mw==
X-Received: by 2002:a05:6a00:1389:b0:776:2e3:a95b with SMTP id d2e1a72fcca58-77612064904mr567574b3a.1.1757616353247;
        Thu, 11 Sep 2025 11:45:53 -0700 (PDT)
Received: from localhost.localdomain (static.148.173.216.95.clients.your-server.de. [95.216.173.148])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b34790sm2762616b3a.81.2025.09.11.11.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:45:52 -0700 (PDT)
From: Han Gao <rabenda.cn@gmail.com>
To: devicetree@vger.kernel.org,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Han Gao <rabenda.cn@gmail.com>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] riscv: dts: thead: add more th1520 isa extension support
Date: Fri, 12 Sep 2025 02:45:25 +0800
Message-ID: <20250911184528.1512543-1-rabenda.cn@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add xtheadvector & ziccrse & zfh for th1520

Thanks,
Han

Han Gao (3):
  riscv: dts: thead: add xtheadvector to the th1520 devicetree
  riscv: dts: thead: add ziccrse for th1520
  riscv: dts: thead: add zfh for th1520

 arch/riscv/boot/dts/thead/th1520.dtsi | 28 +++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

-- 
2.47.3


