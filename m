Return-Path: <devicetree+bounces-207477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC37B2FAE3
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F6171D006C3
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E35338F4B;
	Thu, 21 Aug 2025 13:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QBkuTnPA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D8E338F3E
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755783296; cv=none; b=YMJBpQ44nIj34xR1uaehBezMQcW9FRAETEmWit0y3STtvJDoZdgn3++jSHctALHSECBdkt1C0dshlYA3mOAEyqg6m2voFI9OE+V2Z00XXixxb6a/AFhGUvE1uL4zsSFdjYpDeB4xkhP0Dll2bTfvYQ6O8q/LNsxO45tdgu633xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755783296; c=relaxed/simple;
	bh=kv6n6GOVWTADV8kGP5+6GEG5ThL+6nnGm9DljXi3Qxg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=chG+qxJof20N/Hql0YxP2nNkEfmj0Mz5yzaLQTiMCv3faH7LlcEwBFnClzv8JRAPEF7DeZsqHQTZ2haJmZBOVBK77IWg7wzys6evQDNf7T0Y5a6vdhC/5B9ZnFDSKvsXrIayijKwpJD17CrX/g3d5efNxEg47RupoxZv9PFK5Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QBkuTnPA; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55ce52807f8so914102e87.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755783293; x=1756388093; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dnk1CgahWWI41MJxVYInV4yTmBrTqgMN7PmBauKY3jg=;
        b=QBkuTnPANj3BZINlJazP7frVb5LANa77kiv1wlh6sdJ1Rocs65TYZFopzIXJ7Gpo4E
         bt6XHcKCfPzrwWd26qjSGCGOD0OjzXiZTJ0uj5i1lBkPsIxheHzsRJnDnkKWTasUnh98
         w+xweOAbIQHvTKl0Y6B2wJsyMZ7sqxz6Ec85xNOUBKF60rZ2gc3Wc4/5Y/+p8uZtQJUc
         mv1JfcJ0DfZ122AHny8DVZSch22ZlQUos0ZzKopjrYJNr9+PM0BWvZgEet6VbEOQD8sM
         ELG1MnACc3LwbBnbAAYJv8VRmXmQ1e9pB8tUINj6oYmnnxhzxpG9Lr0zW4A9M93/d+y2
         QLPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755783293; x=1756388093;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dnk1CgahWWI41MJxVYInV4yTmBrTqgMN7PmBauKY3jg=;
        b=tpE1kEcLx0TzQXgvaa8dqLTvl3cqpmbAUlHcu7HQhyzAHmykWPqzHPQGAqeqTmcEgR
         pdLgyqFPM3pQdmiLazJiTqzgjH18fmbvzp/eb+LdSZEtKTPxAhtpne36vd+WwMNCLDWZ
         XcEsHsexrEgMuwEyyA2Z5Sch7iF/1DmFReWdBqkcISjReDhxt+0EUm1bEO1dA3/iB46/
         gz+xxqi9L0p/t3RsWfeMxCddq3oIbhhFTX/lr2tDUdBqbY2PHAmW8lgDhVBtZMDm+rBU
         tgKbEHFO6y7uB6lDkQtPKBGh9bjD/80XCBOPXieRxPDnCFI1L2/BZATcbO40yUXB+e8S
         i9JA==
X-Forwarded-Encrypted: i=1; AJvYcCWxvpginNC00c7E7bdgpp4Rwu0Gek4g4WSGOGKuupMO6kEbXSH65WvOH69ZKY1+jIvRa7HEoK00eh9/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs60UrWF9xFe4iiBjylDdA+Yr8R1VY34vrv6gTOdvonILCOfnF
	4lhqtD7E9wPlrd7zXMuv6KnhPIS22/hlO4iYTE96Hb6PvaaxlfPuQFf0dt9a434O3gEZ41Zct/I
	dhOGHD9UfnTVrAKHelX5UwYXyz0QahYRFvatvN3fk+w==
X-Gm-Gg: ASbGncvwm3dDnHioSFuzh/dPlyY6Ty3UVJi1ZLfg00XtTJu/Dyu+yX6CxdX+gGrhGfI
	oY6TceUwyjhH/yIVLrBMceBEuzY4FWktZ9L0HphvnjDvfFP1/bKycb8Drb9MvqhrH9HgYtC8pnR
	nXR2hngGA3IcEvZQ0iOu/rtA0xcEAu9E98irhVQ8KwcDQ2uNhKRHF1rILtuNPS5mbR7I1lYsh9Z
	QhlLuI=
X-Google-Smtp-Source: AGHT+IGKufYc8VS+JVO/RTN7GptvxunMWcIXqzHM88cXAswfPy/+XrvyTDd4OoGPmr6RyZIf76Xo3OAHmqvX/1JjcQo=
X-Received: by 2002:a05:651c:2112:b0:32e:aaa0:b06a with SMTP id
 38308e7fff4ca-33549e41fd1mr7866791fa.8.1755783292895; Thu, 21 Aug 2025
 06:34:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821044914.710044-1-quic_pkumpatl@quicinc.com>
In-Reply-To: <20250821044914.710044-1-quic_pkumpatl@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Aug 2025 15:34:41 +0200
X-Gm-Features: Ac12FXzZfdEuIXlDJunjHifIf2iPhc7L3Fxydb1EWGcglhWvXkLWa6PHYXSvLu0
Message-ID: <CACRpkdYEzbM33HBAhHEmAg9f4Zpi=2WvqPdZ35=M2eVCqcTTFg@mail.gmail.com>
Subject: Re: [PATCH v8 0/9] Enable audio on qcs6490-RB3Gen2 and qcm6490-idp boards
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org, kernel@oss.qualcomm.com, 
	Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 21, 2025 at 6:49=E2=80=AFAM Prasad Kumpatla
<quic_pkumpatl@quicinc.com> wrote:

> Mohammad Rafi Shaik (9):
>   dt-bindings: pinctrl: qcom,sc7280-lpass-lpi-pinctrl: Document the
>     clock property

Can I just apply this one patch to the pinctrl tree?

Yours,
Linus Walleij

