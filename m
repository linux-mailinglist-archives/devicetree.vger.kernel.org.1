Return-Path: <devicetree+bounces-41199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21996852B9A
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 823DEB240A0
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA1A0224F9;
	Tue, 13 Feb 2024 08:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QthXsTwt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0493B21A0D
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707814029; cv=none; b=ApNe/ChZ5Y6D7w0TSc/RSQRbH7D3krb8ux8oFiZ6NUdxCfIh9/JiQbLpNrzPfwKsT74wf+xZFV4ZAj+Pz8hakHPuY8mfJSv5Kjc0AUMCqduACSgOfyyBmQZkkdVQfNvvwzMfk/MOr9e9XXj9wbhR6Eh1TFJ8INFx0NUI/H0621Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707814029; c=relaxed/simple;
	bh=feHR1tLwybhlF1V/LdPQ2c9nnARvJh14IDRqudFggak=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gk65nwVb9IMhP5KvteC6rfN23bCZItDpqqqaklx/rajFyl0ZSqP2krzfzg8r6rDiXkZRZidLYZ8rc1qRGQVVM4R3pkM28TKYqyoAbuT13iq6e46mGn3JHl2kv/zJLkMOJ8IIJpG/+kWiQzSifQS7ioi/l3tsjMVPIgKIhzW4ssM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QthXsTwt; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3392b045e0aso2784753f8f.2
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707814026; x=1708418826; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+bMuvH0iAd1PF1SqewdYWpyy5Y0tdOMX7cQXxUHvDxE=;
        b=QthXsTwtQafPsRi3iKnw5qeo6PGq8MQs8UFIFOzMUeJw3zLrBp+EYNBU0Fjwo44J5Y
         Z45oH7LgH2R83V6Tf4YLX07aH2pc+44/H6VWLWcCwzZmuimDVyFSZ8UqMvIYHxNZqed5
         S78F79iD/XFJOUxZnD4DH3ux+LM3qTWnP5KpTQ+Dzg7RICopwDON9U0qmf/qnTghhT+0
         Ny+sl3jglAGgPSo5KOyEI/AI7gy0frfG3SBX3scAGSl9WnJUytpzrHWDrPg1GiGSJoM6
         eRUIsyalxdBRSU3wRIt7uvS+VPHiLCaolI4x6iVwEe1EqDyHaaEvUyuoPxnA/qbKv+/s
         2TKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707814026; x=1708418826;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+bMuvH0iAd1PF1SqewdYWpyy5Y0tdOMX7cQXxUHvDxE=;
        b=bqSaDCdWmsp+ec//W7ozWXy/EX796g3IsmYR1zshYU33Zd7i62eUVI3IAcdHOlos3K
         Onql+3PwfhIMhXTXjil9iqriEyCdmgBl3NjtrE8DWBRPY0MDxFOLeGyQqv2Aq7ohOps7
         ZDr9RiV8rm/tJfU5UMJtyYoWaqHoZHnSmLhM1ZtX1LwIjLLmsx6W/uGiqkFOMZzI11Rk
         JLG90x7I6rDEIJQamcJMPji04OZL3jX3ofHEXlZxL4GGZwtO15fJXymUDTh1aKQqLjcv
         BE+j5vAcedlWGKyBNaOvBF5LaiClwtFXt74jg31orcnHX+IwNryzEXVLCo6UjfnIEl62
         BvbA==
X-Forwarded-Encrypted: i=1; AJvYcCVXg/GowQcV6lmlqb2QHcrBmWoBOPTlfdumDOn54sPyXk1wbWfeic3xHHR/P27kuXP/0MZI9DWEqriTyRML9tatsg2HvDjNmiHnEQ==
X-Gm-Message-State: AOJu0YwHdVV0Qt+TPZnYZuue2Gb7LYVT3zMdWBFm7Ns0jvFQbVeoH6aW
	lCi48uuXBVFazPfkr3JjGqfodCc2pcLpTRNpNvs5o06OFVxmMRbJMkrb86KNNAs=
X-Google-Smtp-Source: AGHT+IHvZXD6aTIXgxH0gj/o6SMcypm6Vv7aNNwbZen+YjTIa0tXzmaj5smryIRlTZy31rQVzQ3gGQ==
X-Received: by 2002:adf:e848:0:b0:33c:d9fb:2277 with SMTP id d8-20020adfe848000000b0033cd9fb2277mr547252wrn.40.1707814026377;
        Tue, 13 Feb 2024 00:47:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXC1qJ7tZeYGV3VCxAPxWDpzfUgIzUvslWupu8cLCnp7RwIrBfwoDSzMKdhtqVIC5Lz+SjPJ/OBBTfCvWbIXfPWLY9Cv03a5bz85A7BxkXkF6qZDhitI/8rSX87ZIVoHC6RLEe4EVKA4TuxkswMKn7/g4X0zljBeHgL97vVvp6uu9/1px+7uK489j8KJGw0bBvwvuHR8DZ+tY6oApdCKMQpRqYT33/2lV66/k9s8KAXFCK2ayPWAYIIpM4oijGt2P62Y5BZInv/Lo9EuLpVRdS3C7tONGSUpUN3Ma7IB9X2Qam4Kw6ECH/itTPkgo2FWPdXy+mFCCXQCkT5JLE52A13q8e0HkgLHxIKI6KKhOmv0xANVo6G8KZUEwr1d8FGmikPTqlrdmPoS5Xr0iGiABs1qFrOpXSShhIa8RfShXymK41Au4JE5ksD89iWNQzQEeP90ZfW
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y8-20020a5d4708000000b0033b507b0abdsm8888707wrq.32.2024.02.13.00.47.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 00:47:05 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240208105252.128940-1-krzysztof.kozlowski@linaro.org>
References: <20240208105252.128940-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: t7: minor whitespace cleanup
Message-Id: <170781402554.1503948.12321560831974589557.b4-ty@linaro.org>
Date: Tue, 13 Feb 2024 09:47:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Thu, 08 Feb 2024 11:52:52 +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before '{'
> character.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm64-dt)

[1/1] arm64: dts: amlogic: t7: minor whitespace cleanup
      https://git.kernel.org/amlogic/c/9225771676d14673acd225a48eaa49ef3998af41

These changes has been applied on the intermediate git tree [1].

The v6.9/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


