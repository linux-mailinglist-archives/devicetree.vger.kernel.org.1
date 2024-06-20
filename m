Return-Path: <devicetree+bounces-77834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 403D791015D
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:21:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4468F1C211B8
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B7C1A8C2E;
	Thu, 20 Jun 2024 10:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AFgsk9lY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A8F1A8C08
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 10:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718878883; cv=none; b=G/FXRLbvC5bODMzY9XDuYjtMhXzxopJNQXve+1VMzdAhUUEYgwiF4SDiimxV+xbPBy+xFXBVe6WJlvpqADPxU2NdeIfXhVoasrODZW9fwNfgOFl536JgpTEvkTTX2uyBm8JVJ8VYHRicOuzd61pLbmLDu7qtUuPXDYCufn0ZJVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718878883; c=relaxed/simple;
	bh=yUWHOVjyGyRzoGlr5ghuJKNIOPB/LuWV7z8ChKS8Rrk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jqb8d8tRG/MFF9GhHdl+h3UYhpSHslVDA87c/nAkGJ1Uj6sG2GdM3QyQPeAswJNrPwOTc6wCEIhVU3IWLQy/xqoG+JxKSDPz3cureTV1cu9jVnIrFPT233oLaZyh4YjKrNEBHRLYg2QkHwdzgf94C2CPBhYARnraucPkAZd48ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AFgsk9lY; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ec002caf3eso9581851fa.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718878880; x=1719483680; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yUWHOVjyGyRzoGlr5ghuJKNIOPB/LuWV7z8ChKS8Rrk=;
        b=AFgsk9lYvXla7T625qddf/5I5Uc5xT1Q7n/GbWUGZ/03jpYnouIBZY2srj9Ok39sSt
         lBHu5IoH4icOWPkW3V9BpHvjTt2z+yE3CC5aquzX4c0yfuIB7eRxyIge26/lKyZinwRb
         KItrWRxvAImp/5+JFOTDOjKtJnudtGnevACIw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718878880; x=1719483680;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yUWHOVjyGyRzoGlr5ghuJKNIOPB/LuWV7z8ChKS8Rrk=;
        b=aFGm0qUTxLOxICpJt6MxQmdwFmiZTws5MIKqcp365XEactZdwPPFtRNVv4YR+gJBV2
         eLVHREysfoxACQUVMgkr+7X+ei/V2Be9d9t8C/SVIJlvlkW3hbDAQ3VncIu1i9VPyhA3
         AU3FIG/66NXYMhHyMHc5VVP3/3CI39eubJfKZXmgebse+1ZM+lfJsE/mMYFUIhy7uolZ
         HTIkC6mB1vrIchapVQovYg8e/Vsw3C5vfTMtw+obaAAqNZlNFgdolyEyVue6zCS362aT
         /xQHzGT7uutsY5Z1m3cQJ5zI/A+n3IDZ0kvGRTT/ibMsSCmZXCXkQw3I5aR4FptrYaz6
         kQXQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1UFm1BUscX1cmXc/on2cH9FQh8anFcJH9DqR4ualLQi7WVwHUrKUIGrLzpb3DJ0sHwwGcQlIKcplKTb4vsWNVVPhpmmzy/7syEg==
X-Gm-Message-State: AOJu0YyCOkTuRSQ7Z3oQ//HUW2IQrizBr3ovWZivUR2GN08xImmqKavZ
	GadqLGh1IKBVQ40et8Dcf/W7j2+1z0NBZpaGildiT5lM8JYYjJtX/Dovnq5B5v/9SZUgfJcZ6LT
	Pp8oTFXlH9yioZhuNpkU7kyri4WpLaxhipHZx
X-Google-Smtp-Source: AGHT+IELAWkWRffJk3N4yvr8LW9ShgTVxKf2xLZ6C+NAya7MZHmToAwtMMezgQ2E0CusjXBumZ/vDNsr/BoAYI/GlGo=
X-Received: by 2002:a2e:9e4c:0:b0:2eb:fdc3:c2ed with SMTP id
 38308e7fff4ca-2ec3cea5754mr39550581fa.8.1718878879753; Thu, 20 Jun 2024
 03:21:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620101656.1096374-1-angelogioacchino.delregno@collabora.com> <20240620101656.1096374-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240620101656.1096374-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 20 Jun 2024 18:21:08 +0800
Message-ID: <CAGXv+5F6OMU=GpfecgYur-tZVfeazXuXn-GSiY84rud7mC-yoQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: Declare drive-strength numerically
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 20, 2024 at 6:17=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> On some devicetrees, the drive-strength property gets assigned a
> MTK_DRIVE_(x)_mA definition, which matches with (x).
>
> For example, MTK_DRIVE_8mA equals to 8 and MTK_DRIVE_30mA equals
> to 30.
>
> Also keeping in mind that the drive-strength property is, by
> (binding) definition, taking a number in milliamperes unit,
> change all devicetrees to avoid the usage of any MTK_DRIVE_(x)
> definition.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Good riddance!

