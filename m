Return-Path: <devicetree+bounces-186986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C022ADE673
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 11:19:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9F1D174BC2
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 09:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E7A2281378;
	Wed, 18 Jun 2025 09:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xTzFNfW2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA4528136B
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 09:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750238349; cv=none; b=Ql86aKVr/IBqGG2Mz+WIlkBK8nkNSSwTPYkh2p51JE4sRPZinSqtaz+VDoXXfEWD22M/n/0tOSExSnDUe4f/Hdyf1Wm4cpDO4bQavxwe4xbDsQ1CPZIykuEPbxQfdHcrghdGElgDKAzdAo5D2/0oSPO4RiZJlKt99VOJTzc0fN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750238349; c=relaxed/simple;
	bh=TSoT5Ck3uCBZrqz+LxFrOK/E5khPUOMPB7P6HPWYt/Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OvpVTd5EaqgfPm9Joe9BD2smzgDesu27dHYL9wsiSr+faAQdNhd2W7Lju6Bp6aYfTM8dunodA36LbtP1JMJGCCAr2P0imr3uHz+xEWFzBP6+gIdmfvZAUZtxaJE5A2DBH2qq1ikzaP5xVnmOLIAC9Md5oTwpPsxjdzD0Yl64LPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xTzFNfW2; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-553be4d2fbfso3881858e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 02:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750238346; x=1750843146; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSoT5Ck3uCBZrqz+LxFrOK/E5khPUOMPB7P6HPWYt/Y=;
        b=xTzFNfW2eQmscrXSLbo6IrF9LP0y1iD8YrmYy0VFS8Tf/5gnEqXkv7JufStWeSInsc
         Zp/BRFb6Ogo0zWfUxCKSPRi8PJ2lo9k1dWbqgZt4qMopeN+8hBxNzFLrZbw6Kzg0L1Lp
         4tSqkzBM8ESmQ3XMCK+Gy2dGQ2ikjJqCAfjmmhr8Wrum8EybctoCr4MAX5zD4ziP9v6U
         j7IRxxrxqSsTmHVkf3ZmmHj2R0J5EKAwQQh16VVLgU/u6YtAr2VHx05zC176wmArbK7K
         a4koPbcvjjM/ybiuQDyqgUdq3Fnopvp2bWwn8IPfCZuYDbwl/uXpvtB5ml6Jr5XIOrS9
         cEuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750238346; x=1750843146;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSoT5Ck3uCBZrqz+LxFrOK/E5khPUOMPB7P6HPWYt/Y=;
        b=I8FwR4dV5gqoDqRZEuGwCeCeAMtDPGeB8h+07I8gupy4QyTZmJVtOYM58ttLqzPsyR
         Jl+z674/8QuEDbBHYYZ5wsalnAV9vjnwqHLwJ+8mACd9DArVBUvFeh9Hr5H0eYpW0Acc
         9doSQ8uie+iyofgplXcEEOwzhVQ3qUlEfOsN6cAiUB+kFd0zZsLm+28Zx9cfD1qnUZ6e
         Aa94wp6NDl5pkEbgb72mSl6Bi9IuuK2Tn/0S53nvaCzvsodolfjHRS/HAVSQEyF4nAaf
         jRwdgOAXGfZfopB/H36XY25fD+T2qDF+BdfOBX6iffvJ1Sqz39MjtlVPbEaryCCfFtk+
         olNw==
X-Forwarded-Encrypted: i=1; AJvYcCXuHuEB3ATglVOvcAqYTe1HE/BIZBAoVhH6+MGjyk+HOaCREnJFF7geyGj210LvyYhDR6t0uXLIS+vG@vger.kernel.org
X-Gm-Message-State: AOJu0YxiBRFw6R0xQpAZqVtyoZnVFxOjpDSgbrYahEkIhQfVjiptcH8S
	rJjsfgliSvpbSnwd15ea35xoA+HZzE5treYWBP+4SmJbKODU+O7dcsgYL1gry52gUoAxWnwbnd6
	P2j9YgSDlEd53vxp/EY/XQaFj/mjAi5Cp7MQR/J0HEA==
X-Gm-Gg: ASbGncuIQwkJWnIh3xWbepHO+WA8nXhDkjIw6SSh4Q5RspH/LfqDRrCfC/fHLDHUghL
	yUVWo+Y8p8hyW3Xp8oh117w5HzNA/5c8St5SL6GmHIM9gecvZlUlQT6Zg/PuMSo38zIa6lsrmUQ
	3KjxpOzinbl6XENp7t2EKMCWnXw9FRpOxMNn91ZGHu6eA=
X-Google-Smtp-Source: AGHT+IGDviP5o5BpdYRHMCQZJ0KKYxkJwy63WpJVsRhdouoscbb+olcEs5D4kGqoukI8Mi1y4ymDThNKrTMCoqXbPKI=
X-Received: by 2002:a05:6512:2212:b0:553:2c93:613d with SMTP id
 2adb3069b0e04-553b6e713b0mr4277828e87.5.1750238345840; Wed, 18 Jun 2025
 02:19:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250606160359.1356555-1-Frank.Li@nxp.com>
In-Reply-To: <20250606160359.1356555-1-Frank.Li@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 11:18:54 +0200
X-Gm-Features: AX0GCFsZz3aglhMm4E6BI1RVEFU98orqUWOtObnRoTsKi2nEtjPjvdxkzVSQEu0
Message-ID: <CACRpkdb9=PxzA8FGR2=Ox+ndnAoh7LBB+QVte4kU246eucvt5Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: pinctrl: convert nxp,lpc1850-scu.txt
 to yaml format
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	"open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 6, 2025 at 6:04=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> Convert nxp,lpc1850-scu.txt to yaml format.

Can I have a DT binding maintainer ACK on this patch?

Yours,
Linus Walleij

