Return-Path: <devicetree+bounces-67163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C52058C6CB5
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0172E1C221C1
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 19:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DBE915958D;
	Wed, 15 May 2024 19:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VaVjYqTa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7F71591FD
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 19:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715800647; cv=none; b=cgAgsoIc80hflUcJSPJueqjkiTFnav6ire4DiR4ZpMuLns1ixqYllcJlhdT7ygGOePD92BxyS6csm34dNCvw9C13GrTmTbB4Dx1ZdbstUzOIreZn51jTV6vAkBvvMa2SG+0J0aHi3DDjWxrBv/T5EJaeIX1G4tuR9+6BlD94ckI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715800647; c=relaxed/simple;
	bh=2wOSUNfTJLFeeO8pVhd+GkVyVWXNaK2KlYom7vpA//o=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TqSQjrEDUM4q4aq0yaUTz4mMs3JVT/fUt9L/RyOCs2zVBN6hg2/FDAiqNcLU7zxwprIfpKaY3m1VVwIeyuQsRKuqEpepEtxdiXxtsWW+lPjhlt4YueiN9a0m/+/5LTwpVHBxEUM7oXNTcYCbxmhHdT9nxUzJJEerPcE5ecxU9MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VaVjYqTa; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-deb654482bcso7828233276.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 12:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715800644; x=1716405444; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2wOSUNfTJLFeeO8pVhd+GkVyVWXNaK2KlYom7vpA//o=;
        b=VaVjYqTaqag5ahciEsniuQeiaaM1+WmSRLj7IXRyvHoUt2DH50yTedQ5Y+ummo9hEn
         8ibYsnVWXPkJrxQEpwQXEaVs7XGLeZFLK7BqoePSkso/7QRO87sDMaieV3dLy3HJfPil
         NCPGqIv2fz2hMHLsN1IVkdzj3PL341mKrhO2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715800644; x=1716405444;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2wOSUNfTJLFeeO8pVhd+GkVyVWXNaK2KlYom7vpA//o=;
        b=w2jkt4Nnf7+DZQ5rsKeD2tQqYuBfIZPssGOvR2Y37M8xQmMIBnAyT1SWWjkAlfoxWq
         qfhAdAS1qDXY2DS9LxTYl0aoNrh3bITYfWvMtTND8VyjIrGDHpm60aB3sbArWDc0bM1y
         TwmLg1GRUIPypCiaYEwpTsg5gJeu/sG3OW8OWxjHtO7DQ2k/e56dRjfYF2z9co8T/DHQ
         xbZdsn3VuGfDrq2cSAzB4Xxa80h3CZLBvyTYgPj5HqMz0kZcwn4tDKlsCS81Xlr7K9Ir
         /OsmgrIlYCdvd1nzJiGUfj9/6vvZ23brx5kCFqhf8gkLORq/FrbeBo5yPw1fUY+ro7pO
         GjIA==
X-Forwarded-Encrypted: i=1; AJvYcCVmA9Y8vvdMp5MqYo3Q+K/wmcnlEI93R8t0KxkLfFqaK3wAe8FM7DHBaRWPz353SQ75ifo6qgGOFjenHYqB7/agYNaQqcuw7UrSzA==
X-Gm-Message-State: AOJu0YyXY09t5X3uq4sfe0OFtIL7mH2aoS3t2C3+Z+Q7poIc0vchaZ60
	tvV/Mir9Zc9X3BNrFJxA6UAI8hmCmm9PPmQDOL3DdYN43Dgh1z4c/s/MRbcSixMHSfkKg5YKDDu
	Fv7YRsS6QRfn6DHKiMflMLio1UGw3FWq+M9zL
X-Google-Smtp-Source: AGHT+IGovPGHDhP22BqWNaDOxfm72F+WXpO5BaZMtM00OAugcjSUU6eQQoWzKsASpiWzzblUTpSndz6EgU420El/kfY=
X-Received: by 2002:a25:2e0b:0:b0:dcf:3ef5:4d30 with SMTP id
 3f1490d57ef6-dee4f2c71dfmr15357241276.17.1715800643992; Wed, 15 May 2024
 12:17:23 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 May 2024 12:17:23 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240514-ufs-nodename-fix-v1-1-4c55483ac401@linaro.org>
References: <20240514-ufs-nodename-fix-v1-0-4c55483ac401@linaro.org> <20240514-ufs-nodename-fix-v1-1-4c55483ac401@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 15 May 2024 12:17:23 -0700
Message-ID: <CAE-0n52AYOgG7S3acMj4ZJOvAwNLvQnnv_P8=D+fMYZb0csoBQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: ufs: qcom: Use 'ufshc' as the node name
 for UFS controller nodes
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

Quoting Manivannan Sadhasivam (2024-05-14 06:08:40)
> Devicetree binding has documented the node name for UFS controllers as
> 'ufshc'. So let's use it instead of 'ufs' which is for the UFS devices.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

