Return-Path: <devicetree+bounces-120398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0479C27C3
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 23:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 396F51C2130C
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 22:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D7E1E1C2B;
	Fri,  8 Nov 2024 22:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oiMLQm19"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF74F1DFDE
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 22:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731106170; cv=none; b=n/9CyLdQNvg/v5RS7sr41RN7OFPO/XeS7eqxIFNl4+YsmEXZ8OCfgHEwIEJxUystH83wLY2kNOKwl9Gzs2LcOsx9wYS7Ov2CNf5mT4chjysvkc+zTJx5ALUgpD23GXSYUZof8Lu3A3QGbKs9iGqZsvQRK1X9hcRxh/N2GsUOdgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731106170; c=relaxed/simple;
	bh=fnrkhe8TaQ1l/3VdZlmr9/dllUYARg0Pzcml1/ngw+0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nw4M9ELoUfSGRZLlx4PfV5M4O1YVTi+BtlZu40e+TQr2IY3Kq9VVZQtEJX+zV4Fhg10irYVHYMHlpCKg3C6saJI+TXICFAlohp6lg5gRKf9EpfglGT0rVocxdn5ahik/jfO6bJvEohy0n27shhZEUiFBbHhTJlNF3LhHJJqngT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oiMLQm19; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6e5a5a59094so25424357b3.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 14:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731106168; x=1731710968; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qSBQVmACqUTbTDk3RCcuhyjlRE/y0cfNYPF2dNV1Uek=;
        b=oiMLQm19o4BVy9YLPfk5Fju3MGkigMFfejyG8FsjMBVId5dEAL5W4zW7FsVye6C3Iu
         g/AQr6OeQKb+byMt7nWZdldldyUWULW+zeIDERXjT39hWwYs5kkerYaL3Q2+3K6/Cryb
         sNIaYl7AwHqQRxFn0GvR8l9EAsQSziYivsiTD3hD27XqD/BoiDb42OA58ovsAsE5HeNu
         3auDY3EziUG/OLm0pwPElVKUL6V1dU4UHB8mB6kiIRGSGYa7/QbHT4uCDik1gGhKzQnh
         hjxO6nK46Nf80TATtTzUnKJx/bzWxXiT5y9Zvk7ipdsB6dO1GbASrCU9eo/yibKFPb+H
         KZYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731106168; x=1731710968;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qSBQVmACqUTbTDk3RCcuhyjlRE/y0cfNYPF2dNV1Uek=;
        b=qjR73DkNkfoR33IiHB7jIeOCpxzN7lUt8yMv3hmaSabIhSt9JFKrK6jVFOkCc09Y4U
         PnCqjF1EkAGhETJfF59u8X3iSp5vq6G9ZGPlHwvLgTA5YJ5ZImmnUpNzrcHmR74XXgLe
         0aVDG8KxXPgc9792loMC+7Ur3fMKpSzsf4owTJk9pxGb8L7nky1pwY9cxk0OP60epmdH
         zF1ZjhmVueDq59W8AKoy2pvUf8+WRT0QOzp/L3GtCYYTtgCf83mvwQXRS4o8VOObtyx8
         4NOERThJ4vfqhXkj/AGvDJw1gRjaFBQIFxY0ZuX6p7q1JzJ0UZEfDBTBzNIZ+sI7KCqa
         Ne7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXd1UpGJiIZctY9vgIBQqtVMQtdVCBG08pBaPuCHz3tzTjWndl7o22edhikHNPm5e8mIaHXrxqgcMLs@vger.kernel.org
X-Gm-Message-State: AOJu0YxOjSSjfXDlPjA5dv+mfmrPzRZL2OrbPAXVmUNVFDA3DhMn3933
	ITaZDWYabFBmcgVAa8OPOG5+EbAJ8lwBygLYZgnc/uhGanU0Rt6Eq0scAmztxg3O6NbVfcbrxfi
	8yb9Y4InTfmYgkq4VgOU0/eSdjmuQFjBS+ChRVg==
X-Google-Smtp-Source: AGHT+IH4tpHfN7a6089tjUF6WTZojFqAuHw/WE50022OvTS0d41/eF6UokIMdvNNzOUavomqiSkkLArgCl3qa0fbIi0=
X-Received: by 2002:a05:690c:88c:b0:6db:e280:a3ae with SMTP id
 00721157ae682-6eadddadde0mr52739937b3.23.1731106167960; Fri, 08 Nov 2024
 14:49:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241109-x1e80100-fix-address-size-cells-missing-warnings-v1-0-c1e173369657@linaro.org>
In-Reply-To: <20241109-x1e80100-fix-address-size-cells-missing-warnings-v1-0-c1e173369657@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 9 Nov 2024 00:49:16 +0200
Message-ID: <CAA8EJprX=2i335rm5JovkBYAYd=ku=yaNgFJVXh03BYEantGAw@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: x1e80100: Fix missing address/size
 cells warnings
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, stable+noautosel@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 9 Nov 2024 at 00:05, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The commit 4b28a0dec185 ("of: WARN on deprecated #address-cells/#size-cells
> handling") now forces all parent nodes to describe the #adress-cells
> and #size-cells, otherwise it will throw a warning.
>
> Note that this patch is currently only in -next.
>
> Fix all warnings on the X Elite by adding these two properties to all
> parent nodes that don't have them.

The individual patches are incorrect per my understanding. None of
those child nodes use addressing, so adding #address-cells = <1> is
incorrect. Maybe it should be #address-cells = <0>, but that looks a
bit ridiculous to me.

>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Abel Vesa (3):
>       arm64: dts: qcom: x1e80100: Add missing #address-cells/#size-cells to firmware node
>       arm64: dts: qcom: x1e80100: Add missing #address-cells/#size-cells to ADSP GPR nodes
>       arm64: dts: qcom: x1e80100-pmics: Add missing #address-cells/#size-cells to pmk8550_pon
>
>  arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi |  3 +++
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi       | 10 ++++++++++
>  2 files changed, 13 insertions(+)
> ---
> base-commit: 929beafbe7acce3267c06115e13e03ff6e50548a
> change-id: 20241108-x1e80100-fix-address-size-cells-missing-warnings-1cfba11bfdbd
>
> Best regards,
> --
> Abel Vesa <abel.vesa@linaro.org>
>


-- 
With best wishes
Dmitry

