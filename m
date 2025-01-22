Return-Path: <devicetree+bounces-140193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C640A18D42
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:03:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 064533AA9AB
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 08:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01BA819ABCB;
	Wed, 22 Jan 2025 08:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oThRLHS4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9118F7D;
	Wed, 22 Jan 2025 08:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737532984; cv=none; b=gCfl3DsVlMgoDcVFqj8g++eKkC33gSeE7VF+9XB35gz49xwyOrb5CHd+Bj4Iei4qjLbzNaotFVEOFKr3eb5ZgM5soV490Dp3GplpUNve5JdPTbL0gUqd7mA8iQr6IXDXb4Om5lVwftg8E7EPoX4HYstZbASVUuqVf3db0ihpfaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737532984; c=relaxed/simple;
	bh=qlsDdKWp9jAbvCWbUO/DPo1L2HYoPRwKgJ/Bbi2jIR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aHi3EdH6yTKvVBjCvZM1RGz4smIiCvFkQ0zE8n+Nw+zp9RDfFXbGQgrfVqDRLF23kp+xNTNI7uswEf+JNDhBKV0lbMdOL4YSqU7wItkctVoricYpWfKm6CpTE/D88sURfOok5YzpqfJeQiGL76wDyIqgtzsVhO6IeK1n/145Y4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oThRLHS4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C0B8C4CED6;
	Wed, 22 Jan 2025 08:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737532984;
	bh=qlsDdKWp9jAbvCWbUO/DPo1L2HYoPRwKgJ/Bbi2jIR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oThRLHS4vLztbbjbOriHl28d4JcYTO8ZGi7nmsXpqSUtuzv0xbC1aFXSpXMWzJPg/
	 XkRAfiVRL883V5BtB6IGuWrd4hTjSCDSVuMWXJHt+2Ax10hZe8qMTrwjl7M5nXOHCO
	 vAP23gmZystHtP+gamPud13XJmH+fdEHgRhOtg8UytMVVWAlrqXFqEZYSZPwZhGUV2
	 4vcxpgrPDeEd9Lw0zXyX+Bwxhri01QUux8oZYufw+htLqkfmcr1se5BsZJSrVJOTP0
	 aIWOl1bWwTIMtztBYnK5qSTSaLFQe9MJU5on92EcXPYmjI1YxrnTsyIFxYW6L9n4Cv
	 14hPBK9gsBRAw==
Date: Wed, 22 Jan 2025 09:03:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, detlev.casanova@collabora.com, daniel@fooishbar.org, 
	robh@kernel.org, sebastian.reichel@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v12 11/13] dt-bindings: display: vop2: Add missing
 rockchip,grf propertie for rk3566/8
Message-ID: <20250122-quaint-heavenly-herring-c92c32@krzk-bin>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103446.2528212-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250121103446.2528212-1-andyshrk@163.com>

On Tue, Jan 21, 2025 at 06:34:44PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Propertie "rockchip,grf" is required for rk3566/8.

Fix typos.

Why? What we see from the diff...

Best regards,
Krzysztof


