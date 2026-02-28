Return-Path: <devicetree+bounces-269530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IGtM+3Momkj5gQAu9opvQ
	(envelope-from <devicetree+bounces-269530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:09:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FEC1C27BE
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 80962300C3B9
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5413ED133;
	Sat, 28 Feb 2026 11:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3m/SE93"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554662857CC
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 11:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772276968; cv=none; b=kofK7H9Z2CTAIjlo/ZCk/u1MO36sf1lhYu6enzfZxNFNRkY4Am6XFhluh0iF1Z7NOzHhgufa9mvdzff1Ti0QiidEsDtRpaalnD5KXbxMgq4NoA4NiOtkHPcDC9mLAC763fT4w+LolS83VQC4P8rYkiY6H2xkXEEoCakf5euXJr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772276968; c=relaxed/simple;
	bh=JU5ai7kfyN5uc+o28Wybo3zKonA2dSNvhH5252/07eQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JCUfucDZgb25Pv9pBEWiMq9JbMZkGbVcXE/Dyou+ukReTmNj3o9Wes2n9buoDMv9B6/ohSK1bYpkxNQbKNZfV6cxuuCJMvaHRalx4+1A6+3u4SNim5TpQYI84Boi3K2WdfqW0p63pxLGWNDkWXTsZiVPqEesa1OhON0HwxRTalQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3m/SE93; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38D49C116D0;
	Sat, 28 Feb 2026 11:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772276967;
	bh=JU5ai7kfyN5uc+o28Wybo3zKonA2dSNvhH5252/07eQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r3m/SE93NIuo1ll95Ptc0KAYz0HTt5Dc6J0iF+RvQlwIv1S12KBzCADKqDXcmfH1A
	 JIXaQHzjczjIf7+aFbEcMpb2a6zrRl7T30QQwJABi/04PfWOetvZ1grrPJtOuhCPtz
	 y7+iPEkAiSqrcfFXXVN2DceT25csBNF9SWoBVJlBDT48ue6fVR033R4Zoa7eUldf3J
	 FVOKtnqcoulO9fqJZZ4JYqSYMR1FdSxZwynMrBcHppIi+vzfFPzE/7mt4LRupd+py2
	 WaI3FE9Bi03VCgOBWdL3apijG5v0QJPIWmZLIOBgYDCnI1LmP+53OQifNSpR3lhqIf
	 z+9RddFiqB7Mg==
Date: Sat, 28 Feb 2026 12:09:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/8] dt-bindings: vendor-prefixes: Add Verbatim
 Corporation
Message-ID: <20260228-graceful-beaver-of-saturation-eb524a@quoll>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
 <20260228-gemini-dts-fixes-v1-4-0c6f6d0fb4bd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260228-gemini-dts-fixes-v1-4-0c6f6d0fb4bd@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269530-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[googlemail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,wikipedia.org:url]
X-Rspamd-Queue-Id: D9FEC1C27BE
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 01:05:44AM +0100, Linus Walleij wrote:
> Verbatim Corporation has manufactured a few electronics items
> over the years.
> 
> Link: https://en.wikipedia.org/wiki/Verbatim_(company)
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


