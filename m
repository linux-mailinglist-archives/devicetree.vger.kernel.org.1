Return-Path: <devicetree+bounces-290242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCIZCDYJ7WkEegAAu9opvQ
	(envelope-from <devicetree+bounces-290242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 20:34:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E8B46758F
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 20:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 324413009F2B
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 18:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05DC6372689;
	Sat, 25 Apr 2026 18:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyOfKfl5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F0B17736;
	Sat, 25 Apr 2026 18:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777142023; cv=none; b=KZPT5Sb+BOHoPX3i7yffBMDkOGKXE+D88zl/IwpjGhM4YRCXjAL32opQKzF/qaG9xu2BVLrUN1Q1QrGfsEeI3mbY5/HLgBjSp4Gv455YH14x45NAaW16pq8FcZcGUNEQcGMsQobcd3CdvA+eHC+s3t1v7VtZVn1TCFfWMPeI9pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777142023; c=relaxed/simple;
	bh=OzL27Eb2u2qcVPP37jq5mIIwUrOfTATEPRCbYXLrEQc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=msGNBJtSp2OBnbyTOQU92hrcIVCpyCOa96WWqRrsnM2PXl/3b80KWtDkUA/poosu4ERLbsK4aXXjjk03l9Ym2UwCab8I0ynxW+T5iabUubNCON+x3Rf3/ZRwTQJWVnmtVUTkLQqGU63tmpwABGggiNWQywgtvfImUHi73A+fNVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyOfKfl5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8228C2BCB0;
	Sat, 25 Apr 2026 18:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777142023;
	bh=OzL27Eb2u2qcVPP37jq5mIIwUrOfTATEPRCbYXLrEQc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=CyOfKfl5RV6fDDFn3DZoc0RiRqUrKm9GYG4rwpblFCQXP3C/qMyt9UTuFl9WZCjHC
	 jIRafAWn5Wy3Q4WlX7F53QKnyvIZeP+75i1WUbDnTCxX/TRuS/smEYSLHxribt6z8P
	 mYjqXlZPlMEYaxuwTfCbU9vauALOh6gbMTwpMG2gP9eCVLZiYcWBvhfGwNsCQqrTEE
	 J6ICuI5Fy+j75yMYQ3eyUaT11cg8za6pmN2QLzaX2HYSyuwDubW/SPhYOUF4Z7IPKC
	 dlgtMA18xldYRjgfKXrBq3EJuqB5/n8hjOgvuLcjCnKQVQPiWpDpU2CEBbElN00chs
	 A78twlTYLobQA==
Date: Sat, 25 Apr 2026 19:33:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vishwas Rajashekar via B4 Relay
 <devnull+vishwas.dev.vrajashkr.com@kernel.org>
Cc: vishwas.dev@vrajashkr.com, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "H. Nikolaus Schaller"
 <hns@goldelico.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, luca@lucaweiss.eu
Subject: Re: [PATCH v3] dt-bindings: iio: gyroscope: add mount-matrix for
 bmg160
Message-ID: <20260425193334.319fbc44@jic23-huawei>
In-Reply-To: <20260418-bmg160-mount-matrix-dt-binding-v3-1-ce8020ecbf9a@vrajashkr.com>
References: <20260418-bmg160-mount-matrix-dt-binding-v3-1-ce8020ecbf9a@vrajashkr.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 98E8B46758F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290242-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,vishwas.dev.vrajashkr.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vrajashkr.com:email]

On Sat, 18 Apr 2026 00:11:09 +0530
Vishwas Rajashekar via B4 Relay <devnull+vishwas.dev.vrajashkr.com@kernel.org> wrote:

> From: Vishwas Rajashekar <vishwas.dev@vrajashkr.com>
> 
> The mount-matrix property supplies a 3x3 matrix that is used
> to transform the values from the gyroscope to get vector
> values that are relative to the way the sensor has been mounted
> on the device. When the property is not specified, the identity
> matrix is used.
> 
> This change adds mount-matrix as an optional property to the
> dt-bindings for the bmg160 gyroscope.
> 
> Signed-off-by: Vishwas Rajashekar <vishwas.dev@vrajashkr.com>
Applied.

Thanks,

Jonathan

