Return-Path: <devicetree+bounces-125272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E524A9DB611
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 11:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1FA8281589
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 10:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A236193079;
	Thu, 28 Nov 2024 10:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Agrfig/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F8E1917E4
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732791295; cv=none; b=tR7TFqvcWkb+0s9D4OWAl/+iUs6uqTpDnTsGqD4+tE2BIRu1yyRZUbSRKBagiftTsqr6hPj8vhjLouCYwUHcXc3bxdOP9q3pxPttZpAQhw4J7ZgDsH873/qxaVb2dfQPR8FwnqZuqpq02+k6ON5DDKDe3Bw3uzaVdifge2j3EkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732791295; c=relaxed/simple;
	bh=6ehekiZACHQTnSExEqnoLJzOhJU4i7ihd93wvSZd3eI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZMhGb7J8HGTAARWIVKfLtmKZsE7tNfrq+XkeB8LPMHPJTQmVpPHL1v5T/ga1Lrq9vwhLNEHT8gE2UsaRtFJhY5FJk1RkXSm1zX50Ir8nH4TzZAUJtKZ4A5CNdDRk95ZAhx7Jd5NPkDNtPqkOnZ6gn8uIm+4ix2in4gG5Nq+mTPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Agrfig/C; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5ee1c3dbeb9so356852eaf.1
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 02:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732791292; x=1733396092; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ehekiZACHQTnSExEqnoLJzOhJU4i7ihd93wvSZd3eI=;
        b=Agrfig/COAZKwKEpAzJ8A3kEYwB7jFHnyeZmd6CZWIQt3mhJNeuuuVJSH+dmEEzK75
         VScVeGWi7SJsqWVB05WVZorGxZiAta1cz0aEllVEGSsFvXvn91tn4EbrwGdBC+y1Tydd
         MGO8kBmuU1uX+1znlbJ+t3qA7Ejpsf7WSRjMqAfAnioZFk0HhwOOZdTqTpJU7uSmW3zj
         7dPVULrS2zlcUwclPhU6Kxagn0GpRu/PhlxTMKfKxOEJftlvCflBLaocbb7V3X/pMRF2
         K2O1Xk9llIFftNqa/w/TaZzBDwhDxfBmGLgxP/rFFVYY5w7s2dxSjDFNJh7WImuL7S0L
         /qGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732791292; x=1733396092;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ehekiZACHQTnSExEqnoLJzOhJU4i7ihd93wvSZd3eI=;
        b=IHtBoYh89kXSK66QqZjzxahkcQ8tonUBm9g5nXckFxT9t1NBFrpfPtOnLhgpdMImy/
         VYL10ZfNp6oYT7pWmytNlBvLHPMwgpv9VfI5qtgFgRHmgWK7MrTdb27Rjo9Pr/nNNHXU
         ox5inRQXMe4RpHI5A6Y3Wx2ohJohckAzXVKk7bPfPEdYfV7BFFg+1Zm2L3bkYe47WawE
         rtLtjqkut4y7ofiId9WMbkM+uM0YA/6OsccVFqzd6N2t76xGfQEheHKhoLDhvq/6jAQj
         fju74FatM8zYkUXx8ceNC4WAZmHERatGB/lRojVyT7O1uar4kDv08KLYq8cWO1S2QuAm
         KAbw==
X-Forwarded-Encrypted: i=1; AJvYcCVW6a9kwIYtGzydIAgC+igFUGqIUSzOR0z7NQZ+Aghf3BWHy50NX8GYAyJo1yqjsjTXTV6EBRKG53iD@vger.kernel.org
X-Gm-Message-State: AOJu0YwtL5lLmVKKNoRK3EWoU5kRkfGrOiG0T2uKD+FeuGEXiJO1eNH4
	9ZbG2v/K2RuVMX1YSLKjh1U0r+HiUfK1RMedt6jX/UIgOd4S2TFHnP/rR1nhiMflW5jZTosm7M5
	OHYyIc/DbkepPzCPsawSryccMSDtjI0QT0Om1AA==
X-Gm-Gg: ASbGncu4oP50EHnDD7eO+7VqIT/O9zaaqT62JOczZvfyjNdwmiS0TGlZhIqZK0J5zl9
	7PHnDBkoId/2a6MdtRpz3C/wMH2ImQjZB
X-Google-Smtp-Source: AGHT+IFRspzNKnz4//d6oD1niqAfNdEx+VyAphVEPqsddVm2R+EgqYzGwfP+qAkW+vpL9icCdahFMF+IE7WYtI+pC5c=
X-Received: by 2002:a05:6820:50e:b0:5f1:dc89:fa85 with SMTP id
 006d021491bc7-5f2179fa1eemr1438491eaf.3.1732791292366; Thu, 28 Nov 2024
 02:54:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-3-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-3-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 28 Nov 2024 10:54:41 +0000
Message-ID: <CADrjBPqWh6z=1+9svYw8H=DZSpo+93rhO123LwFOAMOHMraLkA@mail.gmail.com>
Subject: Re: [PATCH 3/9] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Wed, 27 Nov 2024 at 10:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> The USB PHY on gs101 needs to be configured based on the orientation of
> the connector. For that the DTS needs a link between the phy's port and
> a TCPCi, and we'll need to inform the phy driver that it should handle
> the orientation (register a handler).
>
> Update the schema to enforce that by requiring the orientation-switch
> and port properties (on gs101 only).
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

