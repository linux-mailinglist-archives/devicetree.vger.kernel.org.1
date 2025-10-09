Return-Path: <devicetree+bounces-224945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D8815BC91E8
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 875284EBA0C
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D852E3373;
	Thu,  9 Oct 2025 12:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wdc9hLUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7861923C505
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760014279; cv=none; b=OqIz3kaKfuFo06xY8HO2c6rdc3Nkb2bqKm3siS98hH36bQe74d03X7BgCZxI2aKYfCVyuDd1hpGh7MOkQM13q8IiN4l92IOCsYpdFDKQ4yXCGclmRn5BLFQ33hZv1W8CcvR7tXjBlQqh8h0nYkSpZ82FQE5CQtF6DiU3KS4XDmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760014279; c=relaxed/simple;
	bh=MDMFuxtj7DOoK9vdG1w2+Ih86u05O/nr3t6ARiKVfns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aX/wkOgc3lvS26bDyMT5xcgL3+vP7yZ3SvOQfkZXvwD6SBDdm3iAXC3dEJhQPMbUTM0E4B0T4s+IFY7ljduWzPgkjmmYyKLoi1cUSZ2wVVDvGmv+HqJ5iIPIcEBfr/rWB62bOhDJApNFsJ8xy3lHKqRISC+zTuE54HRB3tJSLtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wdc9hLUu; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b5515eaefceso758889a12.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760014277; x=1760619077; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDMFuxtj7DOoK9vdG1w2+Ih86u05O/nr3t6ARiKVfns=;
        b=Wdc9hLUuJucwAMpLB2DINPGvByOuHXuXrfmBzAtrLNoR+o3hAxW+HL/WrrOQsQB+2t
         PObv5vNwkaEdjOhHTLFk4R0xJnX3Oj4HSGl4+KIx935kx2ihxNgFlJpqcrCOAPFKkoCL
         JXGyAvIUAmCPtoNRWI+XZm4MX1bfYSyf+cM3Uh1/znpWiPJo14gfwggNT/hSXBsxgB/Z
         x7W2+O2zBs66+YBefmdZxe9ZlB+Xypjv0sui4gyQyQ0gfbWjtQcPYX4PjxoTqUsU0vJx
         ODZXqh/NKl1nXaIq2mtm6DAORXAVZcZszCl6SsvcDe8+L74J8NZVvTaC2G44U415fzG8
         k/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760014277; x=1760619077;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MDMFuxtj7DOoK9vdG1w2+Ih86u05O/nr3t6ARiKVfns=;
        b=dJHWjixXMXIsIJuHAMyXSd2j+G7EVYFdIbvAlqR8Y8XrJc4SB1+l8UQmRijVubo3ck
         e/kfGMlaf6lU2MA6dmqiR4FS8ypbpJwgOhF1QUYd8n45yn7jUic2ORuWPA1jOISwoyjw
         8+QnyBS3yFCWLyf1D8SiK0PG5lnvlaq/TtioAA/lYfAXdfFNdLbNNkhA3c92Wh2ZG5oh
         k77ojeDerO+3XD/MwHYAsPNdeoi2+wePswltpNmhbJiwitPdlMqHMwu9bGcFDkm1/qmA
         JjmLuMrqXe/eMGuABOLp79ekkQYQ6EINxLjbDK1VxDjThP/cLuO2tcYAfv8KY+1CuYXO
         /eIA==
X-Forwarded-Encrypted: i=1; AJvYcCUnWlyw2jI2092ptWksoTOE6HWj33BJMLodJX6kD88niO1nQL9iV2cORBRA7cN3Hb8jKLAPMq5kPzB4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4ueo/0CVsJah8UbuF7CcpBKpkTn2xCdqtS+W/2fzEmX+tV13H
	li6gXcfki2VTY0JIcLHgZDA1gCks5xynPLxqXAiOxqZc5O6tQ6Z3LL8WYE21wyyVtu/Th2wUXJh
	XYfGX7/x6h0Dua70mxEcVHQIbxywY9Lg=
X-Gm-Gg: ASbGncvq0DiW2Ak7vdbXeNdPX+j4m42mujjcf8TKPfQSqsxlgiuWfLOJG9FQSoRBInQ
	UfsZc5orCYlTewvVJtEre0mlsiId8fbKRlKBgxs7ic5RmsVhkyUdVR/XD2bl4INeTESUh9xU97K
	QqW2Nda95HxNiHygUvtHNj0daEps3b5jjDAL0DBPWkeoxMdKH8Jq68Yn9YQeHPYbREEOhsVrZUX
	evcEB4F8lUCJC2jPU5aRVjZ/WO4xVm1rX36HFOp+XK79uFA2eSi1u0phimL
X-Google-Smtp-Source: AGHT+IEhAV1wqwmuEfqj9eDPRuTr5xhy6QzH+Fe4j6lHSFhQoyHt9bJp9C/EYN1+uc18PLR1t+1Bf7rHPlE1k2VNj6E=
X-Received: by 2002:a17:902:f608:b0:263:b8f:77dd with SMTP id
 d9443c01a7336-2902741d0a7mr98644915ad.57.1760014276668; Thu, 09 Oct 2025
 05:51:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250923053001.2678596-1-shengjiu.wang@nxp.com>
In-Reply-To: <20250923053001.2678596-1-shengjiu.wang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 9 Oct 2025 15:53:34 +0300
X-Gm-Features: AS18NWAD-sPW--RGZUkk020BQr_wBUAqvEISI-DaoXi4Qt_J4rUCZMsA_rvkqkw
Message-ID: <CAEnQRZCFk=07=tDgEPJeXx_xDp_6LGXi+2o9GAADoP86mWYZ2A@mail.gmail.com>
Subject: Re: [PATCH v7 0/7] drm/bridge: imx: Add HDMI PAI driver on i.MX8MP
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, lumag@kernel.org, dianders@chromium.org, 
	cristian.ciocaltea@collabora.com, luca.ceresoli@bootlin.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	victor.liu@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, devicetree@vger.kernel.org, 
	l.stach@pengutronix.de, shengjiu.wang@gmail.com, perex@perex.cz, 
	tiwai@suse.com, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 23, 2025 at 8:30=E2=80=AFAM Shengjiu Wang <shengjiu.wang@nxp.co=
m> wrote:
>
> The HDMI TX Parallel Audio Interface (HTX_PAI) is a digital module that
> acts as the bridge between the Audio Subsystem to the HDMI TX Controller.
>
> Add HDMI PAI driver on i.MX8MP to make HDMI audio function fully work.

Tested-by: Daniel Baluta <daniel.baluta@nxp.com>

