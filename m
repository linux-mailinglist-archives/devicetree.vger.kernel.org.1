Return-Path: <devicetree+bounces-229497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 94234BF83E8
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 21:27:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5A0C54E21F9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 19:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B96351FB8;
	Tue, 21 Oct 2025 19:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RjfCV8K2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6ABBCA6F
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 19:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761074830; cv=none; b=MABFE4AesoXQPPw/sDgq61HbZV6rJnHTOLr7mqCp/DtqbxzrDZzf6LAO3YpHr2MQ9r0CH0swgNQj7Cmqarky3gTyLS/8PHpFE18LyNv63KQ0TupaZXp79cMQYKh9GCVFgoKVQeCM2bZuNKVqYquW201SyKjUg2Ml+Ae4UbLSfqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761074830; c=relaxed/simple;
	bh=H7mmLnyjS4IJj8j/5Cfb777523++/Yd9MxdaxBFMvi4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GBVQZLsT5CwLbhSb74VhO5osRYGZw7SCr8TpovuyVkGU/+p8VZ983lR0uSrkkDSF6oGs3AIR9yvTC0ykTy57NJ6DlX/qSbXEsZjtXV7BXgGjbQFDXMCMWnkeeAH9zwmK8kPMy1vo7xZtbC0PzLkDg/IWvnNMpCz3lsH3s/2UJ2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RjfCV8K2; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-427054641f0so897311f8f.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761074827; x=1761679627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ibZxuBONFvP6tEfHo6ray/hwM+JhW2wvVnRgxqq2YE=;
        b=RjfCV8K29Df2WMDDautePGhbt4yPIGXXLemqb9cmy/qDY+kqtUaInAUH8IXOAVwNM8
         4vVC+BfmXn243+566kVfTaanfMYJR/4icPDIi9JbUzHP51+LWdHAlOkZARxGx8Ow1Lwe
         aNVUMdhDaYwxVynnhUegwo2e6k0xRK/rtTCQbUUNgb/RyPoSJHBttg96nrt2GeEBFiwd
         TGFV+QtblNI2Uq83wHfYmWFx1slMcXUFHKUP8P6n1DS+yzg+xZOOEf+I/DbWu/q2N8d2
         ei7n9iL6vZYQTB53u6lnrhjTOk2AimvAMxYH9+IVAGsNlI65to1b1ssO1HtShwo0VRRn
         HCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761074827; x=1761679627;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ibZxuBONFvP6tEfHo6ray/hwM+JhW2wvVnRgxqq2YE=;
        b=p/jxejXeb6/3dxfcFtQXIQ3ql+JEJjA6RJnK8wSILRwZdmFG5aGWHMMX0pknWdoo/y
         FaQgwcJsurFObhhlv0jjNgjyFpS9JArKvQQiQI7HKQit1eoF6/uVmwhnV7Rg0bkOxdP3
         Xwb6s09aBxXGCcpk4RrvrX2tToHQ8oQ6LkoscK0CPo+VvbZ+i7H4up9oTc7Y6w0vIfjL
         M3Fz/Bt+nIW4NiKZm9A5o4HfBYC/eaw3iuIKXAiZVMOuACO0wch0jDqaCzbsKYVk8Vx1
         x2RCYZX/VWXWzgBEsQlTi7WTM1QCKim4qu4enSHpA21xT97B6Gl3GRJwcL2Q5TSXV0Sq
         usUw==
X-Forwarded-Encrypted: i=1; AJvYcCUVFpQEDoy3SjCycJSL0UBxo1NnofcslcXDH/T0A+4NG2FE9Xe8pQVfaEDLUArXpWZHVyK66GYyQRV1@vger.kernel.org
X-Gm-Message-State: AOJu0YzNubOhOT7uRV5MhkLKmDtBTeXuvLeuC294yGkXtz/UfNBXursg
	vayfVcHLtfdXs8+GSZwY5mz9nMFQWM8/T667jIxiaFZmfi30YJps1YmY7a1S7cEUJdo=
X-Gm-Gg: ASbGnctTAYeY96+vFSdfmyli/nv1sIjy7j7LLtdSCegd+3VHWqRJi8kKoUSMhxkOTWq
	Uimg3PnLEfuLNs6x0a0K8WJtZJguezsCOIq8eLYG2qAdB9k+IH6Q0xCygu8XVz8OPcTTmEtqAfe
	ODN8OFuHz+Y2Tu9Nwjio8P2zr6p2Ou4YVUwG58LNqejXi/PIX1PyyOMnMn3MlTh+uuxzE5MJj7U
	HYbeWvGwlUYN4v9khVY1FdDsxZ9d5N7S4zV0TBW5hZkIKlmbZOBnnnzAGd+vuSVqWlIWv3ZvSJd
	xm6BAnVJXXcrep0k2hJSCRmn7KaiVsfbxt/81nHXeuIfRZ3JI8fC4eaN/LELx1/n4PeqflkpqVV
	YIjbnvRpLp575Tvw6CY8FlqmwuQ8GjofCac7bHTR6UcpLJtmyqCo4XS6JHDQrGh8ik/Mo+8fncq
	g/og8D9EAkFcdoAP3SScEAnfO3Nj0=
X-Google-Smtp-Source: AGHT+IFxRo7mh1kCIiwBlgFSzvscGIsov6AOIfRYcDiKlEW/2CZnKxnmXX+fOq8J1wvQblUD1sFg2A==
X-Received: by 2002:a05:600c:3106:b0:46e:31a1:c07d with SMTP id 5b1f17b1804b1-474942605damr21467615e9.2.1761074826918;
        Tue, 21 Oct 2025 12:27:06 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c42b48c9sm7839115e9.15.2025.10.21.12.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 12:27:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 kernel-team@android.com
In-Reply-To: <20251013-automatic-clocks-v1-1-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
 <20251013-automatic-clocks-v1-1-72851ee00300@linaro.org>
Subject: Re: (subset) [PATCH 1/9] dt-bindings: soc: samsung: exynos-sysreg:
 add gs101 hsi0 and misc compatibles
Message-Id: <176107482513.33931.5052547244710731509.b4-ty@linaro.org>
Date: Tue, 21 Oct 2025 21:27:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Mon, 13 Oct 2025 21:51:30 +0100, Peter Griffin wrote:
> Add dedicated compatibles for gs101 hsi0 and misc sysreg controllers to the
> documentation.
> 
> 

Applied, thanks!

[1/9] dt-bindings: soc: samsung: exynos-sysreg: add gs101 hsi0 and misc compatibles
      https://git.kernel.org/krzk/linux/c/33fd5a7103959113ea3b60389a7582ec0cc2f15e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


