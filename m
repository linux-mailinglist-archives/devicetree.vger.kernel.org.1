Return-Path: <devicetree+bounces-295712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGCHIKQVAmr+ngEAu9opvQ
	(envelope-from <devicetree+bounces-295712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 19:45:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F244E513B34
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 19:45:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0B6E318AD83
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B63AA43CECB;
	Mon, 11 May 2026 16:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxRZGi14"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91ECE439010;
	Mon, 11 May 2026 16:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778518330; cv=none; b=jfEn/L3wbLVdwrOSen7myROj+3LZgWbPhhvmURbUJLIEX1jaYATEyBoHJKSZpYMtEyZpcdb2HJVF7emk2CgAa8nVVSWAGh16oAB89T549+KSPYA3N1FSwa+PyuQwgRX65lXpIxoPnniZ9nhBglCB1CCf6NdvM5G1+8MP40ZNhyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778518330; c=relaxed/simple;
	bh=2S8ZAcXDE/Jd8pI3dYogOS2qdMX1wFg0U5A6c+GH+78=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ry79rqhcW+Tp0YY4oWeCRX/zmqH4FFtyd/aHnqXpP3d/zmO5cG6khLCy7M5tydA+M0do5V86+Nw1/NaJ2e7XJHcyWUpqeKa0mse4Po3x8ZQLmkfyHr8z9V5JPWAheZ3IxHYE0+eozTI3jiJxbS2FIdA/e5h9CUaI3s9nfPsZJ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxRZGi14; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DD28C2BCC9;
	Mon, 11 May 2026 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778518330;
	bh=2S8ZAcXDE/Jd8pI3dYogOS2qdMX1wFg0U5A6c+GH+78=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fxRZGi14jcm/S8DES72Fk3kvFvy9LDzSSHEMsFbUyvHRIOmDQbv7E8LLcGaqccYDF
	 07T3MwTbeGqFVV0YZuzdSXWVinr95/CeOUpHgRa2r8HQzTOUy4yJpLMobLQ59LMJQi
	 np7hJukQZufze1ahgXF0+9/0gHo3yTcEP4BsiWfVh21Jv9GElIhNPmqsR8B0oYdGOe
	 6n/rj/UxgB7it987GOvoGtLXmDoO48cB3V2KeGrJ7czgHfsORmxvIjVbZ+9fK9JIWI
	 DuyMAQBnmyxX1Ua8WEH8TfjG18gK87NEoeU3/3jfkA68af4wl9QwAuLQX1SKo/mOKU
	 uGiEGTJozqhkQ==
Date: Mon, 11 May 2026 17:52:00 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Hungyu Lin <dennylin0707@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/1] dt-bindings: iio: adc: add AD7816/AD7817/AD7818
 binding
Message-ID: <20260511175200.40f809d1@jic23-huawei>
In-Reply-To: <20260509022718.82957-2-dennylin0707@gmail.com>
References: <20260509022718.82957-1-dennylin0707@gmail.com>
	<20260509022718.82957-2-dennylin0707@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: F244E513B34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295712-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:url]
X-Rspamd-Action: no action

On Sat,  9 May 2026 02:27:18 +0000
Hungyu Lin <dennylin0707@gmail.com> wrote:

> Add Device Tree binding documentation for the Analog Devices
> AD7816, AD7817 and AD7818 SPI ADC devices.
> 
> The AD7816 provides temperature monitoring only, while the
> AD7817 and AD7818 provide analog input channels with an
> on-chip temperature sensor.
> 
> The devices use control GPIOs for RD/WR and CONVST. BUSY is required for
> AD7816 and AD7817 variants.
> 
> Signed-off-by: Hungyu Lin <dennylin0707@gmail.com>

Subject to the discussion you had with David about us only normally
adding a dt-binding as part of the final series that moves a driver
out of staging.  This looks fine to me.

Note I've been hopefully checking analog.com every 6 months or so for
the ad7817 to go obsolete - (no luck yet!) - hence I haven't deleted
the driver despite no one getting it into a reasonable state for
many years. If you are interested in doing that work then great!
Maybe the Analog devices folk can help you out with testing etc.

Jonathan

