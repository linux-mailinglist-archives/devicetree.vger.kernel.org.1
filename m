Return-Path: <devicetree+bounces-256317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF724D38AC9
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:33:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D37830700F8
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07DB31C5D44;
	Sat, 17 Jan 2026 00:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j8pffeuB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6117F7DA66
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768610024; cv=none; b=nWjq9XHh9FwJzwva5HLfW9lbYjjmSc+32V9cxCffJTY4NxEtG7otYkReG9fzcSgHnzFO2jDWQYvZjkQt3APXKNi/qRlSeh8M3gTrkflqFWw8CCgqKOpgCynpqfwqUW/KqT6vuN5+QdyVt4IX/cuUSKWfBV86GqlHb0FF5pxUCuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768610024; c=relaxed/simple;
	bh=S0dSLB9PPtlW4v3x12PKUIXk9LGmp+kBGNVfXeGVVVI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ERYZdqgy2EKAc35EWoC9W7nEq5Q6mhhUd8av0CWIKFLXQfuMjPpUaQYrPkFEA4ItpTahrdAuK/uJHlIkPo9Edq7GG7LJpeec4ZC0BMUH11i/jz6NExE/rLrl4Cm8D4G6tb3E3CJH0JxIHNfR7vWqh3rAnCRDlf+HANChRFp5bb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j8pffeuB; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4801c731d0aso14137375e9.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768610022; x=1769214822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nJpxx4+wHYsiEOlQU+E5sFAAvHcwO1zDtrt605GkyxI=;
        b=j8pffeuB3hAu7ieM7dIWB6DMELJjs6/4IfZyJsXiH+cvtGdFZ0lf7n5OEXpOluZH/k
         II67TNHTQSBqrtbpeuSopEZOv19EpxQbbgKr+TrTPJG8VgUQMOAwsOM4SG8F9XL5MzUy
         3mVx5V8hlOllIuQWNNfPhhHop0sORQDdP3GtJK4o0cXq2UDNc4s/mcCvEo3uK7x0MT3p
         qMOODIUhvdWh5wE+szjEQioGmTlCLFst4Wfci6RGoa8VjXNYApQQdV61X0eVnrUkkYdV
         lDaSIXrWE5lU5tMHv04U+6qyX+p7lfNxf0viKrF1VEJ69LFIk5iykCD+U+q7K9qPw9sY
         erWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768610022; x=1769214822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nJpxx4+wHYsiEOlQU+E5sFAAvHcwO1zDtrt605GkyxI=;
        b=QEZZqA/AkzjeRKO2ufsqnqS+mbucmX6e+XMcYHVEyDQB77qeNxp5lnO0zB1Q67/cUg
         LoqTGDs135JmTcEXYMxXlHZu8QsRyo/QQ+h7f26hevvM6rBxyc/b6Vw38aRO5RgmdZw8
         vhtbenuXsXEwJCWHVFJBt6HQx/tZLc+UI4WGu/cf9ZWFhaiRSmSw1y0MIjGLy/kVvHdY
         mZjUf6pXIJOzeMZztON3+YjY/ifnUh3tIHqzTmpJD9KGfkkM4EhsS0e/GrglAjaLL8ZJ
         ZH1TKvErzt3+YhlSns7yagjowd2U9qHe7KIbamY98DfIFsKDsZZQrzsKMCzrSetqdJtN
         maag==
X-Forwarded-Encrypted: i=1; AJvYcCUmSrO276pQWHhkIiQeoizZ6S08561DdxPQcpv6f1LFgYU62riCor9LqOSK1mHT4M10NAl1ZDP978b8@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9pvh7nD7wZZY7Wk/VqX3qCZE79S753e3NgIJHz0QjeGElvg8y
	dfLV5q48ZiNWTNSK89Dhb0CSafDObP/beLlsu55IOzhXREx5j47TJkyG
X-Gm-Gg: AY/fxX4uHdoYaDauSo9Cxx5WmTzPek9lbOxhH80vpNPSSOxMrSjFPqMAzCETl1dzsJk
	6L7jXo+3Heese106O07AhUtISqfh1UWBAtupw9MyCooUQoMUFBLkcjN7e9Y4xBvmNlxrj9QoNF8
	RP4TNH2pksgQCajeNa4zYkMzhCPu6vtXjoZAvmkTpgzdsKeaDAqhPPx4eCA4W5fAIoGmxRhyNi7
	bR9InuLbG8GJs/h1m30ZTn3m9pWd1AqX69o3zz2uwCtaVlsE8OR2N+0e/CRZmRZwtTKx/M6nW3B
	0YivhZomHkPqYSGgZd4ZIrcSeSLAqDVuQzYF9fR8keCm8A7jjkpYwXZv8fxUSNUSqqoO1BkdXlD
	samPbG/yHHrZdrslhfrx71Rk6OWn9WMeMHNYvt2t3cGr9M2L5BV/NoutVzhHHrG6XqWbwyNbyUl
	mqWaq9TKqr/CuEpkK+tnKmGxtWbAXzNG5Sq1razUcJUmHnI4jSBEUHZohCVg1tIH5vB0itDzdnh
	MX/gyo=
X-Received: by 2002:a05:600c:c0d1:10b0:47a:810f:1d06 with SMTP id 5b1f17b1804b1-4801e4a38d6mr42472145e9.4.1768610021605;
        Fri, 16 Jan 2026 16:33:41 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe74987sm27997325e9.8.2026.01.16.16.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:33:40 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: Re: (subset) [PATCH v5 00/23] tegra-video: add CSI support for Tegra20 and Tegra30
Date: Sat, 17 Jan 2026 01:33:37 +0100
Message-ID: <176861001038.1704662.1663515837927668217.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Wed, 22 Oct 2025 17:20:28 +0300, Svyatoslav Ryhel wrote:
> Add support for MIPI CSI device found in Tegra20 and Tegra30 SoC along
> with a set of changes required for that.
> 

Applied, thanks!

[03/23] clk: tegra30: add CSI pad clock gates
        (no commit info)

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

