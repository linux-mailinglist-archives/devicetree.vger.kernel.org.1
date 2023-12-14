Return-Path: <devicetree+bounces-25387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 802828131A2
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:32:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B2D5281E3C
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E138356476;
	Thu, 14 Dec 2023 13:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CWWmVcCc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B1A7111
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:31:54 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d03f03cda9so15972615ad.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702560714; x=1703165514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=njzFHT+6jrieobcv+vPeeXWt1a4WNMMgodZEkNVd8kA=;
        b=CWWmVcCc0GCElLLy7mMUV9PLNn7SuMle8hddzAkb8yMY6tGiodkI24eOzgAIhkKxDG
         4GV5iUeNoprAB2Cnb8p5jyXlTwRFjxYqk9EY5zOlNnqQh4pSnGWO1Y/t8iaA+Q+xoEiv
         vEFshxZyQ26tTiGSm1mQyiUYo0C0SQS8gnUmR9VUk4E1+6Q2AlAvL4QIJ+QhyL5Dv5UG
         EueMGZH285epgKOhOtz8e0A9owjbVAzIGJ7GX6wH5+cKxOz0FlQUfuNfY75QOeEgOAkn
         noGvqMshqgoS3p4g5rObI2iH3f63Vw7/Lo6xVdAsgiz9oskEoApdy/M2TFK3kptk+iMI
         q/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702560714; x=1703165514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=njzFHT+6jrieobcv+vPeeXWt1a4WNMMgodZEkNVd8kA=;
        b=bKxiMnkG/xQDQHZOW937u8Pycr7oSLjvx5LgArCyqbp15AkY1YsxPm39WSbw6leDKt
         oeHLwiUIOlUGf9BO/oUHdFHqewo+oIZSC/5XnTZHDgCBtQiVvVwSI5P2yCxyc2nbQhVe
         7tOi+EZNYiuBuGizDayQ2KBC5pyeLRHkoxpZzYG79koEbhNmgY/wkg93LfhIRAahxb/q
         KfdJZmnQUc8e0imiMNpQMqFRZjYja3oowqDZQsZPasWD/VyN1tQ8WwCThaNXnZJfRZYl
         FB0N7M1+1GJ4I7RzMvrr+Z9fbDxwcJYaRC+NE2cXJOVkT35YGlS1MoWon1N791fqu9lB
         Si+Q==
X-Gm-Message-State: AOJu0YwmIWZcb4ejkQc3NnlLPT1Ma+MOsW0VpJCNWZgTIWUae0983urQ
	F+u7eNcqb1fKIBW3JdqsEyhMRoGfA7HQXfnktjQ=
X-Google-Smtp-Source: AGHT+IHIyWcg+81n9S02FlwBs5yRWcfCa5L+XyXKru7Z/VjMwlRqASF673SGAqgGCJUzqzoHBEpMxVE8LZlqeBQ+QzI=
X-Received: by 2002:a17:90a:6345:b0:286:4055:63e0 with SMTP id
 v5-20020a17090a634500b00286405563e0mr16717807pjs.0.1702560713920; Thu, 14 Dec
 2023 05:31:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231214132000.1927638-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20231214132000.1927638-1-alexander.stein@ew.tq-group.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 14 Dec 2023 10:31:41 -0300
Message-ID: <CAOMZO5CW63xA-ZBkAFahp_e_fKKuwzhDy8rMJ2V3Y71udV6YHw@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: imx8qxp: Add VPU subsystem file
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 10:20=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> imx8qxp re-uses imx8qm VPU subsystem file, but it has different base
> addresses. Also imx8qxp has only two VPU cores, delete vpu_vore2 and
> mu2_m0 accordingly.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

