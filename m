Return-Path: <devicetree+bounces-21172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2334802AB8
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 05:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A73201F20FF7
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 04:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405454A30;
	Mon,  4 Dec 2023 04:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DqRUknkI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83A62FD
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 20:10:10 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50bc22c836bso5387339e87.0
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 20:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701663009; x=1702267809; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lhswPmiVy6lTwRPPQjhZbdHbxCgvuqFxGlR/Hxiz6ZQ=;
        b=DqRUknkIVZ5p6bVgwnISpatY9xjx0Eh6wxiLIXH/XqPmZhSA58xUJeBKH0ai8XBNFb
         y6AuUvmYNUZEEytlQ41B/ToFe3KIzBXVgFP9N10L0eh9gnJxxc6mWxOZdbsoTgtmeLA8
         fr3uKCsDP3NXRchiGgw9aEAEsa8vSG8ke2vvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701663009; x=1702267809;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lhswPmiVy6lTwRPPQjhZbdHbxCgvuqFxGlR/Hxiz6ZQ=;
        b=v4ddLHwafIniAJ8vpr1uYSHb3i/Glu1AFxqvTnOik+6XRHIN0OC6U5GvXdhwQkIDyG
         oDv3wVrBsr+ENRJt+9BW5aPcqYcGndbkv3/LGV6CFVQg0oL2SP5xTGgLtB/SOkn1vEhu
         RmTEADE5cpvr/0kV4o2UUOrVAfpRuClvngy1beX462MxyywlV6t+bz8cYYBlFytOWj1s
         hpSF7HT6IM5R/VJv9B1N128DISxtr5i0+eX7H4c0dWSqRiOPkarJwOSMcdpXlnVgeABZ
         3v22OGbEJ7k0dNIG4Rq+kQhvVBe0EdyvXySTvWqyc/J3LtdHpVbBAhFEa3d8ZUaeU4HC
         ryWQ==
X-Gm-Message-State: AOJu0YyJtPiVjzLIil5CDo9kNBT2bWrHEyvgzbO2JiEBpbzu4KCyUAB/
	uJkSykkXV1qhkISnCiDYgQnkWYu9C6llFJv4y9Vd8g==
X-Google-Smtp-Source: AGHT+IHcnuaAviNwSAm2rQD4ZSX2bAuKqAte/5ntOrUGWfkAXJ5Tubl40QHkscRGdwvx7jo6maEGtxUPmzDDq8Z0Tdk=
X-Received: by 2002:a05:6512:39cc:b0:50b:e4a7:7986 with SMTP id
 k12-20020a05651239cc00b0050be4a77986mr1974200lfu.124.1701663008719; Sun, 03
 Dec 2023 20:10:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201123935.1057929-1-festevam@gmail.com>
In-Reply-To: <20231201123935.1057929-1-festevam@gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 4 Dec 2023 12:09:57 +0800
Message-ID: <CAGXv+5E_xA=TH9QfGi91JpXcrhgPsVGiHxYEQAY3902e0WGmhg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: drm/bridge: anx7625: Remove incorrect bus-type
To: Fabio Estevam <festevam@gmail.com>
Cc: sakari.ailus@linux.intel.com, rfoss@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, mchehab@kernel.org, 
	laurent.pinchart@ideasonboard.com, devicetree@vger.kernel.org, 
	linux-media@vger.kernel.org, xji@analogixsemi.com, 
	Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 1, 2023 at 8:39=E2=80=AFPM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> bus-type =3D <7> is incorrect as this is a DSI endpoint, not a DPI
> endpoint.
>
> Reported-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

