Return-Path: <devicetree+bounces-79441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD099154A0
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:46:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18DB02868CA
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5E619DF8F;
	Mon, 24 Jun 2024 16:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3ogjcxXN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D04F142659
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719247555; cv=none; b=p01AEdZ64trqjEB0PYgy+VS2O6+rmk9KdVjw00k8mmClBrq3Q9yHjzn+157s56YvbRKpZpPvgGXKxRNC8OIfuuCoIq3LHnyUukrKjM7p0zX+5z+PbDsFjTPn50vgraFptSSf6MzSM1tm1fhnE040HGKrZ0/DCMdATBnIsACe3Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719247555; c=relaxed/simple;
	bh=7/UnMHPZIxjL9awIurtHTiLV/VlW7wM/jMEjkX1eNeM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OJY6B9wELC8jqTQK6xR/h5dvalF0Py5VG60vehiyDXQekxmHvMS6zSyLaxm8K93eTaGcaaMIMXfbISmJ7k4Q0VpjQGwPf3dujTmgbvFnFytz6LZJtz8dH42Ek/GP7bTNvi+cC+jGxzoPFULpYcIdKtw+RnKMqjB0Vp8anhkVs3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3ogjcxXN; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-443586c2091so851cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719247551; x=1719852351; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x7+3fE/z2eqo4JMbpyr9vRiW9tYZPuPhGSl35o712FI=;
        b=3ogjcxXN14bUGay6oho4/NorxroLuhgDnP5z5r1vDpuDz9WldrzX5thCSI7/tCqbkR
         x2Wc1Xe8wJHCKKFxH31hAm38ePs7YyjWLVGc2iJYUFQTLUuvf96rn/57Rn2lj8doGAhz
         Ps+/764tXkciiuKblDQGZubejmedD1muKUN6rbCzilFQky0T0P7h4wapkZDE1z6qi6tj
         432RptRrP20IYC/POnlHzUkKTZhnwdM56BlPIDy4L/UaNyB4Z7iFD0KEeIQXW1UNeHif
         3Io0PFpmkTTdoqIo8PWxWG509P2w1JoFXgMXvJZsgPc/JiF39/KeTOcKtM6pV6GUZazn
         xwew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719247551; x=1719852351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x7+3fE/z2eqo4JMbpyr9vRiW9tYZPuPhGSl35o712FI=;
        b=UAFMJANEJpNqG4PyqQjndILUkApJ1eLDHgpWZuKbOtWTpwFC/iV1W/POCxruxN0d35
         04kIGAhwoHag4zncXr7lqx0Pr67Ro8TyIqAtpElbMJtgKNN7By4ZSmFlSwwbSjFtcjfV
         /5C6jEYAc+YlYkcdN7Xn4hmzD6gHi4OSm6mkFn5KeRRI8JZHkqOWtunHb7JF/cyQGuKO
         BPYp0ueBpPBbZwLpU2gBQPtKT5I7DuI0xjfVeuBQnMFMuJ1CZaWineFsrAu14EPAdx9Y
         VEb7BMt8PWkS7pqfYBzQP1n7bbHsF2tMKNc5w7vHGsF9D2qKZgvNTkMwU/64ABVQqK36
         i6ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOeNyC1RXrU/vsRUJrvIhagL1Og/lo86aHWVz9wO3qiU5k/FffugBmv+8xroob08vqcEojnvt/KBSVYXug6M1kDQC4FA1Z7/IcmQ==
X-Gm-Message-State: AOJu0Yy3Mf6mvmsQPLDxltC3lsc2AxORIybIaG6M0oOJN9cYZE8Spkyi
	KVHfVogWmoUFSZFXf+iKCsonvPwlvBXjy8dfFSqkevHOWBS5BePld77JT2Fi8PDSfUWbzwt1BaY
	9h1lZy5xQUqORXS6nLHYM0McpFe7w+jNotyUf
X-Google-Smtp-Source: AGHT+IFaxMpEm2LuOUeg0YWpZpls4eMoSSiEoi4Mw3USzXJofjJV3Rc5g2Eg/oubpc2kMeXq42i1kSjw/vsIL8qpsQs=
X-Received: by 2002:ac8:5748:0:b0:444:cdc4:fef5 with SMTP id
 d75a77b69052e-444ce38fbebmr6032061cf.27.1719247551241; Mon, 24 Jun 2024
 09:45:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com> <20240624141926.5250-5-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240624141926.5250-5-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 24 Jun 2024 09:45:39 -0700
Message-ID: <CAD=FV=Wcn7GGhdOCS3BOZj2AX1N3SCG5psco-4X75yO83DkpRg@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] drm/panel: jd9365da: Support for kd101ne3-40ti
 MIPI-DSI panel
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, jagan@edgeble.ai, 
	neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 24, 2024 at 7:21=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> The K&d kd101ne3-40ti is a 10.1" WXGA TFT-LCD panel, use
> jd9365da controller,which fits in nicely with the existing
> panel-jadard-jd9365da-h3 driver.Hence,we add a new compatible
> with panel specific config.
>
> Although they have the same control IC, the two panels are different,
> and the timing will be slightly different, so we added some variables
> in struct jadard_panel_desc to control the timing.
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> Changes between V5 and V4:
> -  1. Add a "_ms" suffix to the variables.
> -  2. Use more "_multi" in the enable/disable function
> -  3. Use mipi_dsi_dcs_write_seq_multi() in the init() function.
>
> V4:https://lore.kernel.org/all/20240620080509.18504-4-lvzhaoxiong@huaqin.=
corp-partner.google.com/
>
> Changes between V4 and V3:
> -  1. Use mipi_dsi_msleep.
> -  2. Adjust the ".clock" assignment format.
> -  3. Adjust "compatible" positions to keep the list sorted.
>
> V3:https://lore.kernel.org/all/20240614145510.22965-4-lvzhaoxiong@huaqin.=
corp-partner.google.com/
>
> Changes between V3 and V2:
> -  1. Give up creating a new driver and re-add K&d kd101ne3-40ti
> -     configuration to the panel-jadard-jd9365da-h3.c driver.
>
> V2:https://lore.kernel.org/all/20240601084528.22502-3-lvzhaoxiong@huaqin.=
corp-partner.google.com/
>
> Changes between V2 and V1:
> -  1. Use the new mipi_dsi_dcs_write_seq_multi() function.
> -  2. Modify Move mipi_dsi_dcs_set_display_off() and mipi_dsi_dcs_enter_s=
leep_mode() to disable(),
> -  and drop kingdisplay_panel_enter_sleep_mode().
> -  3. If prepare fails, disable GPIO before regulators.
> -  4. This function drm_connector_set_panel_orientation() is no longer us=
ed. Delete it.
> -  5. Drop ".shutdown =3D kingdisplay_panel_shutdown".
>
> ---
>  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 277 ++++++++++++++++++
>  1 file changed, 277 insertions(+)

It still seems weird to me that the other variants of the same panel
don't need similar delays, but the code looks fine to me now:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

