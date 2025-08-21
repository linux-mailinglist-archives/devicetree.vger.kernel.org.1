Return-Path: <devicetree+bounces-207520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8102EB2FCC8
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 16:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6540AB61F2E
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 14:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F8A01D432D;
	Thu, 21 Aug 2025 14:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="m05cM8RI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4131B21BF
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 14:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755786606; cv=none; b=hOV+iwS0gcC0TWdHbrxlFcSNYOA6oCbIdsdeUWWJ6XLZtEGkRO2o6SPc6gu62/4yjVQyNgxbn5LIKNqTnnREIRSkoUdchl9P7SOH5wc8pidRtrs5xG3ng8NuGWkwCMGMxQQR7JH7w25eE/ZG7Yu8HOJAXkGrQ1fS3AhleokMzvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755786606; c=relaxed/simple;
	bh=DrLvhhxqjDy9OjOvGrvNpOWVRgN/uFtVRiHdl8KLoa0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZiZlRv6vwxgZ2yL75duo3llbRdX1mUNezDxk6FOkq0IsUnDNoXWJbiXTxbK5f1j2t7L07qUaqY2l6TuH9iW58nXW4K3td8pj8hldgqjiymrg+0iz7P9QcByptDx7TkTubwRHp7aOaqcNKIV1J5aIz/N8x4zaOp8inPABibt+ke8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=m05cM8RI; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-24458272c00so11556295ad.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755786603; x=1756391403; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HPG1XhgfF5Y/ggPoRvqsUax+jmouXC7rqUmLB6NWpdA=;
        b=m05cM8RIUFggiQ7tR1Ja03si/Me/w09ItaeKUs9RGK8+TkNPvA83sdl1WYcdww3lsu
         jcikBK77mNdnL/wE5JEPPxAQv4ITgf+3Z/tdBx7Ost/at4qa/szkSuwbBf+/1a/4wsBu
         0PI4ow+BmlHGyhC3v+FPwYwOZPiWbC6kzB2Cw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755786603; x=1756391403;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HPG1XhgfF5Y/ggPoRvqsUax+jmouXC7rqUmLB6NWpdA=;
        b=UasnJge3ONDxaWNVYSrj5nr+FIwbGJjHPRNLbh5+e2Ma2XQo7X7yK1cb8ML7v7Wsl6
         gAzqdksbMfLeyKl6NnaQWsiaC9LAjIrWuT8xh1iWQEg7zHALv4CnW3DPTvWdHmeC0LxH
         lVNOf/Eb0v1DOJ/AWD+/pVZ3SvtYY1Ok0xBumW8KhGNDN1NmDfd6hqY9CsXP30okkzSU
         wUjM2GCLXsZSK2FKjh8F9oX4xsT2hscswln3kFFnxWku9hKf2UtEhauZYAZsaK/PmL2V
         PxOM/KpeFOn7qwSfhLjuCfZiOC6Nrmp0eEoQmUouqz2tEnbNO5MxWXC6Fd3aBy1Da8UL
         xtEw==
X-Forwarded-Encrypted: i=1; AJvYcCXKRN8Ti9MHdMk0MbbtzGZAa9swM8K+CGse0EGiiE+jj2GQSSBHCsCm6K3UR3jkMUM6uX3ApvP/5dgL@vger.kernel.org
X-Gm-Message-State: AOJu0YyXKfsPAl0o/1CE08oU5SRMZTGa0UX6aFWwlZu5/uc28MBzOXpN
	okLbFV+H52iO3sHPRGpumESjREt+MdBHpekoYmOL+dois+KfZE7m8JjPdOxzpYFA5kcFtBVLOhi
	OSEi8jQ==
X-Gm-Gg: ASbGncvu/tu1psEXbdUDe78StXav9jmIrVhCoIZ1pMAlQgx6CCnBWr+31wzYEr48oCe
	OqORkBDnd51VU9zsGS2U+/JRTXTTrye1x8n81uqgiVDhVl3BugDxt5n/T9+6LWTgb0UqEFVgjkO
	Wspwp7kLr6+8eXN6td8xyc+eqsKxTlMFTXwCy0XYgZ5+KwBqDszVzmHjrFr9RVIi3nvhPx/2V1+
	lGYWNHQNkkcxjlQX8ZWh6YgvXezNWuZ3gtEdYY0FCUSc4Zrb1VsBftOuhVprYeJS+IwS+wLhdye
	H82+l6u6llZ0CkYyYG92RmK4+uuk9uC+NJCyVdS6kXuAmptopodbbJBylQmTMmxrIPFWb7wPszJ
	fv2bVtCW3+r2cSv2Ur1MDtXNXu5zNG14mb5//rjUNrQ+A1jB9hIpAligl9OjvJHjb9g==
X-Google-Smtp-Source: AGHT+IEzg4JI+n/s3vKExv05MqKNaAxXDTSO+xrwL1JXCAnwbXLPpPXabYmA49H3VRnz1w/b9LTSjg==
X-Received: by 2002:a17:902:e841:b0:246:255a:1915 with SMTP id d9443c01a7336-246255a1a16mr8320715ad.27.1755786602806;
        Thu, 21 Aug 2025 07:30:02 -0700 (PDT)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com. [209.85.214.182])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245f0d86b91sm50602355ad.71.2025.08.21.07.30.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 07:30:01 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-24458272c00so11555285ad.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:30:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWgL0pORRzYXhpK9MG7mIRhxqQmDSNSzTY6gUEps06Gaq0s5ADDHx/gZ93Q7Dp0+5eFjD5dgRgiMuhZ@vger.kernel.org
X-Received: by 2002:a17:902:c410:b0:243:7cf:9bcf with SMTP id
 d9443c01a7336-245febd6a76mr44126015ad.2.1755786600878; Thu, 21 Aug 2025
 07:30:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821031514.49497-1-yelangyan@huaqin.corp-partner.google.com> <20250821031514.49497-3-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250821031514.49497-3-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 21 Aug 2025 07:29:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wv9czjES-xADVSLP_m7aQuuBht9vEyFRZwJC_drxdL+A@mail.gmail.com>
X-Gm-Features: Ac12FXxcomzywXeVkuRLJiRQa5Km14yR-Mbb8Mxu-Qo9E3qk5NCycqUXiWipDN8
Message-ID: <CAD=FV=Wv9czjES-xADVSLP_m7aQuuBht9vEyFRZwJC_drxdL+A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] HID: i2c-hid: elan: Add parade-tc3408 timing
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jikos@kernel.org, bentiss@kernel.org, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 20, 2025 at 8:15=E2=80=AFPM Langyan Ye
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

Whoops, I guess I should have realized that the commit description
(300ms) didn't match the contents of the patch (100ms) in your
previous version. Sorry about that. This version looks fine.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

