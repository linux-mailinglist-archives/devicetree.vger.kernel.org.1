Return-Path: <devicetree+bounces-229644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CE3BFA7C1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:13:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00C17566C6A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 07:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97C22F530E;
	Wed, 22 Oct 2025 07:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KL+7GcS4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF7A2EAB6F
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761117222; cv=none; b=oyp1Z2rY/S1HKoYxxUhAvk1dYJMf+g+CjKfQikOstvROQF4z4QgMuHGb2wW7PSmMjOnbvHtk0KMcZbUcbcU5h2n+z1V5Ng5e26z96TZCzE3kTXvRtVzwxiFaUj3rUzMwJ09TK1QWZpLWWLcuJjBA0PW0TinkbAk/evZDNI3/kbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761117222; c=relaxed/simple;
	bh=jYhprya5gTIQ4jQGJUepDF/AMXOU6Zkc0p9TOFZJGFU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eYm4ADMOgMXbQOpvlxnuqcOW/p4zyn0tIfW93c9gs1xVPrMAvT76kMpKe7vJwO50UYUT9wJghio+cFuEy3u1zyoQtbByYRvBkAZWG1vOgYSpOHuij0x+3xxwCHuYSoDDwOx8TJTkaY3UIODDpT7eFdGnn6utYq1MQCyvAPwG5mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KL+7GcS4; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-471131d6121so49210935e9.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 00:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761117218; x=1761722018; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wqMreim9nAYer1KCbouUlT+cwbSr2tN/sZopAV8oBn4=;
        b=KL+7GcS4gAwY7m8ih/LytPhGifcvnvGsf0l2Lwf/xd+5uGSlLss4rZ5j5A61lxUMl+
         sAu/yXDvxSZXNHbma/2ze5YHr+Ekhi42LEOnnoa3k9SMZ0BGmn9NNKsXCB0g/inu6vUw
         S/H8JSYKgrppW+i7I2X5UsWLdGTpVG6c5H9WutHuQ0nAaYPvc0vdyyZXNlnpKZrY+nXY
         E1KfbcXue/EL0wVlpU30Z8eDOMhAy+nORPnZlLEoOImlxqbE9s5kyr2sWZ5/8ujCdtzE
         24lvZeWfb2XLSJSiu+Qi0/20ifTaq+IE4ZmuaJbeZt1t5mPtopS84wBxPiEc6QkB/BC9
         fqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761117218; x=1761722018;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wqMreim9nAYer1KCbouUlT+cwbSr2tN/sZopAV8oBn4=;
        b=aY+XWwd8Cjz2e2XlZgLD+jHa+tEm3MD6p8PRwp+D8MiFHZUJuZvupcee9MtIOfKRS1
         qzRuuJO3zODmbVCAhscB59vSwYoXRF0AtINo4lelMdeOugqJ0WMh6tEapgUtmFL6Jyvj
         TRw7N5NFePvANAWB7861gymrJ5+/Ax4/1HsfWXriRIeXIQshaeimfEtmB8l0kRG6SmJe
         oIAf23i18sQMUkfQNszzg2c4hZ3PgYZ5oiynZAQMUCzqgtmIahX/O4jvll5P/FtNqzig
         EXHiZr9VRATlBNHOKxOec2mLNwtU75ya3lwKWaJWlQCQQETpQgsD5khJJEHUhu7VujaR
         iBHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeGw3QO6U3olYcTT/JmqDRb7lbQnAGrra+Hd/W7aGT2QTEylKft+RSUek8ZwBsHmhShmaOYiecggLw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5lBZK8Sob4LQfNP9RyL9lSYRzTblIsuQpM0Kw1D2oshchANNg
	6qanuBdWEIY+6HAXkwIGmCcR85S6rqeXJ3AZKDGesThsdaqL9QeOx3UJAhKByDkP4zM=
X-Gm-Gg: ASbGncuD8DAV9m4S5VLxPe4adfcSVsYvFXctyp5blptLLB+TUuf2gsjogR0T6eCfLUX
	SrRu/pcBwpcQ/engGbv3wq1rYBPN1cuIoFqfBHp0CAdflhekv6RSYPj6ow6pZdUy6Jg11lejOAz
	UT83tWgGD2EAn42pSMZxTnKfhwfBXnL/AVsgoFlRmOfPnc65Qt5InVg784PabuenaGvbxwzYi40
	Eq2QNkB2Dpr9Lp9U8UKjd0ocmMTbpBqSeZ4vFzD9mZjBBhSOlkZ13U+qCo5LA/pY5u/Oa9r6VYR
	un6PrJl/5a7A8utSgeroCn7aa/W3iAWLMDqOp3rCl6MJ9BRlLCmL0VpNR33A7EllPs+ACBJWQk/
	0/TlKzaTkfBEQ0C+8jm4bA/eYFDW+OFNRm2mK+EtL2E+cI2wMXwd07u2ia/klEal2LshzK6bzfm
	+eaurId72aN8qRzILSKxLw
X-Google-Smtp-Source: AGHT+IFrToHcy6QNjmKjXvKbtPCmRCoAalFEfH2Sz994Kb8x9DVcmCsK+N+zANuRJUkEATjH9AeXLw==
X-Received: by 2002:a05:600c:670a:b0:45d:d97c:236c with SMTP id 5b1f17b1804b1-471179017f3mr128014945e9.21.1761117217823;
        Wed, 22 Oct 2025 00:13:37 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c427c3casm29428155e9.4.2025.10.22.00.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 00:13:37 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251022-a5-pinctrl-node-v4-1-a71911852c4b@amlogic.com>
References: <20251022-a5-pinctrl-node-v4-1-a71911852c4b@amlogic.com>
Subject: Re: [PATCH v4] dts: arm64: amlogic: add a5 pinctrl node
Message-Id: <176111721718.2414958.3337470167774710768.b4-ty@linaro.org>
Date: Wed, 22 Oct 2025 09:13:37 +0200
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

On Wed, 22 Oct 2025 13:04:48 +0800, Xianwei Zhao wrote:
> Add pinctrl device to support Amlogic A5.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.19/arm64-dt)

[1/1] dts: arm64: amlogic: add a5 pinctrl node
      https://git.kernel.org/amlogic/c/a8b41683186d1465c06aabfee6e66ae0bb29f5fe

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


