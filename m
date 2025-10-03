Return-Path: <devicetree+bounces-223523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B399BBB67F3
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 12:55:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 994804E6863
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 10:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7932EB5B2;
	Fri,  3 Oct 2025 10:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="yJQobbHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE7E23D7FA
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 10:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759488950; cv=none; b=Gk2Du60fgrzcXS2zn4ylvzKjAdSbl3wBKNwJzXOj/pBckSPE26d5kWp2d24XCt4GgldGESzQlxvV3OmEcblMxpEZSwiI/bs7Y3h3mnBg0EvzAG4VeyXnZfMjKPUL7gdB3lUr1eauM57h563L+8bT9OMmvXsyJRtocJ2rIEHcPy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759488950; c=relaxed/simple;
	bh=KChLKSNNxImhmb85Mo/OCLoDmoiyuSxlxjqr9/wUHno=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cbGv26G1Fso9ZK4L5zA7dKdYxui/girHC+WT8Vv+NcXZSBWmthcqVCRMv9kN0xkIKSevD9XCGXNgHCCDQ7+ZMmRbe02dS7/jTTrra/JdqYCvHPohPp7FXW+rp8TS7sXgkOBm6AxvyYSRYhHZJ1DCqMDXm4QdcVHPDdZmYkZD4Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=yJQobbHs; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-57b8fc6097fso2897919e87.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 03:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1759488947; x=1760093747; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KChLKSNNxImhmb85Mo/OCLoDmoiyuSxlxjqr9/wUHno=;
        b=yJQobbHsF+Nyb4RPYgZr0NJ8omtIWZu0ESZxpaPEJ5O0eZtAoE6/LFCd4vmK86M/WG
         mYl/e7IdYmKEjHAJ0hafKhyh7E8fde6npBr08kV3K6cOq85IvXtfqsA3tkN/H0AtsHfd
         t+iNJ5nzyikfGed9kayawce/D8p34EH7RmD8SoYDZbxy9RVy7Fx0O8HNciU4PSSg+5BR
         y3A+EscyVsHK5+yCD3Xr8emxPvkF/4FY0gyVHRgEsGZRe1lyU21GhKfP7OAGxiEU9Z6A
         TBnoO2rDirBg2hyA4GFDrsH/KWOxiGpwRZ38+SHNoa74yU3lP721V0D7tpJqBkmioMtK
         FEJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759488947; x=1760093747;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KChLKSNNxImhmb85Mo/OCLoDmoiyuSxlxjqr9/wUHno=;
        b=B/SoU3PtHs4kBP0X3wk7ZjCle+x5kWn9H69RJDHe6rySSLOF5wS4zSthHTywjERNLN
         KnmfOVd4SnPB1v43rNJbGXNc5MlIn56x+DqSkDCMR1vMWfGsILJfqv7jPp8NvcU7s03D
         YDpe+HhDaBWOgpY8KSc3anrlF00GG1v0oGzT5Uj4Ad/r8jGppqvZ4pZUvjSufN5/sREA
         b3nlrfc3LoIP7n/Yd40GWZNxmJlpR08wLblqcJR7eOl9XOuk4wkWrU3DfBaumXHoQfvj
         K76HCmFBwuLp6KKlkRrGepiYX1qP6a0wWIo/bvlqxa+P69O+mNEnisCZDCaP9/yDR7+X
         3vYg==
X-Forwarded-Encrypted: i=1; AJvYcCVfgQ+yyutGzsIC/ZPAOneWwofKgaytljm3gxUR3sftHoiONedghz+x11y8ffu6Na6Gj9hizzJ7Dpyt@vger.kernel.org
X-Gm-Message-State: AOJu0YzQZZpxFVOtsVmPp2wJqkSQhHBfASv9ECPKmdtzrlDmc9faH9zo
	dO6U8RW87xPYyuac5CR0iWHGk6idzzUPxaU+jVSh774wM5KqPD8rmi6tATqsSBfF2eEJJb7qeYy
	AK9VMunsZlxVNraJ+XzxO93twoJiBZ4EGYj7ciR82+Q==
X-Gm-Gg: ASbGncv0wBA2dt9fHL0Ruu2LlQq2VvRwMXBkvEgqmzTiM9FspWMNh7tUGyzHLKzMUvj
	k900tVax0ojpbma6LKpQ18+p2H0GmVyAZdNkWhL+cd5ukiQe6QRkYmxKR3ihA8hk7zswEOi+7R7
	N6+KoDwdSQTkmeyybgsfBIDw+2aKyoyYYWT3RggcUdPaEZrgidbmv23wR1LuAro0ndHF0ERzhcS
	3PgLctLVS+fct4paeM8oQ3ELN5hMAWGGNXaG2FOeqjCCH8t3hWtT1xGIZj8QLNAl82ga9Jc
X-Google-Smtp-Source: AGHT+IE+mDtAHcj8cofetU5hFSC919BiuXGPbquu3PKU0UznoaKUN13j3pgLN59a6ZtfWEBTY/v4Bw3wEb2vT1GSTdc=
X-Received: by 2002:a2e:be25:0:b0:336:c873:1b10 with SMTP id
 38308e7fff4ca-374c36cc060mr6748801fa.15.1759488947068; Fri, 03 Oct 2025
 03:55:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-glymur-pinctrl-driver-v2-0-11bef014a778@oss.qualcomm.com>
 <20250924-glymur-pinctrl-driver-v2-1-11bef014a778@oss.qualcomm.com>
In-Reply-To: <20250924-glymur-pinctrl-driver-v2-1-11bef014a778@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 3 Oct 2025 12:55:34 +0200
X-Gm-Features: AS18NWAW-daWoNVINmwOmpTVjv-RaNkrGx2GTsWudsPfvxarUw2lB4KUyWnktIo
Message-ID: <CAMRc=McSfXDmObrBeCAnawe-BMB+824yEbWR+4vxJai9-n9+tQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: qcom,pmic-gpio: Add GPIO
 bindings for Glymur PMICs
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>, 
	Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>, 
	Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 24, 2025 at 7:01=E2=80=AFPM Kamal Wadhwa
<kamal.wadhwa@oss.qualcomm.com> wrote:
>
> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>
> Update the Qualcomm Technologies, Inc. PMIC GPIO binding documentation
> to include compatible strings for PMK8850, PMH0101, PMH0104, PMH0110
> and PMCX0102 PMICs.
>
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

