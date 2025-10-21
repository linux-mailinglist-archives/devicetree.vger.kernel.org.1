Return-Path: <devicetree+bounces-229356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4730CBF6745
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 14:30:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F3DA19A3A5D
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90E1332F746;
	Tue, 21 Oct 2025 12:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KRU54xX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB16224AF9
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761049790; cv=none; b=DBSFk6uYHFU3yX+b4QWNmNaq3wZy74lA0QANVDVMMjtVfbup+YS3pRXaXa7SKhIa4x14Ap92rn+HPufiEZd7zJfbNhnxzICpSkJb49Rnrl6Camprc+nTBWPfhLu8s0iVzM20W9tVKNEaQ/z3UEU72jJ3hJt/1rJ8tSrtwNRGsfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761049790; c=relaxed/simple;
	bh=tI/abLRM6RRTkjpi7bp0htXWDFC6rN0dzDuIsEtxgMA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mFImAwX2W6N71MFKYPPjs9FDFbfzYYUeIDrN2lWo+8YX4kCxzn0MO8JaKD+zJP4U9HX617gXGwmoIQ4Z4mrX+n2j3v0dUsL9is3vAGV9aiqZdmevZ8zRZaJM+jryoS371I2YGY3m6Q0IK/SY906gMfJIUux4P/hKhtn4NxFCX48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KRU54xX1; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-427015003eeso864470f8f.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761049786; x=1761654586; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QfSnV9t1F/SDBYI2zrfencQ/tnUy59bzGcgByOeP5HQ=;
        b=KRU54xX1+UWf6Ux8S3urtZpTMteYLj8lWdCjWRc9baYKCEqI1gmvxQbIz758dKPqWW
         cJjtBI4CDqDThLG+SmGxSf1oP562+GFYfFJPwQQqcuSIycJgQUM1JJ4XSjRSASRuAm9z
         jfSgQgV5ajg8Lt31icVquTVxdcNtUG19xTgXHHbjwfVabmaN1xgSZQoV2jhoAokvF630
         Cd440xMbyVcDammePjBF0DRN2C8ceVn4oeZoCyTMUf2X1BYxUv5LcfauS+cw6giJb/BR
         DsNL/y0O+CRqfPZzpVXU4mIrSpCSOzdqSqZHMUOyoTqnBDtGTxs7Rwam3BquXehT6tJ/
         GoWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761049786; x=1761654586;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QfSnV9t1F/SDBYI2zrfencQ/tnUy59bzGcgByOeP5HQ=;
        b=wKDkEkMGq+QDnm4ZG6tBKQpLegwwyd5rlJ4kXwcHHVviAwP+L4aeI5mDeqSv5ikv6U
         aJM94xc/j28gVqdvNZFUrNmY16SYma1Rv6kYN1+AUUweuLwKI31fQvOYLeSjEq2jHjfp
         zUQyGphFWtlj85hRBJQ2VeXqbOzudDbxV9iznXV68RBjBBdVlXawhXo0mjpx24UguRgY
         5nnfXbZFiNa1cczqzxX49vTWCLwg4OO0zAzROwBtOgJE1QKR+ut1I6rzs5Mo6VEdlHPP
         Ai1Opgej+FuhJfu6dZLyqcirq2by4zGippVHib9Pg/bGp+DeWJNRhXFDBUVuVGbUT8yK
         f0jw==
X-Forwarded-Encrypted: i=1; AJvYcCUxW9BUR+PzouGsiXqvfRJkWxQls8hwOx8/iWlO1FI3wyxO7i7u/6Si8EtntVvrj4aXDILq6nvjKHJ2@vger.kernel.org
X-Gm-Message-State: AOJu0YwWhdgKFehb6fZM7fnk5Vcdi4cTso9n/N3cpUcUqyKO4xj3k/9R
	y2KbIiD1e2QFZtInmfI54GZ5GNoqT84TwqEMOG8FL1Eu2xWXd1VKsomS3iM0seaYazM=
X-Gm-Gg: ASbGnctpwL/HEZC3l5ouHE/beAx64pS5xjcEGbAwrladenEkoSiTJu1yEuSPUpw2Vsc
	Kd29ZEbXgPip/yurcz2DJst0tEpN5mMqM3zlzWMW7AWZ6Ph6zlqSoPx4NZ+y+T1tD1MvKYDAUMY
	F3fiZdvjBehH/DqmbF9OokoqwJjiHSQGss5efURd+hF0XuAaB5XXTpPd42CV6l/a+2ZdIJjUD/X
	arMGaSuRGowVHjv69V3Ed01nXSmunPYFqWlP3mKgFR0BhK1dKy9KLqGVHl9eYHw/pzybyuroztp
	eyOchpxOLdPN1Zwk8fDqMXAEVSAqB50HeN7ify7RtN+TBJC7ry4MX2RZI0dgqgf6d0Sjv4Tu4GP
	Wdu3lwAMLDBLLMmXA+/zxo3kN8F+lX/UtU7nldS1AKJW8f7oF44CID8SK5F/ndHttUoEWdXldKI
	V9ETIzBg0E89DmgmCsXLj3YtDZ98QMfVw=
X-Google-Smtp-Source: AGHT+IEpSASoRALREWuHJtczt+cRiPjUi8QW3wo+6igdJHTvMSXLltYmWA/nv4zRiVtwUcuiVTG1NQ==
X-Received: by 2002:a05:6000:4382:b0:427:a6a:fd44 with SMTP id ffacd0b85a97d-4270a6b0aa2mr10341671f8f.61.1761049785881;
        Tue, 21 Oct 2025 05:29:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3c34sm20057043f8f.17.2025.10.21.05.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 05:29:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Keke Li <keke.li@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250918-b4-c3isp-v1-1-5f48db6516c9@amlogic.com>
References: <20250918-b4-c3isp-v1-1-5f48db6516c9@amlogic.com>
Subject: Re: [PATCH RESEND] dts: arm64: amlogic: Add ISP related nodes for
 C3
Message-Id: <176104978523.3075289.16180550527361572624.b4-ty@linaro.org>
Date: Tue, 21 Oct 2025 14:29:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Thu, 18 Sep 2025 16:35:09 +0800, Keke Li wrote:
> Add the IMX290 sensor node description to the device tree file,
> which will be controlled via I2C bus with image data transmission
> through MIPI CSI-2 interface.
> 
> Add CSI-2, adapter and ISP nodes for C3 family.
> 
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.19/arm64-dt)

[1/1] dts: arm64: amlogic: Add ISP related nodes for C3
      https://git.kernel.org/amlogic/c/63aa70a1f84f5dfabbac28d60e12949705876648

These changes has been applied on the intermediate git tree [1].

The v6.19/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


