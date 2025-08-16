Return-Path: <devicetree+bounces-205265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CA6B28925
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 02:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B9DF188CEAA
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 00:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3070E15A8;
	Sat, 16 Aug 2025 00:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BN1lpdWF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B01A171C9
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 00:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755303280; cv=none; b=H4fKrb0J2RNwNG+HmQh6MXo7GQK9n2DDxWFfIChHHBk0CE0uP2pddRQMZ0S/6zS4bTNlwUUzv3a3Jv/y0jFWtDGePFgdnUYlnWAr4Q2NJFurh4MCgTPoESUHAP8ZVEsqszn6gLtXm7IKale9QQna4CGkNF2Q0K+v0wdZckvDRDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755303280; c=relaxed/simple;
	bh=iHEoGce0lrAJlVMlHROATYg+2I1Mlm8VsTj1ni7pM3Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G05CFMKN4Y1NFIx4Q6NWl/0ryFw5GHTCKi7pDInuv4BE995V2Bx6aL4SKeYZHVvayNkoAra5NkrvIX00i07IKrnZW34HQKVw6CV11apG0C3EaaF+9IJ6CrUloxJu/i/jbcsh1A/saWEMfuYIi/HJUFO6/pMROy/35uLWo5cUVJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BN1lpdWF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80DC7C4AF0C
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 00:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755303279;
	bh=iHEoGce0lrAJlVMlHROATYg+2I1Mlm8VsTj1ni7pM3Y=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BN1lpdWFMrtOFXBfxNdIq2waQC9pjf4+uT4k8HKft0iPxKdzyvfEQuqk+mts6O+DE
	 Ge+g+WGLUzNtceZslkSk3ep+CVuvqwXA3L1dAsyIhfF/Q4UPFvG1crxqlE7nePnDIe
	 HfchDENsn1HgspLrThZGcg2tOAac4DmjWkolu+xZ5CNgqva6RzhJAdkGwBeNqDJcIH
	 o4R1q4YEimYxmjq1Qa8U9XP+S2/MxjyUEsYi7Wsez1BpaY6eZeFKWWzY+5VusZuIwf
	 K+eSN7sD/yBrimFP/mY43sMTglKnkUgkc5Kr0OwAQSnxqVEQGKNH28P0+5y3eGAFlq
	 IoGfs94jcJOFg==
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afcb78e70c5so393863966b.1
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 17:14:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXyHx8o4GWSd6saKVdVtljws5BavfSBafr3fakWK9av89LAKtdotwKwVyryFl2os+oLOrc7Mpkp54br@vger.kernel.org
X-Gm-Message-State: AOJu0YwJwokuBaW0PKOSbmT+UzpmRooJk7YPLFqDB0g+2u1K05EtfwWG
	g1qBXTU6XyB1u1rzU0t8eQ6Ipbx7/SaPY7D7VvKTaW0hQerVKg2Im6qvlmNkSGyv7P0EpEQmvBR
	NljeXms+7WhQvdydAYFJYvn/p2M2o/Q==
X-Google-Smtp-Source: AGHT+IG2VIiAuWG17o6/htgWCGniyJwLypaOw904GL2sgMLWgoBf1WnYJpROqJLvjaEdcULRveOwlH2p9ViPonEUdDs=
X-Received: by 2002:a17:907:9410:b0:af9:5993:65ed with SMTP id
 a640c23a62f3a-afceacaa2a4mr75600466b.6.1755303278104; Fri, 15 Aug 2025
 17:14:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250815194730.41695-1-eajames@linux.ibm.com> <20250815194730.41695-2-eajames@linux.ibm.com>
In-Reply-To: <20250815194730.41695-2-eajames@linux.ibm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 15 Aug 2025 19:14:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKg0r6By9nns0vp=p2yc4C_SN5D7X_7vHzO8YvrMVoPTw@mail.gmail.com>
X-Gm-Features: Ac12FXzEw5UY_40A9C58CjFUarT0RRHoHOqh0PQOwJ_a7D9_sswOpSt2S57unE8
Message-ID: <CAL_JsqKg0r6By9nns0vp=p2yc4C_SN5D7X_7vHzO8YvrMVoPTw@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: arm: aspeed: add IBM Balcones board
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org, 
	andrew@codeconstruct.com.au, conor+dt@kernel.org, krzk+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 15, 2025 at 2:47=E2=80=AFPM Eddie James <eajames@linux.ibm.com>=
 wrote:
>
> Document a new AST2600 BMC board for IBM P11 server.
>
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

