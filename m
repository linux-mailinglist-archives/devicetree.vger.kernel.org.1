Return-Path: <devicetree+bounces-243421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9589CC9787B
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C4D3E4E3D42
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA5273112B4;
	Mon,  1 Dec 2025 13:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsD7tLW/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBA13101D2
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594805; cv=none; b=uHVO/Yz22P17DI2FOE2sijzYszqFxjD8OFb0AsVby1AD4KyXCurubmLXTJgNUL9ryTLd+NEpGa3ozqcWO0A4+m3I2kl+soHxyWMnnufB0dlUh/xaqoYYZFqU6g6gsid2pqnicJp7GM3IKo8lhTrveExMPlis6N7bL8eDtEsZpfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594805; c=relaxed/simple;
	bh=KvS/c5+sVLM1HjWDkIWCltG0ZGZDRBAXr+tIihk2rlk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ufFKHKzFyBFag4mxl4dpEpWVv54Vmt0MeHNgtCQOxYu93ZCo8c8M+VQ7BSDhwnHtOdi+rLKpTgMhIEAtdRntk5Go9wJB4PwwQGnjnMirkaZvQIDIT+NvKjgYiaaylYrgPPK5nC9YyJrtiZCCXuOAaXzZyrsVdvkEL8KZVXarXO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsD7tLW/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 480DBC4CEF1
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764594805;
	bh=KvS/c5+sVLM1HjWDkIWCltG0ZGZDRBAXr+tIihk2rlk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=GsD7tLW/9W6f5CYDc1D2cA/kGkAg2cx0nhyCW5vYfs1pj8/bBRPGB9OgSIRsma/jp
	 4clFj6lKhRaGAf5zwQm4ZkCqS9GHTqyy2s2TXI3EiwLfxt0YzcmhKbytPpMAnuiGsQ
	 wEYu/qlNonipsMUtMVhT38bZeo9rVaDPVB8kdy4hzX6Xz+0nZ1fkGpLpzp9Rx3dO2y
	 L/aQHBYOzMxYhZahAhI0uO+baSpw9lMtTe3zy3FgU10ooTB/LePMBJ3CszvbBiW0nf
	 89m4LO0cnygpmZXUmQRFD2eoE3418phufq6Kex/YzMVCYHSb/2FwC/RP9GZSrE3HBw
	 QegB0QjZCNDog==
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-640aa1445c3so6372493a12.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:13:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXL2LfksNQeNACmZqYdnqYiA5ICA8d3OFmhPpmX+5lwl+o9+fqydxUv0bGANoSwdgfsijeT8nN1hKC1@vger.kernel.org
X-Gm-Message-State: AOJu0YxqWibypVhA9upjUINCTM57IGLXNJNfu+EUTCXREj2BunB/pYq0
	Tchv/zr5HaRvi59foyWvjUk3l7L9SHz3fL+jQH9jSfow/dp8g08D0m18ghDMgPzd0N+2xiKFe9y
	rLoO6+xcUD0zDvj3GGfCNIVsB6EwEeg==
X-Google-Smtp-Source: AGHT+IHV6PsO6y12ewZHr3MWVOJWidSpTpQlClrejx70mJWYDNFbEdEk1l+rCUbxECSlrgQR1s7NWGVtEF1StS9wJU8=
X-Received: by 2002:a05:6402:4311:b0:640:c454:e9 with SMTP id
 4fb4d7f45d1cf-64555b86b59mr33064672a12.4.1764594803734; Mon, 01 Dec 2025
 05:13:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251129142042.344359-1-richard@nod.at> <20251129142042.344359-2-richard@nod.at>
In-Reply-To: <20251129142042.344359-2-richard@nod.at>
From: Rob Herring <robh@kernel.org>
Date: Mon, 1 Dec 2025 07:13:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLEwE+2LNh+tQhqxz=-k_BUmpTZzqKjTVOttMOQMiw3vw@mail.gmail.com>
X-Gm-Features: AWmQ_bk2pHDS-7D9zmjaB7BYnIR6PZ5J5FKq3pRqtdsUrUaQkVVuktxke-9JgLY
Message-ID: <CAL_JsqLEwE+2LNh+tQhqxz=-k_BUmpTZzqKjTVOttMOQMiw3vw@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: Document new common property: has-inaccessible-regs
To: Richard Weinberger <richard@nod.at>
Cc: linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	devicetree@vger.kernel.org, arnd@arndb.de, lee@kernel.org, dakr@kernel.org, 
	rafael@kernel.org, gregkh@linuxfoundation.org, broonie@kernel.org, 
	tony@atomide.com, rogerq@kernel.org, khilman@baylibre.com, 
	andreas@kemnade.info, aaro.koskinen@iki.fi, conor+dt@kernel.org, 
	krzk+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 29, 2025 at 8:22=E2=80=AFAM Richard Weinberger <richard@nod.at>=
 wrote:
>
> This property is used to denote that a certain register map contains
> registers that are inaccessible under conditions only a device driver
> can know.
> The purpose of this property is to disable register access through debug
> facilities outside of the device driver.
>
> Signed-off-by: Richard Weinberger <richard@nod.at>
> ---
>  .../devicetree/bindings/common-properties.txt        | 12 ++++++++++++

This seems to be dead, but just so you are aware, new properties must
be in a schema. Something like this would probably go in dtschema, not
the kernel. (And this file needs to be removed)

Rob

