Return-Path: <devicetree+bounces-67164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A4C8C6CBA
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:18:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 674C11F2332D
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 19:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F40015ADA6;
	Wed, 15 May 2024 19:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ugk4nfFu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE2E1591FD
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 19:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715800681; cv=none; b=nbMqHezUq4ZubDMtUZLnUGaJvzsLLHg7XDNVy6L2inE3OWDkh8d+UK/0pNZD8zJ7sbdlVKWneMs2Y/ZGk7og643PtOYB6dWK+sGDNg0lWGH5cl2sS3lLcLMXDuBycwkH+Ne80nR9GjSiDTbySBmvSbue45+wwppuzKDFHg6UtWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715800681; c=relaxed/simple;
	bh=CPp/HTGSY2HiQLDatrLtpTGFshesDpce0Bi4vdjYKoA=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u3R34VQBEC/qadkLeLeeyU/Wa+yXtjl4zdo422dQ+MlvoyFrxTLJPLfhVp8tFeDzv8gjevXT8pV6TMwtYXaq22tt8SCvSjCG8YXiTfCUDfd0lr7kEdJ7v4jaW2L7OuJ/bp+0Ukmu2CdoOScf2lm/MPFUNwLsjAfXPkNSgKASvDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ugk4nfFu; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso6768074276.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 12:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715800678; x=1716405478; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CPp/HTGSY2HiQLDatrLtpTGFshesDpce0Bi4vdjYKoA=;
        b=Ugk4nfFudEGnmxbeMe3fqOScBd2csDTdrrIrc553IfAIMJtcBbrY9xyd11GfZa7zpq
         9g8MesNTlkcq5BNdZyJdbG2ltgjJ6HeQHjF1PMlhJQW/o8QhHDmrJmwal5UtP/BQ5K9a
         d/YRZnPsUJnZAGkfgFNMAcmo85SqcBJbmRw6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715800678; x=1716405478;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CPp/HTGSY2HiQLDatrLtpTGFshesDpce0Bi4vdjYKoA=;
        b=r3SX5Ke9oTYsAP+NcKGy6IFV+pNWXFgq0smW9bAtTFOhgUOL4Bhf1kzeVa15SBYlQ/
         l8pIde1t3Pxcpuj2P7mPxRtkjveGjgwZkyCwvYofxeeKzE2vYg4jJUIIWdK0TW4r4Q7o
         lYpXfpP7LwsBB9N7ohZ4QGMuPg1iVARM3O3lEMILKG5jvdjQ5SNnP1PqEley0miBeEEA
         qhAq8+gCSh8qps2uVAGMBk4cNk07R1rYRRg5ppFW8M3FP3Yiy8nFYeUMBHe+6/wqGoSX
         IAp3gpZ7kOsYEnFqAAENizQKb1joqoX4wHdmUU5hizn98IiThk1IoufIvZ2XZjMHxrbg
         024Q==
X-Forwarded-Encrypted: i=1; AJvYcCVFm2MolMNucgUS5l0tsC4YZ7vvXp6ZqqpJ72PiJ5Q/YmgKiBz8+0+cmQ+kWDH3Krk1xdV/qSXd3ATQwyfxZVmB/ukM2EhZNZEChQ==
X-Gm-Message-State: AOJu0YzEqWmB6lzBXDiA53N4PUHm2RUQ0MFkploB1XRq6GkcbV5RVuk/
	Y5fyMUx2xX2po7W2J2kSiCrDyJ9eJkQbaTtbF8xMbvi7s5n307vpr/mv5Rd+ptM0wirkZwTcvVr
	gsaVgiysa7T0kC3b9s3yo3DcY4L2qBigb2G5s
X-Google-Smtp-Source: AGHT+IFwkFXVASVtHHXe54Bdbs+H/MUnSJ+K2O/gJn4A57/o9XwLM5LjW5jlvs0cYMn5hlnXOzinjk+dbmRrXQRVB6Q=
X-Received: by 2002:a25:900b:0:b0:dce:fd56:b213 with SMTP id
 3f1490d57ef6-dee4f324ab4mr16873966276.7.1715800677723; Wed, 15 May 2024
 12:17:57 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 May 2024 12:17:57 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240514-ufs-nodename-fix-v1-2-4c55483ac401@linaro.org>
References: <20240514-ufs-nodename-fix-v1-0-4c55483ac401@linaro.org> <20240514-ufs-nodename-fix-v1-2-4c55483ac401@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 15 May 2024 12:17:57 -0700
Message-ID: <CAE-0n50nygK8+0yVUx6MQPwG7+07J+MuGcN1vx77RPZOipffPw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Use 'ufshc' as the node name for
 UFS controller nodes
To: Alim Akhtar <alim.akhtar@samsung.com>, Andy Gross <agross@kernel.org>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Manivannan Sadhasivam (2024-05-14 06:08:41)
> Devicetree binding has documented the node name for UFS controllers as
> 'ufshc'. So let's use it instead of 'ufs' which is for the UFS devices.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

