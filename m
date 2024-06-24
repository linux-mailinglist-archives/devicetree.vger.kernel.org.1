Return-Path: <devicetree+bounces-79438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ECC915480
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:40:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 599181F22AF0
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BA7519E7D2;
	Mon, 24 Jun 2024 16:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Iw2w4Y8W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28A319E820
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719247207; cv=none; b=cIVw4ux0AKyG80nAQuAjnrBg0fiLeSi0nOlvkI/YAU/AoOlFc2DOxJtTa9hpcUpXWNC9eMPmEAd26NJjLhLYOuIRCa9o/bh18fYTj01fH0cv+H6K04/W+sp/PlAcoQlmiOLk6SS6umg5wdpF3s/b5OBTXDL8+0U6sA3Grcgssok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719247207; c=relaxed/simple;
	bh=bTHn335s8B1w66yFq/+OI5bVTKkN+nzUp2gyrYEy47I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gtT8vCAWwm/EIRqw/MLmf3J8W17HRO2lspjDKNbRkuQhY1CizU4tBtaWLI6av8QNLi2ONeSwkgNYksI0wgcwVrDIqObD9hYPZpQhmp/y2TGnMuHNDhl6/y6miMbDiNyOBcjUdVfn2gt3Smk3+uNRJateoOaImofu0OhS33DDvVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Iw2w4Y8W; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-44056f72257so1721cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719247205; x=1719852005; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GZ+xnyCLREi74xq4k4heuccoqe9gphJLidfi9eaePRI=;
        b=Iw2w4Y8WoxrwImRWC82vcBkWwThBcO9ba0j1ecw/0tWFvBNJiNCQrGZVNT5Ssp6iK/
         Ou/l0kbFfslk34uT1j62W3eFaggnD9QGj3Nbp3JnR3p8+EspoR5P1ELUJcmH5q0qWSfs
         oOus0EUT4zobcqvn3PYm4yjjyfh/bzjY7wIifQNfKVmI9m7ohPmeWTmpp+s6TEJ8swLy
         dS/Y74eyiPqEq+7hAO/2RvgxGkoT8pNdO3BQqFzi5a3ToBXY0zJ4NKZZROzOyTFN5Pvz
         UwRbmqOPHQbyo+lncpjyadAmSPLyrBF9CO8EfZdVu4oPH/mjAYq9gxYMYOV+I8PY63s8
         oE9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719247205; x=1719852005;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GZ+xnyCLREi74xq4k4heuccoqe9gphJLidfi9eaePRI=;
        b=jQf/AYFHq7E/igdfaMPSi4LrS+JN2U28qX9W96d8pQU7nXI7DBljZfgPmL8pNbZsrm
         QpmKdlD6eUtZokM2KlhkG5M2C4KH7eu3IygomOqpQ9NSFkC9elnwDA44gQ/Uj6tX5av/
         uFndDf26vQi4Q7oUy7TNDdWKNTYtoUJa7Wug73K6HTywc7RrcEp8ZZlA+gu7CoAsKcDw
         jYOtcG+1AvSoIn2WQI8CFI4quS0Cz5JggEMC1p/Wttu6VaNHof/CvFy785dv5ecuyD1x
         PrsSXKQdXPyIW+3hoVtUWhdtsTb4Bodmgu94UxzvL56RY+ZaACNejF4Q5oj0KUwU4hFn
         YJ0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWwGHq9KqTeJwp8580WygpoXsD+XAlraHZdfs6yE8cmfFez0k6yDwL8I8fDkikre+4MB3UwNUYFTBzNCWJu7kUCSiZbzujK8HppzA==
X-Gm-Message-State: AOJu0YyHmJPypDQZK9FTzwIp815ap4UJ0+HgYCpjNBNvnO7gUiVWsIxG
	JUoWWzwvKD32XjGYJFd1G77NLtdeQFc2IABw6f+dvFQLgDSfNCrjvufiVxUBWwLrgGPtORVFjtR
	eUY5sd9k+75r6Vi+sXgWR9lNjX97wR7FZqScV
X-Google-Smtp-Source: AGHT+IFixPe77lWinjbn1l+sNnJv5Ui/C76Vx2CtkIRfQjKNjmI2FCb1bmRnLWcIP8e3ucRsKkrRobHHIY0Ljuz5GjU=
X-Received: by 2002:a05:622a:109:b0:444:a760:55de with SMTP id
 d75a77b69052e-444ce34a3b1mr5027131cf.24.1719247204577; Mon, 24 Jun 2024
 09:40:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com> <20240624141926.5250-4-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240624141926.5250-4-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 24 Jun 2024 09:39:53 -0700
Message-ID: <CAD=FV=XNS6sq1nuynDqU6gvfVa5pyBzVKPSiboEEYsTbwvV9fQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] drm/panel: panel-jadard-jd9365da-h3: use wrapped
 MIPI DCS functions
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
> +static int radxa_display_8hd_ad002_init_cmds(struct jadard *jadard)
> +{
> +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->dsi =
};
> +
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);

nit: could you convert the hex from UPPERCASE to lowercase in this
patch. As an example, 0xE0 above should be 0xe0.

Other than that nit, this looks OK to me:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

