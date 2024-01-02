Return-Path: <devicetree+bounces-29153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A0E8219CF
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 11:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49A2B1F224C9
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 10:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29511858;
	Tue,  2 Jan 2024 10:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ABQ8F2tY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA30DDAD
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 10:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-555f581aed9so1990760a12.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 02:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1704191493; x=1704796293; darn=vger.kernel.org;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3uo2Tlt5PNlFfytmy7IbupTsQFgsSvR2/VN09g7vDPo=;
        b=ABQ8F2tYhEzyMB4bkJ/eKb75yEynWhT2YGW9eEX6bXFRJ4+Kd8zJSphu+jMU4+J8NG
         2IHMfti5WOB1NDzq1vM7J8qL5Lc1D6S2QvINaGUQhV5HTl6Y2d2lsb3b71u/nXL70+0l
         6poeVIsGRVvjp2cWUyhW4zED0sOW8C7cvALaq5fvlpCkK5V+aRBP0KxDx+x+ow5ylZAY
         /P0yogiu2QG+CtYTD7349hIUz5YyKvSQhwEjjKkq2RWlufA4hq5eknzcSWZwCrnp35mH
         Oq7Rx3goZswZoAXfdjzl0M1AFZaxmBrE/Rism/VT7ZXY2IhVIOJxpDKrBmVAGG1bP1XH
         xtSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704191493; x=1704796293;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3uo2Tlt5PNlFfytmy7IbupTsQFgsSvR2/VN09g7vDPo=;
        b=LQJMOR4re0ZMSur8vke8FVQd5UM8iSbQMBubnp/YzbuiHV1tI6yDBA2RXlQFRoJjPS
         6U1f/8Zp64um4YyMWo9ACs9bLf7p1jdLSedxIDYe/NKlVnZjFlakSASHMWh4S486wDG7
         lNOV+OlBTnRkNF6flJgWPxchNyPzXo9fC/E+35E7i8L4FUnpbAsWacfLeHbdSYD45yas
         31yPsYhylTDggMYFCxRMRjpOWwSyUTV8nsjo+X5RQ9pWjuVgtR3yv3B/hLq1jP2KG2uG
         H3Mv31Qu0TzTW6OKvYY9yItcu7YQytMBZsEfEmbyo1Y94Rugt5LEPORFctbhYMQCDJOq
         hsqA==
X-Gm-Message-State: AOJu0Yw0cBz+xi5TlJaVf4ApSI1bOsYDb9ij+BvGARRieqKu9yh2IUnI
	2AEE5Lc5mvj2AdcdZxbEiJY/HSgmDlOWgCj2vxJR/3kGx7s=
X-Google-Smtp-Source: AGHT+IHU2aJgBWBK6zf9NwXwlyAr52pOBalLA8+OerTHl4J+zRE6N0bDgnl9du9GMVED+x5KWRUA6g==
X-Received: by 2002:a17:907:101b:b0:a23:1163:24be with SMTP id ox27-20020a170907101b00b00a23116324bemr7646706ejb.95.1704191493272;
        Tue, 02 Jan 2024 02:31:33 -0800 (PST)
Received: from localhost (nat2.prg.suse.com. [195.250.132.146])
        by smtp.gmail.com with ESMTPSA id rn28-20020a170906d93c00b00a26b036affbsm10706526ejb.96.2024.01.02.02.31.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jan 2024 02:31:33 -0800 (PST)
From: Jiri Kosina <jkosina@suse.com>
X-Google-Original-From: Jiri Kosina <jikos@kernel.org>
Date: Tue, 2 Jan 2024 11:31:34 +0100 (CET)
To: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
    linux-kernel@vger.kernel.org, dmitry.torokhov@gmail.com, 
    robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
    benjamin.tissoires@redhat.com, linus.walleij@linaro.org, 
    dianders@chromium.org
Subject: Re: [PATCH v3 0/2] HID: i2c-hid: elan: Add ili2901 timing
In-Reply-To: <20231227085013.1317-1-xiazhengqiao@huaqin.corp-partner.google.com>
Message-ID: <nycvar.YFH.7.76.2401021131220.29548@cbobk.fhfr.pm>
References: <20231227085013.1317-1-xiazhengqiao@huaqin.corp-partner.google.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 27 Dec 2023, Zhengqiao Xia wrote:

> ILI2901 requires reset to pull down time greater than 10ms,
> so the configuration post_power_delay_ms is 10, and the chipset
> initial time is required to be greater than 100ms,
> so the post_gpio_reset_on_delay_ms is set to 100.
> 
> Change in v3:
> - PATCH 1/2: Modify title and commit
> - PATCH 2/2: No change
> - Link to v2: https://lore.kernel.org/all/20231226023737.25618-2-xiazhengqiao@huaqin.corp-partner.google.com/
> 
> Change in v2:
> - PATCH 1/2: Modify compatible properties values
> - PATCH 2/2: No change
> - Link to v1: https://lore.kernel.org/all/20231225092843.5993-3-xiazhengqiao@huaqin.corp-partner.google.com/
> 
> xiazhengqiao (2):
>   dt-bindings: HID: i2c-hid: elan: Introduce Ilitek ili2901
>   HID: i2c-hid: elan: Add ili2901 timing
> 
>  .../devicetree/bindings/input/elan,ekth6915.yaml          | 5 +++--
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c                     | 8 ++++++++
>  2 files changed, 11 insertions(+), 2 deletions(-)

Now queued in hid.git#for-6.8/elan. Thanks,

-- 
Jiri Kosina
SUSE Labs


