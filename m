Return-Path: <devicetree+bounces-156070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF99A590F9
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 11:21:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A71387A4CCC
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9351224234;
	Mon, 10 Mar 2025 10:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Vz5X2esZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D722577E
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 10:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741602052; cv=none; b=jhztWq4wsm6Yzijxpzih/kMmhIcY0oLaiiwK1gsAxPf2Kt4P3SQXwDtTi0kZvqX8k1YmM+fzXJG+28fjPM5MLU4aPKR6gURB1zMZssjf5/VbGLbiSgW02wy6hxfSLGy+ng5ofBtLzumaguzxQqwzMfERb2ovy+fzgepecaoodCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741602052; c=relaxed/simple;
	bh=JL/iJrs0I5b9N2nPbKpSW6ls+LbJc9PGy7+bMaAhX1c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=krVXghzp3bquQiBjkrxfAEYVYEEe8971feo2Z0znkecF/T+Q7UeW7ixXrOxm4FKudnd5w77xULxIFCOe8LVLJgPii+CdJJ2e03dWskKu66Oq27zkJPZFsojBXIbabFXqrfNQjuci4cYV8FTdBEQs/VNNMDlX6Wol+lOpLL3Qf9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Vz5X2esZ; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-391342fc0b5so3192408f8f.3
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 03:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741602049; x=1742206849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/apE3VuG/fufAOpi2xtHrpN+LPCwiTLqat5jnVcZLFc=;
        b=Vz5X2esZCUrYGhNvwmZms3LEf5m2fIIeP8Qo4q6XsYGl7HrRHu5lq5wZ/dYrtbeyFf
         +e3E3DU7L9sMiDZjtKg750KT2ni/jqa96gskQn3XzM54acNmqEixqTPsO7SG21OrzIU8
         l9NKsvIyvj6pOl+Q4aNwB8OndREXTmKfQXohyJU++oswyLIWsRJl/uExzw0YoY4NK5EZ
         +tV0Df8DXb3LwWicZlgj1V/2zX6uaJrDzah3yy/KYWWi5VINzGQUEL4npoFAUal9PzPq
         uaW2Vi790cQeT/KuuwUDSd8/Teq60q032FZAVNhBQlg10uMh/VshKAOLQLBNMAFOA4AL
         zOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741602049; x=1742206849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/apE3VuG/fufAOpi2xtHrpN+LPCwiTLqat5jnVcZLFc=;
        b=KjI5K6HKnqD5E1DePOGihgj0+8sLHA1zObFU3GGGby0CLYQWqO/AaNyShWuL8PwF7X
         JHBFlKdLlylbh1jjTyvJYp9jeYopJQPJN2ypsWdMO0/2SOO38APXdHxUXV1+KtR2I/Mo
         i81skJ2tjTwwn8V6pS24ubuZXKM20xn9b6pfAFvdWp7+e1nzVJUUq8FIC2ajtXx6/FbA
         cyu2H/MRrmDHh695bbK/z6zDNfoK8uL/3KYMPFlvLdRs8YVUuHcYUnEoNlO0ONgRz6iq
         3eyRnqA9fJB6s/5Idn2Ck0lfOkuNK2AAxVs41EYbSx7XAOFL6gNNWiD8RrsnQfJsbjOn
         6IUA==
X-Forwarded-Encrypted: i=1; AJvYcCUroTkOsrn9TvHljNlYe2bYnt9Kr1GNePK8HMlKfBwnB07PJQ+pwlrAx9mp4xWJJqZsGeqLuB19BxKQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxUS2zwJNCf4VOjolxKCg1yQKCIMZ8D0X5Z01Neg0RTwvPcs/ex
	NuLgRhMqSekIWuDBfZUtJSXjSQCBnD6FlJTl1hfzJ3QXxD/iXU1t51ZA1cfNMfE=
X-Gm-Gg: ASbGncsLLETRD3WbLZFEiBxZI97Ns9wBsXpmlGMEYx5TO3wS1Mecar0GCzyh2lcGfVY
	bPq4aV+I6kfZRVQpaajucdshZc+wK32pOIEbVCLmEypoI4x1IHuDdIZacXe1p40i0F4imUD0iJt
	ZdTkYVuf05eAhdAcjVMuVMrvXteQrCW/PtJYs/w3ss4tOyGGBO+AsEy2R58ZEo0bgfnqfhj+Y8c
	kT9irvt179NCzTsmFzknIEs6BU7gGsvWW9uDC7gzVII52X/Aq3Iz+HWdBHuHxs3rg0kwRDjSN2n
	sxVWQOypgRIUGY3U5blyRJw/lG8mzdVZOEkO/k2xvAZH
X-Google-Smtp-Source: AGHT+IFfzfWd3QOlDox/vtQwZeERmiQYf6W46ID0K0ZY6jsQM3TpjDckCeiqjrDVUJkjElclE1Hehw==
X-Received: by 2002:a5d:59a8:0:b0:391:328d:65a2 with SMTP id ffacd0b85a97d-39132da24ddmr10077276f8f.38.1741602049284;
        Mon, 10 Mar 2025 03:20:49 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:2711:39c0:fb51:b639])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfdfa52sm14068218f8f.21.2025.03.10.03.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 03:20:48 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	imx@lists.linux.dev
Subject: Re: [PATCH] dt-bindings: gpio: vf610: Add i.MX94 support
Date: Mon, 10 Mar 2025 11:20:46 +0100
Message-ID: <174160204380.20418.6002822066800519604.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306170921.241690-1-Frank.Li@nxp.com>
References: <20250306170921.241690-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 06 Mar 2025 12:09:21 -0500, Frank Li wrote:
> Add compatible string "fsl,imx94-gpio" for the i.MX94 chip, which is
> backward compatible with i.MX8ULP. Set it to fall back to
> "fsl,imx8ulp-gpio".
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: vf610: Add i.MX94 support
      commit: e93160942585832a1836381018daf9729eb9ca64

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

