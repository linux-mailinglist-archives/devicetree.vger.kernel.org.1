Return-Path: <devicetree+bounces-267170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JiTMJocEm2lPqAMAu9opvQ
	(envelope-from <devicetree+bounces-267170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 14:28:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F43B16F3B4
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 14:28:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0A063010BBD
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 13:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE46B3382FE;
	Sun, 22 Feb 2026 13:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNSl4zYu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EC83382FC;
	Sun, 22 Feb 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771766915; cv=none; b=Qwk39MPLPUoav+dheejcehfYaJsnPVp6PdGUfiKbZLMa49fP49X5XW1pL8JOz7QyYPL0JxVhJ04cCe00JoWXjy9Dkjy0AqD7OxPSdIRHJ2D9pmkZjfW0jZQNgsaNNGR+lDOOec+J5ehhUCcXcVfyR2Uw3tLZ8tX/XiEYLXzkSto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771766915; c=relaxed/simple;
	bh=uwW3vVVhwJp7bD75hFNGPQlKDNix2vQrKdMbPukK0M0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VuYoDWpUW+Z/8DCb7hpfbgniY72EChd+rWGQ1DUf9H6DAMP29yL8L9JHB8f1+4Pr2zP1W/6Vw6nxefsm74GB1l+eMqB7WrLCQw2cP/uYFcHqNjdtuDmGr7ZFHIBd31qSQ3EzZViQHdOzZRgUNaGgLUU1a6mFqPp7b4QRc9+QtPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNSl4zYu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E46F5C116D0;
	Sun, 22 Feb 2026 13:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771766914;
	bh=uwW3vVVhwJp7bD75hFNGPQlKDNix2vQrKdMbPukK0M0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KNSl4zYuEZLNYGPeMljneQWKWo6xz/TIQIM+aZlp8o7sAWzvD5vli8P2ucmuUqU5C
	 TrZ+Nzzh0B2YJjmasDQ81cQJsSR+z3XZvnDJ7Tl3HPFBwVC7LnP+zL/cgxzd/2SxXk
	 sK5yuoNZt1HapO3yU3jrr2FYx8Mfiie9QYdWVubBuz3XGn0l7ZQUUSMQ2fA2zkwgKe
	 MPC/A4YZmdUbqetSrILni6HVIWFgZtJTB9oSpoDk86Y7EymzKMLkE26cNS8g21h9VF
	 ESIHycSzs6Pwzj/0ZHCkXbR18f4c4f4HU1YqUkduItuQM4vwFPERZf8fhYGcKPfk9i
	 D/3EQexJSOXDA==
Date: Sun, 22 Feb 2026 13:28:27 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Ricardo Ribalda Delgado <ribalda@kernel.org>
Cc: Pranav Kharche <pranavkharche7@gmail.com>, conor@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley
 <conor.dooley@microchip.com>
Subject: Re: [PATCH v2] dt-bindings: iio: dac: Fix typo in ti,dac7612.yaml
Message-ID: <20260222132827.3b477dff@jic23-huawei>
In-Reply-To: <CAPybu_24T+1e0C9Bw9GSv5ErmV4AZ-EZoEe5VZc8AZoCCJw8Aw@mail.gmail.com>
References: <20260218035549.17871-1-pranavkharche7@gmail.com>
	<CAPybu_24T+1e0C9Bw9GSv5ErmV4AZ-EZoEe5VZc8AZoCCJw8Aw@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267170-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,chromium.org:email]
X-Rspamd-Queue-Id: 0F43B16F3B4
X-Rspamd-Action: no action

On Thu, 19 Feb 2026 08:57:29 +0100
Ricardo Ribalda Delgado <ribalda@kernel.org> wrote:

> On Wed, Feb 18, 2026 at 4:56=E2=80=AFAM Pranav Kharche <pranavkharche7@gm=
ail.com> wrote:
> >
> > Fix a typo in the description where "Is is" should be "It is".
> >
> > Signed-off-by: Pranav Kharche <pranavkharche7@gmail.com>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com> =20
> Acked-by: Ricardo Ribalda <ribalda@chromium.org>
Applied.

Thanks,

Jonathan

