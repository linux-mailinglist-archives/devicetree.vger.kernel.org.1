Return-Path: <devicetree+bounces-266590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIMPMH/ClmnjmAIAu9opvQ
	(envelope-from <devicetree+bounces-266590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:57:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 350D615CDED
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F22423012BD0
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEFC1332ED1;
	Thu, 19 Feb 2026 07:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSF/cnBU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C06A19CD19
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771487867; cv=none; b=oc+12WmwznJu4ZKWTPYmxvemCGtz+sJ4XX03m8Ih9316A4MkAxGL+I9vNHJkclYL1VBtKA9oRd45PBG9oFtQ5yfySFMDN9lW6SayX9DY5A4zQLc33BsZk9Z3pni3srirO84unhtrZzOI67Oc7z5Un86atK41Qq7V5QXTKww0F7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771487867; c=relaxed/simple;
	bh=9Goybl8ewY5CB2jmSIFM5L9I3R8ff0hG98t9UEkb94M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uhl9EuuhkGWpEaGYaJNLHw/2CKj4Joo49OstDiEipC6ldbNTWauyUKD8LOKk/05S3nuVj1p1UlPoUddLdiLrXiA6CvrV5C0O6VICs+VVAt3FMb21hal2OY/Oz/FXw9SKFAH6XDXV+w9rb9obfXc1LuQIWu9nqpc/DdJ4PQBoaBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSF/cnBU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 686CAC2BC86
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771487867;
	bh=9Goybl8ewY5CB2jmSIFM5L9I3R8ff0hG98t9UEkb94M=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=PSF/cnBU+UF0D1RXibPpOH4xNt6leThzpd5Edj3SsqTIqj6MHsp+dQbjBYvcGkFrB
	 BpXhdw7eN94GIPMkpkORuTuEbTgd3BY+UBeojqOvd8pa7pgHO/0tmToxpt1foQpaUn
	 tQIjkGZAaq1yVU9DNbKU7uUK8t6FveEHHGq1OnlWq/OaKzrGlsgr5KSWeHS45Hsaxu
	 WN9r5BCCJ3Kj9zvKeFHRk9HaU67Dk4rfpwUSMCtDi5QeIOVQOEhTCEFHU3uLBTBHYn
	 p0zZ83HLbnHUaYhw4SsAc0638LM0s1ZB+rlDD8VA47fwB9CYxQkkb20kKP7ad6JT9R
	 kVl5S6PWIAeMg==
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-948ab1c79ebso236898241.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 23:57:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVW/LNOd42yrRY1JDmOwPApd7xphY3v9g4tkvC/cChb3pXBW2edXIVpRx1tcnv4a8YYBXHWfcBL/hC7@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ7Q0CsXCOHurfILPBF8ZlX0Ga3xnqfjXARUUNbLioiQ8GHUNU
	0jXhtnvLwXDYCT8WrDRbXlu3IwGzQhYR8qmXnQD34LEnKnXb1zUZ5d4+AFibGpqosLMzK4ymf65
	sNK/2Tx9yn8GHWzr3jSTjX9wcgW0EO7g=
X-Received: by 2002:a05:6102:c53:b0:5f1:51b1:488 with SMTP id
 ada2fe7eead31-5fe16fac317mr6344708137.44.1771487866322; Wed, 18 Feb 2026
 23:57:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260218035549.17871-1-pranavkharche7@gmail.com>
In-Reply-To: <20260218035549.17871-1-pranavkharche7@gmail.com>
From: Ricardo Ribalda Delgado <ribalda@kernel.org>
Date: Thu, 19 Feb 2026 08:57:29 +0100
X-Gmail-Original-Message-ID: <CAPybu_24T+1e0C9Bw9GSv5ErmV4AZ-EZoEe5VZc8AZoCCJw8Aw@mail.gmail.com>
X-Gm-Features: AaiRm527eulDCTIzoZ1NLeTvpZEtSvSQ-SZTc5BC08MewRB_xipeF5l4ZXfXbnU
Message-ID: <CAPybu_24T+1e0C9Bw9GSv5ErmV4AZ-EZoEe5VZc8AZoCCJw8Aw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: iio: dac: Fix typo in ti,dac7612.yaml
To: Pranav Kharche <pranavkharche7@gmail.com>
Cc: jic23@kernel.org, conor@kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266590-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ribalda@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,chromium.org:email,microchip.com:email]
X-Rspamd-Queue-Id: 350D615CDED
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 4:56=E2=80=AFAM Pranav Kharche <pranavkharche7@gmai=
l.com> wrote:
>
> Fix a typo in the description where "Is is" should be "It is".
>
> Signed-off-by: Pranav Kharche <pranavkharche7@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes in v2:
> - Fixed author name format (added space, removed number)
> ---
>  Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml b/=
Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> index 20dd13706..624c640be 100644
> --- a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> @@ -9,7 +9,7 @@ title: Texas Instruments DAC7612 family of DACs
>  description:
>    The DAC7612 is a dual, 12-bit digital-to-analog converter (DAC) with
>    guaranteed 12-bit monotonicity performance over the industrial tempera=
ture
> -  range. Is is programmable through an SPI interface.
> +  range. It is programmable through an SPI interface.
>
>  maintainers:
>    - Ricardo Ribalda Delgado <ricardo@ribalda.com>
> --
> 2.34.1
>

