Return-Path: <devicetree+bounces-256059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F4234D3109E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4ACF30463BB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3289199931;
	Fri, 16 Jan 2026 12:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mJkmrgAz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E61185E4A
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 12:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768566264; cv=none; b=kKMHsAPJVMkyvXArpsgVyxsaEmJmqkOXcBEoA0BNjAlX9HAN81cEcIEBZDvSOI07ElLba2q6zKQ4FNEYsstjPcbd4ZYb21jR/HmOFyU7cLV5HjxcA8KQw/BTskDCPZbNU2X9sEoB9c3SGW0IY76VjYyswHbVYgCZpYETqVNXego=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768566264; c=relaxed/simple;
	bh=EPuASnftfuGr3IGIzAizyzPx5TQFcBsIS0N1UGwj1ZY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q1Jvtg/3QUuMX00WykmG5F6h2Fguziy29r5vIWJorNDaTwaZD+tdcIsg8OY6WmPBAkqtNC3MujzZhCVCJIi7HML07GmghaAuRZ1qX7e+sMfDRZJA1NvVgbejEC5cdGErWjo0duJaYi62lmsQ9rvmoIkHVKCD/YjTUKtUW7CBb3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mJkmrgAz; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-432d2c7dd52so1768977f8f.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 04:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768566261; x=1769171061; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cmp1er+I7mC+/uFhYU/BQ2FcpuXWQvry2+6qzVFEKto=;
        b=mJkmrgAzP5hyvHUnVGvSmFzrC726Oncrnet0xQkJnKS83RKq7AWZClzluCD4Kpoc4g
         s8Te9D5r5Q7XA3MpPT/ZSWezl7bHlYwNLQkVaQBzkFwcHQGDeH/j2dk7xBQnYtY/X5/s
         aThLh9IWulqL+Splkonton46L7SIycfmCwiJcJy1Xe+zh5w6SSzCG6zK3AJ1QO2wJDVW
         nIcKYqWv1/Fzzp4de1X8cJxXO4pZthFLV31Y0iZeqYKb3nJwumFlRzJsXiG9a0d3DXH6
         jJmmRCgsFnwQu9oMZN09jmrn+idLmNnUWVsnUvSYLYuoljpbEdUB+LykQjnq3VHOlGHc
         +YtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768566261; x=1769171061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cmp1er+I7mC+/uFhYU/BQ2FcpuXWQvry2+6qzVFEKto=;
        b=nNg7aslvDWd4hZBNQSeBC8NjO0eRvdJA5ObDMcnaVefZbtNFKNk4lvpy3UgwTZJtop
         JjtLnBVhgIU/6mrOvfT2lvZfcrPYBGYc5g2EiR+Kgql8y66hJCBoUrcAPXwWW0G7ERGb
         sA+W1bskM/1F8X/oocJpN7X9l7r8uRoohrAA1yXbKG2pVEmC5rKbaw78GC/9jwo+0nIf
         SDpIlulttSB6HJ/f1/EUoWQtxe5JmoGyhkIvbSb1gRiz3HAL1FyBKOXTC4E30V0R/7uf
         V49XzkYeo+mNb3JW8e++STnExbiWo6HkfOA+lyJVdIfeqFeS/e8/DBkZqfSR5RhYAbOl
         Shhg==
X-Gm-Message-State: AOJu0Yw2dVbV1TPr/FqZ8o0G7orydG7uCYPLWmmTB06Z1L2XuV4i8y+q
	Gr7LMiWBLUpEIq3NqJOkNpX6Ht0Cc6Fwy+c6YuC5DyY8dbL+mPzPJEiI
X-Gm-Gg: AY/fxX7mo/oZw5Fhv/Fcm22YYAfji6E7+alNq+VHqgWp9P2X9KXMrMJ4JzDlZaNxYxJ
	q6F7Jlk/zRv4SfTuTSfXGNn5/kve0FObJpKfPT0v1fjXOLIaH57yOZJ0xBHQpBRyuaPMPFsvn9K
	CkHTzPssSVPF5YFy+znIWVypEjPNQKVufjefrHKl8QAWlFnKwZcoe6a3hAmodWd/Hrtwj6NfW7p
	XdY4eFPu9Ee8fJ0euVeBZ4K3a+fuIBNmvecAQYBzmmvN4Rl/WpANl5uQErrHUE6J/zr+x2QAY9+
	qEOanECJxNAoletRvow/PQFkyO42kVOzG09eA9UGyq/7PrlxcMJ5sl5EGvZH+rZkjcUrocHKiSU
	rVx19Q0NR6Vde00jM+K+K720gcM0ttFnRwat2BgWZeie8o3ZEWqkBf+k/NpvyimQb+fpBlm3gZx
	QdndQA9hV0/cgUsejKJqK2VCitCkKTp120ah4re3KKXTJrOK9WbWwff5TAhkWLy481az4pmPQ/j
	h6yJVI=
X-Received: by 2002:a05:6000:2893:b0:430:f72e:c998 with SMTP id ffacd0b85a97d-43569bc59abmr3297525f8f.51.1768566261438;
        Fri, 16 Jan 2026 04:24:21 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356997e79asm5022416f8f.33.2026.01.16.04.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 04:24:20 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jon Hunter <jonathanh@nvidia.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	Prathamesh Shete <pshete@nvidia.com>
Subject: Re: (subset) [PATCH V2 1/2] dt-bindings: tegra: pmc: Update aotag as an optional aperture
Date: Fri, 16 Jan 2026 13:24:18 +0100
Message-ID: <176856624049.138342.8161176745846496019.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251119093729.441654-1-jonathanh@nvidia.com>
References: <20251119093729.441654-1-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Wed, 19 Nov 2025 09:37:28 +0000, Jon Hunter wrote:
> Not all Tegra SoCs or all versions of a particular Tegra SoC may include
> the AOTAG aperture. This change makes "aotag" as an optional aperture for
> Tegra234 and Tegra264.
> 
> 

Applied, thanks!

[1/2] dt-bindings: tegra: pmc: Update aotag as an optional aperture
      (no commit info)

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

