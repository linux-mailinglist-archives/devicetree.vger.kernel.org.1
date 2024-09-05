Return-Path: <devicetree+bounces-100431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC5E96D95D
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 14:51:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC0011F299FC
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 12:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A510F19DF52;
	Thu,  5 Sep 2024 12:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pcvMAPxn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9954919DF5E
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 12:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725540613; cv=none; b=kf61zMARuUE5TdfmFsE0ROPJjLE/JjNwZjcapI/Ss5l6QSzBFIT+JZa394qJb6YrnWXkQ389T9Xkdq7eEhgzbK6v4gh9tCYb8dV0EONklqqm8s0fxovXg+UfcQNd0UPL4QrbeblbszQcstOYtbfLczEAcnZDaI7qqP19mdUFdMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725540613; c=relaxed/simple;
	bh=Yj4aGH7NSYA0O4Tv84j33AgTdWUk2CMVhAQ5aDAekls=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=B0Pwk7MqoXUPlHiIAQhWbSWFcvJ4qOGJSlE/1PeKbOvVH8K4IOsNst8wXU0jzWBO4ddFYqD3ToVFI69/78v4nGqEyX3WQdyOkqWGTGZKpVDz1JMWUr9uB9LsIFWgFFkSNhcepTlLoa4RTLNtrPdAi0tjMPuGv3ViIfsoa+uzhug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pcvMAPxn; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-374c4c6cb29so614122f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 05:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725540610; x=1726145410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xnMGuLxKfLcoYb1PUszqIgntyujKQFWBKYM3hRMDzrg=;
        b=pcvMAPxnfMLN9UmJ2RN1b8qHnytGVoe2TAxwIlgS+EEI2iD9sqkWYEhyTmxSuhUvT9
         WYNW4kGCO5nbuIA1Kq9oaMXP4e+1TLElox9maHvxogjuFnE4DKK6ysThTU8VVtK3eLkH
         3fKasU/E0n89TTTD6+LqfX2mG0W/EkxKALUI/5l1zLXlEYFMrJh7GYrfars4ki5iiUtt
         g9g2i8ENMR/a/u0EhZJcbpaHx4QlJM4o41y9Et5ZF95w76dYU0ZeXPMgQFk9vGfvIP/Q
         So2nZDoHX4mL9hoT9XOaKmwxW+zxSPqaJ+5r2uAEoReMbfZu8sDeMtJP5uE8jvzGHQ6u
         vSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725540610; x=1726145410;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xnMGuLxKfLcoYb1PUszqIgntyujKQFWBKYM3hRMDzrg=;
        b=SgltdI0bQU93JXIMzZ6V/hYfCwvIgkKQbMOM7leHg9LfCWxYBrHukLLzfKXcNChCBa
         7UDxmY8wh6/0BDVjgmn0yyBB5PLJPG2zJGCmGgTg6VcJ+SXWQzAqXtGZahs9o3kokwo7
         YGbYMR7pltwXOyFgGdHa+n5+r6lZ6cfgfS3p31vscvlvnx6iYVDQbAQjCUKdMjiC8JXP
         zgEmJtdHr7Gpg9+ka8A5J6bxLdibJQsHnJ60Z/ohNwDGJf5O9wUvu6IRRb4EQohjiRS5
         k7KOTTgnmFBUViDc7j4HPniI5dmLSlO4R6zD/YUW8YUOfol0Tq1EJsLgkQRlZbktw19h
         4ymA==
X-Gm-Message-State: AOJu0YzJKwtJhXngNjrZF7/uXh+zliOSubIrJplEBh2D2i/kPVUemvBX
	L9+r+K3qmInvtihce+eiSvSNW7TX+xSbIL6rZf7wijYovXUC81o9IdXF0xtGEuY=
X-Google-Smtp-Source: AGHT+IHFWyn+bCI9Bu+LILGhtUkFhExgaYW6lXVst2PA4BGmTHaiO/LLeFnPRl5bfeVzz4YI2qUZtA==
X-Received: by 2002:a05:6000:1f08:b0:368:7f53:6b57 with SMTP id ffacd0b85a97d-3749b544b2bmr18684509f8f.18.1725540609740;
        Thu, 05 Sep 2024 05:50:09 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bbe79f545sm200862825e9.2.2024.09.05.05.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 05:50:09 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Christian Hewitt <christianshewitt@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240905-topic-amlogic-upstream-gxlx-drop-iio-compat-v2-1-7a690eb95bc2@linaro.org>
References: <20240905-topic-amlogic-upstream-gxlx-drop-iio-compat-v2-1-7a690eb95bc2@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: amlogic: gxlx-s905l-p271: drop saradc
 gxlx compatible
Message-Id: <172554060875.3272060.14995227202857291504.b4-ty@linaro.org>
Date: Thu, 05 Sep 2024 14:50:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

Hi,

On Thu, 05 Sep 2024 09:02:10 +0200, Neil Armstrong wrote:
> Drop the undocumented amlogic,meson-gxlx-saradc compatible but dropping the compatible
> override, and fix the following DTBs check:
> /soc/bus@c1100000/adc@8680: failed to match any schema with compatible: ['amlogic,meson-gxlx-saradc', 'amlogic,meson-saradc']
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.12/arm64-dt)

[1/1] arm64: dts: amlogic: gxlx-s905l-p271: drop saradc gxlx compatible
      https://git.kernel.org/amlogic/c/e202307b75660aad42fafbb0d3df2c9dadf019ec

These changes has been applied on the intermediate git tree [1].

The v6.12/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


