Return-Path: <devicetree+bounces-206926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7754B2DFEE
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 16:50:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13081725A77
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C81832038D;
	Wed, 20 Aug 2025 14:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KsCwDHuZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5771231E119
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 14:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755701291; cv=none; b=Be369srlgc1TnK+DsqUeQ13+/CNxLUi2es24xRsSHSoaYTDECS2pvl1ZkA0fLV+vSrfGmUT/+xB/Hf6TayEPXb4oB62tyEEhAnEnaMhxYD1YLFmxu2TghCWL/URi1Ajd2+JKNvUgamltch7+dj795INLUHCrmmNyqBZpu41EBdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755701291; c=relaxed/simple;
	bh=IUrGjrl/l1txCsSgOPZXbhPn6Tnj3VCBGH0kaDqFOLI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=slEtB25GVZy1Ucc0rF0ZmXWFMABqf66qZy4PM7axnVTGiITRhVd9waY9dZykw8qY2ToJd5px3t6WVRboYsGhcluzGJGmI386Rr1f7k3va3AYGCViqW1VM0rAZ8u1ICwa8iWqO/h82aOz9r/U3ezFwe/JGW/icILC/buij80i2eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KsCwDHuZ; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afcb7a3a085so1010531566b.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755701285; x=1756306085; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NhUBGcq9KiQJcxiCAotwdJ7eICoMjF6+FIweyxl7rFg=;
        b=KsCwDHuZMHf74e5warBYTrtTQBTkhk5lZRT9ynRCjcvwtESc3Y4xuc38bA6c5GdFmE
         2Vl1KUVPmrqHJczv+ROF+bl04yzDrUz+EDrNLV8fI2df/iOS5VA5DPyMPNTxiV0ebK1l
         d0/VSeELdbFtsUv2shLTPnodFRmOVnyqau+fA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755701285; x=1756306085;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NhUBGcq9KiQJcxiCAotwdJ7eICoMjF6+FIweyxl7rFg=;
        b=mSIi3cZPj2l0qZFX+Lfe1nMIEJb25UWsM69GSHmB5oTYmHGgYTCUYkLND4xUaOfS5g
         r3LHLgpEd22i/UnM1bU9bbqqcivebcEsqkbnwKx5DkIgqQyOCVSPBSs5lnVFSjLjq1Q1
         JEzn/+m/F4B9Y8eq1OJxdA+cM37qOlLcyvdyiOxGkEETUj+fl0RZgg5M8SXEOK/XeWju
         sDCQrCMePm2ys1fojoSl6Se8MciuniviXlOvYb1auGavHHdjQ4vWwuVAh290/sLydYBB
         XCmhDL1o1jazcO57TRiA9AoinJSDxeWU4BeTt7E4tYzL4+VVPDl9n8p0bV1Te0aaZhKw
         pTAQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4LFQt8gpkFDsI0Gk/XmjW4yuCs2Q4x6F2CUyonPlCqjwnxHPXCmHZpx7T/RwNhieP1Mf7UWinIjA2@vger.kernel.org
X-Gm-Message-State: AOJu0YyGAkmScMBByh1Zn12zYKkx21QPdTdKQP/kM3w+Xss3BVwwV29c
	Ye0uXQIJbEXt1t6GW/4GaKYhUNCPNV/RjtB8KWKSvNeoGRMwNtXz/DlNgpT2xkM+sp3509S1s8k
	UVxqCdw==
X-Gm-Gg: ASbGncsM/WyKNa1hvU69gPsTWmd9MFXjdlEZfoHUX/L7KGL/DjbxjZYcpq86puls1iM
	f7Iv3Q2OKBWMeiMKRyZTNMb3elDdm6H1OIQfaQhLJG5+kBZbQEUqzP5ZZpiYPCVLSHVCG9xw3+l
	GGD8HlsYghze57vC6W/sY/Iw5+1BvwFcB9Ic1jp3ndvEUn/vS09eb7I8K1mgvqNBhEUiCHjOtdb
	+/QATDhIWJKPJkYyYEwA1BYVuC5c1dRUxxhVbJkGz94AlzOGcK7oNNtpifP84vxm6f/LhVN+l1M
	t04vgDUPfOx/MRKgBO4uM9wMOwe9abfIF7noKXFELPqAOMi72oQU3yRiqTHLRITb+F46k3MpV4G
	YmFjlFtWQCcTs5EWVpnZRvzh7kCNKlXUXSsvBvcyWlgPSKD4dTPamuAMFGVCmjw==
X-Google-Smtp-Source: AGHT+IHzoSKdfWCHWfqa1wiM+SuXB2tcwOfhVcZV4utV8yuCeESiv+M7EBmFq1mQypQeXc+EPzoDjQ==
X-Received: by 2002:a17:907:3ea8:b0:afa:1a67:e012 with SMTP id a640c23a62f3a-afdf003ae35mr244612966b.8.1755701284857;
        Wed, 20 Aug 2025 07:48:04 -0700 (PDT)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com. [209.85.218.47])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded478d69sm190463566b.73.2025.08.20.07.48.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Aug 2025 07:48:03 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb78f5df4so1089406766b.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:48:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVTLtHIg0PV3zJRa8QuLIQNqasie3hX1Usko6vK9xzC72DMl7Hz7gqeyHJBVxBe6hNJEnk2TxnBOvka@vger.kernel.org
X-Received: by 2002:a17:907:1c27:b0:ade:44f8:569 with SMTP id
 a640c23a62f3a-afdf01a0f35mr268297266b.42.1755701282745; Wed, 20 Aug 2025
 07:48:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250820122520.3356738-1-yelangyan@huaqin.corp-partner.google.com>
 <20250820122520.3356738-3-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250820122520.3356738-3-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 20 Aug 2025 07:47:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X=C1oycGMS2GvGQWxVMR8h-4kv3pXQrH0rXyfvqwv4PQ@mail.gmail.com>
X-Gm-Features: Ac12FXyiFWnDzrYzsNCIRBTvsCzSDFE08U3w3EJvjmOQdowoUEgqgJLZWf1XMk0
Message-ID: <CAD=FV=X=C1oycGMS2GvGQWxVMR8h-4kv3pXQrH0rXyfvqwv4PQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] HID: i2c-hid: elan: Add parade-tc3408 timing
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jikos@kernel.org, bentiss@kernel.org, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 20, 2025 at 5:25=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> Parade-tc3408 requires reset to pull down time greater than 10ms,
> so the configuration post_power_delay_ms is 10, and the chipset
> initial time is required to be greater than 300ms,
> so the post_gpio_reset_on_delay_ms is set to 300.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

