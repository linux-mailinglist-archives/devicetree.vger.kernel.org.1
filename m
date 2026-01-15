Return-Path: <devicetree+bounces-255455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A71D23358
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:41:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0520305D8A3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51F033A9D6;
	Thu, 15 Jan 2026 08:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SZ/XHSeO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560C733A9E2
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768466484; cv=none; b=rWYopzPy82fDQabFvneD35xgpmNCGqy4ByoQwo49NyaxTDQNizo9m5l6mZ4DZ2ZLE4rHbE7PATU0LqOwl0gL4jfZRcu3Vd9vYABv0PKlcyOpK+1swIU01JGhsiRjl6O1xjFjDDndmK/QA4EJyRb++P3aJ+Fzhd5zvwljzRPpFtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768466484; c=relaxed/simple;
	bh=pebBiil2ei/oib7mZd9mepzUxVShBPvTNogkSnHrW1U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YFdxladeq4Ns+tUzNIDskuQzm46ExdwD0RJR/y6uvC4a+/Xds5Ro5ipn8mWuOxTrOmuSqJFufESIk9eT8+SMG+92xI8voXbfE6vgtYI9XafxIijlczSrdwCfrxfpeJgNPjsWK/UOfOzm2z2oNbI6YjumYaz2+C26GC7PrmY67bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SZ/XHSeO; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-11f42e97229so1477098c88.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768466482; x=1769071282; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pebBiil2ei/oib7mZd9mepzUxVShBPvTNogkSnHrW1U=;
        b=SZ/XHSeO08Mn34xmfcutAj310xtfInQlFp0pit8oillBo1fBFke1FV7Y5hhdePw+Ap
         qcLz/5iMAYoUos6lXJka0fp7vLHquAeLcPXf0gYfCee6oMIQiSNExFBDd7ALU/D8gzKo
         Zs4eFXhZZF5mL5hHUIIQX3Yc2xLHn0d52xQExBlODtIvuCL/GG2l83oZ+9pQuW28lwuM
         zRHtef2iqZ31pKcNOG5rZixfdUEpBrZBko3flJ3DQvGTsbrvB+quY9gXE0ONlexr30m3
         S3G87qZRb/uOS4fWUKyrlhVA91/zIYBlstTIymiQlDcCya1DX8QNjrGFehVRNEfA82XI
         h1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768466482; x=1769071282;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pebBiil2ei/oib7mZd9mepzUxVShBPvTNogkSnHrW1U=;
        b=fEkH8JYJyYyaN0t1nJ4hoa1hxSHxf/LbumGl0FBACa/rcapdKYCJon57f3vROqeYJX
         KitSfk3HxslG92gcgY9N8gakgtgLUkWHBOG+2eZouiZ7eBOEY+gBQrF2BNN1PlIpBpKW
         0BDDS6jdde3+QNQkBgoXPPcfbagWAYJpm8M9MPa1dY6jjwZbZ8oso9nKehzNMIKgOtFa
         M0PVQ1MOB6imFdJ6ScglQdbrduqlY/y1ryZdKAmduthT9EayO7qEWsDY5V+5ea3CuzG+
         lnSUYYql7d6EdVv+UavMUA7YgogVoFFe/Q+B+f40GifoJJmS8PpLMlxwlavL9AjBeUdW
         rIIA==
X-Forwarded-Encrypted: i=1; AJvYcCWgFqObmbvpm+tm8pl8GaWb/R8fqYidnBaYyxjd9dktUHZ2TdAO/+c+yFdrwe/l1WwRWST3gIOh2p4T@vger.kernel.org
X-Gm-Message-State: AOJu0YyyPxQ3JaTNTSZHPhTQm5eHmPtt8CwRWK0mktRJ6bDfcE6NSvmq
	c1kXhQjJY6L8+hZpmOrzKjae7GuC/E6jJXr3u/14FAG66/0nroRmMdzG85Lzn69xZW8YnIPrZFR
	rFfpcAqr09LG3TCzHwIBxQxwV0El4qn4=
X-Gm-Gg: AY/fxX4YVwnZTC+O6jMFwjsqewRgPhtRo8ftGCq9XZoK18HBIyMydWMjADhWIdc4rvz
	kqCZVfxJt50U9iyjkM0kwLiqhb7RKLu/n/2HvlQ0O684xdF4xrRCLJVjsDauzP7tKrNCO6OnU4K
	AZV8pXzjPbU3mdlWPgBf/gUe/ZcBKuKXfZB1xKLcqGuRKNakDa7/jigrlrWFsGoAEf+muKE5swI
	fjFu943ldPa61iYXWEltdItBMBhOke7zR7CukxLB+OsvzI7/GFovJv9z2bl0swhGCrAH1acAQN7
	JDLXRzCwOww/pb3vrJBRf1HlDeE7iuZwAY0iw0uWlH9RXa3ij0fTR4XTQiUlXsieqJIu8sfUjFE
	HbMlKT2tSOg==
X-Received: by 2002:a05:7022:2392:b0:11b:9386:a3bf with SMTP id
 a92af1059eb24-12336adc557mr5402464c88.42.1768466482362; Thu, 15 Jan 2026
 00:41:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114-mxsdma-module-v1-0-9b2a9eaa4226@nxp.com> <20260114-mxsdma-module-v1-1-9b2a9eaa4226@nxp.com>
In-Reply-To: <20260114-mxsdma-module-v1-1-9b2a9eaa4226@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 15 Jan 2026 10:44:04 +0200
X-Gm-Features: AZwV_QgLOj1RDdzVccL_41XskfEEs9aTrYg8yhWQDuDVwvWQC6YUiA6AbKgDm9g
Message-ID: <CAEnQRZBkxugbzhNk+HE_t=2z_-1OZ_mgON=8=5Q6wV0zJcNHbA@mail.gmail.com>
Subject: Re: [PATCH 01/13] dmaengine: of_dma: Add devm_of_dma_controller_register()
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Shawn Guo <shawn.guo@freescale.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 15, 2026 at 12:34=E2=80=AFAM Frank Li <Frank.Li@nxp.com> wrote:
>
> Add a managed API, devm_of_dma_controller_register(), to simplify DMA
> engine controller registration by automatically handling resource
> cleanup.

<snip>

> +static inline
> +devm_of_dma_controller_register(struct device *dev, struct device_node *=
np,

static inline int?

