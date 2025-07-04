Return-Path: <devicetree+bounces-193118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7C4AF9666
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 17:11:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB60E1894493
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 15:10:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCEB72BEC3A;
	Fri,  4 Jul 2025 15:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zWXhVUi+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67962877D5
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 15:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751641730; cv=none; b=mr6/wx5vf4WncreLUit9JovJlToLZn8Zi+a1HZFIrQThFRpVdTwbJqnZP8znKwuXPbKw4qexpWG1U4s2gVQW0v+yna+5jaEjz7HrHQlw8J6z3wZnqwGQZNDqOYNcxqe4wc6Vx/p+cgKgeJjSn3QMU9NALf7SoK7s/mEw1iPnliA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751641730; c=relaxed/simple;
	bh=q/dUdo5NAO3E5/eRdbn+WVf7dbNkr9uKXLcJPljs+4w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=pLhuROg2Uu8QBP3J7MjpB1Wrt2HFNLFbK7Qe6gLYg22NDCpYG1BkzCJ/temIPev32TKIcWz52SqZ5bRdfhh5pES5L/BHEh5cSEFeQbzO/5MdydtyBYc49dk0kkGuJKaMfB0bePj6wUxg0hso4Z4EFkXrBzyYTbib5LIyZJkRfZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zWXhVUi+; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-451d6ade159so9157065e9.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751641727; x=1752246527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GclhZB+I+gWjc1PWB+Tmja4z4M9XT8ugZhSsO+bEP7o=;
        b=zWXhVUi+hnoJXLeHfQ+ZlLjgk+y5rd9JhXH9llEAdBiB+ad6v+nJOR/vVImX5g5I/c
         GOXYLz6soiJ2sU2Nlk9Abjmno/r1sb0U8t0KgwCyFvnST0nbTiwR8+eoSRvqFXZzy4L5
         O5HmadlOz/ecKQqKkcySI6OVGG7sPoofF79FULbEZzXI8ZVWhbZgGRMKDf9TFvAHRGb8
         piSeV8f7lEJ/kZ+YcbrRSa025sCoOcuTpjLWYw+HCs0QrA5u1l0TJ2momN8rSJE+tiaD
         5yEMjsQ/UU8eFIV5bSkbY7cvAZ67rgny9yrvN9gOO0TekpPfyei3o1OuN2hNUNiuZMZ3
         ykgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751641727; x=1752246527;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GclhZB+I+gWjc1PWB+Tmja4z4M9XT8ugZhSsO+bEP7o=;
        b=Hmm3EtFYDrtfNf6W+UNBAK29fIPKN43JlRsPc4qAud25cP2bfp1KLFlSZNVtSFaW0h
         RFaIk5Z6EVnIVypkvS6sarqdMvZSWOAZiLl9yNi5IEsju30d0/O7sKHFSeYXknol97Ct
         BxdZcJYP2XevF3kFY43IeEeoNCRNS06gthvuGvGcKND6D302qGgAGuA8KeU6raFUuFKk
         KwjyB/Eotkwpovx6BVd/WuJqyK2iwoAE8IKv8pVlyRAuCzUuDzgEGIX/gSGLdnfukg9Q
         YF3QN4tzbkdbtOz331Ao1/unbj1KNZPNDEpE1eYOWbSijeE198Omxh9RJC9g1HyV56BZ
         5/6A==
X-Gm-Message-State: AOJu0YwbTJ6tT+Mh99+5KdsPOosfF8PdIjbO8wfNlY31rIatW8ecRLhm
	GRIlwd84tLBfFLIAPGmOrdKtxJ+hRiIfWrEyBycOe2iMFDBx1+9cfsy6yRyopnN6BSU=
X-Gm-Gg: ASbGncvtw/6kQIfrYAscoEc1ve0y7u78F8pq71G4cpaUOBrJ7Ae+Sgc0yPfU7pq1ma2
	DJRqhDdei1ImQ1I35WG/+jS9TtI5BjISxxLRWROmZ0HCkqMZ0tfKEGQh6N99luKlXhu6hNmeUjk
	D+qUONbYEkRgXoLXlFkccYkbSWIaXref0ao/f72epU2PNgIVWbIp3Z8GAos5jy8Wc8KvIaWqP0B
	hOxd9/davEWDeofdf3myNbMgBDuYg3iOgDBuR45n49NO7YtabP1iQ1vVRD09aOMHOPrTeZwRrSw
	M45fe4QY4AMzMf+wBGPZ63hBlydcWN/v4X4lNH/JjdR6JfmpitrmDP0XrcRKSFK1/bVuK85sjJK
	k/bfy19w=
X-Google-Smtp-Source: AGHT+IE7H9vRYfC7d4kJ+PSNtqfq+5KdOErVu7jZId1urOwLE5iqgduTgGoQI9kj0MA3An7JAcpEWQ==
X-Received: by 2002:a05:6000:2910:b0:3a4:ec23:dba7 with SMTP id ffacd0b85a97d-3b497038e99mr2076301f8f.31.1751641727135;
        Fri, 04 Jul 2025 08:08:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a9bead7csm57231595e9.39.2025.07.04.08.08.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 08:08:46 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250613-ugoos-am3-v3-0-f8a43e6bbfdb@posteo.net>
References: <20250613-ugoos-am3-v3-0-f8a43e6bbfdb@posteo.net>
Subject: Re: [PATCH v3 0/2] arm64: Device Tree for Ugoos AM3 board
Message-Id: <175164172639.2841706.12481135333211530140.b4-ty@linaro.org>
Date: Fri, 04 Jul 2025 17:08:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2

Hi,

On Fri, 13 Jun 2025 15:39:12 +0200, J. Neuschäfer wrote:
> This patchset adds a device tree for Ugoos AM3, an Android TV box from
> 2018. Most hardware functionality has been tested, as noted in patch 2/2.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.17/arm64-dt)

[1/2] dt-bindings: arm: amlogic: Add Ugoos AM3
      https://git.kernel.org/amlogic/c/ef491ab7cbf6a460476a41d8b5dbd8a4394282ba
[2/2] arm64: dts: amlogic: Add Ugoos AM3
      https://git.kernel.org/amlogic/c/b33f8cfb2b4d91c4bb7c16b354138cc205befed2

These changes has been applied on the intermediate git tree [1].

The v6.17/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


