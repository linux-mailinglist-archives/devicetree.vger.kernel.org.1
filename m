Return-Path: <devicetree+bounces-204622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F80B26191
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:55:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38BD51CC35C9
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 224D22F0682;
	Thu, 14 Aug 2025 09:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nebqiF7N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A2A2ECEAE
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755165041; cv=none; b=lV3s6A/yU4rD+VRdqNdsURtiENzQtiVSkjM7ylNRADxKmLlBWC0fS9vdJyMlpzrYQjsTDmmgo0OkrS9oa48xCAkBUniISeMMxgPM9KnA8b7Rzv2fgMrsKJmCn1HhDm7jg8SqXxvzkG0H5cdCj/6wg+gOfvGB8a1fBBcZfPCAh9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755165041; c=relaxed/simple;
	bh=l+SUkVruI2YCcUMa+FcC5+QPx3okcUg5cMFby/7ouv4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oN/yd7qpp/ntm/M1DKN13wCpPUa19LeFVKbAoeyz3bQxaSrViymmRgbui2JkOU1Tb27sOwxSWLqv0s9k+hL1Kf0Uk8scpOQ0GyQEpuPp2BWaNzEs0AihQS0/XTB/ZO/FDVaNy0ONRZUG5XptaARDmJdMChutDabL6Z0gCPoInP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nebqiF7N; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-53b1737003bso300308e0c.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755165037; x=1755769837; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l+SUkVruI2YCcUMa+FcC5+QPx3okcUg5cMFby/7ouv4=;
        b=nebqiF7NCJcHoRXAn/SViTXhdILxqcbklbLh5n2N7hfKCJXSqGTpDWqmBcBD8IOwua
         sTcLyFpprWYG5alkFmSOhxbyk98gdDATS34lmT810NDtXj7pTXhnvciLRacufkBP0DQO
         BvAOPUp3TpwSHqo0p6l2UY6YfSD1h0Cj70J1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755165037; x=1755769837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l+SUkVruI2YCcUMa+FcC5+QPx3okcUg5cMFby/7ouv4=;
        b=oLP7KRzfppM321mOk9KDsbUOsyGN8c+854MGMXKNiMMsete2SChRb4uaUeR/r3cuJD
         6NE7Rp5dcSdejqucLNnJ4E2aFiCkVUb5H7pJ0AVkDRhSAhh2p4Ec1uwxntmJftxPAMeE
         4MmmhJ1IiZtL/G8iRrVhDlsXGcRnmYCvFWCWqf6CDBo+k4LgK2S+L5WeRFmZpyNveFrv
         LyMUPwhOazBL2K3uqirnoeWb8i+a9UVw+yXpsd9SLqnejbjzzW0mNeBRPgbG9nJzjuaw
         QQTA0pifp3WyJLbU/IQ3sY8GxdTwFAZwBoFBzN8+WHhVBmXA9twgF/GWdVcSyL5abmEN
         EdVw==
X-Forwarded-Encrypted: i=1; AJvYcCW0rjlvfJ0ePYebGZHgxgttEFhGKOc+0zS1KaWmOpQDULRCIpaBilcZyVK/lwp/t7wMLSP4aRJ4K/sh@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg3jlTDEtJI3OI1khgbV0F4fOs/YyzcvdhlU4gM+n48FE+nU+s
	X3R1Y9oyfevXYLRG2uTTITRizEfM1PbLfhb3qsjhsT9eh2FQcFr0AoF7xVovLlE5wK2/aCI4o7T
	EzDA=
X-Gm-Gg: ASbGnctxkpip7IYAxumsrfaoFq9s0HkD4fa098gS9o1MVIY84nInmy95h8s0azfZBge
	sgEM4jlPo8pXQdOCt7V3ahS6z3JZyhIysSqj9gHfgf0l7HyqBP8mrgp0LhpfIg2SqNRbm40cxts
	62uqKVHN8zOz1ezOq+34D39MECe+dO1QpltrDMTby/yFOzA3KFY8az5n0aYBERrzsCWoOIGt5SO
	WxJBtpaGEdqmYmRQ1dnOhvj6TDk5ve8h72YxBkIKNU/3VXDYCG2DoBEsQ2HQMI/r29sfeHyyZsI
	neHa/pKBPlXn+aIv0sr5Pweu2HncAGEhMGyllFW8mtln1X3qS4poBBdFVGfnDPrjz9lUuaMUkoR
	bPMCIi1Cy9uWG/Jf3VDSmrFOT/B/DHPlqF/q+H1pr6LDbVtZtI+7a1P6mNQ==
X-Google-Smtp-Source: AGHT+IHK6wIEFHjFPo1nZ/taN3+0ZLl+elx/XCczdeMgPjCIVLd2piYjHBNWpD4cl6N4pl31gQSzEw==
X-Received: by 2002:a05:6122:1823:b0:530:7747:80a7 with SMTP id 71dfb90a1353d-53b18ab69b5mr692503e0c.9.1755165037153;
        Thu, 14 Aug 2025 02:50:37 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-539b01ae378sm4485912e0c.9.2025.08.14.02.50.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 02:50:37 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-8901911d598so216073241.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:50:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVeHZo/DgZE1RIVTzrfSFxyyKKpzlF0XerKN3OCoRC8z8c1KwOPswJP6hVczkuADCdX+HHqqm7SNjsf@vger.kernel.org
X-Received: by 2002:a05:6102:3f9f:b0:4e2:ecd8:a27 with SMTP id
 ada2fe7eead31-50fe030e2damr804847137.4.1755165036132; Thu, 14 Aug 2025
 02:50:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250814092510.211672-1-wenst@chromium.org>
In-Reply-To: <20250814092510.211672-1-wenst@chromium.org>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 14 Aug 2025 17:49:59 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhw2R-2YVpgBnRDAn-6prJGm2a9oq9tCASkpXHDP_-BoA@mail.gmail.com>
X-Gm-Features: Ac12FXwCy2I4l7L6eb4V9g1X9AwsA4Ouah27uikhuRM8HDiKM-hrJ7wZo6sGxh0
Message-ID: <CAC=S1nhw2R-2YVpgBnRDAn-6prJGm2a9oq9tCASkpXHDP_-BoA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: mediatek: mt8188-geralt: Enable first SCP core
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 14, 2025 at 5:25=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> The first SCP core is used to drive the video decoder and encoders.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: Fei Shao <fshao@chromium.org>

