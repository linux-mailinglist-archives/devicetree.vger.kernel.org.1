Return-Path: <devicetree+bounces-257145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B8605D3BDCB
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:01:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 621BA4E0715
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 03:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F17713126CD;
	Tue, 20 Jan 2026 03:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fI3xyT16"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9732531282D
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768878101; cv=none; b=GUlng3niYiDdVFn7Ph233d0s9SlOFfyxyFO0W7gyoqJUAQw0C7S4+QxigDh8V1tCyUIsH6M5l5QO+lq32ot6NA2cPKM599ASPVvfgJn8EReyPYHP3AxwECLVcD9r6+jDxOBRq5uV4Amb/5k811Ww1+8KaQH3//nJcXc1f5Yd6kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768878101; c=relaxed/simple;
	bh=n5A0OXSyk7lo7f3jHURyz0bX/5X3lYhpTO7Z9MO/Uec=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OldPRUGmtJWhYh9e948Z1/sk8ycznTGnAE5Lou06DyG3Lnu8a8ycdJjgIBTkI36avSV3vLAFVMd6E5zTOXMjegSAl2rfdwDSGXOWCGvhzXqVabrEtrIS2wQVqoy5X8qJSMIIvzIKvMzPwpT9DV+dEHhWmIr4k0BmcAzy3xF7UvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fI3xyT16; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-88a2ad13c24so43597996d6.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768878099; x=1769482899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i2Ldiltg0ilm3GITC1FlZ3jygue5ViLbnCHXlSmV/Sg=;
        b=fI3xyT16OvxNfNdvZUMMTncqq1O5soYt6BYE9iJUeg71KpMYbZeO9U447xHc617hCG
         AwKnJ6U8Gg4g2rDIt5sXMhBgf4elliDoHHM3NYMs8zfBUrBPXnInOtfMs3Th77ZzV0I4
         h9wZD2RYgDaSljVXwp1HLaILUpoM+ywn4xhyiqyjFAWgWVD9iawRaP90gCqANI7Gryo7
         c17tq4qpZD8mivITTJdPyPa2QO5evypFehUSH66C8i3pM6pISJ1FFp3wRIa4Q+5ztj1K
         kRKvIpn6PU2ycuDW/h5xvcD7iMANuO2P7A7B04LV15zE8HUjm1ssGRBnBCUQNZH1FgYK
         aNBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768878099; x=1769482899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i2Ldiltg0ilm3GITC1FlZ3jygue5ViLbnCHXlSmV/Sg=;
        b=Rln4L5fjsU/ou+av+xlk/Z3kKSbFcRZvt0X7zn/3sFvwZcKsTFPc/pL1RI1Q2uMrQG
         kAbuCU33btbMAOcCJMjlDmQK+tiYj7Af1Jia5v7d9OYbrq7Lpgi+hrZ+nDzOrdMLlhws
         /q4/TfXtx8rytnAi6RUDWvXLieSM2+2f92w1+H5czSZTT6MH7szDB0ItrZFlNW3ohKCV
         I63SXEZzfB9YpkO1NuL70b40Zo8UQbJH3vGolbox3QJ36+yzaZ5zo3LhhMkkqLKYRq12
         igAs4SVEDu9jIkfpnc7ohAnj3GeUuJFeihe4wIYjr8dCbBnHtLsloC1pk59O7mUA6RQY
         90Cg==
X-Forwarded-Encrypted: i=1; AJvYcCUeE+ATOpDZYK9cON2ZDBHNrE+IgjkdKQmo0eAn0uh/VF45bHMCqlZo1nACELFoKG6fwXxhKw6vrgsX@vger.kernel.org
X-Gm-Message-State: AOJu0YxkVWcCEb8JkLK9R21qLps52HfXGSVx5tz7uIjGHlpJ0ef17rE8
	Y03RPAruO5FmbjQjr9p+C99TwnTd7TtpRiT5WbcMup/qPQWxG3sqjaFxuPGPqeFI
X-Gm-Gg: AZuq6aJC2RoNCoB1ZxHptvZeT722HTFiZjXHIT2wtu9JY0jx+FjD2/oyryIbANsR6ug
	wTvwFyqDMYAe11aZJgM5cAFJ4jLf4siR9CgOra40FfW2PC/0YnqawaRk8x2Bbs2aCDsLe8obam+
	x98aTN9wgYME7qKXiNmx5cMh3ZrszSK5kp61k3fSOxDWUb29VWhZBZBulYaq2FwdeFzUVu+sUMa
	LpV2Wj6dw+G8kanjWBl+8hcE8KjOU3639/gtXJXNWKkhoYIQd68Ej/rwlWKT6QZcUZs2iPDmcz7
	zXOAcD+pDwLEHD/Z21IiX1279rtNZlSJAgNLw2blEbirM8xFylIW6678RCoPLebML+WNf4qj11n
	LzohUGKQ+3X835I/AK7bPDoiXs3/KIkrL2IkB6qsGMWbk/pUaBH3ET1ViLel6+dzswn+ntJN+sk
	hxiZ36iLdwQPQ5Df0gOYNi
X-Received: by 2002:a05:7022:6288:b0:11b:7824:5c97 with SMTP id a92af1059eb24-1244a769feemr12788374c88.40.1768871785704;
        Mon, 19 Jan 2026 17:16:25 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6fba43c3dsm747540eec.0.2026.01.19.17.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 17:16:25 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Yixun Lan <dlan@gentoo.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guodong Xu <guodong@riscstar.com>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	Junhui Liu <junhui.liu@pigmoral.tech>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	spacemit@lists.linux.dev
Subject: Re: (subset) [PATCH v2 0/4] riscv: dts: Add "b" ISA extension to existing devicetrees
Date: Tue, 20 Jan 2026 09:16:14 +0800
Message-ID: <176887176536.427065.4468747981087466363.b4-ty@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
References: <20260115-adding-b-dtsi-v2-0-254dd61cf947@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 15 Jan 2026 07:18:56 +0800, Guodong Xu wrote:
> The RISC-V "b" (Bit-manipulation) extension was ratified in April 2024,
> much later than its component extensions zba/zbb/zbs (June 2021). Recent
> updates to the device tree bindings [2] enforce that when all three
> component extensions are present, "b" must also be specified. Related
> discussion can also be found in [1].
> 
> Patch 1 clarifies the ISA spec version for canonical ordering in uabi.rst.
> It is a trivial update, but can help readers reference the correct
> document version. Acked-by Paul Walmsley in v1.
> 
> [...]

Applied to dt/riscv, thanks!

[3/4] riscv: dts: sophgo: sg2044: Add "b" ISA extension
      https://github.com/sophgo/linux/commit/f16ae81b80ca4e721f4c4ed1f28390115f7721eb

Thanks,
Inochi


