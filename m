Return-Path: <devicetree+bounces-53783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D24B88D848
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 09:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF0121F2AEF8
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 08:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A3C2482FC;
	Wed, 27 Mar 2024 07:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bky9xrGB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41114EB2F
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 07:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711526292; cv=none; b=bVC7ydRArCANKGCycrjfaNrCYoAGAWq4C966jyd5R1vikAKO9neDgmPF7hrpb4hKYKKipm9zLMWifcenlTSPrpxWZtNvP9A4p2sSWV+Q17o6kIJF6fJvpeuz1vHuwe+ZJYOyqvOWS6j2NbyiATrWyBLTLZ525SlflGtXCw2M5Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711526292; c=relaxed/simple;
	bh=AdvzqVk7O5Om9zYVogxzKc5FzxJiG73Lmt6jW0x/4ZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ILtd5DI6Sl3LKtc5kf2Nhe4+0Fo4gho9hndcxW7kVfQY4lr08a4h7zmL6dy9I2/LOj8XXOu36KpG1y9HLXS8P06maSiWbgqteOYaYL/wr31xpvTYrNcKxXDpP1X754YXd2sFB1E5Zw7vgSR2QFJ4ESMIVbWrv0gxg6Py4wjs4TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bky9xrGB; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a468004667aso862109566b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 00:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711526289; x=1712131089; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TDy5Illrx70H+5XvK63d5lpudD3g0VrV2VxsSwir7fI=;
        b=bky9xrGBNrfAkhg94g5H1u4pD7IqEDFi9mCnPvfnoXbHGRxw78DK3o1tBOpZuWBApd
         faaMRakLX79o71Vz8dzusuZ02cfxpMp4B7sGgmoJjvTxxu2XF6bQZma0gcU1EkyWhV0v
         IqB927ZYr+sz3ZTE7J+PnIQmKpDNiAUUeCqOzTWOwiQ305ZvbbnbgJtlT+D1OEuSKN5x
         IAgRzhWu/pEqFXPV6029rCr1ilkJp2s552UWlfmzDIQK89rZt9scULBjgqZtRY+3U6yQ
         D2U1cCjQgrRvwf+M6/5rqDI7MpPdG8n6HKViDz7h8fDo97mpOdFXHC28HRZQU/1NTmSt
         3VJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711526289; x=1712131089;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TDy5Illrx70H+5XvK63d5lpudD3g0VrV2VxsSwir7fI=;
        b=lJCBWYBWLTlNvySKSeaLG9Om4o66WOzRzQq3w/qdywV+pMwCi7HW5u4aefy78hFmCl
         gWQazKIxCRC7argG9Er/WOa3I3RClC2dNDqbfttoAXTHfpyCu9M6j7LBHqPT16V7d/Zb
         seWcE7XzFtep4cczS6t8QA9zbgIWc9bOcilEoWC04ZGX0CiX/pc2mXxrO2FMkGm9Y/l6
         I3nrB+2HHXjSyuqEIRfksyZJ5T91JOuon0OSxKQlM2IAmWyI385MapAFKRbzt7A8hgac
         ZQfmVxcnawTRL5w3/PMZaU9C6PWBsjthSm/Q0HiGxRinMUV1BwO4wobIFtJKcS/tcFZN
         h2hA==
X-Forwarded-Encrypted: i=1; AJvYcCViudC0sOhCq/qZeVotOka+tmfDPuzFWEA+Z10oCNWfEIW+C50dRWHqXgFUUtKhFv49U/Ks74kJttl62nKsC+0vJFqKJLmtrFvfyw==
X-Gm-Message-State: AOJu0Yz8IXP0fKFVun02+fM+g2YRncPpRoGC9i0AjpXPUWK4jIuCPbAI
	zgjUGnLJH9mylISjN3SK9XH7Cz/c5cTviek4nnnfDVlI1TygH53b27kmN8BD09w=
X-Google-Smtp-Source: AGHT+IGysvCehLKTeF+GjCKTXRvqk8xpwQLSopHP/oRxr76MQGD8YVIJzklfhmT5jk0MinBjuPZBbg==
X-Received: by 2002:a17:906:3c8:b0:a4d:fc15:4e36 with SMTP id c8-20020a17090603c800b00a4dfc154e36mr1365984eja.16.1711526288645;
        Wed, 27 Mar 2024 00:58:08 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id kz18-20020a17090777d200b00a46bdc6278csm5050261ejc.71.2024.03.27.00.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 00:58:08 -0700 (PDT)
Date: Wed, 27 Mar 2024 10:58:03 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [RFC PATCH 07/13] pinctrl: renesas: pinctrl-rzg2l: Validate
 power registers for SD and ETH
Message-ID: <a0d7e6f4-5f4d-4601-857a-c485cceffe3b@moroto.mountain>
References: <20240326222844.1422948-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240326222844.1422948-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240326222844.1422948-8-prabhakar.mahadev-lad.rj@bp.renesas.com>

On Tue, Mar 26, 2024 at 10:28:38PM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> On RZ/V2H(P) SoC, the power registers for SD and ETH do not exist,
> resulting in invalid register offsets. Ensure that the register offsets
> are valid before any read/write operations are performed. If the power
                                                            ^^^^^^^^^^^^
> registers are not available, both SD and ETH will be set to -EINVAL.
  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Where does this happen?  It doesn't seem to be a part of this patchset.
-EINVAL seems weird here, but it's hard to judge without actually seeing
it.

regards,
dan carpenter


