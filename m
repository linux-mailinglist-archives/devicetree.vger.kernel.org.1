Return-Path: <devicetree+bounces-247079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E73D5CC40DA
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B07FC301A9D5
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805BF366557;
	Tue, 16 Dec 2025 15:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h4mm0TQc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C211233D504
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 15:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765898716; cv=none; b=nyNKBmrHCJEosWRkshspntNJ6F/sencnmKe4Mt2PlbvNFC05YdhMyfvBX1G1k/KNFpMkj7OpnOJIz84u4CZ1OgAYI/WfHMYA/iBIuCRgXRoxec2ZS1DwuKnqRAmqLlQDnW1KdYbfAP/viQdkIaJZoEGhnvBjTT1kjYiXTuL4RS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765898716; c=relaxed/simple;
	bh=MDkvhx/UWht+J1EF6yeI4u41iXTnDyRpJQfMIotkrz8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C2haf6bJpoFylFT3fkWzAf8ATos8lmvrKb/u4jf5BPzUV9VIyrdS0fpaXob+FHzJVlDOAJKQs4u5Ail9+2xdw0GkRRZVprpt/bLCjCsFeLr4uZxqMc/bCi8UgJU1jS+YDKsMLcuUnD0PO3NdUaFpoLlZag6n4SwpZ+bB4jQO5lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h4mm0TQc; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477a1c28778so52649715e9.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765898712; x=1766503512; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4GMNrMLkfDebdMnrSKqK61b1HC+YKle22T3SSCNCdsM=;
        b=h4mm0TQcwejvOXo2DUDHHUak4AKwWOVwACN2x6eG6RtfkkEmVYzNjovFkKZtq7WnOu
         W2a7P1spHrFj8JG/cdy7MZQZy4ceSc3EOprb0D/2/dKNC83G8hgpURwASTvDq6ttVN/T
         XJL7ZuN1owonTolnqRPKPGi8Dtq4fZHgvEHUeEHFTMMpC7e5ywdUOCQzkLOkSNx8xvQM
         8dGulD+PHtTep81pivIdWu7X9iZyyXftmxquAB+l3FQ6RP4qCD2xckZRcQTLO38VIm4u
         gcUFwkKBjslBOHh8Fn4N7u0ajVGpvWw+PQ3KYZ9odgAK22cSdQ2USKSq/hfMK5+tJR7K
         Hdmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765898712; x=1766503512;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4GMNrMLkfDebdMnrSKqK61b1HC+YKle22T3SSCNCdsM=;
        b=H60+2mTTqEm6eG+jL3uT4JjAuxOqM43M2W8587NGYRPG/Dgcln9VIIEMe2tMdWhoqe
         4+2/ztLoAaMaQdERGTt2N6kuU89S2cxFJlzZ+zLGixV6LDQxevbcaABVXoQeYoYbrgCZ
         TbVdsyx7yFvSnkXe9qbwjLIvVM6oi2rb53Pwor1rx7GF2FY9xeghRaxrNHMssy+Jaiyg
         Rc/VUA7GPn+gewkh904OggmERMi8Xqsz2fGWhZl2O949Sgd7ym2Opk4DIKMW9PK3mkQ/
         ZFZWP4MCBKQQ6C4UTp6MapAdQUv1LR5wUk5eum/KW0zRVIRuDHMDZBdCfFpm6GHd5Wkt
         SAnw==
X-Forwarded-Encrypted: i=1; AJvYcCWT78ktXpr2xrE6tU2jg8Jf6rM7Lki1DiidmVSIXks5IhQY9hdk+aIa9/Vfjb1GDXAtQ2uh7RDaunYn@vger.kernel.org
X-Gm-Message-State: AOJu0YwE2zvmxggASuecRm7EmYUGLeCx7pVruhPx4JtEOmOeaaOHbEZ4
	3lbfvG8MlNZKV1j1AzBiSt3BlkpJbjKeMEKJohtzoUmL8vqfOi9ZgAoI
X-Gm-Gg: AY/fxX78pJgQqAGwFZtrOGzyq92l/JzYAtuaQ9LZJPAFruEkDEgtixtkn8704/tLgb3
	EgRHrvc2jz74nZR7mPzmuBcr5Mld1XGysrFBTVyAoqqyx9a9POsLL01qzw8HstUciZ0zQCAIbou
	rzku14TdYAoy3SCczeR3dME7hgPajLAnKzR2HF4YlF9X7DUR60UMeFO3v+0BSHBYcm6EsdYoD8C
	UaAA2QohYfqVXDRZ/9hlzGGdlzXp0HVg7+GxE80seCkVQFem7gm4v/XAIeN9yiAmIeDIaA24Tnk
	VEW82JkRh8RufgjsG4y+kND/ScY4ZpJsjL7ZkvnIyXfXuGTn/1rzC5MbLrzvt4znewVzKhxqPcR
	wm83YWT+zmSpRbuRPXzuJaEpL5jiZTEqHiC5he/uRdfMjXBl1tke6kaYJhaFAONLfMldsESUCmy
	X5cmadg1EDiYjFV5cL0qzuhpsrHC7yjs3oozUHVRznsu7Yuqq0V4OM
X-Google-Smtp-Source: AGHT+IFV+c61z+DgSxhQNpcRqsr6GKrDffylNeUc9FZ154kyk76iN8prufaBiE8rBuUIXMcUo/WuYg==
X-Received: by 2002:a05:600c:3b05:b0:477:7bca:8b34 with SMTP id 5b1f17b1804b1-47a8f8ab546mr158959185e9.6.1765898711717;
        Tue, 16 Dec 2025 07:25:11 -0800 (PST)
Received: from anton.local (bba-92-98-207-67.alshamil.net.ae. [92.98.207.67])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4b1347sm270035235e9.8.2025.12.16.07.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 07:25:11 -0800 (PST)
Date: Tue, 16 Dec 2025 19:25:06 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Chen Wang <unicorn_wang@outlook.com>, Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Longbin Li <looong.bin@gmail.com>, Ze Huang <huangze@whut.edu.cn>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	sophgo@lists.linux.dev, Yixun Lan <dlan@gentoo.org>
Subject: Re: [PATCH v2 0/3] riscv: sophgo: allow DMA multiplexer set channel
 number for DMA controller
Message-ID: <aUF4w9sO5lmU9T6v@anton.local>
Mail-Followup-To: Inochi Amaoto <inochiama@gmail.com>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Chen Wang <unicorn_wang@outlook.com>, Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Longbin Li <looong.bin@gmail.com>, Ze Huang <huangze@whut.edu.cn>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	sophgo@lists.linux.dev, Yixun Lan <dlan@gentoo.org>
References: <20251214224601.598358-1-inochiama@gmail.com>
 <aUE9hDtflXpcgGnX@inochi.infowork>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUE9hDtflXpcgGnX@inochi.infowork>

On Tue, Dec 16, 2025 at 07:09:16PM +0400, Inochi Amaoto wrote:

> Hi Anton,
> 
> Since you have tested this patch before, could you give a Tested-by?
> 
Done. V2 works fine with Milk Duo 256M with 2 channels RX and TX working
simultaneously.


Tested-by: Anton D. Stavinskii <stavinsky@gmail.com>

