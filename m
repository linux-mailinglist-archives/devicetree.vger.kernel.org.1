Return-Path: <devicetree+bounces-217756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 967B2B592A8
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:48:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57EA417F3EA
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36B0F29A9E9;
	Tue, 16 Sep 2025 09:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="bo7oKQF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60B429898B
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758016085; cv=none; b=eSWs3BHwfi4d4YE04EiDvH0mGBHmQUUO8ZrYjLmE/qtaJ3DQF7JpCUMkDesDfHFqJvmTkPF97g/L15LI1uOJNBnvA0LNLQgDeeWqTeNr2LJmQkkgSPr0e62k+2wtksK/HRsxkmBaxPKnG9ztcq6bD0P2R3OShAb9r1VFmcdD1fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758016085; c=relaxed/simple;
	bh=Xtp6rsv0we6loXr8KX7p8CjvjrdRQN0t60CzR4y0U7M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=izQvg880kBKa0kI0S9eLU/zq/GzfUkUpItbJrsuNCRooWx1C5pa39jR4AsGZbyN3kw5KXxm6fqUBmsFqm3QJM2XsSOenTVE+EAB9T/bo+j+70f7f2Z1hHTQlFmDe3GLtix6C0syoLgD8DApELUyBXDqbcUIttQtF934c8SI/4Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=bo7oKQF+; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so3610874f8f.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758016081; x=1758620881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZHjpXhjv6Uw0u0A/3vKysGefkTkoDLwlYIdI1qGXpMY=;
        b=bo7oKQF+hMoLOeZ0xhUC8h3Vr1QmzZTSnGRzkAQqd+cqTnQABzLNDfnx6Z3JunihDW
         JaYTkDfqPFYQeTh6+0KfENHjVAIJfwmwl2KWyivGLK5ewoudRBjiAXl+ytQ8ziFSOscq
         zCMxCdwXGMbkORGA0vcmLVlqRbEfe2NpctoAp2lgrVkQ6RG2qF5j/iokKLwdjKmI5hLh
         1RbnWfanIDYyCK8+I7pwfp9w72O4lLDHGsiEnV3iCSrqsbPVqrEEhOmidZ5FHVPr3Whe
         kjmfhRQdA9hIM/e3VdgW6QYuGT69ll3b0w3/utrrZa789gOzcrGP/RGeTYx4HDVRMEiA
         lQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758016081; x=1758620881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZHjpXhjv6Uw0u0A/3vKysGefkTkoDLwlYIdI1qGXpMY=;
        b=wE15YqrbRLULUoBfVjmNh9PaSHqHliS10kkdoYreUMY8LzHe3i95/bq/AM85xm8xsF
         UWtQy2F/01mzl0NALTtIs2d3X8+I08TD4UqUlfDjJA1wvzU/e45if7CAfiSxzRJ2IavT
         bDXShvlvbs6dC+FWLea+e6nAFWkMBTGsCSvO73YQNxxftuQnkI8YaW5JN3wRGdCI7423
         WXbDvvWFnbisoVHvUXMSz5Rz1tr2JjXF0nzfOHCFjfhKOiAlg6nbaWeN4ZjTkqO/VbHu
         hu42g0Bh87/UcM1b1sKmHMEWYU3b9klh2+FWqPBGAd3+oCdTXaXirWvQ/vFmUZjUaEQX
         FhQA==
X-Forwarded-Encrypted: i=1; AJvYcCUgQYb0LJ3YF41+szDP3HzEdFqcxTrGbk3mOAbVjuauopLktNg78SuRLAi8mUGjeaHXYhWMb1z5Fby1@vger.kernel.org
X-Gm-Message-State: AOJu0YwxPu8PiSk29VR8XHSUZpc0kfbL0DOh/G+16PUL50jF1RHPNmDq
	FYJkzZaPvB57iN4qqzx17D9PY5luzNmU95sB2ACkOpst09UPt6EzRxddER50PPasQEo=
X-Gm-Gg: ASbGncttXjD+wFpOQiXSz+G3v1h50WkGw310t0dYBawGnKGHSqdJlpXWkq/UHz/in8z
	0FUsjodzn4rRR2iJR0JLvaQ3YU28GFR2MAmG+bK+0BtQ8Kck+pNYM0gLUehbebXgLc0aaCWLhWZ
	DTbYA4k0DlILHFECY+5ra4TWLclClXz0OG02K3wiIzV41FiPmonWPo0BOmKWxU4qSUcghXDul5k
	AJe40XD/rqA78hNwTqTk3VIx5W0vexqRpAm7O96UN9EytyoCq3gSml8+EtRev2EsEZ+CGaKP9xH
	ozNF7ANUhcPHa8Srrzp83EJNZDl5dMR5ycwlY5MWg88VsLqL4+KoVthPpHb856FwqJrHCAXw1fZ
	4XyRlsVue9eafcbbTRN4ee4Sb29qPAhA4v6hP
X-Google-Smtp-Source: AGHT+IH6+DN+2iC4Z4uhDEfr0LB6Z+tnW4YIIzn8sB9BkEp6enUX0B4DN8xSWO2nsBfkghB42HO8UQ==
X-Received: by 2002:a05:6000:2586:b0:3e4:1e29:47db with SMTP id ffacd0b85a97d-3e765a25836mr15049192f8f.43.1758016080849;
        Tue, 16 Sep 2025 02:48:00 -0700 (PDT)
Received: from brgl-pocket.nice.aeroport.fr ([193.57.185.11])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e760786ceasm21733718f8f.16.2025.09.16.02.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 02:48:00 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH] dt-bindings: gpio: fix trivial-gpio's schema id
Date: Tue, 16 Sep 2025 11:47:53 +0200
Message-ID: <175801606720.9656.18120314835859405070.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250912165916.3098215-1-ioana.ciornei@nxp.com>
References: <20250912165916.3098215-1-ioana.ciornei@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Fri, 12 Sep 2025 19:59:16 +0300, Ioana Ciornei wrote:
> In case the trivial-gpio schema is referenced through a $ref like
> /schemas/trivial-gpio.yaml to match its current schema ID, the following
> error message is displayed:
> 
> Error in referenced schema matching $id: http://devicetree.org/schemas/trivial-gpio.yaml
> Tried these paths (check schema $id if path is wrong):
> /path/to/linux/Documentation/devicetree/bindings/trivial-gpio.yaml
> /path/to/dtchema/schemas/trivial-gpio.yaml
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: fix trivial-gpio's schema id
      https://git.kernel.org/brgl/linux/c/17628f1abbf4bd4162c655f3260d68bc1934ec73

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

