Return-Path: <devicetree+bounces-33232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E93832A26
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 14:13:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DBD5283254
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 13:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8FAF52F6E;
	Fri, 19 Jan 2024 13:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ppm1Z6EE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA97C524BB
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705669994; cv=none; b=iUlZ8uL047vpiR5LSSTuVkOvcsSjeBSF8gnbVUg0hPYgS/KA5kvcFnSM8i9XXRbVcXAuwyXzlZB1BrBmF4Rxe2h3xm/ZeNzBOIhg7xUGx3SLhvpB0YDCkBcYHdcTFghtDnxa5bhH8Q6P3LgKqgonUIrJEEc+MYwtvDBzds++mSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705669994; c=relaxed/simple;
	bh=7yYw3HdVIVKI+DaJfJQbGJ7vrjbPdqrzwB/L6EsGIkM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SQvww5CjhQY7KpnENV6s5MuHGihq8OykkZ9o3DXKdZRJqMYhzDuHv9NZLFggC92caFkB59fxOfHBNyZ0KbN6lzQ8VMpmE+gZ6SS2Ydw6nItvS+dUpVcgZQH74eNpmaERd8+6q46T2BB/uNxPF2AZlfbpAJMjXKWyo0KAiVia89o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ppm1Z6EE; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5ff7a098ab8so6859877b3.3
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 05:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705669991; x=1706274791; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xHnVbdVJT4h/CWS4BWjRC7l/yCMSQb2yUYxDH3FTp80=;
        b=Ppm1Z6EELQ1HdOOhyKx2e6EXK5S/XQvbrA7BaM1qdl5X3z4ltkVx74bYiQeb5fGhr5
         f6yhfvDq9XJrZxies0+mmbMT7aS3GTIVS7Ex8CbFSahr3yfNmYfJmkpT3BFUdST9spod
         EkVMppeUIEeMD+OEGkSOTnqVHfHFTIArz1aTsMUZS37nNGv4SqGWnRZbNQxa+3mRC10Y
         sQwwekRNfOxmo7EGVjguwADeaktuWVblPcy/IH0MtsnmZiqNVbkWQsfY9JYmk3M8qXFV
         7Iao/Jqec8o9NJghuFKcDdDvwyA6zjtSAhZ0Bf2U6uO/3dWN5uP/8pkEGy2h946Vo4dQ
         22Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705669991; x=1706274791;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xHnVbdVJT4h/CWS4BWjRC7l/yCMSQb2yUYxDH3FTp80=;
        b=R9IRFwEdmWhTGTekUm/QDGS3UcWnLEHLy6ZNPNhyUr+1VVpl2W38pfMnOrBOdosfOK
         VBZyz2y17dsLe/cDi+XSvMgiGYiPUPc05PZeaFT5Rz9yWW1H4onEfut6D+oKZEhmdqDi
         LGAPyerzDBG6zFcZF9+8XmVqrVcPEOFFbaRuxLrNOduy83xDq+EIC/RrVmJQI+YvIdNO
         QyNwN4CArBuESk9yqjTefUSfgHlKTVrUjHArNC9uP3p0SnEKyUeI9YmMFGpcjDM1YVJb
         Z94MhcbsbCH4I3Ug8CfmKS7l05H8dZkz8Gr9+7yXmzLJNhD1dEXY7r9o9i4ArCl7vpq6
         KIZw==
X-Gm-Message-State: AOJu0YwNcjTXvM/umT9z7hwF+bsF628GhVO4ZMyLLNzYpne2ZeHP6YLU
	fpYOJFpXnvsZoj25L0gTAmAzF7/4lldRtMZ8Mv/r36x1Tct7FORy4m+3NiBxAKrpC9aJaS7lwwa
	TJ95w9EMxw1xC3mNljjtYSKNLccRqd7Ea2J/SQw==
X-Google-Smtp-Source: AGHT+IHfqnIizJU7bNVjSP0/AXHYr1nDGF7BowSr7g+dg3LcGz2IfpYeTEym8tB3K+krwyb0bUD/3CD8ALbza0lV2Kc=
X-Received: by 2002:a81:8047:0:b0:5d7:2c6b:623 with SMTP id
 q68-20020a818047000000b005d72c6b0623mr2678702ywf.39.1705669990951; Fri, 19
 Jan 2024 05:13:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240119125812.239197-1-angelogioacchino.delregno@collabora.com> <20240119125812.239197-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240119125812.239197-3-angelogioacchino.delregno@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 19 Jan 2024 15:12:59 +0200
Message-ID: <CAA8EJprHsBPOAA-M6Wk=maTCnJqORo+mLcW_0N8_+QRHYwLQwQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] usb: typec: mux: Add ITE IT5205 Alternate Mode
 Passive MUX driver
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	heikki.krogerus@linux.intel.com, matthias.bgg@gmail.com, 
	neil.armstrong@linaro.org, andersson@kernel.org, nathan@kernel.org, 
	luca.weiss@fairphone.com, tianping.fang@mediatek.com, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 19 Jan 2024 at 14:58, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The ITE IT5202 is a USB Type-C Alternate Mode Passive MUX, used for
> muxing the SBU lines of a Type-C port with DisplayPort altmode and
> also providing an orientation switch.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/usb/typec/mux/Kconfig  |  10 ++
>  drivers/usb/typec/mux/Makefile |   1 +
>  drivers/usb/typec/mux/it5205.c | 294 +++++++++++++++++++++++++++++++++
>  3 files changed, 305 insertions(+)
>  create mode 100644 drivers/usb/typec/mux/it5205.c

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

