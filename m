Return-Path: <devicetree+bounces-292369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDIeE5E692kIdwIAu9opvQ
	(envelope-from <devicetree+bounces-292369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 14:07:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B98064B57BF
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 14:07:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A18D03008A4A
	for <lists+devicetree@lfdr.de>; Sun,  3 May 2026 12:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6558C3A5E60;
	Sun,  3 May 2026 12:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmLof78T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40822282F2E;
	Sun,  3 May 2026 12:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777810061; cv=none; b=HZdr6MviqSzozATjZRt62u9/maeH8hXko6AaAtTiF33wZUWvQ7ak0SiVE99oJILLrsmsvrpMJAdgL7BUw1/BSw/vkKkYrLeunh9IsMldfkYcyMHYe6tsDXgVEbzhkpzQL32QmsF6z6JfSXGNiuDKCAeIdTWyLwnWdjsPlNaEjYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777810061; c=relaxed/simple;
	bh=S1ZDXwLMdOnrl1x1Iy1fhJkLXM0JoajWaEYKLKB7tXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jPo0V85dluAzbza6R5JmX+6tAoVmZd6OCbcvk+VrNKRvCBYs0irUYb9MIlhxnNQFqgywdTEtuiLGbwcjF269hhtwZFucngda01d7fuL5fVMqOGa9E6cCzNzPZ7NhYyfj5TMkEwx4qqCyTK47BB9GRN521KtO72+w09raMEiwJxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmLof78T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E19DC2BCB4;
	Sun,  3 May 2026 12:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777810061;
	bh=S1ZDXwLMdOnrl1x1Iy1fhJkLXM0JoajWaEYKLKB7tXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bmLof78TqsmBJvQmFkeFMCn2WoMY3grYESBFq/kvT55NNgIb8750IuZDnuz+P9k8+
	 OV8Qqi/KpwDq57W13bQv3TIz5Nknonca0odvP0rpad6FRAKfDKBh9976OCHuAamiGf
	 9bFhRnLoYA6WLcpdI2myYNYmTl8F6dNddSuh9TPcCisFa3huFzilQxCDj08kjxj2zj
	 lY9/nCY6nwlC6BG45stedbCdRg1k8cHQfHqZ+fARUEgw+p6DWPwQNwHWRM7XERNG/Y
	 QXNyQFghGFAcVRP4OThnAw64f9dCbPNW2WF+xOg7LAe6gVp0uoYYOnEUN6BTGEMHYt
	 aXcBMfE+AmVEQ==
Date: Sun, 3 May 2026 14:07:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: syyang@lontium.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	maarten.lankhorst@linux.intel.com, rfoss@kernel.org, mripard@kernel.org, 
	Laurent.pinchart@ideasonboard.com, tzimmermann@suse.de, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	yangsunyun1993@gmail.com, xmzhu@lontium.corp-partner.google.com, xmzhu@lontium.com, 
	rlyu@lontium.com, xbpeng@lontium.com
Subject: Re: [PATCH v4 1/2] dt-bindings: bridge: Add Lontium LT7911EXC eDP to
 MIPI DSI bridge
Message-ID: <20260503-pristine-ibex-of-assurance-0c27e0@quoll>
References: <20260430094612.3408174-1-syyang@lontium.com>
 <20260430094612.3408174-2-syyang@lontium.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260430094612.3408174-2-syyang@lontium.com>
X-Rspamd-Queue-Id: B98064B57BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292369-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,oss.qualcomm.com,linux.intel.com,ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]

On Thu, Apr 30, 2026 at 05:46:11PM +0800, syyang@lontium.com wrote:
> From: Sunyun Yang <syyang@lontium.com>
> 
> The LT7911EXC is an I2C-controlled bridge that Receiver eDP1.4
> and output signal/dual port mipi.
> 
> Signed-off-by: Sunyun Yang <syyang@lontium.com>
> ---
>  .../display/bridge/lontium,lt7911exc.yaml     | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


