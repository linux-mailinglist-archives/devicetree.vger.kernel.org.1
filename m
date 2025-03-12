Return-Path: <devicetree+bounces-156789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD29A5D8D7
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:06:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B676F189B76D
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 09:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B75E23816A;
	Wed, 12 Mar 2025 09:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJy1EYmC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182A6238161
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 09:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741770379; cv=none; b=Kt98P8ezSrM7wKGc3etfpNl9zz8rRbFJl5ntnqgReDBnZXClKaYuaVMiU+cYkFeVou/JfHTycbUzwb5T2G/QjHPDmzHA5H6Zqpmf/1v5LkR2ybiGlBOLMtJRwzWRiUieVJSxaZE3VSeUc2x3v2Gpdx36lSFwYOxOj1952OKHDXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741770379; c=relaxed/simple;
	bh=kkbvDFWNRga005awbcrJQtQriRG2GOpvG7mrXZ2nwzs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=amnfl30mqES7o/VyC0U4DOJOTjlBp3gt08ixtXloXi2RKZXL0NGmb1kKPsWRQPpRnsQQft+byvFj+wz5JCehHROOIVT7YCZESc/47YkSh06pnaoJUMuGUnrljP56IekKxDWtnZu4LwDpRCf7qgaBUWWn8tqfEkrzjH6MlCJkDNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJy1EYmC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77C3BC4CEE3;
	Wed, 12 Mar 2025 09:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741770378;
	bh=kkbvDFWNRga005awbcrJQtQriRG2GOpvG7mrXZ2nwzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EJy1EYmCkMs32e8YbXACxGg1PW1aGvAoBvbDBkCmihb6SX2dMeFwIJ6m338Rmg7YC
	 7fBCAcamEbdXF8E+2y7LKSy3fYp1pRNwhRHcBS/OEHBGNtgXor5iD2GWiLjhZDfVAP
	 kqgeqCMZ5zQXw5UyXForTBnIGrWqhs9ojY+8mMECJUcFfoG5q+CGy7wayGONWUYPRv
	 HMjgnECghATeGoHrw9OxR+LK3jitfjoP8MvN4xcw9NPyBbBsAFe0D8Vlf0AdoNbVLB
	 B2PsLCv+5RTiODKlxw3knpsDXtoIUhBm147aJ6GhHYw7uSEeNXoB0sto7HNJoJKvPK
	 ZrN2PAiGHNOhQ==
Date: Wed, 12 Mar 2025 10:06:09 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>
Cc: Rob Herring <robh@kernel.org>, Melissa Wen <mwen@igalia.com>, 
	Iago Toral <itoral@igalia.com>, Jose Maria Casanova Crespo <jmcasanova@igalia.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Phil Elwell <phil@raspberrypi.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, kernel-dev@igalia.com
Subject: Re: [PATCH v3 5/7] dt-bindings: gpu: v3d: Add SMS register to
 BCM2712 compatible
Message-ID: <20250312-independent-beaver-of-swiftness-1851c5@krzk-bin>
References: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
 <20250311-v3d-gpu-reset-fixes-v3-5-64f7a4247ec0@igalia.com>
 <20250311202359.GA54828-robh@kernel.org>
 <7324785d-8af9-48b4-b9c6-55ac22c82426@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7324785d-8af9-48b4-b9c6-55ac22c82426@igalia.com>

On Tue, Mar 11, 2025 at 07:05:31PM -0300, Ma=C3=ADra Canal wrote:
> > > +        reg-names:
> > > +          items:
> > > +            - const: hub
> > > +            - const: core0
> > > +            - const: sms
> > > +            - const: bridge
> >=20
> > This is an ABI change because previously the 3rd entry was bridge and
> > you moved it. Put new entries on the end to keep compatibility. If
> > there's no users yet, then that's fine, but the commit message needs to
> > say that.
> >=20
>=20
> Again, I'm sorry about the naive question, but "bridge" is an optional
> register. AFAIU if I add "sms" in the end, I won't be able to make
> "bridge" optional. Am I missing something?

What do you mean by "optional"? You claim the same SoC has this
registers on some boards and also does not have it on others, so is
firmware locking the region? How does this register disappear on some
boards?

>=20
> Initially, I thought about using "enum: [ bridge, sms ]", but from
> Krzysztof=E2=80=99s feedback on v2, I'm not sure if it is the correct app=
roach.

Best regards,
Krzysztof


