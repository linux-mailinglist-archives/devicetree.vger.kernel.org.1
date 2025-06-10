Return-Path: <devicetree+bounces-184104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9DAAD302B
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:26:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7FFB3B78DD
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7508A2836B4;
	Tue, 10 Jun 2025 08:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BYvdkSqu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEB627A906
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749543815; cv=none; b=Z7ojD900wWn/uTl7osu5Cg77UxKk/SBtOfCF//d/4l3wU3TW1DYWl6e3n3NwcEk10pWjjCw614/Vzghgy/Qo8CaGKNVaTjWIysrpRpbspOxk6bKNpeeW4qBsCQdYYVGCekOC3Kb50kXx6hXJUMcapbxsZYU0sFCW6qNOj2UEdUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749543815; c=relaxed/simple;
	bh=SL6XPe/Yo30TKebDlMiJ2hgSO2qPUQEt3jOi+MlzI3Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rdmOdzHaxqo5om1WzuFT3HDozSjqUxGWsIBMqbwe9DPYdPgm+a1I1g+PoK79WpsgwxrvwN0zfeJ7T2Y4gzi0mfgoFFrosUkVf1G1mh3S5vW4vWkT/O2rHMmf4q4cyDxRFfqwnVHlKkxNFDL8ouHktocWHFbvMXnibHCXqzLYteY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BYvdkSqu; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a4e57d018cso780391f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749543812; x=1750148612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OZ40nSv2sa867OYuo6sDTtT6TDdmiOb3whCWy8cFeR0=;
        b=BYvdkSquk9AZQSDmORGUGURonA7QI9Su6HjbhlFC336kZz41yR2qj/pyFUJanoKP3o
         ZpH+GqA6mgGkHmU7uVIhA+/ksTtPzp2wKQc8K1bvYz6RH/xegeaeI5KOjEbRC4D28xtB
         KJueV8RSGRQ7s48Bqy0gKqoaSVCc3l/DCE38Dl6FlxlNrjWHzpJFIo0VOyZnksH1wzRX
         kTtyd31nUGc62N1MX+fReU4uQta5bRZEpvgOB+H5xLTBkUkNf1+FCuORxQrhF3TXyifU
         5cONS0BU0pL5DbYwJvXy2Ypm4Dx0gLMjoPd2M0ki25vwNOWZpuTzMvyvSWNDkQDUmjQV
         ZTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749543812; x=1750148612;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZ40nSv2sa867OYuo6sDTtT6TDdmiOb3whCWy8cFeR0=;
        b=EQxzJdIBglqL0TW7TLEYmAbgQxRa7D7DtJ5K+kb4q9axGRwdUqXspuuEBMOYzAnmA6
         vIhWs7RetElv/5/tbw0VQaQaiCkpIE8D2MyuiD0XUCtmM52mFl9yAGjX9Xw9mCItvXaN
         m7lX57PhQffBA6qqjIG712hesK/o9UiqHVBn4IUYP1lDMZUbLROGdoBrUg6MUFKsrHvt
         FeQbQlu/YEOlisjz3dqjsxEu8IXleznHqNu/Zd5JAoNwR9t0IBhdvHmjbrNuPCjmIve9
         VWSGF2xYERyJjXz1cLwDFMGRUHmVdqxNyxxcNHUl+JRIm67z8BGaKOhjIZzNOjlWfFnM
         XWVg==
X-Forwarded-Encrypted: i=1; AJvYcCXqfPitOpJoC8qtL6bvxPHlrZe1WFjAciKjBFOzVZssRVCzMqqyu/RLCBSrgyxdY9rYtehimCC9BsCT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa+gHX0jovNAgd6F8YWnAvsVA3YBtJggxRNVAJH5J8tEmZ75u2
	kA/nw8TZaYBNzCqKR1nROX7zizPzBEGUS5fhcgHACEdHZbs27M1GbHBQepUAk/v88tg=
X-Gm-Gg: ASbGncvaQc8iIEk9Z3XSNAt6DPPvG3Qo97HOgYKLZ8qCYnrJoJMiFb/aFF3ePwhce+u
	BsQOFGs2BS6rtwE9OdcwOL6fXWHp6K5VRuzwLgnMAyDELh0/h7HVA/GWxqgj9F2KRK6U+r27QTq
	y/JjU9ObgPecxq4okj3OTpjlnl4ViTI69/2fLzjI3JigDfNhfgsr1cPRncN7sO9bhhqmL9eWd8Q
	K2J5/D64iWEFC6Niq0OUStacjDSVNk7sIMOGJtwRUPgEkKZ0fq5UfN3gTbwg/2xNL9DEwTnqv9n
	q/FX/eCmzO5XalnhdLvp9K0NhZjgVm6jkDvvH50ZEVMZ+gTSvInL+tDVzW0x98zbc2uS1wS1lnG
	5PuwbIA==
X-Google-Smtp-Source: AGHT+IFT30y+SRpOPyTJLVOb3Pput91espNfxr6yB+Z1bKms3iz5xi8X0GSEoKM0vX/+7UuhNP+UqQ==
X-Received: by 2002:a05:600c:1f16:b0:441:b397:e324 with SMTP id 5b1f17b1804b1-4529abf70bfmr47500895e9.9.1749543811934;
        Tue, 10 Jun 2025 01:23:31 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4526e155ce7sm131726125e9.10.2025.06.10.01.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:23:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>
Cc: imx@lists.linux.dev
In-Reply-To: <20250602141246.941448-1-Frank.Li@nxp.com>
References: <20250602141246.941448-1-Frank.Li@nxp.com>
Subject: Re: [PATCH 1/1] dt-bindings: memory-controllers: convert
 arm,pl172.txt to yaml format
Message-Id: <174954381064.117761.3103173099824775147.b4-ty@linaro.org>
Date: Tue, 10 Jun 2025 10:23:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 02 Jun 2025 10:12:45 -0400, Frank Li wrote:
> Convert arm,pl172.txt to yaml format.
> Additional changes:
> - add mpmc,read-enable-delay property.
> - allow gpio@addr and sram@addr as child node to match existed dts.
> 
> 

Applied, thanks!

[1/1] dt-bindings: memory-controllers: convert arm,pl172.txt to yaml format
      https://git.kernel.org/krzk/linux-mem-ctrl/c/04de50163466a0d11b24f6bb418889f3cc219dda

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


