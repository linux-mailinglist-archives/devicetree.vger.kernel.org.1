Return-Path: <devicetree+bounces-35785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD34883ECE9
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 12:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E82D1F22379
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 11:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED97200C7;
	Sat, 27 Jan 2024 11:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f5VHDGY1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB84200AE
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 11:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706354999; cv=none; b=U1oWynxPMCe2i8f6WMOfbOYN1kYnrLPpzo7bLIS5ooHajqYkeS2cQ92koE/9qsxBxYoJF2vM2isYszV35EmHM6Dt+gme8EmmehKwddSO3DIebBMNL7/p+1QJV89S+EBGVIFPm0VjdEExzpK6L+9b3/5gcYmjkp04v0ixwQbY6rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706354999; c=relaxed/simple;
	bh=2vC309A8q1QlZwagjlPpO0d57cgiqhamWWBsCy4DApE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tJAURs0NnePV1UInEliu+o04taB+b+xg2qUiqW9px4tiw7YqKVs3mpjrUlBGwLPRs3oeQbZKZAvL4SNPo6lFItxNtK2rpSQCJo99elDEqQY9KNbkyxZN5Tcp/syLrzlWfop+L/FB2nywfyJF5BdXeolQKI9NREbl8b8kUt4742U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f5VHDGY1; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40ea5653f6bso21092245e9.3
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706354996; x=1706959796; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GZIIhmY4ewuA9KgJhwUUlqVtGcUt+YTA3IGIjyGp5g=;
        b=f5VHDGY1Q2EsAHdp02nCclfkMHJqYk/afKePmm9Krib/aaD7oPg+r1ZT2jQemhG3uU
         QdvGoDSc/m0Q5XKu6ENOjwzdO5aHL7cyqUhWsAs5vVpSozkW3O+WN33jUIiOkyvsE7Gp
         /TgW/iW5TBI/MwCGoTd1XNyktSEAGxzpbJO6i+q3LZl1Gg8HeiZ5T2NnjRyLP0K/dRqY
         fg4O4BmH+7QtzM8DS7/w6g/0K71ojap45Xq8+CutUUtX4PDxKXBkxkHR+yuqvWWQptjJ
         z/8CzmLtzO/HkJ0xhvjccku3eEgXb3pZzmw/NNUwx0AscZDFuwz76X8C9IOHsVgU+l9h
         p7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706354996; x=1706959796;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GZIIhmY4ewuA9KgJhwUUlqVtGcUt+YTA3IGIjyGp5g=;
        b=BhbF0hW/OaIradKGPtCQUoYZArVQsOfBoYCPz7wEIoI35nXtkSBL2dYBMAExXEVwv+
         wWtYwNKtN/pAH7dSfwClAJP6te+IwAFJqTrNWXqBJl8QuvjvbxbiLo1bbAZeQa47Q6ha
         DcwEg56VztkHXsga1Mr1gJEbygxfyen5cSvCa7y2MFnzGNtae9rg9n4X4weYDqUMWfYw
         gYtGWlCBi1LuvQ2M4Yvut7YNs8Ji/wckJSUcpuyq+ygcuNtWl20tZfce1DP4Ue6lTB7o
         AfS6oA6KRUCEKKpLGtnjjnybAriieTVyzGcR6+e3HxTJulCdfUncMJqhajtz87kBAJ0Y
         hlYg==
X-Gm-Message-State: AOJu0Ywo5E1moUMABoTJUc6Y+89x0G5QWslRTJUkpl2qT0bkmOjNPNt0
	metpCEfoJdWIozpzAu7Zfy5PnTsBb8wKPTg2uOi8Gy+EqlKnju/MmR6gdVYsP+0=
X-Google-Smtp-Source: AGHT+IGK1wNu7ZSIsgbkTjQOCpa8D/ABpMbe7tI4xca9X8OXpOP9r4Fup/x/E/gFt/JZ9Szz1a9l0A==
X-Received: by 2002:a05:600c:4f8e:b0:40e:b313:b8db with SMTP id n14-20020a05600c4f8e00b0040eb313b8dbmr1167208wmq.28.1706354996117;
        Sat, 27 Jan 2024 03:29:56 -0800 (PST)
Received: from [172.20.10.4] (82-132-215-85.dab.02.net. [82.132.215.85])
        by smtp.gmail.com with ESMTPSA id h17-20020a05600c315100b0040d62f89381sm4427724wmo.35.2024.01.27.03.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 03:29:55 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 William-tw Lin <william-tw.lin@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20231222080739.21706-1-william-tw.lin@mediatek.com>
References: <20231222080739.21706-1-william-tw.lin@mediatek.com>
Subject: Re: (subset) [PATCH v4 0/3] mtk-socinfo driver implementation
Message-Id: <170635499406.41064.12411935787824963879.b4-ty@linaro.org>
Date: Sat, 27 Jan 2024 11:29:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Fri, 22 Dec 2023 16:07:36 +0800, William-tw Lin wrote:
> v4 changes:
> dts:
> 1. remove phandle from socinfo-data for all platforms
> 
> mtk-socinfo.c:
> 1. use module_platform_driver instead of builtin_platform_driver
> 
> [...]

Applied, thanks!

[3/3] nvmem: mtk-efuse: Register MediaTek socinfo driver from efuse
      commit: 4e6102d60d88975bc65a0dde05a8ba096c450249

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


