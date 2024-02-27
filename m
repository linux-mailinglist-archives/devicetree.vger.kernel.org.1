Return-Path: <devicetree+bounces-46279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 064BA868C08
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 10:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9944D1F22E36
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 09:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF8E136645;
	Tue, 27 Feb 2024 09:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DrfpclUb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C212F134CD5
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 09:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709025522; cv=none; b=iWAJMGHop/x8tgwOCwuZJfOAnofHmocbEfeQB+eFiyNwsyajNhWLfOKENl/B3fZpglrTJDLTlFgMpzom7+12a8MBHcI1LP9g1XlMnBwXoqc6eRB8WGKd8cr9muxCtgSdEFzlY9t0DqNnIg5xTrEeFuQgoiz0nJbDvETK3r7oFck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709025522; c=relaxed/simple;
	bh=+caxhbxvXcG5btEQEz+HchYw+UK5NIuQWCABSjExhS8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jOqMQDKI5SVXKrXl6Zqd1grlkCTurD9LPxXDhHbC9c1HYQMb/qFb0LLTDKiqVcN6CF3W5gXeyfbLj++JMaIcF+ZKCwn03TiDcLq4AVxM8OASDySaxI1bFUQEpRQuljIELLs43bl9Pqmujugvk93xvdw6HTIApw8+gcNi8JsBXhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DrfpclUb; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-564647bcdbfso4101576a12.2
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 01:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709025519; x=1709630319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTxdDYxyQ3IqtlRrYxG0cMi0muAaZV+mdO2HgBPhVk4=;
        b=DrfpclUbD5IJXFN/GU5JTGVnzMh00BH7P+hNogtw/Ep6Qc2RcJ8GkdP0Li2jjt2N2h
         rcyqcgQlkt6t0UvUusHvnHjhLOyqHnC33oz6OB0cmX5mM9Utq3AeOGIQvRPQjQ4oV3sZ
         wz1ZtpJDcN24A03hnenEOBYRRVLWI5nULGuCwFiK67Hl7d8qxrHRCn2b1zsbwxsYMVqe
         THiN71AQoiR0mLKQN3Y4YavM5KyKiELJpTMViy9I17nGWAncI3Ih73Zbgjf3+OxR+6TB
         7ik7WtYPzlJ9z9a6xXC3Go+rYE4Axd0aOAMUfDlAkmC2tuwX2+Pw6ZRPydOFN8yBT4Jr
         PlWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709025519; x=1709630319;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTxdDYxyQ3IqtlRrYxG0cMi0muAaZV+mdO2HgBPhVk4=;
        b=SKWVeMfdwd7zn93KBLosBH5gbhXMuDpB7tgzx3Htt0ZnP9eu14rrbMMqSn5MP81y+T
         QZjzRRrJNg9RZJZRkJLRC+jJ9sX9NJ9l36u4hvaI1cpI/wgSp5gN0ugxuyZ4W7i8nTwT
         rdnNRXz+fQXSnhnU7ZK0mOkTl7A1z9TguUg1fh3XjAsSuB9w0QODOzafad4cge5TZv+Q
         zH01IZqYhK3cdm6pGdjd5Bg058DMgPfnJ/kfDQAicJhsNbWGGtBITNNaxZPy6+xYR4fk
         +xM9cSSf3gdSdOH798lYYzbtd5dA3ATupSxKCYKBiVA7FQW/g/F2CB9y9CosYXG2SU6v
         6oyw==
X-Forwarded-Encrypted: i=1; AJvYcCWea8xfhDmO7vhIoM5cXYOG6F9KFd1jNNLYAgX3DsVcA7KTh2pj3hDRKoqMXeZs7eIGpEoEpuHvmRhf3XYMMurE2QL3pezLLIKDLw==
X-Gm-Message-State: AOJu0YyEs6e+8ULBU4AX7oHVtvtPQIv5A/lzE/ShDSYTF60o8Z2g7SAK
	eW8diTdrADQKfNzTh3uXuMHuNjdDgrgBFQSJ+9WT4QuKqKAArISCwbFKWfY4oQQ=
X-Google-Smtp-Source: AGHT+IH5qDiaCJ1Kc19hS+XkEPETptoM/fW2uFhb8X4AvKdAgnH5cE9EdnEx4zaM+SmijwWe1GLcsw==
X-Received: by 2002:a17:906:3c05:b0:a3f:4596:c3c8 with SMTP id h5-20020a1709063c0500b00a3f4596c3c8mr6253526ejg.53.1709025518961;
        Tue, 27 Feb 2024 01:18:38 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id a11-20020a1709065f8b00b00a4395a7adecsm561154eju.165.2024.02.27.01.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 01:18:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, Christophe Kerello <christophe.kerello@foss.st.com>
Cc: linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 devicetree@vger.kernel.org
In-Reply-To: <20240226101428.37791-1-christophe.kerello@foss.st.com>
References: <20240226101428.37791-1-christophe.kerello@foss.st.com>
Subject: Re: [PATCH v3 0/5] memory: stm32-fmc2-ebi: Add MP25 FMC2 support
Message-Id: <170902551749.40155.4302792627974952211.b4-ty@linaro.org>
Date: Tue, 27 Feb 2024 10:18:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Mon, 26 Feb 2024 11:14:23 +0100, Christophe Kerello wrote:
> On MP1 SoC, RNB signal (NAND controller signal) and NWAIT signal (PSRAM
> controller signal) have been integrated together in the SoC. That means
> that the NAND controller and the PSRAM controller (if the signal is
> used) can not be used at the same time. On MP25 SoC, the 2 signals can
> be used outside the SoC, so there is no more restrictions.
> 
> MP1 SoC also embeds revision 1.1 of the FMC2 IP when MP25 SoC embeds
> revision 2.0 of the FMC2 IP.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: memory-controller: st,stm32: add MP25 support
      https://git.kernel.org/krzk/linux-mem-ctrl/c/97dcd1ef76412d0f25d2d50215565fd4d9ef91db
[2/5] memory: stm32-fmc2-ebi: check regmap_read return value
      https://git.kernel.org/krzk/linux-mem-ctrl/c/722463f73bcf65a8c818752a38c14ee672c77da1
[3/5] memory: stm32-fmc2-ebi: add MP25 support
      https://git.kernel.org/krzk/linux-mem-ctrl/c/2ff761ff29f6e2d0e616b21af3e054dac1f2c5f4
[4/5] memory: stm32-fmc2-ebi: add MP25 RIF support
      https://git.kernel.org/krzk/linux-mem-ctrl/c/cc7d5cf8021983a736f9d963dda2dd45de02b395
[5/5] memory: stm32-fmc2-ebi: keep power domain on
      https://git.kernel.org/krzk/linux-mem-ctrl/c/e46076906722ee6f9e7fd5abad7f909cd11a26af

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


