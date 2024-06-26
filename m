Return-Path: <devicetree+bounces-80010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DC39179C3
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 09:32:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C82571C2288F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 07:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594971598E3;
	Wed, 26 Jun 2024 07:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wrwyr0L1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E841FBB
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719387157; cv=none; b=TI+6SVtQ4b9Aptgt8NNIGXtCflnKHeCgRu/H4CUZSShpSZPqKJQyr6EIlbuzr3bTfNIkHFQFMhSSl3Y4+zMvEQT6a0ZPCmdl9oP011QyBGOIUu3jcWGDl2nn1X1NyshW9QRQeRiyKbCs+SF6/PeNen0oZTXZsIZVW+78QhsZ6Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719387157; c=relaxed/simple;
	bh=7l4Uime447ech62qmw3e1+CoLS03F5S+sN0ntrzvEbs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=J6zkwyz3o1oVeKCs1IBUgfrUvZyzbuKQebzsnet0OSO+wwXPXUfgsCKj+9znZmP2qX52Io1sxyrhilD4GNevC0f7XWhcJSBb7TbIKXIvNqPPOGGSXidtidaZs6sFkqI3Iq8J9vjpZxIBdhaNnRlh0SKEkDqdEqDX+bflhxb8peQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wrwyr0L1; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-362f62ae4c5so146764f8f.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 00:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719387154; x=1719991954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWdwFGLisZTjIZj5f6mqYa4O5wFiRQ0vmR5lx8cA8wI=;
        b=wrwyr0L1MGsVwH6dxLRNAqyCP/Fva8xMQbMoHupAcFVJ99AYr0N90Me0NaGaC+pDAN
         tbj7PobHmcwZy+UTYYX/dx04PyDWTR4kogSIC7gD0Nu2omgLLiVz7nNnKeShUaXpoSeV
         a0zfIgwxWBcHkW6/VU1i2wrgiZMVc+oeXWOwi02zGsQ2843tuc3oj/jcDlcdxcx+/1rs
         gSyYcmK2PqILa4CL3+AThOurdrmby1KAe2PRqhmRoxN+T/nej1e21fJpNp9emsl6G3G8
         WSGlY9jrHMHcMOdFPmelAj7LBBCrBXwt4qPiQyzftOYC0cFnzDozR4/vU7QL6WLuPbXZ
         01oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719387154; x=1719991954;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EWdwFGLisZTjIZj5f6mqYa4O5wFiRQ0vmR5lx8cA8wI=;
        b=WYg9OhH9cpsYOXeO9JwtVBkVCRuO8eXJf7nLTglzUPAuM0TeucWIWXvf6NcpYu/uuz
         fzjX4fsLrSbnFa9yeTRXI+rwXzvDUGcIZREKvSviDFCAROOhC/r8lCmPTEQdYSVqeV+3
         GqCS+PGoDiAGTkdWWFppWQYW7MY8J84fuCRfqqJJCoX9ZEIu5SRGj+5mMR2DFfN7buFO
         cgw7/DP+PYBzcbiWPo7DCz+DD50vfuQYwkGorfjI3LeDP1VUHMv4ppZM03sfEModXUym
         O9yLZ+/6NF8rvohBWp1+i2EQWakmkU2BmGyQxKIiwuzMhbSpY9aN7AGWdU/jZfwdhEkT
         829g==
X-Forwarded-Encrypted: i=1; AJvYcCXgdNpezqIcm3bYEBGm7ss0T8eHpUXZFtehWwNu4AS3s8KGWtEpCUuI5byMdk/6h1X8pyYw3RpKgM/HRFJrBQlHrTgk35Nl398tzQ==
X-Gm-Message-State: AOJu0YzctuY5gDb9dEPS0xP7qDLj7GZGur2JvbFU7tDvxrzqHQpq86jR
	DCRUWmOYiEgfKjNYYN8ybBAu7DQxK4plt9Rxy5zIpGpJJ3Mg7jsgAuhYjwamHig=
X-Google-Smtp-Source: AGHT+IGJuKO4xRdWJJ6w9hrgqcoyAjnmhy1mlVONlk9q3lHadUvykbc5FStD6K1tQLlvYfQE0ICfmg==
X-Received: by 2002:adf:e410:0:b0:366:ed80:d054 with SMTP id ffacd0b85a97d-366ed80d15bmr7224161f8f.10.1719387153638;
        Wed, 26 Jun 2024 00:32:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a8c8f07sm14962150f8f.110.2024.06.26.00.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 00:32:33 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240625111845.928192-1-jbrunet@baylibre.com>
References: <20240625111845.928192-1-jbrunet@baylibre.com>
Subject: Re: [PATCH] arm64: dts: amlogic: sm1: fix spdif compatibles
Message-Id: <171938715287.1644768.879633042309393465.b4-ty@linaro.org>
Date: Wed, 26 Jun 2024 09:32:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Tue, 25 Jun 2024 13:18:43 +0200, Jerome Brunet wrote:
> The spdif input and output of g12 and sm1 are compatible but
> sm1 should use the related compatible since it exists.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/1] arm64: dts: amlogic: sm1: fix spdif compatibles
      https://git.kernel.org/amlogic/c/b0aba467c329a89e8b325eda0cf60776958353fe

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


