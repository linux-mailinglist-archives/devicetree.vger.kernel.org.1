Return-Path: <devicetree+bounces-239233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A65C62CF5
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:55:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 457B035F2B4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A152231A556;
	Mon, 17 Nov 2025 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="joDiUNUI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E8A1DDC2B
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 07:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763366073; cv=none; b=V3u8Cl/ldYHXhcBRxVWuo1LRKWc84k2oQ1UD3Kmhy4UtV3naikXwggMO++LlnUN0HOF562hCj8IlV3bpogt9Fs5/WIWa0VCBvdub5BN4ZecJslszS0LccaNQhDSnNIynfc49qfm5+9Gjm5Rob2HrJGK7A55SB1hXGGWz7EQgUFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763366073; c=relaxed/simple;
	bh=YGc8Ft9DASPI0bBxZnU24htuMBkWHAOG+ihNABWr+Q8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u72m+rxhxSQEdWud0JFxxVmHpmPJ8t+7DB9FWem7rPZPnRVdAKq26jWhvBI/gfQ7DZoKSog2ASxMsldQ/ZrR54pDbzMl2/SWuzOcVD7ap328ZZf2YcIuXQBX9dYe8MFv4D7RPmHL5Kw8RLc+srY0pauX/Qim40zRB8eDvcRPrzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=joDiUNUI; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-ba599137cf8so2460184a12.0
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 23:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763366071; x=1763970871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YJFYXjrZqLDFgZC57MuR9/7D9zTgqgt6RRzSRexdHss=;
        b=joDiUNUIJATZupVXCIDEqoo4S4RKM30kD5YvHwMURPueX4OwctZAn0hw/+wH4Bjsds
         EI9kdM77DGUvc+ok0LjGneLUuMwTSIenSl9P8JmttVsWXltClWaU2DnD+3my3jl9hxLq
         W2UcPrY4fHlOJ+bKafrPjj9B4z6vhrAajuMMrttAEW8furBGzyNKyuf54YSfMrvrWmt5
         6auypW2Ur8GVnkNpagfzBBpy8+cGknT3Y0ObS5iYo+MIsP2SjQnc5YKY/4JmiH+FHrrB
         7/08W5TqtRHX3lrIZ7uv5u2M6k0qxJLiUwPzgCOBgxOMtZEs1MyuOk5d54Tq3Oxa5r3X
         1zHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763366071; x=1763970871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YJFYXjrZqLDFgZC57MuR9/7D9zTgqgt6RRzSRexdHss=;
        b=GyYHA2zF9Eq7zmIQZ+ElXUxde+a9fTniMWzGSdsRxprCwhALoSFOIZmJZ7at/dSnhL
         5ON39Ah+2ABeZegbpZigM3hUcsbTelcOaZJLI7pmVT3kNPvMcSpdL11mSdevIi/+MjRv
         efbnYhaZPNos3OEawNBAUYWCUzTAcV/KZF9KYnEzwqZrf02+9vQN0bxn14J+/gNiWtQV
         ECGbmylbMgzOoi6v7QpF0VarrjFFJKAniCp7pKMSXbWpgFxhnMT/Xhzmgv2RgMgjZtcJ
         WPZ3RQYCWDSPakjFQVbzGTzWZ/N2HrrEGguJyTvdr9z4fuSkJARL3F6ELiaiU50ry+UT
         /q8g==
X-Forwarded-Encrypted: i=1; AJvYcCUaYFJv12JkbVSCtcUCnqt8XW4BWEc8LsrQuKcoQs3lZomP/sOVoXqo+aQ5RqSHSgBTV9tRfxd2DlpS@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjdzh+oLqLyJ+HmjppvUUk9YZvt2PHPgZt6mQ3UA6waGRioulH
	LGAg/ISdJi1fuFDsLZIu3CEiwMHWH92f+Hg1CBVUzkNJMc7DKMjqcejT
X-Gm-Gg: ASbGnctyRbTlOdN4h3DE5CI7gYegIMePcZuqgAHAP1aGvQyFcIt/3lnCEt+eHWGyzBS
	bikGEYJpxHPW5xNWtUN51an103uug42/6GA2fwjzUji9prMNh6GfFeKXH8UfTa19/ZZu/Y5M7z1
	PUBkBCyXdJPOugU+/jGHAiq5PP4FD05KqwvhydtEJGm0ffb7Cvk7S62opUfgTvpSAOQU91L2sCP
	J/xS5UF4eUUJjEy5CeBUBrES9jqwE9nG3kBWw4J/nb7S/si/osASitjZLULvdo+SmxMNmpTAyAh
	oT3msVNzT4oi2vggPpXZn4CG/AsF8fX0TzdnkIE6/R9jg+ClDUYot0i7fMwaih6OJwW3qFMjjgX
	2tHoBxQM0szVfTXyauU/PU8SBHH5aRcliIismdZXaMv26LIz59HbtzGh8FcbFWu7E0QW0sK4tO3
	o=
X-Google-Smtp-Source: AGHT+IG9sGqvuDwl6M8wyl+rjAQw7Vc6OPhJaA3ppAqLpuVnEaDJYf6M8j/2uygP8YUk8imuBKovyw==
X-Received: by 2002:a05:693c:60c6:b0:2a4:86e5:6b2a with SMTP id 5a478bee46e88-2a49af801a3mr4018516eec.14.1763366071370;
        Sun, 16 Nov 2025 23:54:31 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49d9ead79sm57344385eec.1.2025.11.16.23.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 23:54:30 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Ze Huang <huangze@whut.edu.cn>,
	Longbin Li <looong.bin@gmail.com>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v5 0/3] riscv: sophgo: add top syscon device for cv18xx
Date: Mon, 17 Nov 2025 15:53:57 +0800
Message-ID: <176336602776.743994.11109487529493161809.b4-ty@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251101014329.18439-1-looong.bin@gmail.com>
References: <20251101014329.18439-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 01 Nov 2025 09:43:20 +0800, Longbin Li wrote:
> Add top syscon device bindings related DTS change for CV1800.
> 

Applied to dt/riscv, thanks!

[1/3] dt-bindings: soc: sophgo: add TOP syscon for CV18XX/SG200X series SoC
      https://github.com/sophgo/linux/commit/565c450124c105a0b4f4ff3265e19502d44bf23b
[2/3] riscv: dts: sophgo: Add syscon node for cv18xx
      https://github.com/sophgo/linux/commit/126a1b3c61cbec15ffaadf141adb9c4163da1757
[3/3] riscv: dts: sophgo: Add USB support for cv18xx
      https://github.com/sophgo/linux/commit/e307248a3c2df4432a7bbbde306ffcb33ec55898

Thanks,
Inochi


