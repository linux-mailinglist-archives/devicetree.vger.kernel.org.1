Return-Path: <devicetree+bounces-255233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEC8D217B7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:01:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 87165300460E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82963ACEF4;
	Wed, 14 Jan 2026 22:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KttFzOT5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5333F3ACA79
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768428104; cv=none; b=F5aoW856Yfxb7i+Ca+s15XWRzwxkpuUtdONu41Dw753sp+wdwNvPlNxDg3QgAnFRhovm1iEllgBmKXeapA3WE7AChee5ZLzPbQ6Z22Ez0hG1ruZ6j8J2HLuHeMeWYSanfTq55FEkl6h34wHBcoL/e2fWF3MIoGe+abzwiZGtJqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768428104; c=relaxed/simple;
	bh=UXt6S4TpfBRSqyKspcRGmcotgc+gMiJo0lHQ77R2USA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NUC2gkrAqBRjK/iAiGyCFsEDiSS38KlY9Pz/0P4nSFWxco76GsNN2iVy6+axWs3jm5088/dN37LlwQW7NxQLXKBUM1TSwfeiwgHZjordrPFrGxXMB43wVXo0tNvsVUXwBY5F1xIGGU/H98W2kfYLVDJ40/8JXR0neybNy59nOcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KttFzOT5; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b8773fcff60so5137066b.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768428079; x=1769032879; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/fsIk4jpB+wwgEY/M1kmFIK656V2ZUNhMLdjvM35Gac=;
        b=KttFzOT5BJTlVyrqe3walj5H++1gvMw4CU12ijOqiZaHwc3GuReBLBhVCWsvLI5mQg
         nNt1hkLuviJeREgJyOltMIYpQlMZ2jVWXLL3mPyicoYuFUCrS6JGbnFvqOyj5Zg+4A3v
         sk06cfaMlJ6vQYZug3cxh2pufJmbaQoHSDljB+kWVOmk/c9Bc2o/fZT96FMd4bbtxthG
         SGt9XUla+Kn3SFbyLbmNJoX+VAUCwiJwQATfL+ku1dqiXDKURbSKf/wvRJE0Pv2/4tnc
         sqA2GqpsmV/rZd+OFzz5diGgDEs2+I3c23Zh3WhH4P0MidpxvqbL4dMx57Y9UNnVoJ/A
         LJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768428079; x=1769032879;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/fsIk4jpB+wwgEY/M1kmFIK656V2ZUNhMLdjvM35Gac=;
        b=Bn4QtV/bYwfNbNlHNewDNGs5Z7MQEIuHiDdC7XWLote/0PnDyKCzPNivLB3sT/D1hd
         26W43h7s8tClfqg4VsQgnoqMVtUDRENccK9S+gdy+j5BAmbmPSLHPrbfBa3M0zlVdX22
         +diWjJRCBmTMmzgFm5RdX8QOsREsLCk0KajiRC1V/rStDsG9M3Y0nwJ8c0I+X2vrYMLf
         y1b5k+93MQtgnxxUqOxnYJJHgjgOf1ZuvFLsSazogVbpeCZOnuJ8swrRHoAO8/hr3Tfz
         hHecm3Xb0JLQSvbGKESo3Ns2MWEzJfCzFnRCk5mltns5QaGdH926uqVM5JS1P6eon3rf
         jn+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXrC95U1w0lllcBSURVKLdR5Yvsgu8CAM/1eFZOevgi6D5cZJ07YtxFZrtJNNg5+y4oyEFz1ZQYyr9F@vger.kernel.org
X-Gm-Message-State: AOJu0YyrjKzlP6fwq0pVkhh3tRoL8CMklfM4TzXrhLWcEJtBylLy4Xyf
	XTo+mxTr5S6tyxZ1nQXSIcuXJvyhdU5zmW+Va/5YKTT1xsdPnP8DnQr+
X-Gm-Gg: AY/fxX7/u4FK+c2RfJa+iwh3sTnZTFVRdW1W9jTdYTx5sSElNC2LnPk1PeCmyrwgFju
	jjRICQ9G7nr1CK4CZnIs32r1zGKvh1mYItRQ5NRS2QCeBEI15SQCRM9Ediif2VYXhSqDnwAiugx
	1l7LmvpPvKcQcfHnVrQybN0RbK1t473EP7X2uti0z3lftCn2j9M8UFd6nxo/zOpN8Kjns141x6U
	7Ry4Tr8Wwr0xdLm0bZbH2BGCWYs1YiOVi7P42nVSAIhoKEIyj2oh8boHM1IN8e0L772zif0TAta
	crbt+p0npy4FYh6zhfHaXXfjWKk9y0L3is8zd+ckJPVzJHDvS2NRs3Umuwg5KdmL9Me4s7tB+BS
	5BYJpuxqwCUDMnUIQgUTEgsjb4PUNJeQ59EDNaJnN/lbx1qBPvYn0HPbQYKrGeHI2lQ697hB8Em
	/qfw==
X-Received: by 2002:a17:907:3f1e:b0:b87:1e1:e562 with SMTP id a640c23a62f3a-b87613efb71mr205604666b.8.1768428078730;
        Wed, 14 Jan 2026 14:01:18 -0800 (PST)
Received: from skbuf ([2a02:2f04:d703:5400:d5b0:b41:b5b3:8c4d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a233f2asm2560649266b.13.2026.01.14.14.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 14:01:18 -0800 (PST)
Date: Thu, 15 Jan 2026 00:01:15 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "A. Sverdlin" <alexander.sverdlin@siemens.com>
Cc: netdev@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH net-next v5 2/2] net: dsa: mxl-gsw1xx: Support R(G)MII
 slew rate configuration
Message-ID: <20260114220115.kou5rkxbvcn7hm2z@skbuf>
References: <20260114104509.618984-1-alexander.sverdlin@siemens.com>
 <20260114104509.618984-1-alexander.sverdlin@siemens.com>
 <20260114104509.618984-3-alexander.sverdlin@siemens.com>
 <20260114104509.618984-3-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114104509.618984-3-alexander.sverdlin@siemens.com>
 <20260114104509.618984-3-alexander.sverdlin@siemens.com>

On Wed, Jan 14, 2026 at 11:45:04AM +0100, A. Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> 
> Support newly introduced maxlinear,slew-rate-txc and
> maxlinear,slew-rate-txd device tree properties to configure R(G)MII
> interface pins' slew rate. It might be used to reduce the radiated
> emissions.
> 
> Reviewed-by: Daniel Golle <daniel@makrotopia.org>
> Tested-by: Daniel Golle <daniel@makrotopia.org>
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

