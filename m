Return-Path: <devicetree+bounces-255286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4A9D21DDE
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 01:35:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1D953024252
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 00:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8904C14A4F0;
	Thu, 15 Jan 2026 00:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AwkEfNoP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0319819E839
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768437356; cv=none; b=EbZPnddT26mhM5YnKr+myD+z0hTippGMtLm5jmPm6yeNUmoewMB23jcAlTtATkSAykNlJFUXOBIQDXV0DpC+PJk+qzCdHongeGmzU+vMknvynM9RhS2VlUgv6UVxE4SUn05j62A+m7cDy9irxpTp4gjEGNSBJJXYXtaXyJrdK/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768437356; c=relaxed/simple;
	bh=gfyaNAM9bwProfj39nq33cNVyJr2j0VCJfRnp2ikqrM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Zk+lzR+EVjIdkc8yJ0L9X13F72fE7GFLs+5Zr+sW2ym4NkGq4+pbiwiS0enPKqyu5s7aO1bSYcBLJKaDbRlCKSRi+Hh0P0Pjt4iHFfYpD5qly7EhDjgCRX6LXaJGFhHnqW98rQIH8zeyF94oUt7D35rqPm5a7FCECAwdPShFPDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AwkEfNoP; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-11f1fb91996so852611c88.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 16:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768437354; x=1769042154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=czNa2HPASxcpsdkABFpBkldVnBnMqWd7/qbtKUpfVF4=;
        b=AwkEfNoPz9EGcvKSVulYMn/x+YO/m6lImODnP2Z1PdnXLQwkbS428RAnePOH1NpPOm
         5mSo0ET/AOkQBL5+SsH9tSGjUgPwD9RBTinboceNbc+OSJyb4QaQwMr1jONHVHWXIQ5S
         dsfaLw5mf9WN5ORb0D7WY9EL4Nm9Bqt4fgEXy88a3B/ZnDDKqANxQs15iXcYDcNLA4Tw
         DpaK+1fOpnX/XVsUjWFNYh3Y6BNVp6akkwfh7Ngb1ZtsuZLAPf0X880XQfb9LO8hm6nJ
         2tjy2n/NFa3OK+7HdlZZVDyZguzolj4WE9g5NoC/pHLt77VwqTDHw7PAIMR0FTJ7Rr1b
         S3Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768437354; x=1769042154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=czNa2HPASxcpsdkABFpBkldVnBnMqWd7/qbtKUpfVF4=;
        b=Ay0f2v2wZaBXuzKvh1CqxPOf6b7niVz2sc5OjTJm3sV7EskNWyOoLkgQua+AC9ommq
         KyfZgybmWu0S4ylrUCgSOZ7/mMy/PDyWAUIM+/0qjT3I/6+8l8U774cc2Ch/ekcPkNPR
         vIkgEKbZOk/teUie2DiaEVMhVF6CpVoSg0f1ArwZeHbls/IZ3P2Vv+C8S8sIcy9UoHkJ
         oYHvLpp6UEgXTQmCzsm53A/xaqBRhd2CJAovdQuDLoL1zl7LJo/Lue5CeLpasbA2oN18
         K5MPpmEbTGHHvjwgF7vpV1Dc1gDESSxneiwpXf7g9iY24jkjGk6XVYZzT3LQuQAyfvr9
         5ACQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzP6bNMqagG3jV6EUdYQM2iL0cpkSx6pPe4ApnIaLiBhJ+Pt/fGWJyV+JzrClfQhR4mMvX0r1dXKSK@vger.kernel.org
X-Gm-Message-State: AOJu0YyDtZgKNXiexYbV/V/zi6gxercJaaJ+PPJRiG2nbJmqev2zN3h3
	H3yw3cfhTRF4NN4WlH4Te+wGMyindEOInrAw/EMXV30w256Ek0Hijo2P
X-Gm-Gg: AY/fxX4GLOgoGWtwvISlXhLKXWOgfFw6rqKDgry0yOZPCNvcOD3TpxbzM/FWiwpwomM
	7+eO4xlA3aATNiEwCKPD5nIelpMcYe0RWmGLDaZSA+GSa0dgG2EzqkT3v8R97fukEx/b6NV0Q+w
	Y/CTMedMHbGPeAoz//3DVsAOYUuTarExtqnCiz4GOl5Md1EqkzF/XqOCl10zFymc2KR2yybuHZk
	q3WDWGXAwNs9UzlQLjkzeMJc3c4R9hCAsXbOIbgxMwbcaeHq1Gcptj/J5Xi13AjfeJ0p4Jx+0YM
	Eyoe+V97n25ucG44T9PyCOHpNROkTWkAk8uyOEIKwqjPRr4huPU+ddoy7uVw0ghP8gYOfW8tw8s
	pdX8V1N2XXiglcnMRtJnGF/A9ZPtfYl6SS5Mnx5EGJkQ1LVKjvxY+q2VEiS+GY4MxxfQXSWPUN8
	9lv5e+xkXWDQ==
X-Received: by 2002:a05:7023:906:b0:11a:4ffb:9825 with SMTP id a92af1059eb24-12336a47f3cmr5379565c88.6.1768437353929;
        Wed, 14 Jan 2026 16:35:53 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f248bb6esm32655086c88.12.2026.01.14.16.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 16:35:53 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: unicorn_wang@outlook.com,
	Michael Orlitzky <michael@orlitzky.com>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 0/1] Enable hardware clock (RTC) on the Milk-V Pioneer
Date: Thu, 15 Jan 2026 08:35:48 +0800
Message-ID: <176843728514.411490.2857554435791517315.b4-ty@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260107112922.20013-1-michael@orlitzky.com>
References: <20260107112922.20013-1-michael@orlitzky.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 07 Jan 2026 06:29:21 -0500, Michael Orlitzky wrote:
> Add the DTS entries needed for the hardware clock on the Milk-V
> Pioneer. I was able to get this working with an earlier (6.1.x) vendor
> kernel, but it is disabled in the upstream DTS.
> 
> Changes in v2:
>   - Trim extraneous information from the commit message
>   - Link to v1: https://lore.kernel.org/sophgo/20260105120129.58895-1-michael@orlitzky.com
> 
> [...]

Applied to dt/riscv, thanks!

[1/1] riscv: dts: sophgo: enable hardware clock (RTC) on the Milk-V Pioneer
      https://github.com/sophgo/linux/commit/9e81c522680db5998c872fb91ff7877cf3d8ff42

Thanks,
Inochi


