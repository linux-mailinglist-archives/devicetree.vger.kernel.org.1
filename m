Return-Path: <devicetree+bounces-106791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 184E398BBED
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 14:19:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C14C2284A09
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 12:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 079301C2333;
	Tue,  1 Oct 2024 12:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HPFPMDCQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD731A00D1
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727785134; cv=none; b=BsRNIbyiAFDssgyk/q7cN2M1elLOfRcfuXyX3j7NrYUKqGTibZFbxItRdyr1ElhRr08wvKq/jM8iYZKfZ8ysITuGnqVaiPHhnIMOb9nKgnHjqueyvCiF5hI+ErB+MiKgwO578J/dvZRclboqlDtiPCRBrfvIZCnzOGQ3jASJGx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727785134; c=relaxed/simple;
	bh=lkBDPJFJkho1FBYDgIB5sEyVfdFnZBI+EiZwZtGMIzo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lR7LfvSH6dCNWikaMYXca3cyRkju6vdMNN05gyDhtyAM/wC5ZhdSl6aQ5tznKll6HZj7YhW7LYm3rfRUBrmFsI9oLHd+Ae8kW+Luxk6vHz/EKoUA6iOnlyXruBP2x4UoPUzsouJeoL5I1GOFvGB3dedziz8TystPKbxPl5L5lAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HPFPMDCQ; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5369f1c7cb8so6679705e87.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 05:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727785131; x=1728389931; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lkBDPJFJkho1FBYDgIB5sEyVfdFnZBI+EiZwZtGMIzo=;
        b=HPFPMDCQkYI3qNvZgy1dJNS0JidDb3tFPA3aert86VhoGdLMMTaRel7nmfaKcpLUfF
         WjsY1iL7hS7D7Wjs6Kas0Axr2lyqYiEDdPwiMh6kV5mOmp3GGpqi35+Q6Je7mOIvxInv
         WjpgtdgJv/TFp95aNk+cntrYFVINvmYY/hONBFWKGS28XH2gtB6iNr+kd0qC9kb8LPuJ
         BRhwgGXmFeCF25ev25QXPc5clTWn6CshJ76w+L2FL+lpMtZRWiAg239zOAMwngXarPev
         nSap6+iLAg2HIjtHUJJEuG9aPt2d+c8neaxDDHEeXVJ2Dg6gkhpoWXMzGCNGN3onfDM9
         wEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727785131; x=1728389931;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lkBDPJFJkho1FBYDgIB5sEyVfdFnZBI+EiZwZtGMIzo=;
        b=D20TywEkuYiPsQXDaNxPAiCmPYmNPT++RFdUKhWFc+hroUi7tbVY/Pyamc3G1F7G5d
         aRX80VJnnhL2zpX6M+IFp2nN/Iwm+RsW2prGcsXpuMwXnc0tLeiyFUMQBFmd6nS/Rw99
         Rhtp9gkwFZkAkhyaQgaNotj6N3MaJ9lwk+VHNq6z4t371aYJBNbLeOXzptD5FaJQtrmv
         LvBf9S7QFBBlrPM0Svq/eHJmJ9gb0rzd/oSnimrOCj6c4IH3mTvl1Zf4yHHH4IQ96+0Q
         Cm+FO/KQI8ew4zzDuq5XGMCXFxSXg0vgnO++ZCawlLYPe8Y4A6f7CirRe2eZVYD9fCa5
         BKhg==
X-Forwarded-Encrypted: i=1; AJvYcCWy+MQPpwajz8dp2XbnJ3cpFx6I/GHRc2S4kAq1yRKbDRaE+2lo9zSExyiMuR85RFOgBryUt/RNuTN+@vger.kernel.org
X-Gm-Message-State: AOJu0YyIZY5IZQcKWu3IRJoz8qPo+cAZlsL68vpMPOLcvsiekc7eYtkM
	b+FkZl2Z/wgmGh/F/w5V2oePyzDKT57SBZKPcNkRL/C4WU/Q0tqKLcV8XOlL/RZP39vGdrO1BXh
	JozXb3T229mRDJYAesmMDl36D9Kf42fFA1btcOA==
X-Google-Smtp-Source: AGHT+IFpRUvfChvcK0Zoknz0HBqA3HdDr3PNgNW4cdaJXr3HKoPBRRlGzU93KJDaW6ywdlCJIaqqDOXZQOUqvXb/T9Q=
X-Received: by 2002:a05:6512:acd:b0:539:8f68:e03e with SMTP id
 2adb3069b0e04-5398f68e0b1mr4792752e87.56.1727785131410; Tue, 01 Oct 2024
 05:18:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240927065244.3024604-1-quic_srichara@quicinc.com> <20240927065244.3024604-4-quic_srichara@quicinc.com>
In-Reply-To: <20240927065244.3024604-4-quic_srichara@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2024 14:18:40 +0200
Message-ID: <CACRpkdbV6JHnVU2_z4LaCUf_V-HM8nrXBfAs4ym5w+pQJexRFA@mail.gmail.com>
Subject: Re: [PATCH V2 3/9] dt-bindings: pinctrl: qcom: add IPQ5424 pinctrl
To: Sricharan R <quic_srichara@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, ulf.hansson@linaro.org, catalin.marinas@arm.com, 
	p.zabel@pengutronix.de, geert+renesas@glider.be, dmitry.baryshkov@linaro.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	quic_varada@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 27, 2024 at 8:53=E2=80=AFAM Sricharan R <quic_srichara@quicinc.=
com> wrote:

> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>
> Add device tree bindings for IPQ5424 TLMM block.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>

Patch applied to the pinctrl tree for v6.13.

Yours,
Linus Walleij

