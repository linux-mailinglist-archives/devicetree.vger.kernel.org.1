Return-Path: <devicetree+bounces-18412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8137F6586
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 18:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79FCB281284
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03C0B405DA;
	Thu, 23 Nov 2023 17:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fIjCa7H8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 486699E
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 09:35:13 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1cf876eab03so2272385ad.0
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 09:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700760913; x=1701365713; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38QmMR5qWUUF3d4ez46gu28mY2bkSgtw/0YEKPuilA0=;
        b=fIjCa7H8Rm7zu7pXKnLJk3bVazP3yMCK9lHXtfDZwVtmPQmOUjay+Kv4Z0xaDamWel
         exE6HFc56JaRJmiPt2BDg5JA2HhDzy5yDf+2xtDvSCxSEzLHHU7EoRBUL+iCPQQSrnvf
         cHoTPIetKpgRDE5RvFj3b2hzUzdKdz1KFIbZaSB8dgKZO2LTgAVu70Y2AhZOrPxSo+rP
         XBRv/8UOGHBoyqMCJpnYLK9/8UvaTEWcv3RnjkT7Rk2fiAjMOCc62XIhpRYTUXM34RNT
         EoBdNVcLuokHML9nf5v2C3dnVeHW3mGuFv4OR+tKXSxyAP7SZipZE5T8dUgkB7eK3cCI
         pn8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700760913; x=1701365713;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=38QmMR5qWUUF3d4ez46gu28mY2bkSgtw/0YEKPuilA0=;
        b=PQp4ccr/s9PkpL3oQ/cUOxzb68OZKSYopzVxrdqBzF879dc79Yidg0vF9FwXUlxeST
         xH1OQdk8fn0U7vFno0N6veimN7qstdy5boR1eiwyu5a+i1cYmnavOFUPuWS7li/e5JeP
         kal3lTMn999gC+lnTCkS/Qh3AQiTiw0PmxYNf0Vwwek6AB7iLHeahhZdho/lxqGoegvV
         1523tzswm3lXdn4NP4F5eHWl5CBhJN0w98LnaqAeAijqKttlGjG/BVbJv0uynyEFiMdH
         joaTYqS3WZoWGzI2P1RQ4DW24seJRpVmVdx/jFbKC8MPHjvd+Ht2UmRZO7W1LmO8KVW3
         gACA==
X-Gm-Message-State: AOJu0YxQQCNFeT6vBkL9BSEjq0ECokKAxD0leYW7Fuqf9EoMjqaIL6j9
	jsQd8gquoGdNcVODIhzfH8fowCHFAGWeRd7hviQztEcR
X-Google-Smtp-Source: AGHT+IFGW/2gXJJfrwZoVQS9zLQTzpLwxsQQ8h9r+ECWZJzpIxMh+72P7SUi8H0TFJLCoVsNpbxuqQEjZn/Ptw0QR0Y=
X-Received: by 2002:a17:90b:85:b0:285:8609:4974 with SMTP id
 bb5-20020a17090b008500b0028586094974mr130618pjb.4.1700760912639; Thu, 23 Nov
 2023 09:35:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230928125536.1782715-1-l.stach@pengutronix.de> <20230928125536.1782715-2-l.stach@pengutronix.de>
In-Reply-To: <20230928125536.1782715-2-l.stach@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 23 Nov 2023 14:34:59 -0300
Message-ID: <CAOMZO5CYX8ihTQ87zi3maARWzz+PmLKYBBJGVn69Xig2nAwqug@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, patchwork-lst@pengutronix.de, 
	NXP Linux Team <linux-imx@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lucas,

On Thu, Sep 28, 2023 at 9:56=E2=80=AFAM Lucas Stach <l.stach@pengutronix.de=
> wrote:
>
> This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
> full timing generator and can switch between different video sources. On
> the i.MX8MP however the only supported source is the LCDIF. The block
> just needs to be powered up and told about the polarity of the video
> sync signals to act in bypass mode.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Marek Vasut <marex@denx.de> (v1)
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de> (v2)
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com> (v3)

Tested-by: Fabio Estevam <festevam@gmail.com>

Could someone apply this series, please?

