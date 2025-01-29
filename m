Return-Path: <devicetree+bounces-141709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B80FA221E7
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 17:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C2EC1887256
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 16:40:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3BB1DEFC5;
	Wed, 29 Jan 2025 16:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVd5HPtB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A6C1DE8BF;
	Wed, 29 Jan 2025 16:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738168836; cv=none; b=tyCybRXcSumR6IXIneoAg1zfNWSssiA6svGslPhGO/Wdczu5o2a5lMlh7USeQUZZ0OXE5kK4kJXN6zKTGFc8Vv3vZtjCPs/zEYZ9hCR4nqIgZ3wz3/+k5y6wCSIcs95l6CcYo7wjJDcFcuwZdrYKE3cGBS9OV2TYMMWvhaDvRDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738168836; c=relaxed/simple;
	bh=fQHwilHCkmzvP+LtfBPpLrp6GzI+AORKtJJ51bDVNC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uZiWEACxsEKjx6g+n3Wnx+xtI8pQ5FKPw4sTThLG0qZ/RgMP6nKEAO1Q22Wo7DR6VsLjD2L0Ym+PexmWrTKs48MryIxZJsfrYY+LIpRVyyQxvWpANuZMoO8NoGP3P05lsItXJK75aObZc5Ijuej5eBd2Ia5xn8DlGyOIYGhsKuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVd5HPtB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B609EC4CED1;
	Wed, 29 Jan 2025 16:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738168835;
	bh=fQHwilHCkmzvP+LtfBPpLrp6GzI+AORKtJJ51bDVNC8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bVd5HPtBR130PvxqyvqF0UjsAU3QxxJTZWvYXs1z5NBnDH7UHaaFEcb42m6uSEnvY
	 oJPyks39sAxUcXiP1vCaTREnDQpPUch1ocZt3XAL6/PHW+p/t3fCcgJqRp1Wnabzbv
	 xUJRNtRxU9iboPtZgBlqtz5795aI2MQEkF0tJhBazq/GjUqP+s+04kG/yu7BNiYBWc
	 5CSG16CQJHx6SR/04OrQYZje0Ytqy4EWfX8YE8k7YqGd25xE/sNu66H/3w35Np6YF3
	 8bgHGEs+XKXi4Yj2y0DqS9iCVahEJ5olgo+ZNvM3l5IGsUXy6MxWvUkkt+szUaGTwn
	 S4eqcDU49uSpg==
Date: Wed, 29 Jan 2025 10:40:34 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Cc: linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Anup Patel <anup@brainfault.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v5 1/2] dt-bindings: interrupt-controller: add
 risc-v,aplic hart indexes
Message-ID: <173816883375.2207117.18376328133127394018.robh@kernel.org>
References: <87ed0o87qg.ffs@tglx>
 <20250129091637.1667279-1-vladimir.kondratiev@mobileye.com>
 <20250129091637.1667279-2-vladimir.kondratiev@mobileye.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250129091637.1667279-2-vladimir.kondratiev@mobileye.com>


On Wed, 29 Jan 2025 11:16:36 +0200, Vladimir Kondratiev wrote:
> Document optional property "riscv,hart-indexes"
> 
> Risc-V APLIC specification defines "hart index" in [1]:
> 
> Within a given interrupt domain, each of the domain’s harts has a
> unique index number in the range 0 to 2^14 − 1 (= 16,383). The index
> number a domain associates with a hart may or may not have any
> relationship to the unique hart identifier (“hart ID”) that the
> RISC-V Privileged Architecture assigns to the hart. Two different
> interrupt domains may employ entirely different index numbers for
> the same set of harts.
> 
> Further, this document says in "4.5 Memory-mapped control
> region for an interrupt domain":
> 
> The array of IDC structures may include some for potential hart index
> numbers that are not actual hart index numbers in the domain. For
> example, the first IDC structure is always for hart index 0, but 0 is
> not necessarily a valid index number for any hart in the domain.
> 
> Support arbitrary hart indexes specified in optional APLIC property
> "riscv,hart-indexes" that should be array of u32 elements, one per
> interrupt target. If this property not specified, fallback is to use
> logical hart indexes within the domain.
> 
> [1]: https://github.com/riscv/riscv-aia
> 
> Signed-off-by: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> ---
>  .../bindings/interrupt-controller/riscv,aplic.yaml        | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


