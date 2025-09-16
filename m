Return-Path: <devicetree+bounces-217749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34913B59286
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFB6E321273
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4463A299AAF;
	Tue, 16 Sep 2025 09:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZAo9gEVJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF313283C82
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758015796; cv=none; b=GZRzlC/UqTTk4mjNqDOjtB4bw7i+uAQWRctCMyWV06BKbDbSu8cGlvHmsMTI2xi3N1jMzr81x4B4ji4mdVdgKifis1rMiE3++KMBKiIvsG3I8S8aaTDP16/l+Swb6QDmmXHxIZEGF1VeSQlFPgQwG2+5tF+WsaIuvdAm2WVIQ5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758015796; c=relaxed/simple;
	bh=6xbawwmBoJ+wZI7xS6DVzS80oa3hVLAsUDbr1E7VfLM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TGls/mUY8KUoNvTqEKAmYvh324d6XWesD2gZEYsD2JmZdZEUoTlQUMgb01chEdJO7GOk43ZzcH7ZKweNJXmFU5IKh44AmcusbRus2lEMxc0jVob1dxjGc2B1YDmI7zEWYXpSVeaX57PSbvFXNbPniooFybNy1gbhGQTeYqp5mcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZAo9gEVJ; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-71d60501806so38413657b3.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758015793; x=1758620593; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6xbawwmBoJ+wZI7xS6DVzS80oa3hVLAsUDbr1E7VfLM=;
        b=ZAo9gEVJQB2epSqxvyp623DU+7DpTM7yMPaT0x1aUtSRVF4s0731wSj9CDmPhZMMH0
         kUfa9JKYZVOirN7r1EeEH/a2viDosi9ai+KEYVVJ87pl98o2wI5tgrzIfYXcEuCOm6sx
         N6+IKOV/ctsCd0P+UGO5XLbffeTL/KiHq8ZGbF60I6+nLf+PBcTQaNgfr+JMrLSWv0s9
         N+F+sLgb8UrTPBBs653nh+lngjxzEMAbWfr8/K2u/0wKFUPrhQfvHcqNdsGIwEhuRiOu
         so4zqEMwrvwPfojAL59kXEUpyab5QW5BA5oOqGeTYattPraK5P8YK9sEg88GFQnZaVUj
         60xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758015793; x=1758620593;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6xbawwmBoJ+wZI7xS6DVzS80oa3hVLAsUDbr1E7VfLM=;
        b=uI3/NSy/YQcD6+jKe4vpfABM4M9U8RPsmK5ndJxI0zIPr5WYtPkzoUn+SlN+l6BDA0
         lN0/zUdj3+GdnjVTnV1RJa5ph2wGTEmMBQQHAfxKyo6WI5VIj3bFyovZmGZYo/XjrqM4
         2hAoabwoDynfI1/vNvZZpa5Bq/sMsktqiUqIWeaHx/osgMs/RcfEaDAjiTVPoJAyt4Ng
         A4884kQjkS5iYoKVjVdirNMnQDbdadcYOUk5lnAsk29vIt+ZM+PgbDOyPPhPQatljsdX
         lntq3fZgYsQj2ZS/ptl8CTbK5qTxgSjTsDGYiYYVmTs5fFvZDZv3AIvXKm73bB/XI6+/
         qQCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVe+2YAUtBBQqQPwLN4Qc/JSE60h3xGgnbuZDFo4lSpzS4zAKTA9wZtOcR/MlO3NPt+wmyAPVSrpikL@vger.kernel.org
X-Gm-Message-State: AOJu0YyI91QuYxQM0YV9w/I+JjnemSBCOtpZJNHOw9tq0pOJ/2QXmQ8n
	t5e9/CfIsaXrp+xFNAZfSslytRIhzsBc5EDKt2/d0KEXKNiJnD0C3pt96v0Cfa7oYEeErpGlvht
	h1HP1iD7CKKncjvZxQjLu7E8QFftzK7Y=
X-Gm-Gg: ASbGnct47q/8SyK3cEp8+4YXtJygj1dVQSC6lbsYAICozFfGTEtbc885CIpmd29L7J6
	ZpCGAzN1yZMOuFjfL+vyU6CMw0YkKsf/l9b9CbZ52T93I1cePk99yS+U5h+jfzEHHhFsnxoOvui
	ZJ+oGx8sSoLil19w3r7AmuKbmbpo8ptckVQXXxG4+geUehFotzX3Z7ZkIXKieK0KanOyJZMUX/L
	dHRMJeQW1IyU4pWeEOekP7FtwmJ6bc=
X-Google-Smtp-Source: AGHT+IHV/RX93XAmuJF2uL0N4vvl4pBykKHWOWIaKMzu4BBoHbE2JJaflos/7YY6pTURHoTpA1UgbNRwBPMZjCyfZfM=
X-Received: by 2002:a05:690c:7088:b0:723:b16a:ce6 with SMTP id
 00721157ae682-730659be315mr116536247b3.50.1758015793437; Tue, 16 Sep 2025
 02:43:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916-flexspi-dts-v1-0-61567f969165@nxp.com> <20250916-flexspi-dts-v1-1-61567f969165@nxp.com>
In-Reply-To: <20250916-flexspi-dts-v1-1-61567f969165@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Sep 2025 06:42:54 -0300
X-Gm-Features: AS18NWBOYsyflacEeUU1SMpoaGg-Ie2TjGzWnHyRp3ZhqTvzAQSB9G1WINvKAyg
Message-ID: <CAOMZO5CTrGA19npaW+u0=V0nUV0nAqoH+p75L06yR28DVBGfYg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: correct the flexspi compatible string to
 match with yaml
To: Haibo Chen <haibo.chen@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 16, 2025 at 5:57=E2=80=AFAM Haibo Chen <haibo.chen@nxp.com> wro=
te:
>
> According to Documentation/devicetree/bindings/spi/spi-nxp-fspi.yaml,
> imx93/imx95 should use it's own compatible string and back compatible
> with imx8mm.

Nitpick: "fallback compatible"

