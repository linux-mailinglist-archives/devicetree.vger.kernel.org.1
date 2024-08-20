Return-Path: <devicetree+bounces-95295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B26E958B59
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 17:31:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD64D2830C1
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 15:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762761B3F08;
	Tue, 20 Aug 2024 15:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EskbHmWs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97EB61ABEA9
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 15:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724167847; cv=none; b=iir4Kcaah7zhhZo6seYErd5jN0/VYwX+lEElEN92uEIScW6vMTgKPnc3hYZvUsMmdkpBJhvuxm5lLdJQy1IZtTr89Qc5uI2Vc9dwMmZyHl9poAxHX8yj88ON7Gx50qb5d3y7CD+Q5FtxmQpvw7Ukd5tS/NXRlLK2ygigfYbYHPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724167847; c=relaxed/simple;
	bh=AAiMpzsbM2U/IlshdBpUK4vufmXmmQFTMfrQDfydLFc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=a4/48o+1MtZVDa2+0ufeKFNHJCwoM+j6P1kumOuFG3qNVsyEelETplOOiTViBnc9Tt8Qg1VyyCqod1OTCSFo90w0GlXk8qiiwa/4zBxeU+VoCccNrktIqoljyPh61yrFJIRxL2fXLf+QVyRfBpHrkGeTo1nsvmd4h0DwadK6gHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EskbHmWs; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-371893dd249so3040322f8f.2
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724167844; x=1724772644; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Qhgrtf6I3bZZq2qO8Kt7JLM5yKHi5OzFhJIAV+fYUc=;
        b=EskbHmWs/y1mwk8LvJSiWS7gDVMymj0qsKqLUMo7jY4X3QOjcfe0i1GHrNf2esVKPr
         Se2Q9xBYSvJapl2JIJe7lO+J/qucdC+h/8cabpvPxtgvrqyPE+lvOrdG+x6U6fA3esHV
         +r1OWHysgMYz7dY+m4/ukjM3UUnsrem/PrTk3rkBtEecEBkvxfIWE1dGxJYSIddoppas
         O3g0+yGTuhOySk++5spTHRxeRBJIwsSikyE6Ez8Fcf/Db+97JjwvQztY2tdMlB22sR0n
         Mwx4bleMaz7J+XAGG0da8BDpW7q0Cwhg/UgDLi8WiYYQ+jLFBtURWvaW0OCP7fyNCZ62
         wqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724167844; x=1724772644;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Qhgrtf6I3bZZq2qO8Kt7JLM5yKHi5OzFhJIAV+fYUc=;
        b=ozyyK2JbhR1BbXlJhTrZekDGYB57uegsD196T6Db8gpMfdrHl9OXKwGgt2ebllXWlI
         cetXjkM701vepYSdW+L+yQUuWfbYd9JkmoCmkylYsdSUo8M3sLEppEXvT/ljELWGyVuy
         ea8wwSfn1at6N+IKAETTjAWg9Gkx56IqBN/nHceij3gqzSUeFJMowEusE9yIT/SKgVv+
         HU3IgremZ8E4m+W+l+ICTz67lQqHiCinbnlvaQP5Kp5u5Sxla+7npxa69bPuCD7D+6VW
         LdtfD/H1/ICMrQHQJAzXO1U+20bj6QRu5lyWCenceLSMFfVtJBz0ufoyviL1VctziBfe
         2p3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUkK4/OG6A9537J5KJTJqzXlwQgVO9LZpXcEdrrBA+z84pzGA2yNvV38kfPRhuxCN0ylL63HcWe5lntZKeuCuFib/88BXN6HTc5Iw==
X-Gm-Message-State: AOJu0YxdEygkWRFFkqpJ/01bZW9pjBy2QlZN4JZx85zlfjA4V7UFUJO5
	LyaJY9nqDN01XDSYJenwquJOzI3ofOlRmYDVrbG49wFjHW4xOKEyuQ9Ep5qEKhY=
X-Google-Smtp-Source: AGHT+IHTy1L6M6bWuRv0bAMNMMxtANlI7zoSxkKwUl3KIWs98yZHIQ9y4X0KPyFbQw6o9GPoRQ+qJw==
X-Received: by 2002:a5d:6d05:0:b0:371:c51a:3b2a with SMTP id ffacd0b85a97d-371c5fa669cmr2038166f8f.4.1724167843430;
        Tue, 20 Aug 2024 08:30:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3718983a311sm13439160f8f.23.2024.08.20.08.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 08:30:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, 
 linux-amlogic@lists.infradead.org
In-Reply-To: <20240712215111.687478-1-naoki@radxa.com>
References: <20240712215111.687478-1-naoki@radxa.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: amlogic: add support for
 Radxa ZERO 2 Pro
Message-Id: <172416784208.3050902.355272849812987526.b4-ty@linaro.org>
Date: Tue, 20 Aug 2024 17:30:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0

Hi,

On Sat, 13 Jul 2024 06:51:10 +0900, FUKAUMI Naoki wrote:
> Radxa ZERO 2 Pro is a ultra tiny high performance SBC[1] using the
> Amlogic A311D chip.
> 
> [1] https://radxa.com/products/zeros/zero2pro
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.12/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add support for Radxa ZERO 2 Pro
      https://git.kernel.org/amlogic/c/8f97ee0c9f5c6fc250847d7492875a6d7152ba68
[2/2] arm64: dts: amlogic: add support for Radxa ZERO 2 Pro
      https://git.kernel.org/amlogic/c/69591796c5d585816a306134f6d565cf19da575e

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


