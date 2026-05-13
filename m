Return-Path: <devicetree+bounces-297177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OaCAZr8BGrxRAIAu9opvQ
	(envelope-from <devicetree+bounces-297177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:35:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F2653B7E1
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0B8463001CEE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 453413955EB;
	Wed, 13 May 2026 22:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYJMzFYD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E58383338;
	Wed, 13 May 2026 22:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778711680; cv=none; b=VeRD2NptPW+340X3Dsqf1V+uJts11s/rFBVnm3NeeFG7Aga9eNP3VRzXiLSqF0ip+8Ar952HEO9V9ADx+TIfJ+fTd4c0Jg/95fmN4jqXpLC/PvrnfPNmPkGbyzTceiOSPU34hcrSdyFVnOA0D0OxXzuGupsJJpsllsDf17D00lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778711680; c=relaxed/simple;
	bh=pweejv/r1nKE0zf8rPphlToqrTLda+b4RJqDjfhChiE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W6gExYsbOM+TlA2mgqzDkU7FHyGXxhWVr8G2iXF+R5zS87PMYB60/D9OBucRogudL9w67cuvH1G/+Ah/va4rMVLWlWKowYEqprDPmTfIKZIyDWos/+4qy8vfuEjSVjeqeZpcaiKLD3S2NI1OjSjIGCL6L63OEoVHeZ5uYSfV1+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYJMzFYD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83840C19425;
	Wed, 13 May 2026 22:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778711680;
	bh=pweejv/r1nKE0zf8rPphlToqrTLda+b4RJqDjfhChiE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pYJMzFYDypOh/OYGxo+cIZARIZ34DBJaWM3qgYsci0Fv7AYsrAtOB0UvUU8pq+GsP
	 Eq1Opmtf0bnRfByal6xMvdpAB9FFnIyOCiMXGAMpt9Zpuy3o5f7ujOvLIJefr8XtGj
	 hic/kFiStI+j0WQi+4nGvJavHryrz82L/qigk3sXAGBle9x6tpBAqjl8d2TSHXgBoe
	 yMA4xUTtohR0+NnymjcxVMGflaw4Lm53TQy0/FE4F2QH1ZRCRTQIfPKwFgvxIBX92m
	 VFMeCuaHmr6WAmRv4pFm8b7e3q07PNlq96B7ir4+mjC4hIEu86CZPODY9rjr3Y9/ut
	 2aQxcJrlkqgNA==
Date: Wed, 13 May 2026 17:34:36 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Jonas =?iso-8859-1?Q?Schw=F6bel?= <jonasschwoebel@yahoo.de>,
	Sebastian Reichel <sre@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: embedded-controller: Document
 Surface RT EC
Message-ID: <177871167637.2178737.8650131597722661740.robh@kernel.org>
References: <20260507134608.76222-1-clamor95@gmail.com>
 <20260507134608.76222-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260507134608.76222-2-clamor95@gmail.com>
X-Rspamd-Queue-Id: 09F2653B7E1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,yahoo.de];
	TAGGED_FROM(0.00)[bounces-297177-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Thu, 07 May 2026 16:46:06 +0300, Svyatoslav Ryhel wrote:
> Document Embedded Controller used in Microsoft Surface RT tablets for
> monitoring battery properties and charger status.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../microsoft,surface-rt-ec.yaml              | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/embedded-controller/microsoft,surface-rt-ec.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


