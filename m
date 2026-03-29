Return-Path: <devicetree+bounces-282046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ8HGQbxyGlEsgUAu9opvQ
	(envelope-from <devicetree+bounces-282046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 11:29:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0223515EC
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 11:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A0DF63005AAF
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 09:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973A62F0C45;
	Sun, 29 Mar 2026 09:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIe/1T+B"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7333C249EB;
	Sun, 29 Mar 2026 09:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774776580; cv=none; b=piArTmZMraxxNhkGNU1vJHXM3vVheg4f+vLlPldpKkcOz46FvZt4WfwOtOvJs78JaakjxopKurbKs/1Ch04yRHyA8gPR/X6DNfSvACkakGzhpThc4oOIvDo2fwYbWho7v6mqnjOI+9D/YRD0dAa6saQ4iT+739dsq0otGZYINus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774776580; c=relaxed/simple;
	bh=0PzeBYmnMXDBQM/NfPtrpKFpSZWm0tnd0XoXBK7IQp8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=juoL8L1Vs+HudliE5RtZy1IOoPTBz0YMk5o0nbMy5zaTRsr+gcQk+DBLTtChl5+tVW04wd+5u24Q0NfjhzL/inAPgLM2/XuClOrJaW7S7BCnBTw7iU8VKfA1SYrpIcz1EPxqdk9xyeqePMabtnr7GzxvrgOD2CyZhfaaIqldeXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIe/1T+B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 763E4C116C6;
	Sun, 29 Mar 2026 09:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774776580;
	bh=0PzeBYmnMXDBQM/NfPtrpKFpSZWm0tnd0XoXBK7IQp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IIe/1T+B0ZxIk8rBC38+iCqsg0EOGLrinCrc5lsNSZueUS8Mu5j/PxTtSpwfWdFLf
	 x/Q9gmABaVMS1kWknP4CPMEIJBc4HOhSoaqXNu+jn5GKcvYQyrrR2L9CkDEBWZ7Rdq
	 68IPTYeLUnfv0dtE2VD01TQ1vYzD2PgY9Quy7Jmxnsnmu7SsZ+bGkx6tM1EoSf2cZa
	 taDau5miJTqc/DgA+dMgsonG/q+43avwk82rjRzzc1w+wxhIxbOXTeJeewFcJVzJzr
	 FAYQSe5fFQ61LKMob0oLxZR8l2lGKGwluiRMNaggYKfwOu/YkOlKjd+E5tMKk3DnFK
	 1sfcIomUPukfQ==
Date: Sun, 29 Mar 2026 11:29:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gopi Krishna Menon <krishnagopi487@gmail.com>
Cc: rafael@kernel.org, daniel.lezcano@kernel.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org, vireshk@kernel.org, 
	conor+dt@kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, soc@lists.linux.dev, 
	daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, m-chawdhry@ti.com
Subject: Re: [PATCH v2 1/2] dt-bindings: thermal: st,thermal-spear1340:
 convert to dtschema
Message-ID: <20260329-pristine-delicate-marmot-e3abc0@quoll>
References: <20260329061523.98346-1-krishnagopi487@gmail.com>
 <20260329061523.98346-2-krishnagopi487@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260329061523.98346-2-krishnagopi487@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282046-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 1A0223515EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 29, 2026 at 11:45:19AM +0530, Gopi Krishna Menon wrote:
> Convert the SPEAr Thermal Sensor bindings to DT schema.
> 
> Signed-off-by: Gopi Krishna Menon <krishnagopi487@gmail.com>
> ---
> Changes since v1:
> - Changed unevaluatedProperties to additionalProperties

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


