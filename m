Return-Path: <devicetree+bounces-225959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5C1BD2852
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9A903B28F0
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1252FE57B;
	Mon, 13 Oct 2025 10:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iOYeIodv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4663228000A
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760350730; cv=none; b=MkBd2CCZ+T7yPKb/lHRhzcm79WOoU2ByhPIDoOA3y2EnTJgCcY/gVpX4MoK8a0aUZPyzybg4xJiQ3IZtqQWlCoAlzZaKCEfuAEWnOEYxG5B0ZcFpKLm7/rYSvvIDzgRYgScoIbbNsn9xvDZPo1RRIZS/d/0st96BEbgTX+tP46o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760350730; c=relaxed/simple;
	bh=KFlkKhsToSNiIVYTfCINycSlYKnfIJUcU3TZviU7e8s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ce3jb2T97FZfe3BjUTpbm/WCBq8B8Rn74kxaYcUxBOhs0xDN7Ba6DQqVrRz7ZkhgUam+4qHAK0zhn8/+kID6hMMu8gzftq7AKdkPfWALXiWw2xc05Rre0Bf7MgV6b8bP0WTn/j3yFOICCLeWA2uUV96zWLTcf2bnCNNZBVwHY9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iOYeIodv; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-57f0aa38aadso4694730e87.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760350726; x=1760955526; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFlkKhsToSNiIVYTfCINycSlYKnfIJUcU3TZviU7e8s=;
        b=iOYeIodvXtyaDUddlGM3xY01yXtcs4HazKQJXzb7o04o2e+Kpc92Ho1TVxyKcXNhFB
         eOau02nQeA7e1WlcsHmrBVIUA8efKRqzGfzkUjMnPCjv2FBSPWOZyHlGs0bVCVkmg2Mx
         kK7T16uivR7cXXl4Y+H0zQqI0vySyTNuLZAPSNYweaS0MqUkpF6dsCsxFgsRqUKwCWB4
         4zoFW43ef7+wSOMasn8lqZKpeMWZBcx14JRNJoHtt+aUiTSuiVms05MQWNq/AxYQYEyw
         aQ+ft//IRDU2OXVJQd9cHvgmpWMqjEK6b3leILKyem3Rhg57l3ieCIys7lEpeHwQE6FI
         4sAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760350726; x=1760955526;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KFlkKhsToSNiIVYTfCINycSlYKnfIJUcU3TZviU7e8s=;
        b=RC6rW5CV7ThK5V4YoOQbItWU1tMPTwcvhwoPc1bdlev8k8kWPhW0oKrZT6Oet3UuN6
         Hui3JkCqp15PgeGlDhiVXNfhjFNMN4a6MjtLIk58hNGAfZjxSdfLBN0GelZIBwKqh1iw
         496L3lfqD+lZCPyRC1S19kubE5J6ed9WKd6YLk1RfF67AG9uYTuO75y+MXRtx5Gc3XgW
         sKBoBw9RWXoL8FieGUyMwjUBHOtRhKaKglzUxKNblC/iAyXWEZ9DAJEH/PuKTY8NBZ3n
         H4w2e3b3z2qCdenxpPUM6J62zQbskyjQ2mSI8PU+Gu5Tk8I8uELVyq1JDboiEoDdEZS2
         Tupg==
X-Forwarded-Encrypted: i=1; AJvYcCXamQfic2P/iPTW/V3b/OI9JYkMTMz3WmDZiENIMjRMBmR7ZXlJ7i8BSAbEbJnmsqknI+R6jtcHRPKY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3LpDqezOu/K2A+EHWLfgKBWCQW67kI6jQfVQXmT14sA/u+Atf
	+S87L+6eLv1g3JH1dMW3Wn/mghsJmLUYUyM2dw3HHIgHyhrMBF5oLEGnUWUhM3KDoKUG5FQXyIY
	tbV9WmONxWpkThSXD1c+ToqxAkRTBI/8mlb40kKj+Zg==
X-Gm-Gg: ASbGncubRvcIAfQc3FheDsVnxBx2PsDwIt5mN7/etSO0uel+6SDMA2z1YPjV7e+sM8r
	F7u9KphdYK6A93VLO0f0q0Vp52kFSaka1HpR3C3oJ0BV1q7xZuyFsRowCAQosoFdVCIvbFzQjYm
	yWNrIZXpPWHvU8dbbNr5rj50jsouktDajxUMewcxAkDx/+g2SzVnaGE4BDk73WKKfZsjzdW31X2
	oU7m7y/w5MLytUBktsuRnu6VUVSzM9722s1qL1Q
X-Google-Smtp-Source: AGHT+IHH9tVr2y31C2s758P1Y1iCzf5CBBO+mUKp+b25MmlZjZZyEk+h30As98u2vagbtvUMjxHrZsPQPtd3jW6D2mg=
X-Received: by 2002:a05:6512:3c87:b0:58b:23e:5ec with SMTP id
 2adb3069b0e04-5906d8e5b43mr5753879e87.26.1760350726407; Mon, 13 Oct 2025
 03:18:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250921-msm8960-sdcard-dtbindings-v1-1-5a2455a30a06@smankusors.com>
In-Reply-To: <20250921-msm8960-sdcard-dtbindings-v1-1-5a2455a30a06@smankusors.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 12:18:35 +0200
X-Gm-Features: AS18NWAFBvRQlnNgwdeWFM-KX-enH6YfuOQVQqYG2hxpjoeevDbWK0MYvNQNYmo
Message-ID: <CACRpkdYJPjf7VX_b3u74UhNQz-kTzmvEkdo-YWYNn9fF7+T0ZQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom: msm8960: rename msmgpio node
 to tlmm
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>, 
	Max Shevchenko <wctrl@proton.me>, Rudraksha Gupta <guptarud@gmail.com>, Shinjo Park <peremen@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 21, 2025 at 5:26=E2=80=AFAM Antony Kurniawan Soemardi
<linux@smankusors.com> wrote:

> Rename the GPIO controller node from "msmgpio" to "tlmm" to match the
> convention used by other Qualcomm SoCs.
>
> Suggested-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
> This patch was originally part of msm8960 cleanup series [1], but as
> Bjorn pointed out, dt-bindings live in a different subsystem and should
> be submitted independently.

I already applied the other one, but thanks!

Yours,
Linus Walleij

