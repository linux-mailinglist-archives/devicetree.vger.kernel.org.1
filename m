Return-Path: <devicetree+bounces-53355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A1988C093
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:24:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D63301C388E8
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 11:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DE8537F8;
	Tue, 26 Mar 2024 11:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fb9g8or3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C8B5475D
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 11:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711452278; cv=none; b=DpK063y+KnNqg82A/N40qbh1oZzaab1uY0D7AiEPlu1cJc/wYjBeokzNS9TpoIJVFxQrscyT5cnepNoeY5J4QSscgOGjXTGiB+lsQE5K1V5Mf/YjpUY5uKgAhYSueBkpOulfdeCJZNFGtnYn9MhB6YnRSC7S96kXyge8iL3DbeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711452278; c=relaxed/simple;
	bh=SFnUOfDdBU1QEnc87WhWOnlkhgpnUSM/FP3ES0Az8rs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SippxVOZ1gw0L/SRlc1NEV3H2rT7mMHElFJIIjeLfQvoO1yVvxCBraIzuGQD4O1xqgGIe0zX1on2I/+C/J3LE25B5ujK/uoph1NxrybgA7t4OjO+SeEVX4pNP0ipA8OKzn7PQ3wEnsyv6dYpDWIz6yFQLucIStai4u3xdJ+qpTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fb9g8or3; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcc7cdb3a98so5396255276.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 04:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711452276; x=1712057076; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SFnUOfDdBU1QEnc87WhWOnlkhgpnUSM/FP3ES0Az8rs=;
        b=fb9g8or3i8CyS2mKFX3yGqLgarHFBOjrMMmE8G+Ne00MpHBYFtziUfS6zCaH+RQb05
         xZibK8d4kIw4XPMBpKhh5b1CnoBSKjM5RbTQf8yx/wyDgaPjwV9kttgCvU9QM3OUCqtn
         qkMJogc3rC3Bz+5raCX4UclMTjlDgMk4WLUSvS1eepTzs5ME3Aif/4qloCeRIVK2+vjp
         20gKj4Y0T5zNpM5eONMRDowFGhlijWNTHJdy/7lwg8sdw4rZJGSP9uUxAEeCytOENK8t
         SfVmtgUleGPeMcYeqCcvh89+Xb5MUoryOqOAkHJ3/KSdUy/q++rVjtV0mXzNwyDtC18/
         3kmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711452276; x=1712057076;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SFnUOfDdBU1QEnc87WhWOnlkhgpnUSM/FP3ES0Az8rs=;
        b=ItChTP3sSWRfvwABkt5Z84qKXxOV+dsUx6Y34hJ44SP4n71AHZniF/uwjXUIN8lV2r
         Ep2dAR6gyURRZ2FzlXwxR4+nOMyO09bUYSsyLtbFvvHq4h7YR38L45HYpXoWmU/P5GQ2
         KwRYo6CjN4LtwcRXj8707VyT+lG+JQcJrZYbEi+U19pB8G2R39YI9LyMTRYJEjxYY0aZ
         50SZ1Wi3NmW4DxmXC18lkNuIFCGeUeaA94nfsy6X1s61qmVJwx/F9QXGRr27Cw2CvuLL
         wAwkJXxo04cxX+7NBZ1+sFhI8jyM18M40QlXcBMvelWxrY00eWMV4rxenHqTxszZBAFf
         bqaA==
X-Forwarded-Encrypted: i=1; AJvYcCVdD9uSXHG8898UGaM6rQpn0oceQZvKnRVflGruFndJg5bsWT0B8m4h8l3hg0xUII91F8oE2BKFnBI6HipELxYFy29zlshieF9cKQ==
X-Gm-Message-State: AOJu0YzbyFdWUd1dr+7fXn8CcFUV380VUeFAPxUP4a5IWMqx0C0zdzKD
	XulTYPD497oksIC6xHS1e/XIxu2h/PMS96laHjdwNe3wX7fKRSsoXJqanwyQ0K5tQOFNfvvmVSR
	NlBzopWdp5QTBdM4jXOTv3NrpJUHn0x5AwlRM8Q==
X-Google-Smtp-Source: AGHT+IHVA51kd6vokBv+tMXjaQ8yW3caIslHt2ATnAepJP8JfNzsuIR3AjQLivmAMwHIcOsMZds4lgdKs7qsvmS9Vlw=
X-Received: by 2002:a25:26ca:0:b0:dcc:99b6:830b with SMTP id
 m193-20020a2526ca000000b00dcc99b6830bmr862332ybm.19.1711452275673; Tue, 26
 Mar 2024 04:24:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326103620.298298-1-tudor.ambarus@linaro.org> <20240326103620.298298-2-tudor.ambarus@linaro.org>
In-Reply-To: <20240326103620.298298-2-tudor.ambarus@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 26 Mar 2024 11:24:24 +0000
Message-ID: <CADrjBPoGX7Ot=9esu_wFbhuqiVO+anr-PnpxGjeXFG7NR_kP6g@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: exynos: gs101: move serial_0
 pinctrl-0/names to dtsi
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, andre.draszik@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tudor,

On Tue, 26 Mar 2024 at 10:36, Tudor Ambarus <tudor.ambarus@linaro.org> wrot=
e:
>
> The pinctrl nodes are coming from the shared gs101-pinctrl.dtsi,
> thus the pinctrl-0/names shall stay in dtsi. Move them.
>
> While moving, reverse the pinctrl-* lines, first pinctrl-0 then
> pinctrl-names.
>
> Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

