Return-Path: <devicetree+bounces-175720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8828AB18E7
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:38:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8211A52555E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B699222F778;
	Fri,  9 May 2025 15:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jOktoj2P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C5322F757
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 15:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746805105; cv=none; b=G6c4tMIHcr+qc9/FwVMlcKf/PaVdWpqSvdaakxpWZ29DgUxssX/iUCarmIepO56SrxUJYKq/gAnvWFHvsyQPvtZeKJcqmmgiHjtulLaPlQ5NR7zc6kR3uWs19DFlqhtQblY7z7i5bLxydeWILfZDZroxxtDq3Rxn9C3qtkqnHZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746805105; c=relaxed/simple;
	bh=YskSAaS8PR8HyKDm7tD0WRxWkFzOK9kndYNsHcCm1TQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NHJc2/SL/2bV0gMWRYmuGobhaFHN9s8GB9/+uLZD3MSR6DY5STSK1DlpGIw7IngWTZNslPjs3jiIUQzJPwquS6DLToy046KT7F5GruqHOYp9ixlZCMkajHTSUVAWD4AwtZkWQA+BB2YjpgNSUAxUuUNoSKwOfhwUVjzQunU9UG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jOktoj2P; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a1f5d2d91eso828739f8f.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 08:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746805102; x=1747409902; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhGArMwmGNgqoLRw4DWsBA14SdvN354OIbHqJyYkB5Y=;
        b=jOktoj2Pw57aRnppVL5lOfU9CRaRJ30MqFa1JBXtdIfWEacO3XOwxeRfvrolPR3ycx
         Q218sCYsYJ3Ftf2SImkDj6AOH3N5iwjmKmZkoDYepCF9PMV2rX1zCfWmaasf2drNf3Nr
         ywTRISSfrJKMX+Bqx49uVi489AaHK0+acqQR1WEaVzQ856MDzIKdLLPB3M+dYJvhUkwZ
         qy6DbDr0pHmGMlcob6AVOWiE9Xn8W0uqan0d13Y8UNB1nlIVJgfvhgeXbmpQ1tA1wNPl
         Mh29jZXby4hVhbOxM5G2Ygb5KTcQCVQ0j6a5Zz1VQwcCeO5+iLS4zZzS8NmuQz7q5CJW
         jqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746805102; x=1747409902;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yhGArMwmGNgqoLRw4DWsBA14SdvN354OIbHqJyYkB5Y=;
        b=jDWdvpKbkdsAX+U0OUUaOFNVHzQiY3jMPLGrxwJ+hi0cUenwc8QGrR2vHPyAx2nuwI
         0n18WWJrIUdWWMr+gy5Cy/5WqD06tZGJKxitXCaYfEg0thFPn4tAAPvzvyP8pi0S+PAj
         wg0/SSxFuFua2QJxblRSmlKYeFpCABF9EVihWzDNiP+2/QPeSe6gSbtxISZkjoEHRlB0
         HYMdw7Sv8E4q66sPPRKAAwbqlBbd1Qcy9w0tsDVv1Rye9wtBo+VnJCA8KjEt5D1RXuUV
         h+cVjlU43UV1qv6nGk+me+WlTUwiPXaKTG259zTsULJO6hFZnf/6/iW5SZz3Ru6XmYP7
         WRjA==
X-Forwarded-Encrypted: i=1; AJvYcCVs9rwECMj99bgh9exZDayxaFnIswdoRUE+4nQGZuV8NN5F8sGfRk1cDaRQFSCrxcDpVi7P59Iba4mx@vger.kernel.org
X-Gm-Message-State: AOJu0Yws0u6Kb6PyGUUYHd2FHDDL9LxGmOptuuTOS5AyhStF3qtwxL/4
	zat3GISjMhn5Q2a1qxQB+lgdKv6iGohaA+/hLIGVuRhiHK1UwNmmaUkrt+4rFT8=
X-Gm-Gg: ASbGncvNUyCl1uom3NQx3kdQwQMKeUX4FArTuI4nC+NRCUCAz54eGV4OAQzsj69jhT/
	EmqGhFx58HW6dtj04p0cwCm271EOOIqFSG1WiotSuw4bT/OFN0MZqHtBrFRGSCXLNGVFGduOkU/
	zgmYbpwEn4/uzEywX2QtEutWEbMwzwo/dcX2Si2htMoepGclY6VNO2U/cyMC3ZgNPZOgd3OZjiV
	bHC0KHraOUuy8FJv41wcL2HpfJEjbTOcqjLIy6/IyQjLDzggUFPBiHECWw8LAw5/WWezom1Hor1
	sZ/T0H5sD01XJaFhhZ0hUirhOrxS/qNBM4BQQCaAP6ocZ+iN6rEXJbt24b0Ihg==
X-Google-Smtp-Source: AGHT+IELPNVARSPPy9VWxcC1mPIuPocRVxRHDPQtOXcwVJLTnqF0Y7JWN34ll3uKvovEm327XMwanQ==
X-Received: by 2002:a05:6000:2502:b0:3a0:b941:dc24 with SMTP id ffacd0b85a97d-3a1f6429658mr3094134f8f.11.1746805102066;
        Fri, 09 May 2025 08:38:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ebe4fsm3663912f8f.39.2025.05.09.08.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 08:38:21 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
In-Reply-To: <20250428-fernsehfee-v2-0-293b98a43a91@posteo.net>
References: <20250428-fernsehfee-v2-0-293b98a43a91@posteo.net>
Subject: Re: [PATCH v2 0/4] Board support for Fernsehfee 3.0
Message-Id: <174680510148.3108291.15356174367489186455.b4-ty@linaro.org>
Date: Fri, 09 May 2025 17:38:21 +0200
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

On Mon, 28 Apr 2025 12:44:27 +0200, J. Neuschäfer wrote:
> Fernsehfee[1] ("TV fairy") is a family of set-top boxes marketed as
> ad-blocking appliances. This patchset adds board support in the form of
> a device tree for the third generation, Fernsehfee 3.0.
> 
> [1]: https://fernsehfee.de/ (German), https://www.telefairy.com/ (English)
> 
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/arm-dt)

[1/4] dt-bindings: vendor-prefixes: Add TC Unterhaltungselektronik AG
      https://git.kernel.org/amlogic/c/40f983aa2d809b4934a260c76b82e9ff19c09a88
[2/4] dt-bindings: arm: amlogic: Add TCU Fernsehfee 3.0 board
      https://git.kernel.org/amlogic/c/eb7af1268e0042e83607918229cd62c3669cdcb8
[3/4] ARM: dts: amlogic: Add TCU Fernsehfee 3.0
      https://git.kernel.org/amlogic/c/dac928757928a8ea06eaf5694d5deae53a21616f
[4/4] ARM: dts: amlogic: meson8-fernsehfee3: Describe regulators
      https://git.kernel.org/amlogic/c/2c1879a440315e0b292bbff0fa63a73bd8a52e34

These changes has been applied on the intermediate git tree [1].

The v6.16/arm-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


