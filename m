Return-Path: <devicetree+bounces-80119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 535FE917D3C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:05:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F3081C21C8B
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B634B179658;
	Wed, 26 Jun 2024 10:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vm9YDRV5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287DA176229
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719396282; cv=none; b=mzxdzJ35VtJk9IT8R2+DYfFy1P298G2+i8cZkxPSewuHjOGBz/C0kMxlAw1tkAo8/tNzcGA0wUEe3BCW9nmxdaNRJe/lIvdrykfL/00lYf6hI3oB1U9t22Qkndk+mck/X4inHVfREkNxkkYROnOlkM1PNG1paAKRXb1VtJa8j/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719396282; c=relaxed/simple;
	bh=wAGGb9nbphDH5JrB+dXV+rNYOi9vDVjsKxMqqIkjMOo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o7Gt4l0hydvdfOlMZ2WJliOmb4uVwbDONre7jrgYZLhL5fBX0QRdc9KE3BPnO0arHoM5wWpUq41SM+anpHpOiafuHfISEimSuu1cdp+cIbYaks/Rwk/O1wulvWA8/By7QqDYyfVtIRphVuQ0sT0uR67nPr0sVKUKqElzsEp86AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vm9YDRV5; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52cdb0d8107so6165228e87.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719396279; x=1720001079; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wAGGb9nbphDH5JrB+dXV+rNYOi9vDVjsKxMqqIkjMOo=;
        b=Vm9YDRV57apSpdpp2wA7uSKyGiEwLBYtVRur3DGKAp77cCw+WDcvD0FA/TaDRCoplK
         6pRKFxp9qnqV75TNYYQJ6TmKYs7g7Ko8PHDiEqiaaTvIbuN00z/ge7qrkr6pWiKw3pR5
         4bUESsqQFPIAK0MAEBgFWOxY/2D7Cxm7lK5b0yra7obIu+BQg/Bhgke0CLETntZ2Z629
         he6V1deADExy63yvUQG6cwWraJOnaJoIOARtNcLqWMBVrMBqFU1K3Nuf/l8krGMUjwFS
         DnYO/3zcpcxQ+6tCM76ORfH14adqkp9CHbY+fGgVYGW4e8DyYg2WBPedlx68t5uJ3xyD
         XW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719396279; x=1720001079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wAGGb9nbphDH5JrB+dXV+rNYOi9vDVjsKxMqqIkjMOo=;
        b=XQDw2ctfSXTI0FaIF48nW10mZ+jgI5f1DsNzFvYzsSmMHPL69I7rw5vB8V69r05nD1
         YQLvRPezNIghecmBdr3LVSyShVWmCi8hNZKsU0komrc4C+LI5UYlO0zrSv3vC/tRRorW
         xnDTLlVb/g4Ig5MYZa2RBpnpnizGl9zn5mPxn6jpez3eln3wIjCEz+f8mvWe+UnSTD1g
         mxP6vaMEt76tlQrm9lDKFavKD3YuHxuNYOVU1G3eLRdI9fYHljhK8ooUy2h83M/UYkZG
         6WYO8MfhXLH/06HIePn27618qRUQZwoYsiWp3baY5J5QTQ2Gi8uMBsnO9tPZHSqwnSE2
         VdfA==
X-Forwarded-Encrypted: i=1; AJvYcCXkOCZBmyN6nhob7r+ENz0hrVHVfmCKIje5p+aUesoxcVFdX5w5w+JQyC7ITgZDvMNS1LqmEgL+XdXEUCvEZOKIhK6USc7q5QiuEQ==
X-Gm-Message-State: AOJu0YwDG64vDrjdWofyVeDJv8pcjXJqkyIFeKbqp/85nwDs1ttzi9XQ
	/aWkdNhHgtG0YwueJisBudYAWcILxzEhsGBx67Tm8qAM0zVFxrOflI47dRwX4wiDct6NoYy4IgU
	0opBwM+gA7NJ3M0kLPfMpT2pxRe2YC4j90Q9s9uJeUA55MPka
X-Google-Smtp-Source: AGHT+IH7rPG5U6OeXEnbgIj889fPheKL56AlWQLK2rD9EiaTdNPfPLg1zeaf3Y7+S07mnQaIGk8RVTc0mfDwCJd1S0g=
X-Received: by 2002:ac2:456b:0:b0:52c:df6e:9517 with SMTP id
 2adb3069b0e04-52cdf7e66dfmr6847985e87.11.1719396277395; Wed, 26 Jun 2024
 03:04:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>
In-Reply-To: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Jun 2024 12:04:26 +0200
Message-ID: <CACRpkdZyupZmV+e=L0KR8ospH9P=wdUrMFvBnGXyfhLhW3-=PQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] pinctrl: qcom: add sm4250 lpi pinctrl
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, alexey.klimov@linaro.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 22, 2024 at 6:49=E2=80=AFPM Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> wrote:

> Add support for sm4250 lpi pinctrl.
>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

No major protests against v4 so patches applied!

Yours,
Linus Walleij

