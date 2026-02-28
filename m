Return-Path: <devicetree+bounces-269525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAJNL8HIommy5QQAu9opvQ
	(envelope-from <devicetree+bounces-269525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:51:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7DA1C24DB
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7D8223009F19
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73842427A07;
	Sat, 28 Feb 2026 10:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqYstRqf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE93427A00;
	Sat, 28 Feb 2026 10:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772275901; cv=none; b=TJwZqH1WRd+uKvMICYff+GYEdYDEU66/rrfolNYRBjg3lO0jjDz/WcflB1OjD1CCYZlTMkWKPyOLfHZOjodGlRr3d1ArT+/fdRzsyIWrXjBqR9mDlo6Cwzw/ljhk5C2WMVqq1JBwUAOQzFzDa6IoH5H+M8adVS/YvCHqYRPChyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772275901; c=relaxed/simple;
	bh=G+CNCheMEZKq249BUHGU6k6/X0wCs6/lFqF8Mrs4UsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LlXnl3iYCFKLoRtmnOQqZWeoY5U2dFu9aVw7ysMuKTVu7BDCMwWVBO/FdPMtMhQDWQyoCbWGE99JhwjR2qnapWaFGFh8bpzeI7O6pnPok4ndDhyjKpLCgLj59gI3d/WpHMdzOJStbkgrD6xRuw0EjpsmGSZqYy0qI5u73t6fNTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqYstRqf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 765C8C116D0;
	Sat, 28 Feb 2026 10:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772275901;
	bh=G+CNCheMEZKq249BUHGU6k6/X0wCs6/lFqF8Mrs4UsQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rqYstRqfK08m3Wsnq3mPXJ9O8CQx5W8GUZ4d/tPBGaVbZuDLFHC2FlAHdmvVFslfp
	 XZ3db7GVRHLcgvTjFWeoSPcXf2w6ua2Mcv0ryVl069riDdXWWG7MWyGA55/e16I54N
	 NODSgxVtWJUV3BfzTna+LXPKlGotZrYxPNQMawA1UDCyr/SJsYGtTvHudYDQkkQQ8B
	 KO/pOwcazzeUn07QMyuuC/rtxWfxSSQX1AdEhx8RWSFmyKeJvuOOXPLBiGOhDl8Fgp
	 ejMx4bJVFeW6P4fZIzFzdog5LvH6qlUefjPvdAgkyUcy4n1Lj72Xc779X+wPsCLeaP
	 0PX4rknA3MX8A==
Date: Sat, 28 Feb 2026 11:51:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	wens@kernel.org, jernej.skrabec@gmail.com, samuel@sholland.org, 
	mripard@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Beijing
 Ultrapower Software Co., Ltd.
Message-ID: <20260228-spirited-muscular-macaque-b9a1e2@quoll>
References: <20260227155801.211376-1-jerrysteve1101@gmail.com>
 <20260227155801.211376-2-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260227155801.211376-2-jerrysteve1101@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269525-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,kernel.org,gmail.com,sholland.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,uqsoft.com:url,archive.org:url]
X-Rspamd-Queue-Id: DC7DA1C24DB
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 11:57:58PM +0800, Jun Yan wrote:
> Beijing Ultrapower Software Co., Ltd. is a company focusing on global
> mobile games, ICT services, cloud computing, and artificial intelligence
> solutions.
>=20
> TaiqiCat A01 is a blockchain-based terminal product launched by UQSoft
> (Beijing UQSoft Interactive Technology Co., Ltd.), a wholly-owned
> subsidiary of Ultrapower. Its dedicated product homepage[1] was once
> hosted on Ultrapower=E2=80=99s official website[2].
>=20
> It should be noted that UQSoft's official website[3] is no longer
> operational, and the company appears to have been discontinued.
>=20
> [1] https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.=
cn/product.html
> [2] https://www.ultrapower.com.cn
> [3] http://www.uqsoft.com
>=20
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


